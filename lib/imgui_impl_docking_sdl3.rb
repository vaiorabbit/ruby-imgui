require 'ffi'
require 'sdl3'
require_relative 'imgui'

module ImGui

  ImGui_ImplDockingSDL3_MouseCaptureMode_Disabled = 0
  ImGui_ImplDockingSDL3_MouseCaptureMode_Enabled = 1
  ImGui_ImplDockingSDL3_MouseCaptureMode_EnabledAfterDrag = 2

  ImGui_ImplDockingSDL3_GamepadMode_AutoFirst = 0
  ImGui_ImplDockingSDL3_GamepadMode_AutoAll = 1
  ImGui_ImplDockingSDL3_GamepadMode_Manual = 2

  @@g_DockingSDL3BackendPlatformName = FFI::MemoryPointer.from_string('imgui_impl_docking_sdl3')
  @@g_DockingSDL3BackendData = {}
  @@g_DockingSDL3PlatformFunctions = nil

  class ImGui_ImplDockingSDL3_Data
    attr_accessor :window, :window_id, :renderer, :time, :clipboard_text_data,
                  :use_vulkan, :want_update_monitors, :ime_window, :ime_data,
                  :ime_dirty, :mouse_window_id, :mouse_buttons_down, :mouse_cursors,
                  :mouse_last_cursor, :mouse_pending_leave_frame,
                  :mouse_can_use_global_state, :mouse_can_report_hovered_viewport,
                  :mouse_capture_mode, :gamepads, :gamepad_mode,
                  :want_update_gamepads_list, :monitor_memory, :viewport_data

    def initialize
      @window = nil
      @window_id = 0
      @renderer = nil
      @time = 0
      @clipboard_text_data = nil
      @use_vulkan = false
      @want_update_monitors = false
      @ime_window = nil
      @ime_data = ImGuiPlatformImeData.new
      @ime_data[:WantVisible] = false
      @ime_data[:WantTextInput] = false
      @ime_data[:InputPos][:x] = 0.0
      @ime_data[:InputPos][:y] = 0.0
      @ime_data[:InputLineHeight] = 0.0
      @ime_data[:ViewportId] = 0
      @ime_dirty = false
      @mouse_window_id = 0
      @mouse_buttons_down = 0
      @mouse_cursors = Array.new(ImGuiMouseCursor_COUNT) { nil }
      @mouse_last_cursor = nil
      @mouse_pending_leave_frame = 0
      @mouse_can_use_global_state = false
      @mouse_can_report_hovered_viewport = false
      @mouse_capture_mode = ImGui_ImplDockingSDL3_MouseCaptureMode_Disabled
      @gamepads = []
      @gamepad_mode = ImGui_ImplDockingSDL3_GamepadMode_AutoFirst
      @want_update_gamepads_list = true
      @monitor_memory = nil
      @viewport_data = {}
    end
  end

  class ImGui_ImplDockingSDL3_ViewportData
    attr_accessor :window, :parent_window, :window_id, :window_owned, :gl_context

    def initialize
      @window = nil
      @parent_window = nil
      @window_id = 0
      @window_owned = false
      @gl_context = nil
    end
  end

  def self.ImGui_ImplDockingSDL3_GetBackendData
    context = ImGui::GetCurrentContext()
    return nil if context == nil

    @@g_DockingSDL3BackendData[context.address]
  end

  def self.ImGui_ImplDockingSDL3_GetViewportToken(viewport)
    FFI::Pointer.new(viewport.pointer)
  end

  def self.ImGui_ImplDockingSDL3_GetViewportData(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return nil if bd == nil

    bd.viewport_data[viewport.pointer.address]
  end

  def self.ImGui_ImplDockingSDL3_SetViewportData(viewport_raw, data)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    if data == nil
      bd.viewport_data.delete(viewport.pointer.address)
      viewport[:PlatformUserData] = nil
    else
      bd.viewport_data[viewport.pointer.address] = data
      viewport[:PlatformUserData] = ImGui_ImplDockingSDL3_GetViewportToken(viewport)
    end
  end

  def self.ImGui_ImplDockingSDL3_IsTouchMouse(which_id)
    which_id == SDL::TOUCH_MOUSEID || which_id == 0xffffffff
  end

  def self.ImGui_ImplDockingSDL3_GetViewportForWindowID(window_id)
    return nil if window_id == 0

    viewport_ptr = ImGui::FindViewportByPlatformHandle(FFI::Pointer.new(window_id))
    return nil if viewport_ptr == nil || viewport_ptr.address == 0

    ImGuiViewport.new(viewport_ptr)
  end

  def self.ImGui_ImplDockingSDL3_GetSDLWindowFromViewport(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    handle = viewport[:PlatformHandle]
    return nil if handle == nil || handle.address == 0

    SDL.GetWindowFromID(handle.address)
  end

  def self.ImGui_ImplDockingSDL3_KeyEventToImGuiKey(keycode, scancode)
    case scancode
    when SDL::SCANCODE_KP_0 then ImGuiKey_Keypad0
    when SDL::SCANCODE_KP_1 then ImGuiKey_Keypad1
    when SDL::SCANCODE_KP_2 then ImGuiKey_Keypad2
    when SDL::SCANCODE_KP_3 then ImGuiKey_Keypad3
    when SDL::SCANCODE_KP_4 then ImGuiKey_Keypad4
    when SDL::SCANCODE_KP_5 then ImGuiKey_Keypad5
    when SDL::SCANCODE_KP_6 then ImGuiKey_Keypad6
    when SDL::SCANCODE_KP_7 then ImGuiKey_Keypad7
    when SDL::SCANCODE_KP_8 then ImGuiKey_Keypad8
    when SDL::SCANCODE_KP_9 then ImGuiKey_Keypad9
    when SDL::SCANCODE_KP_PERIOD then ImGuiKey_KeypadDecimal
    when SDL::SCANCODE_KP_DIVIDE then ImGuiKey_KeypadDivide
    when SDL::SCANCODE_KP_MULTIPLY then ImGuiKey_KeypadMultiply
    when SDL::SCANCODE_KP_MINUS then ImGuiKey_KeypadSubtract
    when SDL::SCANCODE_KP_PLUS then ImGuiKey_KeypadAdd
    when SDL::SCANCODE_KP_ENTER then ImGuiKey_KeypadEnter
    when SDL::SCANCODE_KP_EQUALS then ImGuiKey_KeypadEqual
    end

    case keycode
    when SDL::SDLK_TAB then ImGuiKey_Tab
    when SDL::SDLK_LEFT then ImGuiKey_LeftArrow
    when SDL::SDLK_RIGHT then ImGuiKey_RightArrow
    when SDL::SDLK_UP then ImGuiKey_UpArrow
    when SDL::SDLK_DOWN then ImGuiKey_DownArrow
    when SDL::SDLK_PAGEUP then ImGuiKey_PageUp
    when SDL::SDLK_PAGEDOWN then ImGuiKey_PageDown
    when SDL::SDLK_HOME then ImGuiKey_Home
    when SDL::SDLK_END then ImGuiKey_End
    when SDL::SDLK_INSERT then ImGuiKey_Insert
    when SDL::SDLK_DELETE then ImGuiKey_Delete
    when SDL::SDLK_BACKSPACE then ImGuiKey_Backspace
    when SDL::SDLK_SPACE then ImGuiKey_Space
    when SDL::SDLK_RETURN then ImGuiKey_Enter
    when SDL::SDLK_ESCAPE then ImGuiKey_Escape
    when SDL::SDLK_COMMA then ImGuiKey_Comma
    when SDL::SDLK_PERIOD then ImGuiKey_Period
    when SDL::SDLK_SEMICOLON then ImGuiKey_Semicolon
    when SDL::SDLK_CAPSLOCK then ImGuiKey_CapsLock
    when SDL::SDLK_SCROLLLOCK then ImGuiKey_ScrollLock
    when SDL::SDLK_NUMLOCKCLEAR then ImGuiKey_NumLock
    when SDL::SDLK_PRINTSCREEN then ImGuiKey_PrintScreen
    when SDL::SDLK_PAUSE then ImGuiKey_Pause
    when SDL::SDLK_LCTRL then ImGuiKey_LeftCtrl
    when SDL::SDLK_LSHIFT then ImGuiKey_LeftShift
    when SDL::SDLK_LALT then ImGuiKey_LeftAlt
    when SDL::SDLK_LGUI then ImGuiKey_LeftSuper
    when SDL::SDLK_RCTRL then ImGuiKey_RightCtrl
    when SDL::SDLK_RSHIFT then ImGuiKey_RightShift
    when SDL::SDLK_RALT then ImGuiKey_RightAlt
    when SDL::SDLK_RGUI then ImGuiKey_RightSuper
    when SDL::SDLK_APPLICATION then ImGuiKey_Menu
    when SDL::SDLK_0 then ImGuiKey_0
    when SDL::SDLK_1 then ImGuiKey_1
    when SDL::SDLK_2 then ImGuiKey_2
    when SDL::SDLK_3 then ImGuiKey_3
    when SDL::SDLK_4 then ImGuiKey_4
    when SDL::SDLK_5 then ImGuiKey_5
    when SDL::SDLK_6 then ImGuiKey_6
    when SDL::SDLK_7 then ImGuiKey_7
    when SDL::SDLK_8 then ImGuiKey_8
    when SDL::SDLK_9 then ImGuiKey_9
    when SDL::SDLK_A then ImGuiKey_A
    when SDL::SDLK_B then ImGuiKey_B
    when SDL::SDLK_C then ImGuiKey_C
    when SDL::SDLK_D then ImGuiKey_D
    when SDL::SDLK_E then ImGuiKey_E
    when SDL::SDLK_F then ImGuiKey_F
    when SDL::SDLK_G then ImGuiKey_G
    when SDL::SDLK_H then ImGuiKey_H
    when SDL::SDLK_I then ImGuiKey_I
    when SDL::SDLK_J then ImGuiKey_J
    when SDL::SDLK_K then ImGuiKey_K
    when SDL::SDLK_L then ImGuiKey_L
    when SDL::SDLK_M then ImGuiKey_M
    when SDL::SDLK_N then ImGuiKey_N
    when SDL::SDLK_O then ImGuiKey_O
    when SDL::SDLK_P then ImGuiKey_P
    when SDL::SDLK_Q then ImGuiKey_Q
    when SDL::SDLK_R then ImGuiKey_R
    when SDL::SDLK_S then ImGuiKey_S
    when SDL::SDLK_T then ImGuiKey_T
    when SDL::SDLK_U then ImGuiKey_U
    when SDL::SDLK_V then ImGuiKey_V
    when SDL::SDLK_W then ImGuiKey_W
    when SDL::SDLK_X then ImGuiKey_X
    when SDL::SDLK_Y then ImGuiKey_Y
    when SDL::SDLK_Z then ImGuiKey_Z
    when SDL::SDLK_F1 then ImGuiKey_F1
    when SDL::SDLK_F2 then ImGuiKey_F2
    when SDL::SDLK_F3 then ImGuiKey_F3
    when SDL::SDLK_F4 then ImGuiKey_F4
    when SDL::SDLK_F5 then ImGuiKey_F5
    when SDL::SDLK_F6 then ImGuiKey_F6
    when SDL::SDLK_F7 then ImGuiKey_F7
    when SDL::SDLK_F8 then ImGuiKey_F8
    when SDL::SDLK_F9 then ImGuiKey_F9
    when SDL::SDLK_F10 then ImGuiKey_F10
    when SDL::SDLK_F11 then ImGuiKey_F11
    when SDL::SDLK_F12 then ImGuiKey_F12
    when SDL::SDLK_F13 then ImGuiKey_F13
    when SDL::SDLK_F14 then ImGuiKey_F14
    when SDL::SDLK_F15 then ImGuiKey_F15
    when SDL::SDLK_F16 then ImGuiKey_F16
    when SDL::SDLK_F17 then ImGuiKey_F17
    when SDL::SDLK_F18 then ImGuiKey_F18
    when SDL::SDLK_F19 then ImGuiKey_F19
    when SDL::SDLK_F20 then ImGuiKey_F20
    when SDL::SDLK_F21 then ImGuiKey_F21
    when SDL::SDLK_F22 then ImGuiKey_F22
    when SDL::SDLK_F23 then ImGuiKey_F23
    when SDL::SDLK_F24 then ImGuiKey_F24
    when SDL::SDLK_AC_BACK then ImGuiKey_AppBack
    when SDL::SDLK_AC_FORWARD then ImGuiKey_AppForward
    else
      case scancode
      when SDL::SCANCODE_GRAVE then ImGuiKey_GraveAccent
      when SDL::SCANCODE_MINUS then ImGuiKey_Minus
      when SDL::SCANCODE_EQUALS then ImGuiKey_Equal
      when SDL::SCANCODE_LEFTBRACKET then ImGuiKey_LeftBracket
      when SDL::SCANCODE_RIGHTBRACKET then ImGuiKey_RightBracket
      when SDL::SCANCODE_NONUSBACKSLASH then ImGuiKey_Oem102
      when SDL::SCANCODE_BACKSLASH then ImGuiKey_Backslash
      when SDL::SCANCODE_SEMICOLON then ImGuiKey_Semicolon
      when SDL::SCANCODE_APOSTROPHE then ImGuiKey_Apostrophe
      when SDL::SCANCODE_COMMA then ImGuiKey_Comma
      when SDL::SCANCODE_PERIOD then ImGuiKey_Period
      when SDL::SCANCODE_SLASH then ImGuiKey_Slash
      else ImGuiKey_None
      end
    end
  end

  def self.ImGui_ImplDockingSDL3_UpdateKeyModifiers(sdl_key_mods)
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddKeyEvent(ImGuiMod_Ctrl, (sdl_key_mods & SDL::KMOD_CTRL) != 0)
    io.AddKeyEvent(ImGuiMod_Shift, (sdl_key_mods & SDL::KMOD_SHIFT) != 0)
    io.AddKeyEvent(ImGuiMod_Alt, (sdl_key_mods & SDL::KMOD_ALT) != 0)
    io.AddKeyEvent(ImGuiMod_Super, (sdl_key_mods & SDL::KMOD_GUI) != 0)
  end

  def self.ImGui_ImplDockingSDL3_CopyImeData(dst, src)
    dst[:WantVisible] = src[:WantVisible]
    dst[:WantTextInput] = src[:WantTextInput]
    dst[:InputPos][:x] = src[:InputPos][:x]
    dst[:InputPos][:y] = src[:InputPos][:y]
    dst[:InputLineHeight] = src[:InputLineHeight]
    dst[:ViewportId] = src[:ViewportId]
  end

  def self.ImGui_ImplDockingSDL3_GetClipboardText(_context)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return nil if bd == nil

    SDL.free(bd.clipboard_text_data) if bd.clipboard_text_data != nil
    bd.clipboard_text_data = SDL.HasClipboardText() ? SDL.GetClipboardText() : nil
    bd.clipboard_text_data
  end

  def self.ImGui_ImplDockingSDL3_SetClipboardText(_context, text)
    SDL.SetClipboardText(text)
  end

  def self.ImGui_ImplDockingSDL3_PlatformSetImeData(_context, _viewport, data_raw)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    data = data_raw.kind_of?(ImGuiPlatformImeData) ? data_raw : ImGuiPlatformImeData.new(data_raw)
    ImGui_ImplDockingSDL3_CopyImeData(bd.ime_data, data)
    bd.ime_dirty = true
    ImGui_ImplDockingSDL3_UpdateIme
  end

  def self.ImGui_ImplDockingSDL3_UpdateIme
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    data = bd.ime_data
    window = SDL.GetKeyboardFocus()

    if (!(data[:WantVisible] || data[:WantTextInput]) || bd.ime_window != window) && bd.ime_window != nil
      SDL.StopTextInput(bd.ime_window)
      bd.ime_window = nil
    end
    return if (!bd.ime_dirty && bd.ime_window == window) || window == nil

    bd.ime_dirty = false
    if data[:WantVisible]
      viewport_pos = ImVec2.create(0.0, 0.0)
      viewport = ImGui_ImplDockingSDL3_GetViewportForWindowID(SDL.GetWindowID(window))
      if viewport != nil
        viewport_pos[:x] = viewport[:Pos][:x]
        viewport_pos[:y] = viewport[:Pos][:y]
      end
      rect = SDL::Rect.new
      rect[:x] = (data[:InputPos][:x] - viewport_pos[:x]).to_i
      rect[:y] = (data[:InputPos][:y] - viewport_pos[:y]).to_i
      rect[:w] = 1
      rect[:h] = data[:InputLineHeight].to_i
      SDL.SetTextInputArea(window, rect, 0)
      bd.ime_window = window
    end
    SDL.StartTextInput(window) if !SDL.TextInputActive(window) && (data[:WantVisible] || data[:WantTextInput])
  end

  def self.ImGui_ImplDockingSDL3_SetupPlatformHandles(viewport_raw, window)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    viewport[:PlatformHandle] = FFI::Pointer.new(SDL.GetWindowID(window))
    viewport[:PlatformHandleRaw] = nil
    if FFI::Platform.windows?
      props = SDL.GetWindowProperties(window)
      viewport[:PlatformHandleRaw] = SDL.GetPointerProperty(props, SDL::PROP_WINDOW_WIN32_HWND_POINTER, nil)
    elsif FFI::Platform.mac?
      props = SDL.GetWindowProperties(window)
      viewport[:PlatformHandleRaw] = SDL.GetPointerProperty(props, SDL::PROP_WINDOW_COCOA_WINDOW_POINTER, nil)
    end
  end

  def self.ImGui_ImplDockingSDL3_UpdateMonitors
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    monitors = platform_io[:Monitors]
    monitors[:Size] = 0
    bd.want_update_monitors = false

    count_ptr = FFI::MemoryPointer.new(:int)
    displays_ptr = SDL.GetDisplays(count_ptr)
    display_count = count_ptr.read_int

    if displays_ptr == nil || displays_ptr.address == 0 || display_count <= 0
      bd.monitor_memory = nil
      monitors[:Capacity] = 0
      monitors[:Data] = nil
      return
    end

    bd.monitor_memory = FFI::MemoryPointer.new(ImGuiPlatformMonitor, display_count)
    monitors[:Capacity] = display_count
    monitors[:Data] = bd.monitor_memory

    valid_count = 0
    display_count.times do |index|
      display_id = (displays_ptr + index * FFI.type_size(:uint)).read_uint
      monitor = ImGuiPlatformMonitor.new(bd.monitor_memory + valid_count * ImGuiPlatformMonitor.size)
      rect = SDL::Rect.new
      SDL.GetDisplayBounds(display_id, rect)
      monitor[:MainPos][:x] = rect[:x].to_f
      monitor[:MainPos][:y] = rect[:y].to_f
      monitor[:WorkPos][:x] = rect[:x].to_f
      monitor[:WorkPos][:y] = rect[:y].to_f
      monitor[:MainSize][:x] = rect[:w].to_f
      monitor[:MainSize][:y] = rect[:h].to_f
      monitor[:WorkSize][:x] = rect[:w].to_f
      monitor[:WorkSize][:y] = rect[:h].to_f
      if SDL.GetDisplayUsableBounds(display_id, rect) && rect[:w] > 0 && rect[:h] > 0
        monitor[:WorkPos][:x] = rect[:x].to_f
        monitor[:WorkPos][:y] = rect[:y].to_f
        monitor[:WorkSize][:x] = rect[:w].to_f
        monitor[:WorkSize][:y] = rect[:h].to_f
      end
      monitor[:DpiScale] = SDL.GetDisplayContentScale(display_id)
      next if monitor[:DpiScale] <= 0.0

      monitor[:PlatformHandle] = FFI::Pointer.new(index)
      valid_count += 1
    end

    monitors[:Size] = valid_count

    SDL.free(displays_ptr)
  end

  def self.ImGui_ImplDockingSDL3_GetWindowSizeAndFramebufferScale(window)
    w_ptr = FFI::MemoryPointer.new(:int)
    h_ptr = FFI::MemoryPointer.new(:int)
    SDL.GetWindowSize(window, w_ptr, h_ptr)
    w = w_ptr.read_int
    h = h_ptr.read_int
    if (SDL.GetWindowFlags(window) & SDL::WINDOW_MINIMIZED) != 0
      w = 0
      h = 0
    end

    if FFI::Platform.mac?
      scale_x = SDL.GetWindowDisplayScale(window)
      scale_y = scale_x
    else
      display_w_ptr = FFI::MemoryPointer.new(:int)
      display_h_ptr = FFI::MemoryPointer.new(:int)
      SDL.GetWindowSizeInPixels(window, display_w_ptr, display_h_ptr)
      display_w = display_w_ptr.read_int
      display_h = display_h_ptr.read_int
      scale_x = w > 0 ? display_w.to_f / w.to_f : 1.0
      scale_y = h > 0 ? display_h.to_f / h.to_f : 1.0
    end

    [w, h, scale_x, scale_y]
  end

  def self.ImGui_ImplDockingSDL3_EnsureCallbacks
    return @@g_DockingSDL3PlatformFunctions if @@g_DockingSDL3PlatformFunctions != nil

    @@g_DockingSDL3PlatformFunctions = {
      get_clipboard_text: FFI::Function.new(:pointer, [:pointer]) { |context| ImGui_ImplDockingSDL3_GetClipboardText(context) },
      set_clipboard_text: FFI::Function.new(:void, [:pointer, :pointer]) { |context, text| ImGui_ImplDockingSDL3_SetClipboardText(context, text) },
      set_ime_data: FFI::Function.new(:void, [:pointer, :pointer, :pointer]) { |context, viewport, data| ImGui_ImplDockingSDL3_PlatformSetImeData(context, viewport, data) },
      open_in_shell: FFI::Function.new(:bool, [:pointer, :pointer]) { |_context, url| SDL.OpenURL(url) },
      create_window: FFI::Function.new(:void, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_CreateWindow(ImGuiViewport.new(viewport)) },
      destroy_window: FFI::Function.new(:void, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_DestroyWindow(ImGuiViewport.new(viewport)) },
      show_window: FFI::Function.new(:void, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_ShowWindow(ImGuiViewport.new(viewport)) },
      update_window: FFI::Function.new(:void, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_UpdateWindow(ImGuiViewport.new(viewport)) },
      set_window_pos: FFI::Function.new(:void, [:pointer, ImVec2.by_value]) { |viewport, pos| ImGui_ImplDockingSDL3_SetWindowPos(ImGuiViewport.new(viewport), pos) },
      get_window_pos: FFI::Function.new(ImVec2.by_value, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_GetWindowPos(ImGuiViewport.new(viewport)) },
      set_window_size: FFI::Function.new(:void, [:pointer, ImVec2.by_value]) { |viewport, size| ImGui_ImplDockingSDL3_SetWindowSize(ImGuiViewport.new(viewport), size) },
      get_window_size: FFI::Function.new(ImVec2.by_value, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_GetWindowSize(ImGuiViewport.new(viewport)) },
      get_window_framebuffer_scale: FFI::Function.new(ImVec2.by_value, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_GetWindowFramebufferScale(ImGuiViewport.new(viewport)) },
      set_window_focus: FFI::Function.new(:void, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_SetWindowFocus(ImGuiViewport.new(viewport)) },
      get_window_focus: FFI::Function.new(:bool, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_GetWindowFocus(ImGuiViewport.new(viewport)) },
      get_window_minimized: FFI::Function.new(:bool, [:pointer]) { |viewport| ImGui_ImplDockingSDL3_GetWindowMinimized(ImGuiViewport.new(viewport)) },
      set_window_title: FFI::Function.new(:void, [:pointer, :pointer]) { |viewport, title| ImGui_ImplDockingSDL3_SetWindowTitle(ImGuiViewport.new(viewport), title) },
      render_window: FFI::Function.new(:void, [:pointer, :pointer]) { |viewport, arg| ImGui_ImplDockingSDL3_RenderWindow(ImGuiViewport.new(viewport), arg) },
      swap_buffers: FFI::Function.new(:void, [:pointer, :pointer]) { |viewport, arg| ImGui_ImplDockingSDL3_SwapBuffers(ImGuiViewport.new(viewport), arg) },
      set_window_alpha: FFI::Function.new(:void, [:pointer, :float]) { |viewport, alpha| ImGui_ImplDockingSDL3_SetWindowAlpha(ImGuiViewport.new(viewport), alpha) },
      create_vk_surface: FFI::Function.new(:int, [:pointer, :uint64, :pointer, :pointer]) { |viewport, instance, allocator, out_surface| ImGui_ImplDockingSDL3_CreateVkSurface(ImGuiViewport.new(viewport), instance, allocator, out_surface) }
    }
  end

  def self.ImplDockingSDL3_ProcessEvent(event)
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return false if bd == nil

    event_type = event[:type]

    case event_type
    when SDL::EVENT_MOUSE_MOTION
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:motion][:windowID]) == nil
      mouse_x = event[:motion][:x].to_f
      mouse_y = event[:motion][:y].to_f
      if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) != 0
        window = SDL.GetWindowFromID(event[:motion][:windowID])
        if window != nil
          wx = FFI::MemoryPointer.new(:int)
          wy = FFI::MemoryPointer.new(:int)
          SDL.GetWindowPosition(window, wx, wy)
          mouse_x += wx.read_int
          mouse_y += wy.read_int
        end
      end
      io.AddMouseSourceEvent(ImGui_ImplDockingSDL3_IsTouchMouse(event[:motion][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMousePosEvent(mouse_x, mouse_y)
      true

    when SDL::EVENT_MOUSE_WHEEL
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:wheel][:windowID]) == nil
      io.AddMouseSourceEvent(ImGui_ImplDockingSDL3_IsTouchMouse(event[:wheel][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMouseWheelEvent(-event[:wheel][:x].to_f, event[:wheel][:y].to_f)
      true

    when SDL::EVENT_MOUSE_BUTTON_DOWN, SDL::EVENT_MOUSE_BUTTON_UP
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:button][:windowID]) == nil
      mouse_button = -1
      mouse_button = 0 if event[:button][:button] == SDL::BUTTON_LEFT
      mouse_button = 1 if event[:button][:button] == SDL::BUTTON_RIGHT
      mouse_button = 2 if event[:button][:button] == SDL::BUTTON_MIDDLE
      mouse_button = 3 if event[:button][:button] == SDL::BUTTON_X1
      mouse_button = 4 if event[:button][:button] == SDL::BUTTON_X2
      return false if mouse_button == -1

      is_down = event_type == SDL::EVENT_MOUSE_BUTTON_DOWN
      io.AddMouseSourceEvent(ImGui_ImplDockingSDL3_IsTouchMouse(event[:button][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMouseButtonEvent(mouse_button, is_down)
      bd.mouse_buttons_down = is_down ? (bd.mouse_buttons_down | (1 << mouse_button)) : (bd.mouse_buttons_down & ~(1 << mouse_button))
      true

    when SDL::EVENT_TEXT_INPUT
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:text][:windowID]) == nil
      io.AddInputCharactersUTF8(event[:text][:text].read_string)
      true

    when SDL::EVENT_KEY_DOWN, SDL::EVENT_KEY_UP
      viewport = ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:key][:windowID])
      return false if viewport == nil
      ImGui_ImplDockingSDL3_UpdateKeyModifiers(event[:key][:mod])
      key = ImGui_ImplDockingSDL3_KeyEventToImGuiKey(event[:key][:key], event[:key][:scancode])
      io.AddKeyEvent(key, event_type == SDL::EVENT_KEY_DOWN)
      io.SetKeyEventNativeDataEx(key, event[:key][:key], event[:key][:scancode], event[:key][:scancode])
      true

    when SDL::EVENT_DISPLAY_ORIENTATION, SDL::EVENT_DISPLAY_ADDED, SDL::EVENT_DISPLAY_REMOVED,
         SDL::EVENT_DISPLAY_MOVED, SDL::EVENT_DISPLAY_CONTENT_SCALE_CHANGED
      bd.want_update_monitors = true
      true

    when SDL::EVENT_WINDOW_MOUSE_ENTER
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      bd.mouse_window_id = event[:window][:windowID]
      bd.mouse_pending_leave_frame = 0
      true

    when SDL::EVENT_WINDOW_MOUSE_LEAVE
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      bd.mouse_pending_leave_frame = ImGui::GetFrameCount() + 1
      true

    when SDL::EVENT_WINDOW_FOCUS_GAINED, SDL::EVENT_WINDOW_FOCUS_LOST
      return false if ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      io.AddFocusEvent(event_type == SDL::EVENT_WINDOW_FOCUS_GAINED)
      true

    when SDL::EVENT_WINDOW_CLOSE_REQUESTED, SDL::EVENT_WINDOW_MOVED, SDL::EVENT_WINDOW_RESIZED
      viewport = ImGui_ImplDockingSDL3_GetViewportForWindowID(event[:window][:windowID])
      return false if viewport == nil
      viewport[:PlatformRequestClose] = true if event_type == SDL::EVENT_WINDOW_CLOSE_REQUESTED
      viewport[:PlatformRequestMove] = true if event_type == SDL::EVENT_WINDOW_MOVED
      viewport[:PlatformRequestResize] = true if event_type == SDL::EVENT_WINDOW_RESIZED
      true

    when SDL::EVENT_GAMEPAD_ADDED, SDL::EVENT_GAMEPAD_REMOVED
      bd.want_update_gamepads_list = true
      true

    else
      if defined?(SDL::EVENT_DISPLAY_USABLE_BOUNDS_CHANGED) && event_type == SDL::EVENT_DISPLAY_USABLE_BOUNDS_CHANGED
        bd.want_update_monitors = true
        true
      else
        false
      end
    end
  end

  def self.ImplDockingSDL3_Init(window, renderer = nil, sdl_gl_context = nil)
    io = ImGuiIO.new(ImGui::GetIO())
    raise 'Already initialized a platform backend!' if io[:BackendPlatformUserData] != nil && io[:BackendPlatformUserData].address != 0

    bd = ImGui_ImplDockingSDL3_Data.new
    bd.window = window
    bd.window_id = SDL.GetWindowID(window)
    bd.renderer = renderer

    sdl_backend = SDL.GetCurrentVideoDriver()
    sdl_backend_name = sdl_backend == nil ? '' : sdl_backend.read_string
    %w[windows cocoa x11 DIVE VMAN].each do |platform|
      next unless sdl_backend_name.start_with?(platform)

      bd.mouse_can_use_global_state = true
      bd.mouse_capture_mode = platform == 'x11' ? ImGui_ImplDockingSDL3_MouseCaptureMode_EnabledAfterDrag : ImGui_ImplDockingSDL3_MouseCaptureMode_Enabled
      break
    end
    bd.mouse_can_report_hovered_viewport = !FFI::Platform.mac? && bd.mouse_can_use_global_state

    @@g_DockingSDL3BackendData[ImGui::GetCurrentContext().address] = bd

    io[:BackendPlatformUserData] = FFI::Pointer.new(ImGui::GetCurrentContext().address)
    io[:BackendPlatformName] = @@g_DockingSDL3BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos
    if bd.mouse_can_use_global_state
      io[:BackendFlags] |= ImGuiBackendFlags_PlatformHasViewports
      io[:BackendFlags] |= ImGuiBackendFlags_HasParentViewport
    end

    callbacks = ImGui_ImplDockingSDL3_EnsureCallbacks()
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    platform_io[:Platform_SetClipboardTextFn] = callbacks[:set_clipboard_text]
    platform_io[:Platform_GetClipboardTextFn] = callbacks[:get_clipboard_text]
    platform_io[:Platform_SetImeDataFn] = callbacks[:set_ime_data]
    platform_io[:Platform_OpenInShellFn] = callbacks[:open_in_shell]

    bd.want_update_monitors = true
    ImGui_ImplDockingSDL3_UpdateMonitors()

    bd.mouse_cursors[ImGuiMouseCursor_Arrow] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_DEFAULT)
    bd.mouse_cursors[ImGuiMouseCursor_TextInput] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_TEXT)
    bd.mouse_cursors[ImGuiMouseCursor_ResizeAll] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_MOVE)
    bd.mouse_cursors[ImGuiMouseCursor_ResizeNS] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_NS_RESIZE)
    bd.mouse_cursors[ImGuiMouseCursor_ResizeEW] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_EW_RESIZE)
    bd.mouse_cursors[ImGuiMouseCursor_ResizeNESW] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_NESW_RESIZE)
    bd.mouse_cursors[ImGuiMouseCursor_ResizeNWSE] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_NWSE_RESIZE)
    bd.mouse_cursors[ImGuiMouseCursor_Hand] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_POINTER)
    bd.mouse_cursors[ImGuiMouseCursor_Wait] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_WAIT)
    bd.mouse_cursors[ImGuiMouseCursor_Progress] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_PROGRESS)
    bd.mouse_cursors[ImGuiMouseCursor_NotAllowed] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_NOT_ALLOWED)

    main_viewport = ImGuiViewport.new(ImGui::GetMainViewport())
    ImGui_ImplDockingSDL3_SetupPlatformHandles(main_viewport, window)

    SDL.SetHint(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH, '1') if defined?(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH)
    SDL.SetHint(SDL::HINT_MOUSE_AUTO_CAPTURE, '0') if defined?(SDL::HINT_MOUSE_AUTO_CAPTURE)
    SDL.SetHint('SDL_BORDERLESS_WINDOWED_STYLE', '0')

    ImGui_ImplDockingSDL3_InitMultiViewportSupport(window, sdl_gl_context) if (io[:BackendFlags] & ImGuiBackendFlags_PlatformHasViewports) != 0
    true
  end

  def self.ImplDockingSDL3_InitForOpenGL(window, sdl_gl_context = nil)
    ImplDockingSDL3_Init(window, nil, sdl_gl_context)
  end

  def self.ImplDockingSDL3_InitForVulkan(window)
    result = ImplDockingSDL3_Init(window, nil, nil)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    bd.use_vulkan = true if result && bd != nil
    result
  end

  def self.ImplDockingSDL3_InitForD3D(window)
    ImplDockingSDL3_Init(window, nil, nil)
  end

  def self.ImplDockingSDL3_InitForMetal(window)
    ImplDockingSDL3_Init(window, nil, nil)
  end

  def self.ImplDockingSDL3_InitForSDLRenderer(window, renderer)
    ImplDockingSDL3_Init(window, renderer, nil)
  end

  def self.ImplDockingSDL3_InitForSDLGPU(window)
    ImplDockingSDL3_Init(window, nil, nil)
  end

  def self.ImplDockingSDL3_InitForOther(window)
    ImplDockingSDL3_Init(window, nil, nil)
  end

  def self.ImplDockingSDL3_CloseGamepads
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    if bd.gamepad_mode != ImGui_ImplDockingSDL3_GamepadMode_Manual
      bd.gamepads.each { |gamepad| SDL.CloseGamepad(gamepad) if gamepad != nil }
    end
    bd.gamepads = []
  end

  def self.ImplDockingSDL3_SetGamepadMode(mode, manual_gamepads_array = nil)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    ImplDockingSDL3_CloseGamepads()
    if mode == ImGui_ImplDockingSDL3_GamepadMode_Manual()
      bd.gamepads = manual_gamepads_array ? manual_gamepads_array.compact : []
    else
      bd.want_update_gamepads_list = true
    end
    bd.gamepad_mode = mode
  end

  def self.ImplDockingSDL3_Shutdown
    io = ImGuiIO.new(ImGui::GetIO())
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    ImGui_ImplDockingSDL3_ShutdownMultiViewportSupport()
    SDL.free(bd.clipboard_text_data) if bd.clipboard_text_data != nil
    bd.mouse_cursors.each { |cursor| SDL.DestroyCursor(cursor) if cursor != nil }
    ImplDockingSDL3_CloseGamepads()

    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    io[:BackendFlags] &= ~(ImGuiBackendFlags_HasMouseCursors | ImGuiBackendFlags_HasSetMousePos | ImGuiBackendFlags_HasGamepad | ImGuiBackendFlags_PlatformHasViewports | ImGuiBackendFlags_HasMouseHoveredViewport | ImGuiBackendFlags_HasParentViewport)
    platform_io.ClearPlatformHandlers
    @@g_DockingSDL3BackendData.delete(ImGui::GetCurrentContext().address)
  end

  def self.ImplDockingSDL3_SetMouseCaptureMode(mode)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    SDL.CaptureMouse(false) if mode == ImGui_ImplDockingSDL3_MouseCaptureMode_Disabled && bd.mouse_capture_mode != ImGui_ImplDockingSDL3_MouseCaptureMode_Disabled
    bd.mouse_capture_mode = mode
  end

  def self.ImplDockingSDL3_UpdateMouseData
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())
    return if bd == nil

    if bd.mouse_capture_mode == ImGui_ImplDockingSDL3_MouseCaptureMode_Enabled
      SDL.CaptureMouse(bd.mouse_buttons_down != 0)
    elsif bd.mouse_capture_mode == ImGui_ImplDockingSDL3_MouseCaptureMode_EnabledAfterDrag
      want_capture = false
      ImGuiMouseButton_COUNT.times do |button_n|
        if ImGui::IsMouseDragging(button_n, 1.0)
          want_capture = true
          break
        end
      end
      SDL.CaptureMouse(want_capture)
    end

    focused_window = SDL.GetKeyboardFocus()
    is_app_focused = focused_window != nil && (bd.window == focused_window || ImGui_ImplDockingSDL3_GetViewportForWindowID(SDL.GetWindowID(focused_window)) != nil)
    return unless is_app_focused

    if io[:WantSetMousePos]
      if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) != 0
        SDL.WarpMouseGlobal(io[:MousePos][:x], io[:MousePos][:y])
      else
        SDL.WarpMouseInWindow(bd.window, io[:MousePos][:x], io[:MousePos][:y])
      end
    end

    hovered_window = SDL.GetMouseFocus()
    is_relative_mouse_mode = SDL.GetWindowRelativeMouseMode(bd.window)
    if hovered_window == nil && bd.mouse_can_use_global_state && bd.mouse_buttons_down == 0 && !is_relative_mouse_mode
      mx = FFI::MemoryPointer.new(:float)
      my = FFI::MemoryPointer.new(:float)
      SDL.GetGlobalMouseState(mx, my)
      mouse_x = mx.read_float
      mouse_y = my.read_float
      if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) == 0
        wx = FFI::MemoryPointer.new(:int)
        wy = FFI::MemoryPointer.new(:int)
        SDL.GetWindowPosition(focused_window, wx, wy)
        mouse_x -= wx.read_int
        mouse_y -= wy.read_int
      end
      io.AddMousePosEvent(mouse_x, mouse_y)
    end

    if (io[:BackendFlags] & ImGuiBackendFlags_HasMouseHoveredViewport) != 0
      mouse_viewport_id = 0
      mouse_viewport = ImGui_ImplDockingSDL3_GetViewportForWindowID(bd.mouse_window_id)
      mouse_viewport_id = mouse_viewport[:ID] if mouse_viewport != nil
      io.AddMouseViewportEvent(mouse_viewport_id)
    end
  end

  def self.ImplDockingSDL3_UpdateMouseCursor
    io = ImGuiIO.new(ImGui::GetIO())
    return if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) != 0

    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    imgui_cursor = ImGui::GetMouseCursor()
    if io[:MouseDrawCursor] || imgui_cursor == ImGuiMouseCursor_None
      SDL.HideCursor
    else
      expected_cursor = bd.mouse_cursors[imgui_cursor] || bd.mouse_cursors[ImGuiMouseCursor_Arrow]
      if bd.mouse_last_cursor != expected_cursor
        SDL.SetCursor(expected_cursor)
        bd.mouse_last_cursor = expected_cursor
      end
      SDL.ShowCursor
    end
  end

  def self.ImplDockingSDL3_Saturate(v)
    return 0.0 if v < 0.0
    return 1.0 if v > 1.0

    v
  end

  def self.ImplDockingSDL3_UpdateGamepadButton(bd, io, key, button_no)
    merged_value = false
    bd.gamepads.each do |gamepad|
      merged_value ||= SDL.GetGamepadButton(gamepad, button_no)
    end
    io.AddKeyEvent(key, merged_value)
  end

  def self.ImplDockingSDL3_UpdateGamepadAnalog(bd, io, key, axis_no, v0, v1)
    merged_value = 0.0
    bd.gamepads.each do |gamepad|
      vn = ImplDockingSDL3_Saturate((SDL.GetGamepadAxis(gamepad, axis_no) - v0).to_f / (v1 - v0).to_f)
      merged_value = vn if merged_value < vn
    end
    io.AddKeyAnalogEvent(key, merged_value > 0.1, merged_value)
  end

  def self.ImplDockingSDL3_UpdateGamepads
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    if bd.want_update_gamepads_list && bd.gamepad_mode != ImGui_ImplDockingSDL3_GamepadMode_Manual
      ImplDockingSDL3_CloseGamepads()
      count_ptr = FFI::MemoryPointer.new(:int)
      gamepads_ptr = SDL.GetGamepads(count_ptr)
      count = count_ptr.read_int
      count.times do |n|
        joystick_id = (gamepads_ptr + n * FFI.type_size(:uint)).read_uint
        gamepad = SDL.OpenGamepad(joystick_id)
        next if gamepad == nil

        bd.gamepads << gamepad
        break if bd.gamepad_mode == ImGui_ImplDockingSDL3_GamepadMode_AutoFirst
      end
      bd.want_update_gamepads_list = false
      SDL.free(gamepads_ptr) if gamepads_ptr != nil
    end

    io[:BackendFlags] &= ~ImGuiBackendFlags_HasGamepad
    return if bd.gamepads.empty?

    io[:BackendFlags] |= ImGuiBackendFlags_HasGamepad
    dead_zone = 8000
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadStart, SDL::GAMEPAD_BUTTON_START)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadBack, SDL::GAMEPAD_BUTTON_BACK)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceLeft, SDL::GAMEPAD_BUTTON_WEST)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceRight, SDL::GAMEPAD_BUTTON_EAST)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceUp, SDL::GAMEPAD_BUTTON_NORTH)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceDown, SDL::GAMEPAD_BUTTON_SOUTH)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadLeft, SDL::GAMEPAD_BUTTON_DPAD_LEFT)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadRight, SDL::GAMEPAD_BUTTON_DPAD_RIGHT)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadUp, SDL::GAMEPAD_BUTTON_DPAD_UP)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadDown, SDL::GAMEPAD_BUTTON_DPAD_DOWN)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadL1, SDL::GAMEPAD_BUTTON_LEFT_SHOULDER)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadR1, SDL::GAMEPAD_BUTTON_RIGHT_SHOULDER)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadL2, SDL::GAMEPAD_AXIS_LEFT_TRIGGER, 0.0, 32767.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadR2, SDL::GAMEPAD_AXIS_RIGHT_TRIGGER, 0.0, 32767.0)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadL3, SDL::GAMEPAD_BUTTON_LEFT_STICK)
    ImplDockingSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadR3, SDL::GAMEPAD_BUTTON_RIGHT_STICK)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickLeft, SDL::GAMEPAD_AXIS_LEFTX, -dead_zone, -32768.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickRight, SDL::GAMEPAD_AXIS_LEFTX, dead_zone, 32767.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickUp, SDL::GAMEPAD_AXIS_LEFTY, -dead_zone, -32768.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickDown, SDL::GAMEPAD_AXIS_LEFTY, dead_zone, 32767.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickLeft, SDL::GAMEPAD_AXIS_RIGHTX, -dead_zone, -32768.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickRight, SDL::GAMEPAD_AXIS_RIGHTX, dead_zone, 32767.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickUp, SDL::GAMEPAD_AXIS_RIGHTY, -dead_zone, -32768.0)
    ImplDockingSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickDown, SDL::GAMEPAD_AXIS_RIGHTY, dead_zone, 32767.0)
  end

  def self.ImplDockingSDL3_NewFrame
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    raise 'Context or backend not initialized! Did you call ImGui::ImplDockingSDL3_Init()?' if bd == nil

    io = ImGuiIO.new(ImGui::GetIO())

    w, h, scale_x, scale_y = ImGui_ImplDockingSDL3_GetWindowSizeAndFramebufferScale(bd.window)
    io[:DisplaySize] = ImVec2.create(w.to_f, h.to_f)
    io[:DisplayFramebufferScale][:x] = scale_x
    io[:DisplayFramebufferScale][:y] = scale_y

    bd.want_update_monitors = true if FFI::Platform.windows?
    ImGui_ImplDockingSDL3_UpdateMonitors() if bd.want_update_monitors

    frequency = SDL.GetPerformanceFrequency()
    current_time = SDL.GetPerformanceCounter()
    current_time = bd.time + 1 if current_time <= bd.time
    io[:DeltaTime] = bd.time > 0 ? (current_time - bd.time).to_f / frequency.to_f : (1.0 / 60.0)
    bd.time = current_time

    if bd.mouse_pending_leave_frame != 0 && bd.mouse_pending_leave_frame >= ImGui::GetFrameCount() && bd.mouse_buttons_down == 0
      bd.mouse_window_id = 0
      bd.mouse_pending_leave_frame = 0
      io.AddMousePosEvent(-Float::MAX, -Float::MAX)
    end

    payload = ImGui::GetDragDropPayload()
    if bd.mouse_can_report_hovered_viewport && (payload == nil || payload.address == 0)
      io[:BackendFlags] |= ImGuiBackendFlags_HasMouseHoveredViewport
    else
      io[:BackendFlags] &= ~ImGuiBackendFlags_HasMouseHoveredViewport
    end

    ImplDockingSDL3_UpdateMouseData()
    ImplDockingSDL3_UpdateMouseCursor()
    ImGui_ImplDockingSDL3_UpdateIme()
    ImplDockingSDL3_UpdateGamepads()
  end

  def self.ImGui_ImplDockingSDL3_CreateWindow(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    bd = ImGui_ImplDockingSDL3_GetBackendData()
    return if bd == nil

    vd = ImGui_ImplDockingSDL3_ViewportData.new
    ImGui_ImplDockingSDL3_SetViewportData(viewport, vd)
    vd.parent_window = ImGui_ImplDockingSDL3_GetSDLWindowFromViewport(viewport[:ParentViewport]) if viewport[:ParentViewport] != nil && viewport[:ParentViewport].address != 0

    main_viewport = ImGuiViewport.new(ImGui::GetMainViewport())
    main_viewport_data = ImGui_ImplDockingSDL3_GetViewportData(main_viewport)

    use_opengl = main_viewport_data != nil && main_viewport_data.gl_context != nil
    backup_context = nil
    if use_opengl
      backup_context = SDL.GL_GetCurrentContext()
      SDL.GL_SetAttribute(SDL::GL_SHARE_WITH_CURRENT_CONTEXT, 1)
      SDL.GL_MakeCurrent(main_viewport_data.window, main_viewport_data.gl_context)
    end

    sdl_flags = 0
    sdl_flags |= SDL::WINDOW_HIDDEN
    sdl_flags |= use_opengl ? SDL::WINDOW_OPENGL : (bd.use_vulkan ? SDL::WINDOW_VULKAN : 0)
    sdl_flags |= SDL.GetWindowFlags(bd.window) & SDL::WINDOW_HIGH_PIXEL_DENSITY
    sdl_flags |= (viewport[:Flags] & ImGuiViewportFlags_NoDecoration) != 0 ? SDL::WINDOW_BORDERLESS : 0
    sdl_flags |= (viewport[:Flags] & ImGuiViewportFlags_NoDecoration) == 0 ? SDL::WINDOW_RESIZABLE : 0
    sdl_flags |= (viewport[:Flags] & ImGuiViewportFlags_NoTaskBarIcon) != 0 ? SDL::WINDOW_UTILITY : 0 if defined?(SDL::WINDOW_UTILITY)
    sdl_flags |= (viewport[:Flags] & ImGuiViewportFlags_TopMost) != 0 ? SDL::WINDOW_ALWAYS_ON_TOP : 0 if defined?(SDL::WINDOW_ALWAYS_ON_TOP)

    vd.window = SDL.CreateWindow('No Title Yet', viewport[:Size][:x].to_i, viewport[:Size][:y].to_i, sdl_flags)
    if !FFI::Platform.mac? && vd.parent_window != nil
      SDL.SetWindowParent(vd.window, vd.parent_window)
    end
    SDL.SetWindowPosition(vd.window, viewport[:Pos][:x].to_i, viewport[:Pos][:y].to_i)
    vd.window_owned = true
    vd.window_id = SDL.GetWindowID(vd.window)
    if use_opengl
      vd.gl_context = SDL.GL_CreateContext(vd.window)
      SDL.GL_SetSwapInterval(0)
    end
    SDL.GL_MakeCurrent(vd.window, backup_context) if use_opengl && backup_context != nil

    ImGui_ImplDockingSDL3_SetupPlatformHandles(viewport, vd.window)
  end

  def self.ImGui_ImplDockingSDL3_DestroyWindow(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil

    SDL.GL_DestroyContext(vd.gl_context) if vd.gl_context != nil && vd.window_owned
    SDL.DestroyWindow(vd.window) if vd.window != nil && vd.window_owned
    ImGui_ImplDockingSDL3_SetViewportData(viewport, nil)
    viewport[:PlatformHandle] = nil
  end

  def self.ImGui_ImplDockingSDL3_ShowWindow(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    hint = if FFI::Platform.mac?
      '1'
    else
      (viewport[:Flags] & ImGuiViewportFlags_NoFocusOnAppearing) != 0 ? '0' : '1'
    end
    SDL.SetHint(SDL::HINT_WINDOW_ACTIVATE_WHEN_SHOWN, hint) if defined?(SDL::HINT_WINDOW_ACTIVATE_WHEN_SHOWN)
    SDL.ShowWindow(vd.window)
  end

  def self.ImGui_ImplDockingSDL3_UpdateWindow(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil || FFI::Platform.mac?

    new_parent = nil
    new_parent = ImGui_ImplDockingSDL3_GetSDLWindowFromViewport(viewport[:ParentViewport]) if viewport[:ParentViewport] != nil && viewport[:ParentViewport].address != 0
    if new_parent != vd.parent_window
      vd.parent_window = new_parent
      SDL.SetWindowParent(vd.window, vd.parent_window)
    end
  end

  def self.ImGui_ImplDockingSDL3_GetWindowPos(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return ImVec2.create(0.0, 0.0) if vd == nil || vd.window == nil

    x_ptr = FFI::MemoryPointer.new(:int)
    y_ptr = FFI::MemoryPointer.new(:int)
    SDL.GetWindowPosition(vd.window, x_ptr, y_ptr)
    ImVec2.create(x_ptr.read_int.to_f, y_ptr.read_int.to_f)
  end

  def self.ImGui_ImplDockingSDL3_SetWindowPos(viewport_raw, pos)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    SDL.SetWindowPosition(vd.window, pos[:x].to_i, pos[:y].to_i)
  end

  def self.ImGui_ImplDockingSDL3_GetWindowSize(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return ImVec2.create(0.0, 0.0) if vd == nil || vd.window == nil

    w_ptr = FFI::MemoryPointer.new(:int)
    h_ptr = FFI::MemoryPointer.new(:int)
    SDL.GetWindowSize(vd.window, w_ptr, h_ptr)
    ImVec2.create(w_ptr.read_int.to_f, h_ptr.read_int.to_f)
  end

  def self.ImGui_ImplDockingSDL3_SetWindowSize(viewport_raw, size)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    SDL.SetWindowSize(vd.window, size[:x].to_i, size[:y].to_i)
  end

  def self.ImGui_ImplDockingSDL3_GetWindowFramebufferScale(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return ImVec2.create(1.0, 1.0) if vd == nil || vd.window == nil

    _w, _h, scale_x, scale_y = ImGui_ImplDockingSDL3_GetWindowSizeAndFramebufferScale(vd.window)
    ImVec2.create(scale_x, scale_y)
  end

  def self.ImGui_ImplDockingSDL3_SetWindowTitle(viewport_raw, title)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    SDL.SetWindowTitle(vd.window, title)
  end

  def self.ImGui_ImplDockingSDL3_SetWindowAlpha(viewport_raw, alpha)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    SDL.SetWindowOpacity(vd.window, alpha)
  end

  def self.ImGui_ImplDockingSDL3_SetWindowFocus(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil

    SDL.RaiseWindow(vd.window)
  end

  def self.ImGui_ImplDockingSDL3_GetWindowFocus(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return false if vd == nil || vd.window == nil

    (SDL.GetWindowFlags(vd.window) & SDL::WINDOW_INPUT_FOCUS) != 0
  end

  def self.ImGui_ImplDockingSDL3_GetWindowMinimized(viewport_raw)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return false if vd == nil || vd.window == nil

    (SDL.GetWindowFlags(vd.window) & SDL::WINDOW_MINIMIZED) != 0
  end

  def self.ImGui_ImplDockingSDL3_RenderWindow(viewport_raw, _render_arg)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil || vd.gl_context == nil

    SDL.GL_MakeCurrent(vd.window, vd.gl_context)
  end

  def self.ImGui_ImplDockingSDL3_SwapBuffers(viewport_raw, _render_arg)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return if vd == nil || vd.window == nil || vd.gl_context == nil

    SDL.GL_MakeCurrent(vd.window, vd.gl_context)
    SDL.GL_SwapWindow(vd.window)
  end

  def self.ImGui_ImplDockingSDL3_CreateVkSurface(viewport_raw, vk_instance, vk_allocator, out_vk_surface)
    viewport = viewport_raw.kind_of?(ImGuiViewport) ? viewport_raw : ImGuiViewport.new(viewport_raw)
    vd = ImGui_ImplDockingSDL3_GetViewportData(viewport)
    return 1 if vd == nil || vd.window == nil

    SDL.Vulkan_CreateSurface(vd.window, FFI::Pointer.new(vk_instance), vk_allocator, out_vk_surface) ? 0 : 1
  end

  def self.ImGui_ImplDockingSDL3_InitMultiViewportSupport(window, sdl_gl_context)
    callbacks = ImGui_ImplDockingSDL3_EnsureCallbacks()
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    platform_io[:Platform_CreateWindow] = callbacks[:create_window]
    platform_io[:Platform_DestroyWindow] = callbacks[:destroy_window]
    platform_io[:Platform_ShowWindow] = callbacks[:show_window]
    platform_io[:Platform_UpdateWindow] = callbacks[:update_window]
    platform_io[:Platform_SetWindowPos] = callbacks[:set_window_pos]
    platform_io[:Platform_GetWindowPos] = callbacks[:get_window_pos]
    platform_io[:Platform_SetWindowSize] = callbacks[:set_window_size]
    platform_io[:Platform_GetWindowSize] = callbacks[:get_window_size]
    platform_io[:Platform_GetWindowFramebufferScale] = callbacks[:get_window_framebuffer_scale]
    platform_io[:Platform_SetWindowFocus] = callbacks[:set_window_focus]
    platform_io[:Platform_GetWindowFocus] = callbacks[:get_window_focus]
    platform_io[:Platform_GetWindowMinimized] = callbacks[:get_window_minimized]
    platform_io[:Platform_SetWindowTitle] = callbacks[:set_window_title]
    platform_io[:Platform_RenderWindow] = callbacks[:render_window]
    platform_io[:Platform_SwapBuffers] = callbacks[:swap_buffers]
    platform_io[:Platform_SetWindowAlpha] = callbacks[:set_window_alpha]
    platform_io[:Platform_CreateVkSurface] = callbacks[:create_vk_surface]

    main_viewport = ImGuiViewport.new(ImGui::GetMainViewport())
    vd = ImGui_ImplDockingSDL3_ViewportData.new
    vd.window = window
    vd.window_id = SDL.GetWindowID(window)
    vd.window_owned = false
    vd.gl_context = sdl_gl_context
    ImGui_ImplDockingSDL3_SetViewportData(main_viewport, vd)
    main_viewport[:PlatformHandle] = FFI::Pointer.new(vd.window_id)
  end

  def self.ImGui_ImplDockingSDL3_ShutdownMultiViewportSupport
    ImGui::DestroyPlatformWindows()
  end

end