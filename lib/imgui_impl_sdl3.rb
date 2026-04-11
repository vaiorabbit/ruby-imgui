require 'ffi'
require 'sdl3'
require_relative 'imgui'

module ImGui

  ImGui_ImplSDL3_MouseCaptureMode_Disabled = 0
  ImGui_ImplSDL3_MouseCaptureMode_Enabled = 1
  ImGui_ImplSDL3_MouseCaptureMode_EnabledAfterDrag = 2

  ImGui_ImplSDL3_GamepadMode_AutoFirst = 0
  ImGui_ImplSDL3_GamepadMode_AutoAll = 1
  ImGui_ImplSDL3_GamepadMode_Manual = 2

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string('imgui_impl_sdl3')
  @@g_BackendData = {}

  # [INTERNAL]
  class ImGui_ImplSDL3_Data
    attr_accessor :window, :window_id, :renderer, :time, :clipboard_text_data,
                  :mouse_window_id, :mouse_buttons_down, :mouse_cursors, :mouse_last_cursor,
                  :mouse_pending_leave_frame, :mouse_can_use_global_state, :mouse_capture_mode,
                  :gamepads, :gamepad_mode, :want_update_gamepads_list

    def initialize
      @window = nil
      @window_id = 0
      @renderer = nil
      @time = 0
      @clipboard_text_data = nil
      @mouse_window_id = 0
      @mouse_buttons_down = 0
      @mouse_cursors = Array.new(ImGuiMouseCursor_COUNT) { nil }
      @mouse_last_cursor = nil
      @mouse_pending_leave_frame = 0
      @mouse_can_use_global_state = false
      @mouse_capture_mode = ImGui_ImplSDL3_MouseCaptureMode_Disabled
      @gamepads = []
      @gamepad_mode = ImGui_ImplSDL3_GamepadMode_AutoFirst
      @want_update_gamepads_list = true
    end
  end

  def self.ImGui_ImplSDL3_GetBackendData()
    return nil if ImGui::GetCurrentContext() == nil
    @@g_BackendData[ImGui::GetCurrentContext().address]
  end

  def self.ImGui_ImplSDL3_IsTouchMouse(which_id)
    which_id == SDL::TOUCH_MOUSEID || which_id == 0xffffffff
  end

  def self.ImGui_ImplSDL3_GetViewportForWindowID(window_id)
    bd = ImGui_ImplSDL3_GetBackendData()
    return nil if bd == nil
    window_id == bd.window_id ? ImGuiViewport.new(ImGui::GetMainViewport()) : nil
  end

  def self.ImGui_ImplSDL3_KeyEventToImGuiKey(keycode, scancode)
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

  def self.ImGui_ImplSDL3_UpdateKeyModifiers(sdl_key_mods)
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddKeyEvent(ImGuiMod_Ctrl, (sdl_key_mods & SDL::KMOD_CTRL) != 0)
    io.AddKeyEvent(ImGuiMod_Shift, (sdl_key_mods & SDL::KMOD_SHIFT) != 0)
    io.AddKeyEvent(ImGuiMod_Alt, (sdl_key_mods & SDL::KMOD_ALT) != 0)
    io.AddKeyEvent(ImGuiMod_Super, (sdl_key_mods & SDL::KMOD_GUI) != 0)
  end

  def self.ImplSDL3_ProcessEvent(event)
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDL3_GetBackendData()
    return false if bd == nil

    event_type = event[:type]

    case event_type
    when SDL::EVENT_MOUSE_MOTION
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:motion][:windowID]) == nil
      io.AddMouseSourceEvent(ImGui_ImplSDL3_IsTouchMouse(event[:motion][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMousePosEvent(event[:motion][:x].to_f, event[:motion][:y].to_f)
      true

    when SDL::EVENT_MOUSE_WHEEL
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:wheel][:windowID]) == nil
      io.AddMouseSourceEvent(ImGui_ImplSDL3_IsTouchMouse(event[:wheel][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMouseWheelEvent(-event[:wheel][:x].to_f, event[:wheel][:y].to_f)
      true

    when SDL::EVENT_MOUSE_BUTTON_DOWN, SDL::EVENT_MOUSE_BUTTON_UP
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:button][:windowID]) == nil
      mouse_button = -1
      mouse_button = 0 if event[:button][:button] == SDL::BUTTON_LEFT
      mouse_button = 1 if event[:button][:button] == SDL::BUTTON_RIGHT
      mouse_button = 2 if event[:button][:button] == SDL::BUTTON_MIDDLE
      mouse_button = 3 if event[:button][:button] == SDL::BUTTON_X1
      mouse_button = 4 if event[:button][:button] == SDL::BUTTON_X2
      return false if mouse_button == -1

      is_down = event_type == SDL::EVENT_MOUSE_BUTTON_DOWN
      io.AddMouseSourceEvent(ImGui_ImplSDL3_IsTouchMouse(event[:button][:which]) ? ImGuiMouseSource_TouchScreen : ImGuiMouseSource_Mouse)
      io.AddMouseButtonEvent(mouse_button, is_down)
      bd.mouse_buttons_down = is_down ? (bd.mouse_buttons_down | (1 << mouse_button)) : (bd.mouse_buttons_down & ~(1 << mouse_button))
      true

    when SDL::EVENT_TEXT_INPUT
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:text][:windowID]) == nil
      io.AddInputCharactersUTF8(event[:text][:text].read_string)
      true

    when SDL::EVENT_KEY_DOWN, SDL::EVENT_KEY_UP
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:key][:windowID]) == nil
      ImGui_ImplSDL3_UpdateKeyModifiers(event[:key][:mod])
      key = ImGui_ImplSDL3_KeyEventToImGuiKey(event[:key][:key], event[:key][:scancode])
      io.AddKeyEvent(key, event_type == SDL::EVENT_KEY_DOWN)
      io.SetKeyEventNativeData(key, event[:key][:key], event[:key][:scancode], event[:key][:scancode])
      true

    when SDL::EVENT_WINDOW_MOUSE_ENTER
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      bd.mouse_window_id = event[:window][:windowID]
      bd.mouse_pending_leave_frame = 0
      true

    when SDL::EVENT_WINDOW_MOUSE_LEAVE
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      bd.mouse_pending_leave_frame = ImGui::GetFrameCount() + 1
      true

    when SDL::EVENT_WINDOW_FOCUS_GAINED, SDL::EVENT_WINDOW_FOCUS_LOST
      return false if ImGui_ImplSDL3_GetViewportForWindowID(event[:window][:windowID]) == nil
      io.AddFocusEvent(event_type == SDL::EVENT_WINDOW_FOCUS_GAINED)
      true

    when SDL::EVENT_GAMEPAD_ADDED, SDL::EVENT_GAMEPAD_REMOVED
      bd.want_update_gamepads_list = true
      true

    else
      false
    end
  end

  def self.ImplSDL3_Init(window, renderer = nil)
    io = ImGuiIO.new(ImGui::GetIO())

    bd = ImGui_ImplSDL3_Data.new
    bd.window = window
    bd.renderer = renderer
    bd.window_id = SDL.GetWindowID(window)

    sdl_backend = SDL.GetCurrentVideoDriver()
    sdl_backend_name = sdl_backend == nil ? '' : sdl_backend.read_string
    ['windows', 'cocoa', 'x11', 'DIVE', 'VMAN'].each do |platform|
      next unless sdl_backend_name.start_with?(platform)
      bd.mouse_can_use_global_state = true
      bd.mouse_capture_mode = (platform == 'x11') ? ImGui_ImplSDL3_MouseCaptureMode_EnabledAfterDrag : ImGui_ImplSDL3_MouseCaptureMode_Enabled
    end

    @@g_BackendData[ImGui::GetCurrentContext().address] = bd

    io[:BackendPlatformUserData] = FFI::Pointer.new(ImGui::GetCurrentContext().address)
    io[:BackendPlatformName] = @@g_BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos

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
    main_viewport[:PlatformHandle] = FFI::Pointer.new(bd.window_id)

    SDL.SetHint(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH, '1') if defined?(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH)
    SDL.SetHint(SDL::HINT_MOUSE_AUTO_CAPTURE, '0') if defined?(SDL::HINT_MOUSE_AUTO_CAPTURE)

    true
  end

  def self.ImplSDL3_InitForOpenGL(window, sdl_gl_context = nil)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_InitForVulkan(window)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_InitForD3D(window)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_InitForMetal(window)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_InitForSDLRenderer(window, renderer)
    ImplSDL3_Init(window, renderer)
  end

  def self.ImplSDL3_InitForSDLGPU(window)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_InitForOther(window)
    ImplSDL3_Init(window, nil)
  end

  def self.ImplSDL3_CloseGamepads()
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil
    if bd.gamepad_mode != ImGui_ImplSDL3_GamepadMode_Manual
      bd.gamepads.each { |g| SDL.CloseGamepad(g) if g != nil }
    end
    bd.gamepads = []
  end

  def self.ImplSDL3_SetGamepadMode(mode, manual_gamepads_array = nil)
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil

    ImplSDL3_CloseGamepads()
    if mode == ImGui_ImplSDL3_GamepadMode_Manual
      bd.gamepads = manual_gamepads_array ? manual_gamepads_array.compact : []
    else
      bd.want_update_gamepads_list = true
    end
    bd.gamepad_mode = mode
  end

  def self.ImplSDL3_Shutdown()
    io = ImGuiIO.new(ImGui::GetIO())
    platform_io = ImGuiPlatformIO.new(ImGui::GetPlatformIO())
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil

    bd.mouse_cursors.each { |cursor| SDL.DestroyCursor(cursor) if cursor != nil }
    ImplSDL3_CloseGamepads()

    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    io[:BackendFlags] &= ~(ImGuiBackendFlags_HasMouseCursors | ImGuiBackendFlags_HasSetMousePos | ImGuiBackendFlags_HasGamepad)
    platform_io.ClearPlatformHandlers()
    @@g_BackendData.delete(ImGui::GetCurrentContext().address)
  end

  def self.ImplSDL3_SetMouseCaptureMode(mode)
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil
    SDL.CaptureMouse(false) if mode == ImGui_ImplSDL3_MouseCaptureMode_Disabled && bd.mouse_capture_mode != ImGui_ImplSDL3_MouseCaptureMode_Disabled
    bd.mouse_capture_mode = mode
  end

  def self.ImplSDL3_UpdateMouseData()
    bd = ImGui_ImplSDL3_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())
    return if bd == nil

    if bd.mouse_capture_mode == ImGui_ImplSDL3_MouseCaptureMode_Enabled
      SDL.CaptureMouse(bd.mouse_buttons_down != 0)
    elsif bd.mouse_capture_mode == ImGui_ImplSDL3_MouseCaptureMode_EnabledAfterDrag
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
    is_app_focused = (focused_window == bd.window)
    return unless is_app_focused

    if io[:WantSetMousePos]
      SDL.WarpMouseInWindow(bd.window, io[:MousePos][:x], io[:MousePos][:y])
    end

    hovered_window = SDL.GetMouseFocus()
    is_relative_mouse_mode = SDL.GetWindowRelativeMouseMode(bd.window)
    if hovered_window == nil && bd.mouse_can_use_global_state && bd.mouse_buttons_down == 0 && !is_relative_mouse_mode
      mx = FFI::MemoryPointer.new(:float)
      my = FFI::MemoryPointer.new(:float)
      wx = FFI::MemoryPointer.new(:int)
      wy = FFI::MemoryPointer.new(:int)
      SDL.GetGlobalMouseState(mx, my)
      SDL.GetWindowPosition(focused_window, wx, wy)
      io.AddMousePosEvent(mx.read_float - wx.read_int, my.read_float - wy.read_int)
    end
  end

  def self.ImplSDL3_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) != 0

    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil

    imgui_cursor = ImGui::GetMouseCursor()
    if io[:MouseDrawCursor] || imgui_cursor == ImGuiMouseCursor_None
      SDL.HideCursor()
    else
      expected_cursor = bd.mouse_cursors[imgui_cursor] || bd.mouse_cursors[ImGuiMouseCursor_Arrow]
      if bd.mouse_last_cursor != expected_cursor
        SDL.SetCursor(expected_cursor)
        bd.mouse_last_cursor = expected_cursor
      end
      SDL.ShowCursor()
    end
  end

  def self.ImplSDL3_Saturate(v)
    return 0.0 if v < 0.0
    return 1.0 if v > 1.0
    v
  end

  def self.ImplSDL3_UpdateGamepadButton(bd, io, key, button_no)
    merged_value = false
    bd.gamepads.each do |gamepad|
      merged_value ||= SDL.GetGamepadButton(gamepad, button_no)
    end
    io.AddKeyEvent(key, merged_value)
  end

  def self.ImplSDL3_UpdateGamepadAnalog(bd, io, key, axis_no, v0, v1)
    merged_value = 0.0
    bd.gamepads.each do |gamepad|
      vn = ImplSDL3_Saturate((SDL.GetGamepadAxis(gamepad, axis_no) - v0).to_f / (v1 - v0).to_f)
      merged_value = vn if merged_value < vn
    end
    io.AddKeyAnalogEvent(key, merged_value > 0.1, merged_value)
  end

  def self.ImplSDL3_UpdateGamepads()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil

    if bd.want_update_gamepads_list && bd.gamepad_mode != ImGui_ImplSDL3_GamepadMode_Manual
      ImplSDL3_CloseGamepads()
      count_ptr = FFI::MemoryPointer.new(:int)
      gamepads_ptr = SDL.GetGamepads(count_ptr)
      count = count_ptr.read_int
      count.times do |n|
        joystick_id = (gamepads_ptr + n * FFI.type_size(:uint)).read_uint
        gamepad = SDL.OpenGamepad(joystick_id)
        next if gamepad == nil
        bd.gamepads << gamepad
        break if bd.gamepad_mode == ImGui_ImplSDL3_GamepadMode_AutoFirst
      end
      bd.want_update_gamepads_list = false
      SDL.free(gamepads_ptr) if gamepads_ptr != nil
    end

    io[:BackendFlags] &= ~ImGuiBackendFlags_HasGamepad
    return if bd.gamepads.empty?
    io[:BackendFlags] |= ImGuiBackendFlags_HasGamepad

    dead_zone = 8000
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadStart, SDL::GAMEPAD_BUTTON_START)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadBack, SDL::GAMEPAD_BUTTON_BACK)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceLeft, SDL::GAMEPAD_BUTTON_WEST)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceRight, SDL::GAMEPAD_BUTTON_EAST)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceUp, SDL::GAMEPAD_BUTTON_NORTH)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadFaceDown, SDL::GAMEPAD_BUTTON_SOUTH)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadLeft, SDL::GAMEPAD_BUTTON_DPAD_LEFT)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadRight, SDL::GAMEPAD_BUTTON_DPAD_RIGHT)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadUp, SDL::GAMEPAD_BUTTON_DPAD_UP)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadDpadDown, SDL::GAMEPAD_BUTTON_DPAD_DOWN)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadL1, SDL::GAMEPAD_BUTTON_LEFT_SHOULDER)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadR1, SDL::GAMEPAD_BUTTON_RIGHT_SHOULDER)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadL2, SDL::GAMEPAD_AXIS_LEFT_TRIGGER, 0.0, 32767.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadR2, SDL::GAMEPAD_AXIS_RIGHT_TRIGGER, 0.0, 32767.0)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadL3, SDL::GAMEPAD_BUTTON_LEFT_STICK)
    ImplSDL3_UpdateGamepadButton(bd, io, ImGuiKey_GamepadR3, SDL::GAMEPAD_BUTTON_RIGHT_STICK)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickLeft, SDL::GAMEPAD_AXIS_LEFTX, -dead_zone, -32768.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickRight, SDL::GAMEPAD_AXIS_LEFTX, dead_zone, 32767.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickUp, SDL::GAMEPAD_AXIS_LEFTY, -dead_zone, -32768.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadLStickDown, SDL::GAMEPAD_AXIS_LEFTY, dead_zone, 32767.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickLeft, SDL::GAMEPAD_AXIS_RIGHTX, -dead_zone, -32768.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickRight, SDL::GAMEPAD_AXIS_RIGHTX, dead_zone, 32767.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickUp, SDL::GAMEPAD_AXIS_RIGHTY, -dead_zone, -32768.0)
    ImplSDL3_UpdateGamepadAnalog(bd, io, ImGuiKey_GamepadRStickDown, SDL::GAMEPAD_AXIS_RIGHTY, dead_zone, 32767.0)
  end

  def self.ImplSDL3_UpdateImeFromIO()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDL3_GetBackendData()
    return if bd == nil

    window = SDL.GetKeyboardFocus()
    return if window == nil

    if io[:WantTextInput]
      unless SDL.TextInputActive(window)
        SDL.StartTextInput(window)
      end
    else
      SDL.StopTextInput(window) if SDL.TextInputActive(window)
    end
  end

  def self.ImplSDL3_GetWindowSizeAndFramebufferScale(window)
    w_ptr = FFI::MemoryPointer.new(:int)
    h_ptr = FFI::MemoryPointer.new(:int)
    SDL.GetWindowSize(window, w_ptr, h_ptr)
    w = w_ptr.read_int
    h = h_ptr.read_int
    if (SDL.GetWindowFlags(window) & SDL::WINDOW_MINIMIZED) != 0
      w = h = 0
    end

    display_w_ptr = FFI::MemoryPointer.new(:int)
    display_h_ptr = FFI::MemoryPointer.new(:int)
    SDL.GetWindowSizeInPixels(window, display_w_ptr, display_h_ptr)
    display_w = display_w_ptr.read_int
    display_h = display_h_ptr.read_int

    scale_x = (w > 0) ? (display_w.to_f / w.to_f) : 1.0
    scale_y = (h > 0) ? (display_h.to_f / h.to_f) : 1.0
    [w, h, scale_x, scale_y]
  end

  def self.ImplSDL3_NewFrame()
    bd = ImGui_ImplSDL3_GetBackendData()
    raise 'Context or backend not initialized! Did you call ImGui::ImplSDL3_Init()?' if bd == nil

    io = ImGuiIO.new(ImGui::GetIO())

    w, h, scale_x, scale_y = ImplSDL3_GetWindowSizeAndFramebufferScale(bd.window)
    io[:DisplaySize] = ImVec2.create(w.to_f, h.to_f)
    io[:DisplayFramebufferScale][:x] = scale_x
    io[:DisplayFramebufferScale][:y] = scale_y

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

    ImplSDL3_UpdateMouseData()
    ImplSDL3_UpdateMouseCursor()
    ImplSDL3_UpdateImeFromIO()
    ImplSDL3_UpdateGamepads()
  end

end