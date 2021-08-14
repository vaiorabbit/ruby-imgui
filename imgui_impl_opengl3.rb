require 'ffi'
require 'opengl'
include OpenGL

require_relative 'imgui'

module ImGui

  @@g_GlVersion = 0 # Extracted at runtime using GL_MAJOR_VERSION, GL_MINOR_VERSION queries.
  @@g_GlslVersionString = "" # Specified by user or detected based on compile time
  @@g_FontTexture = nil

  @@g_ShaderHandle = 0

  @@g_AttribLocationTex = 0
  @@g_AttribLocationProjMtx = 0

  @@g_AttribLocationVtxPos = 0
  @@g_AttribLocationVtxUV = 0
  @@g_AttribLocationVtxColor = 0

  @@g_VboHandle = 0
  @@g_ElementsHandle = 0

  @@g_BackendRendererName = FFI::MemoryPointer.from_string("imgui_impl_opengl3")

  def self.PrintShaderCompileStatus(handle)
    rvalue = ' ' * 4
    glGetShaderiv(handle, GL_COMPILE_STATUS, rvalue)
    rvalue = rvalue.unpack1('L')
    if rvalue == GL_FALSE
      $stderr.puts "Error in compiling shader"
      log_length = ' ' * 4
      glGetShaderiv(handle, GL_INFO_LOG_LENGTH, log_length)
      log_length = log_length.unpack1('L')
      if log_length > 0
        buf = ' ' * log_length
        glGetShaderInfoLog(handle, log_length, nil, buf)
        $stderr.puts(buf)
        exit()
      end
    end
  end

  def self.PrintProgramLinkStatus(handle)
    rvalue = ' ' * 4
    glGetProgramiv(handle, GL_LINK_STATUS, rvalue)
    rvalue = rvalue.unpack1('L')
    if rvalue == GL_FALSE
      $stderr.puts "Error in linking program"
      log_length = ' ' * 4
      glGetProgramiv(handle, GL_INFO_LOG_LENGTH, log_length)
      log_length = log_length.unpack1('L')
      if log_length > 0
        buf = ' ' * log_length
        glGetProgramInfoLog(handle, log_length, nil, buf)
        $stderr.puts(buf)
        exit()
      end
    end
  end

  def self.ImplOpenGL3_Init(glsl_version = nil)
    major, minor = ' ' * 4, ' ' * 4
    glGetIntegerv(GL_MAJOR_VERSION, major)
    glGetIntegerv(GL_MINOR_VERSION, minor)
    major = major.unpack1('L')
    minor = minor.unpack1('L')
    @@g_GlVersion = major * 1000 + minor

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] = @@g_BackendRendererName
    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasVtxOffset if @@g_GlVersion >= 3200

    # Ref.: Fix imgui_impl_opengl3 on MacOS
    #       https://github.com/ocornut/imgui/pull/3199
    if OpenGL.get_platform() == :OPENGL_PLATFORM_MACOSX
      glsl_version = "#version 150" if glsl_version == nil
    else
      glsl_version = "#version 130" if glsl_version == nil
    end

    @@g_GlslVersionString = glsl_version.dup

    return true
  end

  def self.ImplOpenGL3_Shutdown()
    ImplOpenGL3_DestroyDeviceObjects()
  end

  def self.ImplOpenGL3_NewFrame()
    ImplOpenGL3_CreateDeviceObjects() if @@g_ShaderHandle == 0
  end

  def self.ImplOpenGL3_RenderDrawData(draw_data_raw)
    #  Avoid rendering when minimized, scale coordinates for retina displays (screen coordinates != framebuffer coordinates)
    draw_data = ImDrawData.new(draw_data_raw)
    fb_width = (draw_data[:DisplaySize][:x] * draw_data[:FramebufferScale][:x]).to_i
    fb_height = (draw_data[:DisplaySize][:y] * draw_data[:FramebufferScale][:y]).to_i

    return if fb_width == 0 || fb_height == 0

    #  Backup GL state
    last_active_texture = ' ' * 4;  glGetIntegerv(GL_ACTIVE_TEXTURE, last_active_texture)
    last_program = ' ' * 4;  glGetIntegerv(GL_CURRENT_PROGRAM, last_program)
    last_texture = ' ' * 4;  glGetIntegerv(GL_TEXTURE_BINDING_2D, last_texture)

    last_sampler = ' ' * 4;  glGetIntegerv(GL_SAMPLER_BINDING, last_sampler)
    last_array_buffer = ' ' * 4;  glGetIntegerv(GL_ARRAY_BUFFER_BINDING, last_array_buffer)
    last_vertex_array_object = ' ' * 4;  glGetIntegerv(GL_VERTEX_ARRAY_BINDING, last_vertex_array_object)

    last_polygon_mode = ' ' * 8;  glGetIntegerv(GL_POLYGON_MODE, last_polygon_mode)
    last_viewport = ' ' * 16;  glGetIntegerv(GL_VIEWPORT, last_viewport)
    last_scissor_box = ' ' * 16;  glGetIntegerv(GL_SCISSOR_BOX, last_scissor_box)

    last_blend_src_rgb = ' ' * 4;  glGetIntegerv(GL_BLEND_SRC_RGB, last_blend_src_rgb)
    last_blend_dst_rgb = ' ' * 4;  glGetIntegerv(GL_BLEND_DST_RGB, last_blend_dst_rgb)
    last_blend_src_alpha = ' ' * 4;  glGetIntegerv(GL_BLEND_SRC_ALPHA, last_blend_src_alpha)
    last_blend_dst_alpha = ' ' * 4;  glGetIntegerv(GL_BLEND_DST_ALPHA, last_blend_dst_alpha)
    last_blend_equation_rgb = ' ' * 4;  glGetIntegerv(GL_BLEND_EQUATION_RGB, last_blend_equation_rgb)
    last_blend_equation_alpha = ' ' * 4;  glGetIntegerv(GL_BLEND_EQUATION_ALPHA, last_blend_equation_alpha)

    last_enable_blend = glIsEnabled(GL_BLEND)
    last_enable_cull_face = glIsEnabled(GL_CULL_FACE)
    last_enable_depth_test = glIsEnabled(GL_DEPTH_TEST)
    last_enable_stencil_test = glIsEnabled(GL_STENCIL_TEST)
    last_enable_scissor_test = glIsEnabled(GL_SCISSOR_TEST)

    #  Setup desired GL state
    vertex_array_object = ' ' * 4
    glGenVertexArrays(1, vertex_array_object)
    vertex_array_object = vertex_array_object.unpack1('L')
    ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)

    #  Will project scissor/clipping rectangles into framebuffer space
    clip_off = draw_data[:DisplayPos]         #  (0,0) unless using multi-viewports
    clip_scale = draw_data[:FramebufferScale] #  (1,1) unless using retina display which are often (2,2)

    #  Render command lists
    draw_data[:CmdListsCount].times do |n|

      cmd_list = ImDrawList.new((draw_data[:CmdLists].pointer + 8 * n).read_pointer) # 8 == const ImDrawList*
      vtx_buffer = ImDrawVert.new(cmd_list[:VtxBuffer][:Data]) # const ImDrawVert*
      idx_buffer = cmd_list[:IdxBuffer][:Data] # const ImDrawIdx*

      # Upload vertex/index buffers
      glBufferData(GL_ARRAY_BUFFER, cmd_list[:VtxBuffer][:Size] * ImDrawVert.size, Fiddle::Pointer.new(cmd_list[:VtxBuffer][:Data]), GL_STREAM_DRAW)
      # 2 == ImDrawIdx(:ushort).size
      glBufferData(GL_ELEMENT_ARRAY_BUFFER, cmd_list[:IdxBuffer][:Size] * 2, Fiddle::Pointer.new(cmd_list[:IdxBuffer][:Data]), GL_STREAM_DRAW) # [TODO] Refer ImGui::ImDrawIdx
      # glBufferData(GL_ELEMENT_ARRAY_BUFFER, cmd_list[:IdxBuffer][:Size] * ImDrawIdx.size, Fiddle::Pointer.new(cmd_list[:IdxBuffer][:Data]), GL_STREAM_DRAW)

      cmd_list[:CmdBuffer][:Size].times do |cmd_i|
        pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i) # const ImDrawCmd*
        if pcmd[:UserCallback] != nil
          # [TODO] Handle user callback (Ref.: https://github.com/ffi/ffi/wiki/Callbacks )

          #  User callback, registered via ImDrawList::AddCallback()
          #  (ImDrawCallback_ResetRenderState is a special callback value used by the user to request the renderer to reset render state.)
          # if pcmd[:UserCallback] == :ImDrawCallback_ResetRenderState
              ImGui_ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)
          # else
          #   pcmd[:UserCallback](cmd_list, pcmd)
          # end
        else
          #  Project scissor/clipping rectangles into framebuffer space
          clip_rect = ImVec4.new
          clip_rect[:x] = (pcmd[:ClipRect][:x] - clip_off[:x]) * clip_scale[:x]
          clip_rect[:y] = (pcmd[:ClipRect][:y] - clip_off[:y]) * clip_scale[:y]
          clip_rect[:z] = (pcmd[:ClipRect][:z] - clip_off[:x]) * clip_scale[:x]
          clip_rect[:w] = (pcmd[:ClipRect][:w] - clip_off[:y]) * clip_scale[:y]

          if (clip_rect[:x] < fb_width && clip_rect[:y] < fb_height && clip_rect[:z] >= 0.0 && clip_rect[:w] >= 0.0)
            #  Apply scissor/clipping rectangle
            glScissor(clip_rect[:x].to_i, (fb_height - clip_rect[:w]).to_i, (clip_rect[:z] - clip_rect[:x]).to_i, (clip_rect[:w] - clip_rect[:y]).to_i)

            #  Bind texture, Draw
            glBindTexture(GL_TEXTURE_2D, pcmd[:TextureId].address)

            if @@g_GlVersion >= 3200
              # 2 == ImDrawIdx(:ushort).size
              glDrawElementsBaseVertex(GL_TRIANGLES, pcmd[:ElemCount], GL_UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * 2), pcmd[:VtxOffset])
              # glDrawElementsBaseVertex(GL_TRIANGLES, pcmd[:ElemCount], GL_UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * ImDrawIdx.size), pcmd[:VtxOffset]) # [TODO] Refer ImGui::ImDrawIdx
            else
              # 2 == ImDrawIdx(:ushort).size
              glDrawElements(GL_TRIANGLES, pcmd[:ElemCount], GL_UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * 2))
              # glDrawElements(GL_TRIANGLES, pcmd[:ElemCount], GL_UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * ImDrawIdx.size)) # [TODO] Refer ImGui::ImDrawIdx
            end
          end

        end
        idx_buffer += pcmd[:ElemCount] * 2 # 2 == ImDrawIdx(:ushort).size
      end
    end

    # Destroy the temporary VAO
    glDeleteVertexArrays(1, [vertex_array_object].pack('L'))

    #  Restore modified GL state
    glUseProgram(last_program.unpack1('L'))
    glBindTexture(GL_TEXTURE_2D, last_texture.unpack1('L'))
    glBindSampler(0, last_sampler.unpack1('L'))
    glActiveTexture(last_active_texture.unpack1('L'))
    glBindVertexArray(last_vertex_array_object.unpack1('L'))
    glBindBuffer(GL_ARRAY_BUFFER, last_array_buffer.unpack1('L'))
    glBlendEquationSeparate(last_blend_equation_rgb.unpack1('L'), last_blend_equation_alpha.unpack1('L'))

    if last_enable_blend then glEnable(GL_BLEND) else glDisable(GL_BLEND) end
    if last_enable_cull_face then glEnable(GL_CULL_FACE) else glDisable(GL_CULL_FACE) end
    if last_enable_depth_test then glEnable(GL_DEPTH_TEST) else glDisable(GL_DEPTH_TEST) end
    if last_enable_stencil_test then glEnable(GL_STENCIL_TEST) else glDisable(GL_STENCIL_TEST) end
    if last_enable_scissor_test then glEnable(GL_SCISSOR_TEST) else glDisable(GL_SCISSOR_TEST) end

    last_polygon_mode = last_polygon_mode.unpack('L2')
    glPolygonMode(GL_FRONT_AND_BACK, last_polygon_mode[0])
    last_viewport = last_viewport.unpack('L4')
    glViewport(last_viewport[0], last_viewport[1], last_viewport[2], last_viewport[3])
    last_scissor_box = last_scissor_box.unpack('L4')
    glScissor(last_scissor_box[0], last_scissor_box[1], last_scissor_box[2], last_scissor_box[3])

  end

  # private

  def self.ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)
    # Setup render state: alpha-blending enabled, no face culling, no depth testing, scissor enabled, polygon fill
    glEnable(GL_BLEND)
    glBlendEquation(GL_FUNC_ADD)
    glBlendFuncSeparate(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA, GL_ONE, GL_ONE_MINUS_SRC_ALPHA)
    glDisable(GL_CULL_FACE)
    glDisable(GL_DEPTH_TEST)
    glDisable(GL_STENCIL_TEST)
    glEnable(GL_SCISSOR_TEST)
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL) # GL_POLYGON_MODE

    # Setup viewport, orthographic projection matrix
    # Our visible imgui space lies from draw_data->DisplayPos (top left) to draw_data->DisplayPos+data_data->DisplaySize (bottom right). DisplayPos is (0,0) for single viewport apps.
    glViewport(0, 0, fb_width, fb_height)
    l = draw_data[:DisplayPos][:x]
    r = draw_data[:DisplayPos][:x] + draw_data[:DisplaySize][:x]
    t = draw_data[:DisplayPos][:y]
    b = draw_data[:DisplayPos][:y] + draw_data[:DisplaySize][:y]
    ortho_projection = [
        2.0/(r-l),   0.0,         0.0,   0.0,
        0.0,         2.0/(t-b),   0.0,   0.0,
        0.0,         0.0,        -1.0,   0.0,
        (r+l)/(l-r),  (t+b)/(b-t),  0.0,   1.0,
    ]
    glUseProgram(@@g_ShaderHandle)
    glUniform1i(@@g_AttribLocationTex, 0)
    glUniformMatrix4fv(@@g_AttribLocationProjMtx, 1, GL_FALSE, ortho_projection.pack('F16'))
    # GL_SAMPLER_BINDING
    glBindSampler(0, 0) # We use combined texture/sampler state. Applications using GL 3.3 may set that otherwise.

    glBindVertexArray(vertex_array_object)

    # Bind vertex/index buffers and setup attributes for ImDrawVert
    glBindBuffer(GL_ARRAY_BUFFER, @@g_VboHandle)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, @@g_ElementsHandle)

    glEnableVertexAttribArray(@@g_AttribLocationVtxPos)
    glEnableVertexAttribArray(@@g_AttribLocationVtxUV)
    glEnableVertexAttribArray(@@g_AttribLocationVtxColor)

    glVertexAttribPointer(@@g_AttribLocationVtxPos,   2, GL_FLOAT,         GL_FALSE, ImDrawVert.size, ImDrawVert.offset_of(:pos))
    glVertexAttribPointer(@@g_AttribLocationVtxUV,    2, GL_FLOAT,         GL_FALSE, ImDrawVert.size, ImDrawVert.offset_of(:uv))
    glVertexAttribPointer(@@g_AttribLocationVtxColor, 4, GL_UNSIGNED_BYTE, GL_TRUE,  ImDrawVert.size, ImDrawVert.offset_of(:col))

  end

  def self.ImplOpenGL3_CreateFontsTexture()
    #  Build texture atlas
    io = ImGuiIO.new(ImGui::GetIO())
    pixels = FFI::MemoryPointer.new :pointer
    width = FFI::MemoryPointer.new :int
    height = FFI::MemoryPointer.new :int
    io[:Fonts].GetTexDataAsRGBA32(pixels, width, height, nil)   #  Load as RGBA 32-bits (75% of the memory is wasted, but default font is so small) because it is more likely to be compatible with user's existing shaders. If your ImTextureId represent a higher-level concept than just a GL texture id, consider calling GetTexDataAsAlpha8() instead to save on GPU memory.

    #  Upload texture to graphics system
    last_texture = ' ' * 4
    @@g_FontTexture = ' ' * 4
    glGetIntegerv(GL_TEXTURE_BINDING_2D, last_texture)
    glGenTextures(1, @@g_FontTexture)
    glBindTexture(GL_TEXTURE_2D, @@g_FontTexture.unpack1('L'))
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
    glPixelStorei(GL_UNPACK_ROW_LENGTH, 0)
    # Ruby/FFI <-> Fiddle pointer exchange
    # p pixels
    # p pixels.read_pointer
    # p pixels.read_pointer.address.to_s(16)
    pixels_ptr = Fiddle::Pointer.new(pixels.read_pointer.address)
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width.read_uint, height.read_uint, 0, GL_RGBA, GL_UNSIGNED_BYTE, pixels_ptr)

    #  Store our identifier
    io[:Fonts][:TexID] = @@g_FontTexture.unpack1('L')

    #  Restore state
    glBindTexture(GL_TEXTURE_2D, last_texture.unpack1('L'))

    return true
  end

  def self.ImplOpenGL3_DestroyFontsTexture()
    if @@g_FontTexture != 0
      glDeleteTextures(1, @@g_FontTexture)
      io = ImGuiIO.new(ImGui::GetIO())
      io[:Fonts][:TexID] = 0
      @@g_FontTexture = 0
    end
  end

  def self.ImplOpenGL3_CreateDeviceObjects()
    # Backup GL state
    last_texture, last_array_buffer = ' ' * 4, ' ' * 4
    glGetIntegerv(GL_TEXTURE_BINDING_2D, last_texture)
    glGetIntegerv(GL_ARRAY_BUFFER_BINDING, last_array_buffer)
    last_texture = last_texture.unpack1('L')
    last_array_buffer = last_array_buffer.unpack1('L')

    last_vertex_array = ' ' * 4
    glGetIntegerv(GL_VERTEX_ARRAY_BINDING, last_vertex_array)
    last_vertex_array = last_vertex_array.unpack1('L')

    glsl_version = @@g_GlslVersionString.split[1].to_i # == scanf(@@g_GlslVersionString, "#version %d")

    vertex_shader_glsl_120 = <<-'SRC'
    uniform mat4 ProjMtx;
    attribute vec2 Position;
    attribute vec2 UV;
    attribute vec4 Color;
    varying vec2 Frag_UV;
    varying vec4 Frag_Color;
    void main()
    {
        Frag_UV = UV;
        Frag_Color = Color;
        gl_Position = ProjMtx * vec4(Position.xy,0,1);
    }
    SRC

    vertex_shader_glsl_130 = <<-'SRC'
    uniform mat4 ProjMtx;
    in vec2 Position;
    in vec2 UV;
    in vec4 Color;
    out vec2 Frag_UV;
    out vec4 Frag_Color;
    void main()
    {
        Frag_UV = UV;
        Frag_Color = Color;
        gl_Position = ProjMtx * vec4(Position.xy,0,1);
    }
    SRC

    vertex_shader_glsl_300_es = <<-'SRC'
    precision mediump float;
    layout (location = 0) in vec2 Position;
    layout (location = 1) in vec2 UV;
    layout (location = 2) in vec4 Color;
    uniform mat4 ProjMtx;
    out vec2 Frag_UV;
    out vec4 Frag_Color;
    void main()
    {
        Frag_UV = UV;
        Frag_Color = Color;
        gl_Position = ProjMtx * vec4(Position.xy,0,1);
    }
    SRC

    vertex_shader_glsl_410_core = <<-'SRC'
    layout (location = 0) in vec2 Position;
    layout (location = 1) in vec2 UV;
    layout (location = 2) in vec4 Color;
    uniform mat4 ProjMtx;
    out vec2 Frag_UV;
    out vec4 Frag_Color;
    void main()
    {
        Frag_UV = UV;
        Frag_Color = Color;
        gl_Position = ProjMtx * vec4(Position.xy,0,1);
    }
    SRC

    fragment_shader_glsl_120 = <<-'SRC'
    #ifdef GL_ES
        precision mediump float;
    #endif
    uniform sampler2D Texture;
    varying vec2 Frag_UV;
    varying vec4 Frag_Color;
    void main()
    {
        gl_FragColor = Frag_Color * texture2D(Texture, Frag_UV.st);
    }
    SRC

    fragment_shader_glsl_130 = <<-'SRC'
    uniform sampler2D Texture;
    in vec2 Frag_UV;
    in vec4 Frag_Color;
    out vec4 Out_Color;
    void main()
    {
        Out_Color = Frag_Color * texture(Texture, Frag_UV.st);
    }
    SRC

    fragment_shader_glsl_300_es = <<-'SRC'
    precision mediump float;
    uniform sampler2D Texture;
    in vec2 Frag_UV;
    in vec4 Frag_Color;
    layout (location = 0) out vec4 Out_Color;
    void main()
    {
        Out_Color = Frag_Color * texture(Texture, Frag_UV.st);
    }
    SRC

    fragment_shader_glsl_410_core = <<-'SRC'
    in vec2 Frag_UV;
    in vec4 Frag_Color;
    uniform sampler2D Texture;
    layout (location = 0) out vec4 Out_Color;
    void main()
    {
        Out_Color = Frag_Color * texture(Texture, Frag_UV.st);
    }
    SRC

    vertex_shader, fragment_shader = if glsl_version < 130
                                       [vertex_shader_glsl_120, fragment_shader_glsl_120]
                                     elsif glsl_version >= 410
                                       [vertex_shader_glsl_410_core, fragment_shader_glsl_410_core]
                                     elsif glsl_version == 300
                                       [vertex_shader_glsl_300_es, fragment_shader_glsl_300_es]
                                     else
                                       [vertex_shader_glsl_130, fragment_shader_glsl_130]
                                     end

    vertex_shader.prepend(@@g_GlslVersionString + "\n")
    vert_handle = glCreateShader(GL_VERTEX_SHADER)
    glShaderSource(vert_handle, 1, [vertex_shader].pack('p'), nil)
    glCompileShader(vert_handle)
    PrintShaderCompileStatus(vert_handle)

    fragment_shader.prepend(@@g_GlslVersionString + "\n")
    frag_handle = glCreateShader(GL_FRAGMENT_SHADER)
    glShaderSource(frag_handle, 1, [fragment_shader].pack('p'), [fragment_shader.size].pack('I'))
    glCompileShader(frag_handle)
    PrintShaderCompileStatus(frag_handle)

    @@g_ShaderHandle = glCreateProgram()
    glAttachShader(@@g_ShaderHandle, vert_handle)
    glAttachShader(@@g_ShaderHandle, frag_handle)
    glLinkProgram(@@g_ShaderHandle)
    PrintProgramLinkStatus(@@g_ShaderHandle)

    glDetachShader(@@g_ShaderHandle, vert_handle)
    glDetachShader(@@g_ShaderHandle, frag_handle)
    glDeleteShader(vert_handle)
    glDeleteShader(frag_handle)

    @@g_AttribLocationTex = glGetUniformLocation(@@g_ShaderHandle, "Texture")
    @@g_AttribLocationProjMtx = glGetUniformLocation(@@g_ShaderHandle, "ProjMtx")

    @@g_AttribLocationVtxPos = glGetAttribLocation(@@g_ShaderHandle, "Position")
    @@g_AttribLocationVtxUV = glGetAttribLocation(@@g_ShaderHandle, "UV")
    @@g_AttribLocationVtxColor = glGetAttribLocation(@@g_ShaderHandle, "Color")

    # Create buffers
    posBuf = ' ' * 4
    glGenBuffers(1, posBuf)
    glBindBuffer(GL_ARRAY_BUFFER, posBuf.unpack('L')[0])

    @@g_VboHandle, @@g_ElementsHandle = ' ' * 4, ' ' * 4
    glGenBuffers(1, @@g_VboHandle)
    glGenBuffers(1, @@g_ElementsHandle)
    @@g_VboHandle = @@g_VboHandle.unpack1('L')
    @@g_ElementsHandle = @@g_ElementsHandle.unpack1('L')

    ImplOpenGL3_CreateFontsTexture()

    # Restore modified GL state
    glBindTexture(GL_TEXTURE_2D, last_texture)
    glBindBuffer(GL_ARRAY_BUFFER, last_array_buffer)
    glBindVertexArray(last_vertex_array)

    return true
  end

  def self.ImplOpenGL3_DestroyDeviceObjects()
    if @@g_VboHandle != 0
      glDeleteBuffers(1, [@@g_VboHandle].pack('L'))
      @@g_VboHandle = 0
    end
    if @@g_ElementsHandle != 0
      glDeleteBuffers(1, [@@g_ElementsHandle].pack('L'))
      @@g_ElementsHandle = 0
    end
    if @@g_ShaderHandle != 0
      glDeleteProgram(@@g_ShaderHandle)
      @@g_ShaderHandle = 0
    end

    ImplOpenGL3_DestroyFontsTexture()
  end

end
