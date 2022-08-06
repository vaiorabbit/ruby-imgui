require 'ffi'
require 'sdl2'
require_relative 'imgui'

module ImGui

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_sdl")

  # ImGui::GetCurrentContext().address => ImGui_ImplSDL2_Data
  @@g_BackendData = Hash.new

  # [INTERNAL]
  class ImGui_ImplSDL2_Data
    attr_accessor :window, :renderer, :time, :mouseButtonsDown, :mouseCursors, :clipboardTextData, :mouseCanUseGlobalState

    def initialize
      @window = nil                                           # SDL_Window*
      @renderer = nil                                         # SDL_Renderer*
      @time = 0.0                                             # Uint64
      @mouseButtonsDown = 0                                   # int
      @mouseCursors = Array.new(ImGuiMouseCursor_COUNT) { 0 } # SDL_Cursor*
      @clipboardTextData = nil                                # char*
      @mouseCanUseGlobalState = false                         # bool
    end
  end

  # Backend data stored in io.BackendPlatformUserData to allow support for multiple Dear ImGui contexts
  # It is STRONGLY preferred that you use docking branch with multi-viewports (== single Dear ImGui context + multiple windows) instead of multiple Dear ImGui contexts.
  # FIXME: multi-context support is not well tested and probably dysfunctional in this backend.
  # FIXME: some shared resources (mouse cursor shape, gamepad) are mishandled when using multi-context.
  # [INTERNAL]
  def self.ImGui_ImplSDL2_GetBackendData()
    if ImGui::GetCurrentContext() != nil
      @@g_BackendData[ImGui::GetCurrentContext().address]
    else
      nil
    end
  end

  # [TODO] Support ClipboardText
  # g_ClipboardTextData
  # ImplSDL2_GetClipboardText
  # ImplSDL2_SetClipboardText

  # [INTERNAL]
  def self.ImGui_ImplSDL2_GetClipboardText(user_data)
    bd = ImGui_ImplSDL2_GetBackendData()
    SDL.free(bd.clipboardTextData) if bd.clipboardTextData
    bd.clipboardTextData = SDL.GetClipboardText()
    return bd.clipboardTextData
  end

  # [INTERNAL]
  def self.ImGui_ImplSDL2_SetClipboardText(user_data, text)
    SDL.SetClipboardText(text)
  end

  # [INTERNAL]
  def self.ImGui_ImplSDL2_KeyToImGuiKey(key)
    case key
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
    when SDL::SDLK_QUOTE then ImGuiKey_Apostrophe
    when SDL::SDLK_COMMA then ImGuiKey_Comma
    when SDL::SDLK_MINUS then ImGuiKey_Minus
    when SDL::SDLK_PERIOD then ImGuiKey_Period
    when SDL::SDLK_SLASH then ImGuiKey_Slash
    when SDL::SDLK_SEMICOLON then ImGuiKey_Semicolon
    when SDL::SDLK_EQUALS then ImGuiKey_Equal
    when SDL::SDLK_LEFTBRACKET then ImGuiKey_LeftBracket
    when SDL::SDLK_BACKSLASH then ImGuiKey_Backslash
    when SDL::SDLK_RIGHTBRACKET then ImGuiKey_RightBracket
    when SDL::SDLK_BACKQUOTE then ImGuiKey_GraveAccent
    when SDL::SDLK_CAPSLOCK then ImGuiKey_CapsLock
    when SDL::SDLK_SCROLLLOCK then ImGuiKey_ScrollLock
    when SDL::SDLK_NUMLOCKCLEAR then ImGuiKey_NumLock
    when SDL::SDLK_PRINTSCREEN then ImGuiKey_PrintScreen
    when SDL::SDLK_PAUSE then ImGuiKey_Pause
    when SDL::SDLK_KP_0 then ImGuiKey_Keypad0
    when SDL::SDLK_KP_1 then ImGuiKey_Keypad1
    when SDL::SDLK_KP_2 then ImGuiKey_Keypad2
    when SDL::SDLK_KP_3 then ImGuiKey_Keypad3
    when SDL::SDLK_KP_4 then ImGuiKey_Keypad4
    when SDL::SDLK_KP_5 then ImGuiKey_Keypad5
    when SDL::SDLK_KP_6 then ImGuiKey_Keypad6
    when SDL::SDLK_KP_7 then ImGuiKey_Keypad7
    when SDL::SDLK_KP_8 then ImGuiKey_Keypad8
    when SDL::SDLK_KP_9 then ImGuiKey_Keypad9
    when SDL::SDLK_KP_PERIOD then ImGuiKey_KeypadDecimal
    when SDL::SDLK_KP_DIVIDE then ImGuiKey_KeypadDivide
    when SDL::SDLK_KP_MULTIPLY then ImGuiKey_KeypadMultiply
    when SDL::SDLK_KP_MINUS then ImGuiKey_KeypadSubtract
    when SDL::SDLK_KP_PLUS then ImGuiKey_KeypadAdd
    when SDL::SDLK_KP_ENTER then ImGuiKey_KeypadEnter
    when SDL::SDLK_KP_EQUALS then ImGuiKey_KeypadEqual
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
    when SDL::SDLK_a then ImGuiKey_A
    when SDL::SDLK_b then ImGuiKey_B
    when SDL::SDLK_c then ImGuiKey_C
    when SDL::SDLK_d then ImGuiKey_D
    when SDL::SDLK_e then ImGuiKey_E
    when SDL::SDLK_f then ImGuiKey_F
    when SDL::SDLK_g then ImGuiKey_G
    when SDL::SDLK_h then ImGuiKey_H
    when SDL::SDLK_i then ImGuiKey_I
    when SDL::SDLK_j then ImGuiKey_J
    when SDL::SDLK_k then ImGuiKey_K
    when SDL::SDLK_l then ImGuiKey_L
    when SDL::SDLK_m then ImGuiKey_M
    when SDL::SDLK_n then ImGuiKey_N
    when SDL::SDLK_o then ImGuiKey_O
    when SDL::SDLK_p then ImGuiKey_P
    when SDL::SDLK_q then ImGuiKey_Q
    when SDL::SDLK_r then ImGuiKey_R
    when SDL::SDLK_s then ImGuiKey_S
    when SDL::SDLK_t then ImGuiKey_T
    when SDL::SDLK_u then ImGuiKey_U
    when SDL::SDLK_v then ImGuiKey_V
    when SDL::SDLK_w then ImGuiKey_W
    when SDL::SDLK_x then ImGuiKey_X
    when SDL::SDLK_y then ImGuiKey_Y
    when SDL::SDLK_z then ImGuiKey_Z
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
    else ImGuiKey_None
    end
  end

  # [INTERNAL]
  def self.ImGui_ImplSDL2_UpdateKeyModifiers(sdl_key_mods)
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddKeyEvent(ImGuiKey_ModCtrl, (sdl_key_mods & SDL::KMOD_CTRL) != 0)
    io.AddKeyEvent(ImGuiKey_ModShift, (sdl_key_mods & SDL::KMOD_SHIFT) != 0)
    io.AddKeyEvent(ImGuiKey_ModAlt, (sdl_key_mods & SDL::KMOD_ALT) != 0)
    io.AddKeyEvent(ImGuiKey_ModSuper, (sdl_key_mods & SDL::KMOD_GUI) != 0)
  end

  # You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
  # - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application.
  # - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application.
  # Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
  # If you have multiple SDL events and some of them are not meant to be used by dear imgui, you may need to filter events based on their windowID field.
  def self.ImplSDL2_ProcessEvent(event)
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDL2_GetBackendData()

    case event[:type]

    when SDL::MOUSEMOTION
      io.AddMousePosEvent(event[:motion][:x].to_f, event[:motion][:y].to_f)
      return true

    when SDL::MOUSEWHEEL
      wheel_x = (event[:wheel][:x] > 0) ? 1.0 : (event[:wheel][:x] < 0) ? -1.0 : 0.0
      wheel_y = (event[:wheel][:y] > 0) ? 1.0 : (event[:wheel][:y] < 0) ? -1.0 : 0.0
      io.AddMouseWheelEvent(wheel_x, wheel_y)
      return true

    when SDL::MOUSEBUTTONDOWN, SDL::MOUSEBUTTONUP
      mouse_button = -1
      mouse_button = 0 if event[:button][:button] == SDL::BUTTON_LEFT
      mouse_button = 1 if event[:button][:button] == SDL::BUTTON_RIGHT
      mouse_button = 2 if event[:button][:button] == SDL::BUTTON_MIDDLE
      if mouse_button != -1
        io.AddMouseButtonEvent(mouse_button, event[:type] == SDL::MOUSEBUTTONDOWN)
        bd.mouseButtonsDown = (event[:type] == SDL::MOUSEBUTTONDOWN) ? (bd.mouseButtonsDown | (1 << mouse_button)) : (bd.mouseButtonsDown & ~(1 << mouse_button))
        return true
      end

    when SDL::TEXTINPUT
      io.AddInputCharactersUTF8(event[:text][:text])
      return true

    when SDL::KEYDOWN, SDL::KEYUP
      ImGui_ImplSDL2_UpdateKeyModifiers(event[:key][:keysym][:mod])
      key = ImGui_ImplSDL2_KeyToImGuiKey(event[:key][:keysym][:sym])
      io.AddKeyEvent(key, (event[:type] == SDL::KEYDOWN))
      io.SetKeyEventNativeData(key, event[:key][:keysym][:sym], event[:key][:keysym][:scancode], event[:key][:keysym][:scancode]) # To support legacy indexing (<1.87 user code). Legacy backend uses SDLK_*** as indices to IsKeyXXX() functions.
      return true

    when SDL::WINDOWEVENT
      io.AddMousePosEvent(-Float::MAX, -Float::MAX) if event[:window][:event] == SDL::WINDOWEVENT_LEAVE

      if event[:window][:event] == SDL::WINDOWEVENT_FOCUS_GAINED
        io.AddFocusEvent(true)
      elsif event[:window][:event] == SDL::WINDOWEVENT_FOCUS_LOST
        io.AddFocusEvent(false)
      end
      return true

    end

    return false
  end

  def self.ImplSDL2_Init(window, renderer)

    # Check and store if we are on a SDL backend that supports global mouse position
    # ("wayland" and "rpi" don't support it, but we chose to use a white-list instead of a black-list)
    mouse_can_use_global_state = false
    sdl_backend = SDL.GetCurrentVideoDriver().read_string
    global_mouse_whitelist = ["windows", "cocoa", "x11", "DIVE", "VMAN"]
    global_mouse_whitelist.each do |platform|
      mouse_can_use_global_state = true if sdl_backend == platform
    end

    # Setup backend capabilities flags
    bd = ImGui_ImplSDL2_Data.new
    @@g_BackendData[ImGui::GetCurrentContext().address] = bd

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendPlatformName] = @@g_BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)

    bd.window = window
    bd.renderer = renderer
    bd.mouseCanUseGlobalState = mouse_can_use_global_state

    # [TODO] Support ClipboardText : pass callbacks as Proc or something
    # io[:SetClipboardTextFn] = ImGui_ImplSDL2_SetClipboardText
    # io[:GetClipboardTextFn] = ImGui_ImplSDL2_GetClipboardText
    io[:ClipboardUserData] = nil

    # Load mouse cursors
    bd.mouseCursors[ImGuiMouseCursor_Arrow]      = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_ARROW)
    bd.mouseCursors[ImGuiMouseCursor_TextInput]  = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_IBEAM)
    bd.mouseCursors[ImGuiMouseCursor_ResizeAll]  = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_SIZEALL)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNS]   = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_SIZENS)
    bd.mouseCursors[ImGuiMouseCursor_ResizeEW]   = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_SIZEWE)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNESW] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_SIZENESW)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNWSE] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_SIZENWSE)
    bd.mouseCursors[ImGuiMouseCursor_Hand]       = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_HAND)
    bd.mouseCursors[ImGuiMouseCursor_NotAllowed] = SDL.CreateSystemCursor(SDL::SYSTEM_CURSOR_NO)

    # Set platform dependent data in viewport
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin/
      info = SDL::SysWMinfo_win.new
      SDL.GetVersion(info[:version])
      if SDL.GetWindowWMInfo(window, info) == SDL::TRUE
        viewport = ImGuiViewport.new(ImGui::GetMainViewport())
        viewport[:PlatformHandleRaw] = info[:info][:win][:window]
      end
    end

    # Set SDL hint to receive mouse click events on window focus, otherwise SDL doesn't emit the event.
    # Without this, when clicking to gain focus, our widgets wouldn't activate even though they showed as hovered.
    # (This is unfortunately a global SDL setting, so enabling it might have a side-effect on your application.
    # It is unlikely to make a difference, but if your app absolutely needs to ignore the initial on-focus click:
    # you can ignore SDL_MOUSEBUTTONDOWN events coming right after a SDL_WINDOWEVENT_FOCUS_GAINED)
    if defined?(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH)
      SDL.SetHint(SDL::HINT_MOUSE_FOCUS_CLICKTHROUGH, "1")
    end

    return true
  end

  def self.ImplSDL2_Shutdown()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplSDL2_GetBackendData()

    SDL.free(bd.clipboardTextData) if bd.clipboardTextData

    ImGuiMouseCursor_COUNT.times do |cursor_n|
      SDL.FreeCursor(bd.mouseCursors[cursor_n])
      bd.mouseCursors[cursor_n] = nil
    end

    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    @@g_BackendData[ImGui::GetCurrentContext()] = nil
  end

  # [INTERNAL]
  def self.ImplSDL2_UpdateMouseData()
    bd = ImGui_ImplSDL2_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    SDL.CaptureMouse(bd.mouseButtonsDown != 0 ? SDL::TRUE : SDL::FALSE)
    focused_window = SDL.GetKeyboardFocus()
    is_app_focused = (bd.window == focused_window)
    if is_app_focused
      # (Optional) Set OS mouse position from Dear ImGui if requested (rarely used, only when ImGuiConfigFlags_NavEnableSetMousePos is enabled by user)
      if io[:WantSetMousePos]
        SDL.WarpMouseInWindow(bd.window, io[:MousePos][:x].to_i, io[:MousePos][:y].to_i)
      end

      # (Optional) Fallback to provide mouse position when focused (SDL_MOUSEMOTION already provides this when hovered or captured)
      if bd.mouseCanUseGlobalState && bd.mouseButtonsDown == 0
        wx = FFI::MemoryPointer.new(:int)
        wy = FFI::MemoryPointer.new(:int)
        mx = FFI::MemoryPointer.new(:int)
        my = FFI::MemoryPointer.new(:int)
        SDL.GetGlobalMouseState(mx, my)
        SDL.GetWindowPosition(bd.window, wx, wy)
        io.AddMousePosEvent(mx.read(:int).to_f - wx.read(:int).to_f, my.read(:int).to_f - wy.read(:int).to_f)
      end
    end
  end

  # [INTERNAL]
  def self.ImplSDL2_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange)
    bd = ImGui_ImplSDL2_GetBackendData()

    imgui_cursor = ImGui::GetMouseCursor()
    if io[:MouseDrawCursor] || imgui_cursor == ImGuiMouseCursor_None
      # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
      SDL.ShowCursor(SDL::FALSE)
    else
      # Show OS mouse cursor
      SDL.SetCursor(bd.mouseCursors[imgui_cursor] ? bd.mouseCursors[imgui_cursor] : bd.mouseCursors[ImGuiMouseCursor_Arrow])
      SDL.ShowCursor(SDL::TRUE)
    end
  end

  #
  # [TODO] Support ImplSDL2_UpdateGamepads
  #

  def self.ImplSDL2_NewFrame()
    bd = ImGui_ImplSDL2_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    #  Setup display size (every frame to accommodate for window resizing)
    w = ' ' * 4
    h = ' ' * 4
    display_w = ' ' * 4
    display_h = ' ' * 4
    SDL.GetWindowSize(bd.window, w, h)
    w = w.unpack1('L')
    h = h.unpack1('L')

    if (SDL.GetWindowFlags(bd.window) & SDL::WINDOW_MINIMIZED) != 0
      w = h = 0
    end
    if bd.renderer != nil
      SDL.GetRendererOutputSize(bd.renderer, display_w, display_h)
    else
      SDL.GL_GetDrawableSize(bd.window, display_w, display_h)
    end
    display_w = display_w.unpack1('L')
    display_h = display_h.unpack1('L')

    io[:DisplaySize] = ImVec2.create(w.to_f, h.to_f)

    if w > 0 && h > 0
      io[:DisplayFramebufferScale][:x] = display_w.to_f / w
      io[:DisplayFramebufferScale][:y] = display_h.to_f / h
    end

    # Setup time step (we don't use SDL_GetTicks() because it is using millisecond resolution)
    frequency = SDL.GetPerformanceFrequency()
    current_time = SDL.GetPerformanceCounter()

    io[:DeltaTime] = bd.time > 0 ? ((current_time - bd.time).to_f / frequency) : (1.0/60.0)
    bd.time = current_time

    ImplSDL2_UpdateMouseData()
    ImplSDL2_UpdateMouseCursor()

    # [TODO] update gamepads
    # ImGui_ImplSDL2_UpdateGamepads()
  end

end
