require 'ffi'
require 'opengl'

require_relative 'imgui'

module ImGui

  @@g_FontTexture = nil
  @@g_BackendRendererName = FFI::MemoryPointer.from_string("imgui_impl_opengl2")

  def self.ImplOpenGL2_Init()
    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] = @@g_BackendRendererName

    return true
  end

  def self.ImplOpenGL2_Shutdown()
    ImplOpenGL2_DestroyDeviceObjects()
  end

  def self.ImplOpenGL2_NewFrame()
    ImplOpenGL2_CreateDeviceObjects() if @@g_FontTexture == nil
  end

  def self.ImplOpenGL2_RenderDrawData(draw_data_raw)
    #  Avoid rendering when minimized, scale coordinates for retina displays (screen coordinates != framebuffer coordinates)
    draw_data = ImDrawData.new(draw_data_raw)
    fb_width = (draw_data[:DisplaySize][:x] * draw_data[:FramebufferScale][:x]).to_i
    fb_height = (draw_data[:DisplaySize][:y] * draw_data[:FramebufferScale][:y]).to_i

    return if fb_width == 0 || fb_height == 0

    #  Backup GL state
    last_texture = ' ' * 4
    GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)
    last_polygon_mode = ' ' * 8
    GL.GetIntegerv(GL::POLYGON_MODE, last_polygon_mode)
    last_viewport = ' ' * 16
    GL.GetIntegerv(GL::VIEWPORT, last_viewport)
    last_scissor_box = ' ' * 16
    GL.GetIntegerv(GL::SCISSOR_BOX, last_scissor_box)
    GL.PushAttrib(GL::ENABLE_BIT | GL::COLOR_BUFFER_BIT | GL::TRANSFORM_BIT)
    last_shade_model = ' ' * 4
    GL.GetIntegerv(GL::SHADE_MODEL, last_shade_model)
    last_tex_env_mode = ' ' * 4
    GL.GetTexEnviv(GL::TEXTURE_ENV, GL::TEXTURE_ENV_MODE, last_tex_env_mode)

    #  Setup desired GL state
    ImplOpenGL2_SetupRenderState(draw_data, fb_width, fb_height)

    #  Will project scissor/clipping rectangles into framebuffer space
    clip_off = draw_data[:DisplayPos]         #  (0,0) unless using multi-viewports
    clip_scale = draw_data[:FramebufferScale] #  (1,1) unless using retina display which are often (2,2)

    #  Render command lists
    draw_data[:CmdListsCount].times do |n|
      cmd_list = ImDrawList.new((draw_data[:CmdLists][:Data] + 8 * n).read_pointer) # 8 == const ImDrawList*
      vtx_buffer = ImDrawVert.new(cmd_list[:VtxBuffer][:Data]) # const ImDrawVert*
      idx_buffer = cmd_list[:IdxBuffer][:Data] # const ImDrawIdx*
      GL.VertexPointer(2, GL::FLOAT, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:pos))) )
      GL.TexCoordPointer(2, GL::FLOAT, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:uv))) )
      GL.ColorPointer(4, GL::UNSIGNED_BYTE, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:col))) )

      cmd_list[:CmdBuffer][:Size].times do |cmd_i|
        pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i) # const ImDrawCmd*
        if pcmd[:UserCallback] != nil
          # [TODO] Handle user callback (Ref.: https://github.com/ffi/ffi/wiki/Callbacks )

          #  User callback, registered via ImDrawList::AddCallback()
          #  (ImDrawCallback_ResetRenderState is a special callback value used by the user to request the renderer to reset render state.)
          # if pcmd[:UserCallback] == :ImDrawCallback_ResetRenderState
              ImGui_ImplOpenGL2_SetupRenderState(draw_data, fb_width, fb_height)
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
            GL.Scissor(clip_rect[:x].to_i, (fb_height - clip_rect[:w]).to_i, (clip_rect[:z] - clip_rect[:x]).to_i, (clip_rect[:w] - clip_rect[:y]).to_i)

            #  Bind texture, Draw
            GL.BindTexture(GL::TEXTURE_2D, pcmd.GetTexID())
            GL.DrawElements(GL::TRIANGLES, pcmd[:ElemCount], GL::UNSIGNED_SHORT, Fiddle::Pointer.new(idx_buffer.address))
          end

        end
        idx_buffer += pcmd[:ElemCount] * 2 # 2 == ImDrawIdx(:ushort).size
      end
    end

    #  Restore modified GL state
    GL.DisableClientState(GL::COLOR_ARRAY)
    GL.DisableClientState(GL::TEXTURE_COORD_ARRAY)
    GL.DisableClientState(GL::VERTEX_ARRAY)
    GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))
    GL.MatrixMode(GL::MODELVIEW)
    GL.PopMatrix()
    GL.MatrixMode(GL::PROJECTION)
    GL.PopMatrix()
    GL.PopAttrib()
    last_polygon_mode = last_polygon_mode.unpack('L2')
    GL.PolygonMode(GL::FRONT, last_polygon_mode[0])
    GL.PolygonMode(GL::BACK, last_polygon_mode[1])
    last_viewport = last_viewport.unpack('L4')
    GL.Viewport(last_viewport[0], last_viewport[1], last_viewport[2], last_viewport[3])
    last_scissor_box = last_scissor_box.unpack('L4')
    GL.Scissor(last_scissor_box[0], last_scissor_box[1], last_scissor_box[2], last_scissor_box[3])
    GL.ShadeModel(last_shade_model.unpack1('L'))
    GL.TexEnvi(GL::TEXTURE_ENV, GL::TEXTURE_ENV_MODE, last_tex_env_mode.unpack1('L'))
  end

  # private

  def self.ImplOpenGL2_SetupRenderState(draw_data, fb_width, fb_height)
    # Setup render state: alpha-blending enabled, no face culling, no depth testing, scissor enabled, vertex/texcoord/color pointers, polygon fill.
    GL.Enable(GL::BLEND)
    GL.BlendFunc(GL::SRC_ALPHA, GL::ONE_MINUS_SRC_ALPHA)
    # GL.BlendFuncSeparate(GL::SRC_ALPHA, GL::ONE_MINUS_SRC_ALPHA, GL::ONE, GL::ONE_MINUS_SRC_ALPHA) # In order to composite our output buffer we need to preserve alpha
    GL.Disable(GL::CULL_FACE)
    GL.Disable(GL::STENCIL_TEST)
    GL.Disable(GL::DEPTH_TEST)
    GL.Disable(GL::LIGHTING)
    GL.Disable(GL::COLOR_MATERIAL)
    GL.Enable(GL::SCISSOR_TEST)
    GL.EnableClientState(GL::VERTEX_ARRAY)
    GL.EnableClientState(GL::TEXTURE_COORD_ARRAY)
    GL.EnableClientState(GL::COLOR_ARRAY)
    GL.DisableClientState(GL::NORMAL_ARRAY)
    GL.Enable(GL::TEXTURE_2D)
    GL.PolygonMode(GL::FRONT_AND_BACK, GL::FILL)
    GL.ShadeModel(GL::SMOOTH)
    GL.TexEnvi(GL::TEXTURE_ENV, GL::TEXTURE_ENV_MODE, GL::MODULATE)

    #  If you are using this code with non-legacy OpenGL header/contexts (which you should not, prefer using imgui_impl_opengl3.cpp!!),
    #  you may need to backup/reset/restore other state, e.g. for current shader using the commented lines below.
    #  (DO NOT MODIFY THIS FILE! Add the code in your calling function)
    #    GLint last_program;
    #    glGetIntegerv(GL::CURRENT_PROGRAM, &last_program);
    #    glUseProgram(0);
    #    ImGui_ImplOpenGL2_RenderDrawData(...);
    #    glUseProgram(last_program)
    #  There are potentially many more states you could need to clear/setup that we can't access from default headers.
    #  e.g. glBindBuffer(GL::ARRAY_BUFFER, 0), glDisable(GL::TEXTURE_CUBE_MAP).

    #  Setup viewport, orthographic projection matrix
    #  Our visible imgui space lies from draw_data->DisplayPos (top left) to draw_data->DisplayPos+data_data->DisplaySize (bottom right). DisplayPos is (0,0) for single viewport apps.
    GL.Viewport(0, 0, fb_width, fb_height)
    GL.MatrixMode(GL::PROJECTION)
    GL.PushMatrix()
    GL.LoadIdentity()
    GL.Ortho(draw_data[:DisplayPos][:x], draw_data[:DisplayPos][:x] + draw_data[:DisplaySize][:x], draw_data[:DisplayPos][:y] + draw_data[:DisplaySize][:y], draw_data[:DisplayPos][:y], -1.0, +1.0)
    GL.MatrixMode(GL::MODELVIEW)
    GL.PushMatrix()
    GL.LoadIdentity()
  end

  def self.ImplOpenGL2_CreateFontsTexture()
    #  Build texture atlas
    io = ImGuiIO.new(ImGui::GetIO())
    pixels = FFI::MemoryPointer.new :pointer
    width = FFI::MemoryPointer.new :int
    height = FFI::MemoryPointer.new :int
    io[:Fonts].GetTexDataAsRGBA32(pixels, width, height, nil)   #  Load as RGBA 32-bits (75% of the memory is wasted, but default font is so small) because it is more likely to be compatible with user's existing shaders. If your ImTextureId represent a higher-level concept than just a GL texture id, consider calling GetTexDataAsAlpha8() instead to save on GPU memory.

    #  Upload texture to graphics system
    last_texture = ' ' * 4
    @@g_FontTexture = ' ' * 4
    GL.GetIntegerv(GL::TEXTURE_BINDING_2D, last_texture)
    GL.GenTextures(1, @@g_FontTexture)
    GL.BindTexture(GL::TEXTURE_2D, @@g_FontTexture.unpack1('L'))
    GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MIN_FILTER, GL::LINEAR)
    GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MAG_FILTER, GL::LINEAR)
    GL.PixelStorei(GL::UNPACK_ROW_LENGTH, 0)
    # Ruby/FFI <-> Fiddle pointer exchange
    pixels_ptr = Fiddle::Pointer.new(pixels.read_pointer.address)
    GL.TexImage2D(GL::TEXTURE_2D, 0, GL::RGBA, width.read_uint, height.read_uint, 0, GL::RGBA, GL::UNSIGNED_BYTE, pixels_ptr)

    #  Store our identifier
    io[:Fonts][:TexID] = @@g_FontTexture.unpack1('L')

    #  Restore state
    GL.BindTexture(GL::TEXTURE_2D, last_texture.unpack1('L'))

    return true
  end

  def self.ImplOpenGL2_DestroyFontsTexture()
    if @@g_FontTexture != 0
      GL.DeleteTextures(1, @@g_FontTexture)
      io = ImGuiIO.new(ImGui::GetIO())
      io[:Fonts][:TexID] = 0
      @@g_FontTexture = 0
    end
  end

  def self.ImplOpenGL2_CreateDeviceObjects()
    return ImplOpenGL2_CreateFontsTexture()
  end

  def self.ImplOpenGL2_DestroyDeviceObjects()
    ImplOpenGL2_DestroyFontsTexture()
  end

end
