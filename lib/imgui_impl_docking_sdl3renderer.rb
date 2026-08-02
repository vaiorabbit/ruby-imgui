require 'ffi'
require 'sdl3'
require_relative 'imgui'

module ImGui

  class ImGui_ImplDockingSDLRenderer3_Data < FFI::Struct
    layout(
      :Renderer, :pointer
    )
  end

  class ImGui_ImplDockingSDLRenderer3_RenderState < FFI::Struct
    layout(
      :Renderer, :pointer
    )
  end

  @@g_DockingSDL3BackendRendererName = FFI::MemoryPointer.from_string('imgui_impl_docking_sdlrenderer3')
  @@g_DockingSDL3BackendRendererUserData = {}
  @@g_DockingSDL3RendererResetRenderStateCallback = FFI::Function.new(:void, [:pointer, :pointer]) { |_draw_list, _draw_cmd| }
  @@g_DockingSDL3RendererSetSamplerLinearCallback = FFI::Function.new(:void, [:pointer, :pointer]) do |_draw_list, _draw_cmd|
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData
    backend_data[:current_scale_mode] = SDL::SCALEMODE_LINEAR if backend_data != nil
  end
  @@g_DockingSDL3RendererSetSamplerNearestCallback = FFI::Function.new(:void, [:pointer, :pointer]) do |_draw_list, _draw_cmd|
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData
    backend_data[:current_scale_mode] = SDL::SCALEMODE_NEAREST if backend_data != nil
  end

  def self.ImGui_ImplDockingSDLRenderer3_GetBackendData
    return nil if ImGui::GetCurrentContext() == nil

    @@g_DockingSDL3BackendRendererUserData[ImGui::GetCurrentContext().address]
  end

  def self.ImplDockingSDL3Renderer_Init(renderer)
    io = ImGuiIO.new(ImGui::GetIO())

    backend_data = {
      bd: ImGui_ImplDockingSDLRenderer3_Data.new,
      color_buffer: nil,
      color_buffer_capacity: 0,
      render_state: nil,
      current_scale_mode: SDL::SCALEMODE_LINEAR
    }
    backend_data[:bd][:Renderer] = renderer

    @@g_DockingSDL3BackendRendererUserData[ImGui::GetCurrentContext().address] = backend_data

    io[:BackendRendererUserData] = backend_data[:bd]
    io[:BackendRendererName] = @@g_DockingSDL3BackendRendererName
    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasVtxOffset
    io[:BackendFlags] |= ImGuiBackendFlags_RendererHasTextures

    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    platform_io[:DrawCallback_ResetRenderState] = @@g_DockingSDL3RendererResetRenderStateCallback
    platform_io[:DrawCallback_SetSamplerLinear] = @@g_DockingSDL3RendererSetSamplerLinearCallback
    platform_io[:DrawCallback_SetSamplerNearest] = @@g_DockingSDL3RendererSetSamplerNearestCallback
    true
  end

  def self.ImplDockingSDL3Renderer_Shutdown
    io = ImGuiIO.new(ImGui::GetIO())
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())

    self.ImplDockingSDL3Renderer_DestroyDeviceObjects

    if ImGui::GetCurrentContext() != nil
      @@g_DockingSDL3BackendRendererUserData.delete(ImGui::GetCurrentContext().address)
    end

    io[:BackendRendererName] = nil
    io[:BackendRendererUserData] = nil
    io[:BackendFlags] &= ~(ImGuiBackendFlags_RendererHasVtxOffset | ImGuiBackendFlags_RendererHasTextures)
    platform_io.ClearRendererHandlers
  end

  def self.ImplDockingSDL3Renderer_SetupRenderState(renderer)
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData

    SDL.SetRenderViewport(renderer, nil)
    SDL.SetRenderClipRect(renderer, nil)
    backend_data[:current_scale_mode] = SDL::SCALEMODE_LINEAR if backend_data != nil
  end

  def self.ImplDockingSDL3Renderer_NewFrame
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData
    raise 'Context or backend not initialized! Did you call ImGui::ImplDockingSDL3Renderer_Init()?' if backend_data == nil
  end

  def self.ImplDockingSDL3Renderer_EnsureColorBuffer(backend_data, num_vertices)
    if backend_data[:color_buffer] == nil || backend_data[:color_buffer_capacity] < num_vertices
      backend_data[:color_buffer] = FFI::MemoryPointer.new(SDL::FColor, num_vertices)
      backend_data[:color_buffer_capacity] = num_vertices
    end
    backend_data[:color_buffer]
  end

  def self.ImplDockingSDL3Renderer_UpdateColorBuffer(backend_data, color_src, color_stride, num_vertices)
    color_dst = ImplDockingSDL3Renderer_EnsureColorBuffer(backend_data, num_vertices)
    num_vertices.times do |i|
      packed = (color_src + i * color_stride).read_uint
      color = SDL::FColor.new(color_dst + i * SDL::FColor.size)
      color[:r] = ((packed >> 0) & 0xff) / 255.0
      color[:g] = ((packed >> 8) & 0xff) / 255.0
      color[:b] = ((packed >> 16) & 0xff) / 255.0
      color[:a] = ((packed >> 24) & 0xff) / 255.0
    end
    color_dst
  end

  def self.ImplDockingSDL3Renderer_UpdateTexture(tex_raw)
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData
    return if backend_data == nil

    tex = tex_raw.kind_of?(ImTextureData) ? tex_raw : ImTextureData.new(tex_raw)

    case tex[:Status]
    when ImTextureStatus_WantCreate
      return if tex[:Format] != ImTextureFormat_RGBA32

      sdl_texture = SDL.CreateTexture(backend_data[:bd][:Renderer], SDL::PIXELFORMAT_RGBA32, SDL::TEXTUREACCESS_STATIC, tex[:Width], tex[:Height])
      raise 'Backend failed to create SDL texture!' if sdl_texture == nil

      SDL.UpdateTexture(sdl_texture, nil, tex.GetPixels, tex.GetPitch)
      SDL.SetTextureBlendMode(sdl_texture, SDL::BLENDMODE_BLEND)
      SDL.SetTextureScaleMode(sdl_texture, SDL::SCALEMODE_LINEAR)
      tex[:BackendUserData] = sdl_texture
      tex.SetTexID(sdl_texture.address)
      tex.SetStatus(ImTextureStatus_OK)

    when ImTextureStatus_WantUpdates
      sdl_texture = tex[:BackendUserData]
      return if sdl_texture == nil || sdl_texture.address == 0

      updates = tex[:Updates]
      updates[:Size].times do |i|
        rect = ImTextureRect.new(updates[:Data] + ImTextureRect.size * i)
        sdl_rect = SDL::Rect.new
        sdl_rect[:x] = rect[:x]
        sdl_rect[:y] = rect[:y]
        sdl_rect[:w] = rect[:w]
        sdl_rect[:h] = rect[:h]
        SDL.UpdateTexture(sdl_texture, sdl_rect, tex.GetPixelsAt(rect[:x], rect[:y]), tex.GetPitch)
      end
      tex.SetStatus(ImTextureStatus_OK)

    when ImTextureStatus_WantDestroy
      sdl_texture = tex[:BackendUserData]
      SDL.DestroyTexture(sdl_texture) if sdl_texture != nil && sdl_texture.address != 0
      tex[:BackendUserData] = nil
      tex.SetTexID(0)
      tex.SetStatus(ImTextureStatus_Destroyed)
    end
  end

  def self.ImplDockingSDL3Renderer_RenderDrawData(draw_data_raw, renderer = nil)
    draw_data = draw_data_raw.kind_of?(ImDrawData) ? draw_data_raw : ImDrawData.new(draw_data_raw)
    backend_data = ImGui_ImplDockingSDLRenderer3_GetBackendData
    return if backend_data == nil

    renderer = backend_data[:bd][:Renderer] if renderer == nil
    return if renderer == nil

    rsx = FFI::MemoryPointer.new(:float)
    rsy = FFI::MemoryPointer.new(:float)
    SDL.GetRenderScale(renderer, rsx, rsy)
    render_scale = ImVec2.create(0.0, 0.0)
    render_scale[:x] = rsx.read_float == 1.0 ? draw_data[:FramebufferScale][:x] : 1.0
    render_scale[:y] = rsy.read_float == 1.0 ? draw_data[:FramebufferScale][:y] : 1.0

    fb_width = (draw_data[:DisplaySize][:x] * render_scale[:x]).to_i
    fb_height = (draw_data[:DisplaySize][:y] * render_scale[:y]).to_i
    return if fb_width == 0 || fb_height == 0

    if draw_data[:Textures] != nil && draw_data[:Textures].address != 0
      textures = ImVector_ImTextureDataPtr.new(draw_data[:Textures])
      textures_data = textures[:Data]
      if textures_data != nil && textures_data.address != 0
        textures[:Size].times do |i|
          tex_ptr = (textures_data + FFI.type_size(:pointer) * i).read_pointer
          next if tex_ptr == nil || tex_ptr.address == 0

          tex = ImTextureData.new(tex_ptr)
          ImplDockingSDL3Renderer_UpdateTexture(tex) if tex[:Status] != ImTextureStatus_OK
        end
      end
    end

    old_viewport_enabled = SDL.RenderViewportSet(renderer)
    old_clip_enabled = SDL.RenderClipEnabled(renderer)
    old_viewport = SDL::Rect.new
    old_clip_rect = SDL::Rect.new
    SDL.GetRenderViewport(renderer, old_viewport)
    SDL.GetRenderClipRect(renderer, old_clip_rect)

    ImplDockingSDL3Renderer_SetupRenderState(renderer)

    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    backend_data[:render_state] = ImGui_ImplDockingSDLRenderer3_RenderState.new
    backend_data[:render_state][:Renderer] = renderer
    platform_io[:Renderer_RenderState] = backend_data[:render_state]

    clip_off = draw_data[:DisplayPos]
    clip_scale = render_scale
    last_scale_mode = backend_data[:current_scale_mode]

    cmd_lists = draw_data[:CmdLists]
    cmd_lists_data = cmd_lists[:Data]
    if cmd_lists_data != nil && cmd_lists_data.address != 0
      cmd_lists[:Size].times do |n|
        cmd_list_ptr = (cmd_lists_data + FFI.type_size(:pointer) * n).read_pointer
        next if cmd_list_ptr == nil || cmd_list_ptr.address == 0

        cmd_list = ImDrawList.new(cmd_list_ptr)
        vtx_buffer = cmd_list[:VtxBuffer][:Data]
        idx_buffer = cmd_list[:IdxBuffer][:Data]

        cmd_list[:CmdBuffer][:Size].times do |cmd_i|
          pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i)
          callback_ptr = pcmd[:UserCallback]
          if callback_ptr != nil && callback_ptr.address != 0
            callback_addr = callback_ptr.address
            if callback_addr == @@g_DockingSDL3RendererResetRenderStateCallback.address
              ImplDockingSDL3Renderer_SetupRenderState(renderer)
            elsif callback_addr == @@g_DockingSDL3RendererSetSamplerLinearCallback.address
              backend_data[:current_scale_mode] = SDL::SCALEMODE_LINEAR
            elsif callback_addr == @@g_DockingSDL3RendererSetSamplerNearestCallback.address
              backend_data[:current_scale_mode] = SDL::SCALEMODE_NEAREST
            else
              FFI::Function.new(:void, [:pointer, :pointer], callback_ptr).call(cmd_list.pointer, pcmd.pointer)
            end
            next
          end

          clip_min = ImVec2.create((pcmd[:ClipRect][:x] - clip_off[:x]) * clip_scale[:x], (pcmd[:ClipRect][:y] - clip_off[:y]) * clip_scale[:y])
          clip_max = ImVec2.create((pcmd[:ClipRect][:z] - clip_off[:x]) * clip_scale[:x], (pcmd[:ClipRect][:w] - clip_off[:y]) * clip_scale[:y])
          clip_min[:x] = 0.0 if clip_min[:x] < 0.0
          clip_min[:y] = 0.0 if clip_min[:y] < 0.0
          clip_max[:x] = fb_width.to_f if clip_max[:x] > fb_width
          clip_max[:y] = fb_height.to_f if clip_max[:y] > fb_height
          next if clip_max[:x] <= clip_min[:x] || clip_max[:y] <= clip_min[:y]

          sdl_rect = SDL::Rect.new
          sdl_rect[:x] = clip_min[:x].to_i
          sdl_rect[:y] = clip_min[:y].to_i
          sdl_rect[:w] = (clip_max[:x] - clip_min[:x]).to_i
          sdl_rect[:h] = (clip_max[:y] - clip_min[:y]).to_i
          SDL.SetRenderClipRect(renderer, sdl_rect)

          vtx_base = pcmd[:VtxOffset] * ImDrawVert.size
          xy = vtx_buffer + vtx_base + ImDrawVert.offset_of(:pos)
          uv = vtx_buffer + vtx_base + ImDrawVert.offset_of(:uv)
          color_src = vtx_buffer + vtx_base + ImDrawVert.offset_of(:col)

          num_vertices = cmd_list[:VtxBuffer][:Size] - pcmd[:VtxOffset]
          color_f = ImplDockingSDL3Renderer_UpdateColorBuffer(backend_data, color_src, ImDrawVert.size, num_vertices)

          tex_id = pcmd.GetTexID
          tex_ptr = tex_id == 0 ? nil : FFI::Pointer.new(tex_id)
          if last_scale_mode != backend_data[:current_scale_mode]
            SDL.FlushRenderer(renderer)
            last_scale_mode = backend_data[:current_scale_mode]
          end
          SDL.SetTextureScaleMode(tex_ptr, backend_data[:current_scale_mode]) if tex_ptr != nil
          SDL.RenderGeometryRaw(renderer,
                                tex_ptr,
                                xy, ImDrawVert.size,
                                color_f, SDL::FColor.size,
                                uv, ImDrawVert.size,
                                num_vertices,
                                idx_buffer + FFI.type_size(:ImDrawIdx) * pcmd[:IdxOffset], pcmd[:ElemCount], FFI.type_size(:ImDrawIdx))
        end
      end
    end

    platform_io[:Renderer_RenderState] = nil
    backend_data[:render_state] = nil

    SDL.SetRenderViewport(renderer, old_viewport_enabled ? old_viewport : nil)
    SDL.SetRenderClipRect(renderer, old_clip_enabled ? old_clip_rect : nil)
  end

  def self.ImplDockingSDL3Renderer_CreateDeviceObjects
  end

  def self.ImplDockingSDL3Renderer_DestroyDeviceObjects
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    textures = platform_io[:Textures]
    textures_data = textures[:Data]
    if textures_data != nil && textures_data.address != 0
      textures[:Size].times do |i|
        tex_ptr = (textures_data + FFI.type_size(:pointer) * i).read_pointer
        next if tex_ptr == nil || tex_ptr.address == 0

        tex = ImTextureData.new(tex_ptr)
        if tex[:RefCount] == 1
          tex.SetStatus(ImTextureStatus_WantDestroy)
          ImplDockingSDL3Renderer_UpdateTexture(tex)
        end
      end
    end
  end

end