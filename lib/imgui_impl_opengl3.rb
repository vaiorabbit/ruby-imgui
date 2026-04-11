require 'ffi'
require 'opengl'
require 'fiddle'

require_relative 'imgui'

module ImGui

  @@g_GlVersion = 0
  @@g_MaxTextureSize = 0
  @@g_GlslVersionString = ""

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
    GL.GetShaderiv(handle, GL::COMPILE_STATUS, rvalue)
    ok = rvalue.unpack1('L')
    return true if ok == GL::TRUE

    $stderr.puts "Error in compiling shader"
    log_length = ' ' * 4
    GL.GetShaderiv(handle, GL::INFO_LOG_LENGTH, log_length)
    log_length = log_length.unpack1('L')
    if log_length > 0
      buf = ' ' * log_length
      GL.GetShaderInfoLog(handle, log_length, nil, buf)
      $stderr.puts(buf)
    end
    false
  end

  def self.PrintProgramLinkStatus(handle)
    rvalue = ' ' * 4
    GL.GetProgramiv(handle, GL::LINK_STATUS, rvalue)
    ok = rvalue.unpack1('L')
    return true if ok == GL::TRUE

    $stderr.puts "Error in linking program"
    log_length = ' ' * 4
    GL.GetProgramiv(handle, GL::INFO_LOG_LENGTH, log_length)
    log_length = log_length.unpack1('L')
    if log_length > 0
      buf = ' ' * log_length
      GL.GetProgramInfoLog(handle, log_length, nil, buf)
      $stderr.puts(buf)
    end
    false
  end

  def self.ImplOpenGL3_Init(glsl_version = nil)
    major, minor = ' ' * 4, ' ' * 4
    GL.GetIntegerv(GL::MAJOR_VERSION, major)
    GL.GetIntegerv(GL::MINOR_VERSION, minor)
    major = major.unpack1('L')
    minor = minor.unpack1('L')

    # OpenGL 2.x fallback when GL_MAJOR_VERSION/GL_MINOR_VERSION are unavailable.
    if major == 0 && minor == 0 && GL.respond_to?(:GetString)
      version_string = GL.GetString(GL::VERSION).to_s
      parts = version_string.split(/[ .]/)
      major = parts[0].to_i
      minor = parts[1].to_i
    end

    @@g_GlVersion = major * 100 + minor * 10

    max_texture_size = ' ' * 4
    GL.GetIntegerv(GL::MAX_TEXTURE_SIZE, max_texture_size)
    @@g_MaxTextureSize = max_texture_size.unpack1('L')

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] = @@g_BackendRendererName
    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasVtxOffset if @@g_GlVersion >= 320
    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasTextures

    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    platform_io[:Renderer_TextureMaxWidth] = @@g_MaxTextureSize
    platform_io[:Renderer_TextureMaxHeight] = @@g_MaxTextureSize

    if glsl_version.nil?
      if GL.get_platform() == :OPENGL_PLATFORM_MACOSX
        glsl_version = '#version 150'
      else
        glsl_version = '#version 130'
      end
    end

    @@g_GlslVersionString = glsl_version.end_with?("\n") ? glsl_version.dup : "#{glsl_version}\n"

    true
  end

  def self.ImplOpenGL3_Shutdown()
    ImplOpenGL3_DestroyDeviceObjects()

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] = nil
    io[:BackendFlags] &= ~(ImGuiBackendFlags_RendererHasVtxOffset | ImGuiBackendFlags_RendererHasTextures)

    begin
      platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
      platform_io.ClearRendererHandlers()
    rescue StandardError
      # Older generated bindings may not expose all platform IO helpers.
    end
  end

  def self.ImplOpenGL3_NewFrame()
    ImplOpenGL3_CreateDeviceObjects() if @@g_ShaderHandle == 0
  end

  def self.ImplOpenGL3_RenderDrawData(draw_data_raw)
    draw_data = ImDrawData.new(draw_data_raw)

    # Avoid rendering when minimized, scale coordinates for retina displays.
    fb_width = (draw_data[:DisplaySize][:x] * draw_data[:FramebufferScale][:x]).to_i
    fb_height = (draw_data[:DisplaySize][:y] * draw_data[:FramebufferScale][:y]).to_i
    return if fb_width <= 0 || fb_height <= 0

    ImplOpenGL3_ProcessTextureUpdates(draw_data)

    last_active_texture = ' ' * 4; GL.GetIntegerv(GL::ACTIVE_TEXTURE, last_active_texture)
    GL.ActiveTexture(GL::TEXTURE0)

    last_program = ' ' * 4; GL.GetIntegerv(GL::CURRENT_PROGRAM, last_program)
    last_texture = ' ' * 4; GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)

    has_sampler = defined?(GL::SAMPLER_BINDING)
    last_sampler = ' ' * 4
    GL.GetIntegerv(GL::SAMPLER_BINDING, last_sampler) if has_sampler

    last_array_buffer = ' ' * 4; GL.GetIntegerv(GL::ARRAY_BUFFER_BINDING, last_array_buffer)
    last_vertex_array_object = ' ' * 4; GL.GetIntegerv(GL::VERTEX_ARRAY_BINDING, last_vertex_array_object)

    last_polygon_mode = ' ' * 8; GL.GetIntegerv(GL::POLYGON_MODE, last_polygon_mode)
    last_viewport = ' ' * 16; GL.GetIntegerv(GL::VIEWPORT, last_viewport)
    last_scissor_box = ' ' * 16; GL.GetIntegerv(GL::SCISSOR_BOX, last_scissor_box)

    last_blend_src_rgb = ' ' * 4; GL.GetIntegerv(GL::BLEND_SRC_RGB, last_blend_src_rgb)
    last_blend_dst_rgb = ' ' * 4; GL.GetIntegerv(GL::BLEND_DST_RGB, last_blend_dst_rgb)
    last_blend_src_alpha = ' ' * 4; GL.GetIntegerv(GL::BLEND_SRC_ALPHA, last_blend_src_alpha)
    last_blend_dst_alpha = ' ' * 4; GL.GetIntegerv(GL::BLEND_DST_ALPHA, last_blend_dst_alpha)
    last_blend_equation_rgb = ' ' * 4; GL.GetIntegerv(GL::BLEND_EQUATION_RGB, last_blend_equation_rgb)
    last_blend_equation_alpha = ' ' * 4; GL.GetIntegerv(GL::BLEND_EQUATION_ALPHA, last_blend_equation_alpha)

    last_enable_blend = GL.IsEnabled(GL::BLEND)
    last_enable_cull_face = GL.IsEnabled(GL::CULL_FACE)
    last_enable_depth_test = GL.IsEnabled(GL::DEPTH_TEST)
    last_enable_stencil_test = GL.IsEnabled(GL::STENCIL_TEST)
    last_enable_scissor_test = GL.IsEnabled(GL::SCISSOR_TEST)

    # Recreate VAO every frame so this works across multiple GL contexts.
    vao_mem = ' ' * 4
    GL.GenVertexArrays(1, vao_mem)
    vertex_array_object = vao_mem.unpack1('L')
    ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)

    clip_off = draw_data[:DisplayPos]
    clip_scale = draw_data[:FramebufferScale]

    cmd_list_data = draw_data[:CmdLists][:Data]
    pointer_stride = FFI::Pointer.size

    draw_data[:CmdListsCount].times do |n|
      cmd_list_ptr = (cmd_list_data + pointer_stride * n).read_pointer
      cmd_list = ImDrawList.new(cmd_list_ptr)

      vtx_size = cmd_list[:VtxBuffer][:Size] * ImDrawVert.size
      idx_size = cmd_list[:IdxBuffer][:Size] * 2 # ImDrawIdx is currently ushort in generated bindings.

      GL.BufferData(GL::ARRAY_BUFFER, vtx_size, Fiddle::Pointer.new(cmd_list[:VtxBuffer][:Data]), GL::STREAM_DRAW)
      GL.BufferData(GL::ELEMENT_ARRAY_BUFFER, idx_size, Fiddle::Pointer.new(cmd_list[:IdxBuffer][:Data]), GL::STREAM_DRAW)

      cmd_list[:CmdBuffer][:Size].times do |cmd_i|
        pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i)
        if pcmd[:UserCallback] != nil
          # Reset callback token is not exposed cleanly in current bindings, so keep old behavior.
          ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)
          next
        end

        clip_min_x = (pcmd[:ClipRect][:x] - clip_off[:x]) * clip_scale[:x]
        clip_min_y = (pcmd[:ClipRect][:y] - clip_off[:y]) * clip_scale[:y]
        clip_max_x = (pcmd[:ClipRect][:z] - clip_off[:x]) * clip_scale[:x]
        clip_max_y = (pcmd[:ClipRect][:w] - clip_off[:y]) * clip_scale[:y]

        next if clip_max_x <= clip_min_x || clip_max_y <= clip_min_y

        GL.Scissor(clip_min_x.to_i, (fb_height - clip_max_y).to_i, (clip_max_x - clip_min_x).to_i, (clip_max_y - clip_min_y).to_i)

        GL.BindTexture(GL::TEXTURE_2D, pcmd.GetTexID())
        if @@g_GlVersion >= 320
          GL.DrawElementsBaseVertex(GL::TRIANGLES, pcmd[:ElemCount], GL::UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * 2), pcmd[:VtxOffset])
        else
          GL.DrawElements(GL::TRIANGLES, pcmd[:ElemCount], GL::UNSIGNED_SHORT, Fiddle::Pointer.new(pcmd[:IdxOffset] * 2))
        end
      end
    end

    GL.DeleteVertexArrays(1, [vertex_array_object].pack('L'))

    GL.UseProgram(last_program.unpack1('L'))
    GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))
    GL.BindSampler(0, last_sampler.unpack1('L')) if has_sampler
    GL.ActiveTexture(last_active_texture.unpack1('L'))
    GL.BindVertexArray(last_vertex_array_object.unpack1('L'))
    GL.BindBuffer(GL::ARRAY_BUFFER, last_array_buffer.unpack1('L'))

    GL.BlendEquationSeparate(last_blend_equation_rgb.unpack1('L'), last_blend_equation_alpha.unpack1('L'))
    GL.BlendFuncSeparate(
      last_blend_src_rgb.unpack1('L'),
      last_blend_dst_rgb.unpack1('L'),
      last_blend_src_alpha.unpack1('L'),
      last_blend_dst_alpha.unpack1('L')
    )

    if last_enable_blend then GL.Enable(GL::BLEND) else GL.Disable(GL::BLEND) end
    if last_enable_cull_face then GL.Enable(GL::CULL_FACE) else GL.Disable(GL::CULL_FACE) end
    if last_enable_depth_test then GL.Enable(GL::DEPTH_TEST) else GL.Disable(GL::DEPTH_TEST) end
    if last_enable_stencil_test then GL.Enable(GL::STENCIL_TEST) else GL.Disable(GL::STENCIL_TEST) end
    if last_enable_scissor_test then GL.Enable(GL::SCISSOR_TEST) else GL.Disable(GL::SCISSOR_TEST) end

    last_polygon_mode = last_polygon_mode.unpack('L2')
    GL.PolygonMode(GL::FRONT_AND_BACK, last_polygon_mode[0])

    last_viewport = last_viewport.unpack('L4')
    GL.Viewport(last_viewport[0], last_viewport[1], last_viewport[2], last_viewport[3])

    last_scissor_box = last_scissor_box.unpack('L4')
    GL.Scissor(last_scissor_box[0], last_scissor_box[1], last_scissor_box[2], last_scissor_box[3])
  end

  def self.ImplOpenGL3_SetupRenderState(draw_data, fb_width, fb_height, vertex_array_object)
    GL.Enable(GL::BLEND)
    GL.BlendEquation(GL::FUNC_ADD)
    GL.BlendFuncSeparate(GL::SRC_ALPHA, GL::ONE_MINUS_SRC_ALPHA, GL::ONE, GL::ONE_MINUS_SRC_ALPHA)
    GL.Disable(GL::CULL_FACE)
    GL.Disable(GL::DEPTH_TEST)
    GL.Disable(GL::STENCIL_TEST)
    GL.Enable(GL::SCISSOR_TEST)
    GL.PolygonMode(GL::FRONT_AND_BACK, GL::FILL)

    GL.Viewport(0, 0, fb_width, fb_height)
    l = draw_data[:DisplayPos][:x]
    r = draw_data[:DisplayPos][:x] + draw_data[:DisplaySize][:x]
    t = draw_data[:DisplayPos][:y]
    b = draw_data[:DisplayPos][:y] + draw_data[:DisplaySize][:y]

    ortho_projection = [
      2.0 / (r - l), 0.0, 0.0, 0.0,
      0.0, 2.0 / (t - b), 0.0, 0.0,
      0.0, 0.0, -1.0, 0.0,
      (r + l) / (l - r), (t + b) / (b - t), 0.0, 1.0,
    ]

    GL.UseProgram(@@g_ShaderHandle)
    GL.Uniform1i(@@g_AttribLocationTex, 0)
    GL.UniformMatrix4fv(@@g_AttribLocationProjMtx, 1, GL::FALSE, ortho_projection.pack('F16'))

    if defined?(GL::SAMPLER_BINDING)
      GL.BindSampler(0, 0)
    end

    GL.BindVertexArray(vertex_array_object)
    GL.BindBuffer(GL::ARRAY_BUFFER, @@g_VboHandle)
    GL.BindBuffer(GL::ELEMENT_ARRAY_BUFFER, @@g_ElementsHandle)

    GL.EnableVertexAttribArray(@@g_AttribLocationVtxPos)
    GL.EnableVertexAttribArray(@@g_AttribLocationVtxUV)
    GL.EnableVertexAttribArray(@@g_AttribLocationVtxColor)

    GL.VertexAttribPointer(@@g_AttribLocationVtxPos, 2, GL::FLOAT, GL::FALSE, ImDrawVert.size, ImDrawVert.offset_of(:pos))
    GL.VertexAttribPointer(@@g_AttribLocationVtxUV, 2, GL::FLOAT, GL::FALSE, ImDrawVert.size, ImDrawVert.offset_of(:uv))
    GL.VertexAttribPointer(@@g_AttribLocationVtxColor, 4, GL::UNSIGNED_BYTE, GL::TRUE, ImDrawVert.size, ImDrawVert.offset_of(:col))
  end

  # Compatibility wrapper retained for older caller code.
  def self.ImplOpenGL3_CreateFontsTexture()
    true
  end

  # Compatibility wrapper retained for older caller code.
  def self.ImplOpenGL3_DestroyFontsTexture()
    nil
  end

  def self.ImplOpenGL3_ProcessTextureUpdates(draw_data)
    textures_ptr = draw_data[:Textures]
    return if textures_ptr.nil? || textures_ptr.null?

    textures = ImVector.new(textures_ptr)
    data_ptr = textures[:Data]
    pointer_stride = FFI::Pointer.size

    textures[:Size].times do |i|
      tex_ptr = (data_ptr + pointer_stride * i).read_pointer
      next if tex_ptr.nil? || tex_ptr.null?

      tex = ImTextureData.new(tex_ptr)
      ImplOpenGL3_UpdateTexture(tex) if tex[:Status] != ImTextureStatus_OK
    end
  end

  def self.ImplOpenGL3_DestroyTexture(tex)
    gl_tex_id = tex.GetTexID()
    if gl_tex_id != 0
      GL.DeleteTextures(1, [gl_tex_id].pack('L'))
    end

    tex.SetTexID(0)
    tex.SetStatus(ImTextureStatus_Destroyed)
  end

  def self.ImplOpenGL3_UpdateTexture(tex)
    status = tex[:Status]

    if status == ImTextureStatus_WantCreate || status == ImTextureStatus_WantUpdates
      GL.PixelStorei(GL::UNPACK_ROW_LENGTH, 0) if defined?(GL::UNPACK_ROW_LENGTH)
      GL.PixelStorei(GL::UNPACK_ALIGNMENT, 1) if defined?(GL::UNPACK_ALIGNMENT)
    end

    if status == ImTextureStatus_WantCreate
      return unless tex[:Format] == ImTextureFormat_RGBA32

      last_texture = ' ' * 4
      GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)

      texture_mem = ' ' * 4
      GL.GenTextures(1, texture_mem)
      gl_texture_id = texture_mem.unpack1('L')

      GL.BindTexture(GL::TEXTURE_2D, gl_texture_id)
      GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MIN_FILTER, GL::LINEAR)
      GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MAG_FILTER, GL::LINEAR)
      GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_WRAP_S, GL::CLAMP_TO_EDGE)
      GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_WRAP_T, GL::CLAMP_TO_EDGE)

      pixels_ptr = Fiddle::Pointer.new(tex[:Pixels])
      GL.TexImage2D(GL::TEXTURE_2D, 0, GL::RGBA, tex[:Width], tex[:Height], 0, GL::RGBA, GL::UNSIGNED_BYTE, pixels_ptr)

      tex.SetTexID(gl_texture_id)
      tex.SetStatus(ImTextureStatus_OK)

      GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))
      return
    end

    if status == ImTextureStatus_WantUpdates
      last_texture = ' ' * 4
      GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)

      GL.BindTexture(GL::TEXTURE_2D, tex.GetTexID())

      updates = tex[:Updates]
      updates_ptr = updates[:Data]

      if !updates_ptr.nil? && !updates_ptr.null?
        if defined?(GL::UNPACK_ROW_LENGTH)
          GL.PixelStorei(GL::UNPACK_ROW_LENGTH, tex[:Width])

          updates[:Size].times do |i|
            rect = ImTextureRect.new(updates_ptr + i * ImTextureRect.size)
            pixels_ptr = tex.GetPixelsAt(rect[:x], rect[:y])
            GL.TexSubImage2D(GL::TEXTURE_2D, 0, rect[:x], rect[:y], rect[:w], rect[:h], GL::RGBA, GL::UNSIGNED_BYTE, pixels_ptr)
          end

          GL.PixelStorei(GL::UNPACK_ROW_LENGTH, 0)
        else
          updates[:Size].times do |i|
            rect = ImTextureRect.new(updates_ptr + i * ImTextureRect.size)
            rect[:h].times do |line|
              pixels_ptr = tex.GetPixelsAt(rect[:x], rect[:y] + line)
              GL.TexSubImage2D(GL::TEXTURE_2D, 0, rect[:x], rect[:y] + line, rect[:w], 1, GL::RGBA, GL::UNSIGNED_BYTE, pixels_ptr)
            end
          end
        end
      end

      tex.SetStatus(ImTextureStatus_OK)
      GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))
      return
    end

    if status == ImTextureStatus_WantDestroy && tex[:UnusedFrames] > 0
      ImplOpenGL3_DestroyTexture(tex)
    end
  end

  def self.ImplOpenGL3_CreateDeviceObjects()
    last_texture = ' ' * 4
    last_array_buffer = ' ' * 4
    GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)
    GL.GetIntegerv(GL::ARRAY_BUFFER_BINDING, last_array_buffer)

    last_vertex_array = ' ' * 4
    GL.GetIntegerv(GL::VERTEX_ARRAY_BINDING, last_vertex_array)

    glsl_version = @@g_GlslVersionString.split[1].to_i

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
    precision highp float;
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

    vert_handle = GL.CreateShader(GL::VERTEX_SHADER)
    GL.ShaderSource(vert_handle, 2, [@@g_GlslVersionString, vertex_shader].pack('p*'), nil)
    GL.CompileShader(vert_handle)
    return false unless PrintShaderCompileStatus(vert_handle)

    frag_handle = GL.CreateShader(GL::FRAGMENT_SHADER)
    GL.ShaderSource(frag_handle, 2, [@@g_GlslVersionString, fragment_shader].pack('p*'), nil)
    GL.CompileShader(frag_handle)
    return false unless PrintShaderCompileStatus(frag_handle)

    @@g_ShaderHandle = GL.CreateProgram()
    GL.AttachShader(@@g_ShaderHandle, vert_handle)
    GL.AttachShader(@@g_ShaderHandle, frag_handle)
    GL.LinkProgram(@@g_ShaderHandle)
    return false unless PrintProgramLinkStatus(@@g_ShaderHandle)

    GL.DetachShader(@@g_ShaderHandle, vert_handle)
    GL.DetachShader(@@g_ShaderHandle, frag_handle)
    GL.DeleteShader(vert_handle)
    GL.DeleteShader(frag_handle)

    @@g_AttribLocationTex = GL.GetUniformLocation(@@g_ShaderHandle, 'Texture')
    @@g_AttribLocationProjMtx = GL.GetUniformLocation(@@g_ShaderHandle, 'ProjMtx')
    @@g_AttribLocationVtxPos = GL.GetAttribLocation(@@g_ShaderHandle, 'Position')
    @@g_AttribLocationVtxUV = GL.GetAttribLocation(@@g_ShaderHandle, 'UV')
    @@g_AttribLocationVtxColor = GL.GetAttribLocation(@@g_ShaderHandle, 'Color')

    vbo_mem = ' ' * 4
    elem_mem = ' ' * 4
    GL.GenBuffers(1, vbo_mem)
    GL.GenBuffers(1, elem_mem)
    @@g_VboHandle = vbo_mem.unpack1('L')
    @@g_ElementsHandle = elem_mem.unpack1('L')

    GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))
    GL.BindBuffer(GL::ARRAY_BUFFER, last_array_buffer.unpack1('L'))
    GL.BindVertexArray(last_vertex_array.unpack1('L'))

    true
  end

  def self.ImplOpenGL3_DestroyDeviceObjects()
    if @@g_VboHandle != 0
      GL.DeleteBuffers(1, [@@g_VboHandle].pack('L'))
      @@g_VboHandle = 0
    end

    if @@g_ElementsHandle != 0
      GL.DeleteBuffers(1, [@@g_ElementsHandle].pack('L'))
      @@g_ElementsHandle = 0
    end

    if @@g_ShaderHandle != 0
      GL.DeleteProgram(@@g_ShaderHandle)
      @@g_ShaderHandle = 0
    end

    # Destroy textures retained only by the renderer backend.
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    textures = platform_io[:Textures]
    tex_data = textures[:Data]

    if !tex_data.nil? && !tex_data.null?
      pointer_stride = FFI::Pointer.size
      textures[:Size].times do |i|
        tex_ptr = (tex_data + pointer_stride * i).read_pointer
        next if tex_ptr.nil? || tex_ptr.null?

        tex = ImTextureData.new(tex_ptr)
        ImplOpenGL3_DestroyTexture(tex) if tex[:RefCount] == 1
      end
    end
  end

end
