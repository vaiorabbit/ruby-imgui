require 'ffi'
require 'opengl'
include OpenGL

require_relative 'imgui'

module ImGui

  @@g_FontTexture = nil

  def self.ImplOpenGL2_Init()
    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] =  FFI::MemoryPointer.from_string("imgui_impl_opengl2")
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
    glGetIntegerv(GL_TEXTURE_BINDING_2D, last_texture)
    last_polygon_mode = ' ' * 8
    glGetIntegerv(GL_POLYGON_MODE, last_polygon_mode)
    last_viewport = ' ' * 16
    glGetIntegerv(GL_VIEWPORT, last_viewport)
    last_scissor_box = ' ' * 16
    glGetIntegerv(GL_SCISSOR_BOX, last_scissor_box)
    glPushAttrib(GL_ENABLE_BIT | GL_COLOR_BUFFER_BIT | GL_TRANSFORM_BIT)
    last_tex_env_mode = ' ' * 4
    glGetTexEnviv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, last_tex_env_mode)

    #  Setup desired GL state
    ImplOpenGL2_SetupRenderState(draw_data, fb_width, fb_height)

    #  Will project scissor/clipping rectangles into framebuffer space
    clip_off = draw_data[:DisplayPos]         #  (0,0) unless using multi-viewports
    clip_scale = draw_data[:FramebufferScale] #  (1,1) unless using retina display which are often (2,2)

    #  Render command lists
    draw_data[:CmdListsCount].times do |n|
      cmd_list = ImDrawList.new((draw_data[:CmdLists] + 8 * n).read_pointer) # 8 == const ImDrawList*
      vtx_buffer = ImDrawVert.new(cmd_list[:VtxBuffer][:Data]) # const ImDrawVert*
      idx_buffer = cmd_list[:IdxBuffer][:Data] # const ImDrawIdx*
      glVertexPointer(2, GL_FLOAT, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:pos))) )
      glTexCoordPointer(2, GL_FLOAT, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:uv))) )
      glColorPointer(4, GL_UNSIGNED_BYTE, ImDrawVert.size,  Fiddle::Pointer.new((cmd_list[:VtxBuffer][:Data] + vtx_buffer.offset_of(:col))) )

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
            glScissor(clip_rect[:x].to_i, (fb_height - clip_rect[:w]).to_i, (clip_rect[:z] - clip_rect[:x]).to_i, (clip_rect[:w] - clip_rect[:y]).to_i)

            #  Bind texture, Draw
            glBindTexture(GL_TEXTURE_2D, pcmd[:TextureId].address)
            glDrawElements(GL_TRIANGLES, pcmd[:ElemCount], GL_UNSIGNED_SHORT, Fiddle::Pointer.new(idx_buffer.address))
          end

        end
        idx_buffer += pcmd[:ElemCount] * 2 # 2 == ImDrawIdx(:ushort).size
      end
    end

    #  Restore modified GL state
    glDisableClientState(GL_COLOR_ARRAY)
    glDisableClientState(GL_TEXTURE_COORD_ARRAY)
    glDisableClientState(GL_VERTEX_ARRAY)
    glBindTexture(GL_TEXTURE_2D, last_texture.unpack1('L'))
    glMatrixMode(GL_MODELVIEW)
    glPopMatrix()
    glMatrixMode(GL_PROJECTION)
    glPopMatrix()
    glPopAttrib()
    last_polygon_mode = last_polygon_mode.unpack('L2')
    glPolygonMode(GL_FRONT, last_polygon_mode[0])
    glPolygonMode(GL_BACK, last_polygon_mode[1])
    last_viewport = last_viewport.unpack('L4')
    glViewport(last_viewport[0], last_viewport[1], last_viewport[2], last_viewport[3])
    last_scissor_box = last_scissor_box.unpack('L4')
    glScissor(last_scissor_box[0], last_scissor_box[1], last_scissor_box[2], last_scissor_box[3])
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, last_tex_env_mode.unpack1('L'))
  end

  # private

  def self.ImplOpenGL2_SetupRenderState(draw_data, fb_width, fb_height)
    # Setup render state: alpha-blending enabled, no face culling, no depth testing, scissor enabled, vertex/texcoord/color pointers, polygon fill.
    glEnable(GL_BLEND)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
    glDisable(GL_CULL_FACE)
    glDisable(GL_DEPTH_TEST)
    glDisable(GL_LIGHTING)
    glDisable(GL_COLOR_MATERIAL)
    glEnable(GL_SCISSOR_TEST)
    glEnableClientState(GL_VERTEX_ARRAY)
    glEnableClientState(GL_TEXTURE_COORD_ARRAY)
    glEnableClientState(GL_COLOR_ARRAY)
    glEnable(GL_TEXTURE_2D)
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL)
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE)

    #  If you are using this code with non-legacy OpenGL header/contexts (which you should not, prefer using imgui_impl_opengl3.cpp!!),
    #  you may need to backup/reset/restore current shader using the lines below. DO NOT MODIFY THIS FILE! Add the code in your calling function:
    #   GLint last_program;
    #   glGetIntegerv(GL_CURRENT_PROGRAM, &last_program);
    #   glUseProgram(0);
    #   ImGui_ImplOpenGL2_RenderDrawData(...);
    #   glUseProgram(last_program)

    #  Setup viewport, orthographic projection matrix
    #  Our visible imgui space lies from draw_data->DisplayPos (top left) to draw_data->DisplayPos+data_data->DisplaySize (bottom right). DisplayPos is (0,0) for single viewport apps.
    glViewport(0, 0, fb_width, fb_height)
    glMatrixMode(GL_PROJECTION)
    glPushMatrix()
    glLoadIdentity()
    glOrtho(draw_data[:DisplayPos][:x], draw_data[:DisplayPos][:x] + draw_data[:DisplaySize][:x], draw_data[:DisplayPos][:y] + draw_data[:DisplaySize][:y], draw_data[:DisplayPos][:y], -1.0, +1.0)
    glMatrixMode(GL_MODELVIEW)
    glPushMatrix()
    glLoadIdentity()
  end

  def self.ImplOpenGL2_CreateFontsTexture()
    #  Build texture atlas
    io = ImGuiIO.new(ImGui::GetIO())
    pixels = FFI::MemoryPointer.new :pointer
    width = FFI::MemoryPointer.new :int
    height = FFI::MemoryPointer.new :int
    ImGui::FontAtlas_GetTexDataAsRGBA32(io[:Fonts], pixels, width, height, nil)   #  Load as RGBA 32-bits (75% of the memory is wasted, but default font is so small) because it is more likely to be compatible with user's existing shaders. If your ImTextureId represent a higher-level concept than just a GL texture id, consider calling GetTexDataAsAlpha8() instead to save on GPU memory.

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
    ImFontAtlas.new(io[:Fonts])[:TexID] = @@g_FontTexture.unpack1('L')

    #  Restore state
    glBindTexture(GL_TEXTURE_2D, last_texture.unpack1('L'))

    return true
  end

  def self.ImplOpenGL2_DestroyFontsTexture()
    if @@g_FontTexture != 0
      io = ImGuiIO.new(ImGui::GetIO())
      glDeleteTextures(1, @@g_FontTexture)
      ImFontAtlas.new(io[:Fonts])[:TexID] = 0
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
