require 'ffi'
require 'sdl2'
require_relative 'imgui'

module ImGui

  class ImGui_ImplSDLRenderer_Data < FFI::Struct
    layout(
      :SDLRenderer, :pointer,
      :FontTexture, :pointer
    )
  end

  def self.ImGui_ImplSDLRenderer_GetBackendData()
    if ImGui::GetCurrentContext() != nil
      io = ImGuiIO.new(ImGui::GetIO())
      instance = ImGui_ImplSDLRenderer_Data.new(io[:BackendRendererUserData])
      return instance
    else
      return nil
    end
  end

  @@g_BackendRendererName = FFI::MemoryPointer.from_string("imgui_impl_sdlrenderer")
  @@g_BackendRendererUserData = nil

  def self.ImplSDLRenderer_Init(renderer)
    io = ImGuiIO.new(ImGui::GetIO())

    # Setup backend capabilities flags

    io[:BackendRendererName] = @@g_BackendRendererName

    @@g_BackendRendererUserData = ImGui_ImplSDLRenderer_Data.new
    @@g_BackendRendererUserData[:SDLRenderer] = renderer
    @@g_BackendRendererUserData[:FontTexture] = nil
    io[:BackendRendererUserData] = @@g_BackendRendererUserData

    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasVtxOffset # We can honor the ImDrawCmd::VtxOffset field, allowing for large meshes.

    return true
  end

  def self.ImplSDLRenderer_Shutdown()
    ImplSDLRenderer_DestroyDeviceObjects()
    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendRendererName] = nil
    io[:BackendRendererUserData] = nil
    @@g_BackendRendererUserData = nil
  end

  # [Internal]
  def self.ImplSDLRenderer_SetupRenderState()
    bd = ImGui_ImplSDLRenderer_GetBackendData()

    # Clear out any viewports and cliprect set by the user
    # FIXME: Technically speaking there are lots of other things we could backup/setup/restore during our render process.
    SDL_RenderSetViewport(bd[:SDLRenderer], nil)
    SDL_RenderSetClipRect(bd[:SDLRenderer], nil)
  end

  def self.ImplSDLRenderer_NewFrame()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDLRenderer_GetBackendData()
    ImGui::ImplSDLRenderer_CreateDeviceObjects() if bd[:FontTexture] == nil
  end

  def self.ImplSDLRenderer_RenderDrawData(draw_data_raw)
    draw_data = ImDrawData.new(draw_data_raw)
    bd = ImGui_ImplSDLRenderer_GetBackendData()

    # If there's a scale factor set by the user, use that instead
    # If the user has specified a scale factor to SDL_Renderer already via SDL_RenderSetScale(), SDL will scale whatever we pass
    # to SDL_RenderGeometryRaw() by that scale factor. In that case we don't want to be also scaling it ourselves here.
    rsx = FFI::MemoryPointer.new :float
    rsy = FFI::MemoryPointer.new :float
    SDL_RenderGetScale(bd[:SDLRenderer], rsx, rsy)
    render_scale = ImVec2.create(0, 0)
    render_scale[:x] = (rsx.read_float() == 1.0) ? draw_data[:FramebufferScale][:x] : 1.0
    render_scale[:y] = (rsy.read_float() == 1.0) ? draw_data[:FramebufferScale][:y] : 1.0

    # Avoid rendering when minimized, scale coordinates for retina displays (screen coordinates != framebuffer coordinates)
    fb_width = (draw_data[:DisplaySize][:x] * render_scale[:x]).to_i
    fb_height = (draw_data[:DisplaySize][:y] * render_scale[:y]).to_i
    return if fb_width == 0 || fb_height == 0

    # Backup SDL_Renderer state that will be modified to restore it afterwards
    oldViewport = SDL_Rect.new
    oldClipEnabled = FFI::MemoryPointer.new :bool
    oldClipRect = SDL_Rect.new

    oldClipEnabled = (SDL_RenderIsClipEnabled(bd[:SDLRenderer]) == SDL_TRUE)
    SDL_RenderGetViewport(bd[:SDLRenderer], oldViewport)
    SDL_RenderGetClipRect(bd[:SDLRenderer], oldClipRect)

    # Will project scissor/clipping rectangles into framebuffer space
    clip_off = draw_data[:DisplayPos] # (0,0) unless using multi-viewports
    clip_scale = render_scale

    # Render command lists
    ImplSDLRenderer_SetupRenderState()
    draw_data[:CmdListsCount].times do |n|
      cmd_list = ImDrawList.new((draw_data[:CmdLists].pointer + FFI.type_size(:pointer) * n).read_pointer)
      vtx_buffer = cmd_list[:VtxBuffer][:Data] # const ImDrawVert*
      idx_buffer = cmd_list[:IdxBuffer][:Data] # const ImDrawIdx*

      cmd_list[:CmdBuffer][:Size].times do |cmd_i|
        pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i) # const ImDrawCmd*
        if pcmd[:UserCallback] != nil
          # [TODO] Handle user callback (Ref.: https://github.com/ffi/ffi/wiki/Callbacks )

          #  User callback, registered via ImDrawList::AddCallback()
          #  (ImDrawCallback_ResetRenderState is a special callback value used by the user to request the renderer to reset render state.)
          # if pcmd[:UserCallback] == :ImDrawCallback_ResetRenderState
            ImGui_ImplSDLRenderer_SetupRenderState()
          # else
          #   pcmd[:UserCallback](cmd_list, pcmd)
          # end
        else
          clip_min = ImVec2.create((pcmd[:ClipRect][:x] - clip_off[:x]) * clip_scale[:x], (pcmd[:ClipRect][:y] - clip_off[:y]) * clip_scale[:y])
          clip_max = ImVec2.create((pcmd[:ClipRect][:z] - clip_off[:x]) * clip_scale[:x], (pcmd[:ClipRect][:w] - clip_off[:y]) * clip_scale[:y])

          clip_min[:x] = 0.0 if clip_min[:x] < 0.0
          clip_min[:y] = 0.0 if clip_min[:y] < 0.0
          clip_max[:x] = fb_width.to_f if clip_max[:x] > fb_width
          clip_max[:y] = fb_height.to_f if clip_max[:y] > fb_height
          next if (clip_max[:x] <= clip_min[:x] || clip_max[:y] <= clip_min[:y])

          r = SDL_Rect.new
          r[:x] = clip_min[:x].to_i
          r[:y] = clip_min[:y].to_i
          r[:w] = (clip_max[:x] - clip_min[:x]).to_i
          r[:h] = (clip_max[:y] - clip_min[:y]).to_i

          SDL_RenderSetClipRect(bd[:SDLRenderer], r.to_ptr)

          xy = vtx_buffer + (pcmd[:VtxOffset] + ImDrawVert.offset_of(:pos))
          uv = vtx_buffer + (pcmd[:VtxOffset] + ImDrawVert.offset_of(:uv))
          color = vtx_buffer + (pcmd[:VtxOffset] + ImDrawVert.offset_of(:col))

          SDL_RenderGeometryRaw(bd[:SDLRenderer], pcmd[:TextureId],
                                xy, ImDrawVert.size,
                                color, ImDrawVert.size,
                                uv, ImDrawVert.size,
                                cmd_list[:VtxBuffer][:Size] - pcmd[:VtxOffset],
                                idx_buffer + FFI.type_size(:ImDrawIdx) * pcmd[:IdxOffset], pcmd[:ElemCount], FFI.type_size(:ImDrawIdx)) # FFI.type_size(:ImDrawIdx) == FFI::Type::UINT16.size

          # Restore modified SDL_Renderer state
          SDL_RenderSetViewport(bd[:SDLRenderer], oldViewport)
          SDL_RenderSetClipRect(bd[:SDLRenderer], oldClipEnabled ? oldClipRect : nil)
        end
      end
    end
  end

  # Called by Init/NewFrame/Shutdown
  def self.ImplSDLRenderer_CreateFontsTexture()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDLRenderer_GetBackendData()

    # Build texture atlas
    pixels = FFI::MemoryPointer.new :pointer
    width = FFI::MemoryPointer.new :int
    height = FFI::MemoryPointer.new :int
    io[:Fonts].GetTexDataAsRGBA32(pixels, width, height, nil)   #  Load as RGBA 32-bits (75% of the memory is wasted, but default font is so small) because it is more likely to be compatible with user's existing shaders. If your ImTextureId represent a higher-level concept than just a GL texture id, consider calling GetTexDataAsAlpha8() instead to save on GPU memory.

    # Upload texture to graphics system
    bd[:FontTexture] = SDL_CreateTexture(bd[:SDLRenderer], SDL_PIXELFORMAT_RGBA32, SDL_TEXTUREACCESS_STATIC, width.read_int, height.read_int)
    if bd[:FontTexture] == nil
      SDL_Log("error creating texture")
      return false
    end

    SDL_UpdateTexture(bd[:FontTexture], nil, pixels.read_pointer, 4 * width.read_int)
    SDL_SetTextureBlendMode(bd[:FontTexture], SDL_BLENDMODE_BLEND)

    # Store our identifier
    io[:Fonts].SetTexID(bd[:FontTexture])

    return true
  end

  def self.ImplSDLRenderer_DestroyFontsTexture()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDLRenderer_GetBackendData()
    if bd[:FontTexture] != nil
      io[:Fonts].SetTexID(nil)
      SDL_DestroyTexture(bd[:FontTexture])
      bd[:FontTexture] = nil
    end
  end

  def self.ImplSDLRenderer_CreateDeviceObjects()
    return ImGui::ImplSDLRenderer_CreateFontsTexture()
  end

  def self.ImplSDLRenderer_DestroyDeviceObjects()
    ImGui::ImplSDLRenderer_DestroyFontsTexture()
  end

end
