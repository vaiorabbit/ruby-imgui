require 'ffi'
require 'opengl'
require 'glfw'

require_relative 'imgui'

module ImGui

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_glfw")

  # ImGui::GetCurrentContext().address => ImGui_ImplGlfw_Data
  @@g_BackendData = Hash.new

  class ImGui_ImplGlfw_Data
    attr_accessor :window, :time, :mouseWindow, :mouseCursors, :lastValidMousePos, :installedCallbacks
    attr_accessor :prevUserCallbackWindowFocus, :prevUserCallbackCursorPos, :prevUserCallbackCursorEnter, :prevUserCallbackMousebutton, :prevUserCallbackScroll, :prevUserCallbackKey, :prevUserCallbackChar, :prevUserCallbackMonitor

    def initialize
      @window = nil                                           # GLFWwindow*
      @time = 0.0                                             # double
      @mouseWindow = nil                                      # GLFWwindow*
      @mouseCursors = Array.new(ImGuiMouseCursor_COUNT) { 0 } # GLFWcursor*
      @lastValidMousePos  = ImVec2.create                     # ImVec2
      @installedCallbacks = false                             # bool

      # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
      @prevUserCallbackWindowFocus = nil # GLFWwindowfocusfun
      @prevUserCallbackCursorPos = nil   # GLFWcursorposfun
      @prevUserCallbackCursorEnter = nil # GLFWcursorenterfun
      @prevUserCallbackMousebutton = nil # GLFWmousebuttonfun
      @prevUserCallbackScroll = nil      # GLFWscrollfun
      @prevUserCallbackKey = nil         # GLFWkeyfun
      @prevUserCallbackChar = nil        # GLFWcharfun
      @prevUserCallbackMonitor = nil     # GLFWmonitorfun
    end
  end

  #  Backend data stored in io.BackendPlatformUserData to allow support for multiple Dear ImGui contexts
  #  It is STRONGLY preferred that you use docking branch with multi-viewports (== single Dear ImGui context + multiple windows) instead of multiple Dear ImGui contexts.
  #  FIXME: multi-context support is not well tested and probably dysfunctional in this backend.
  #  - Because glfwPollEvents() process all windows and some events may be called outside of it, you will need to register your own callbacks
  #    (passing install_callbacks=false in ImGui_ImplGlfw_InitXXX functions), set the current dear imgui context and then call our callbacks.
  #  - Otherwise we may need to store a GLFWWindow* -> ImGuiContext* map and handle this in the backend, adding a little bit of extra complexity to it.
  #  FIXME: some shared resources (mouse cursor shape, gamepad) are mishandled when using multi-context.
  def self.ImGui_ImplGlfw_GetBackendData()
    if ImGui::GetCurrentContext() != nil
      return @@g_BackendData[ImGui::GetCurrentContext().address]
      # io = ImGuiIO.new(ImGui::GetIO())
      # return ImGui_ImplGlfw_Data.new(io[:BackendPlatformUserData])
    else
      nil
    end
  end

  def self.ImGui_ImplGlfw_GetClipboardText(user_data)
    glfwGetClipboardString(user_data)
  end

  def self.ImGui_ImplGlfw_SetClipboardText(user_data, text)
    glfwSetClipboardString(user_data, text)
  end

  def self.ImGui_ImplGlfw_KeyToImGuiKey(key)
    case key
    when GLFW::KEY_TAB then ImGuiKey_Tab
    when GLFW::KEY_LEFT then ImGuiKey_LeftArrow
    when GLFW::KEY_RIGHT then ImGuiKey_RightArrow
    when GLFW::KEY_UP then ImGuiKey_UpArrow
    when GLFW::KEY_DOWN then ImGuiKey_DownArrow
    when GLFW::KEY_PAGE_UP then ImGuiKey_PageUp
    when GLFW::KEY_PAGE_DOWN then ImGuiKey_PageDown
    when GLFW::KEY_HOME then ImGuiKey_Home
    when GLFW::KEY_END then ImGuiKey_End
    when GLFW::KEY_INSERT then ImGuiKey_Insert
    when GLFW::KEY_DELETE then ImGuiKey_Delete
    when GLFW::KEY_BACKSPACE then ImGuiKey_Backspace
    when GLFW::KEY_SPACE then ImGuiKey_Space
    when GLFW::KEY_ENTER then ImGuiKey_Enter
    when GLFW::KEY_ESCAPE then ImGuiKey_Escape
    when GLFW::KEY_APOSTROPHE then ImGuiKey_Apostrophe
    when GLFW::KEY_COMMA then ImGuiKey_Comma
    when GLFW::KEY_MINUS then ImGuiKey_Minus
    when GLFW::KEY_PERIOD then ImGuiKey_Period
    when GLFW::KEY_SLASH then ImGuiKey_Slash
    when GLFW::KEY_SEMICOLON then ImGuiKey_Semicolon
    when GLFW::KEY_EQUAL then ImGuiKey_Equal
    when GLFW::KEY_LEFT_BRACKET then ImGuiKey_LeftBracket
    when GLFW::KEY_BACKSLASH then ImGuiKey_Backslash
    when GLFW::KEY_RIGHT_BRACKET then ImGuiKey_RightBracket
    when GLFW::KEY_GRAVE_ACCENT then ImGuiKey_GraveAccent
    when GLFW::KEY_CAPS_LOCK then ImGuiKey_CapsLock
    when GLFW::KEY_SCROLL_LOCK then ImGuiKey_ScrollLock
    when GLFW::KEY_NUM_LOCK then ImGuiKey_NumLock
    when GLFW::KEY_PRINT_SCREEN then ImGuiKey_PrintScreen
    when GLFW::KEY_PAUSE then ImGuiKey_Pause
    when GLFW::KEY_KP_0 then ImGuiKey_Keypad0
    when GLFW::KEY_KP_1 then ImGuiKey_Keypad1
    when GLFW::KEY_KP_2 then ImGuiKey_Keypad2
    when GLFW::KEY_KP_3 then ImGuiKey_Keypad3
    when GLFW::KEY_KP_4 then ImGuiKey_Keypad4
    when GLFW::KEY_KP_5 then ImGuiKey_Keypad5
    when GLFW::KEY_KP_6 then ImGuiKey_Keypad6
    when GLFW::KEY_KP_7 then ImGuiKey_Keypad7
    when GLFW::KEY_KP_8 then ImGuiKey_Keypad8
    when GLFW::KEY_KP_9 then ImGuiKey_Keypad9
    when GLFW::KEY_KP_DECIMAL then ImGuiKey_KeypadDecimal
    when GLFW::KEY_KP_DIVIDE then ImGuiKey_KeypadDivide
    when GLFW::KEY_KP_MULTIPLY then ImGuiKey_KeypadMultiply
    when GLFW::KEY_KP_SUBTRACT then ImGuiKey_KeypadSubtract
    when GLFW::KEY_KP_ADD then ImGuiKey_KeypadAdd
    when GLFW::KEY_KP_ENTER then ImGuiKey_KeypadEnter
    when GLFW::KEY_KP_EQUAL then ImGuiKey_KeypadEqual
    when GLFW::KEY_LEFT_SHIFT then ImGuiKey_LeftShift
    when GLFW::KEY_LEFT_CONTROL then ImGuiKey_LeftCtrl
    when GLFW::KEY_LEFT_ALT then ImGuiKey_LeftAlt
    when GLFW::KEY_LEFT_SUPER then ImGuiKey_LeftSuper
    when GLFW::KEY_RIGHT_SHIFT then ImGuiKey_RightShift
    when GLFW::KEY_RIGHT_CONTROL then ImGuiKey_RightCtrl
    when GLFW::KEY_RIGHT_ALT then ImGuiKey_RightAlt
    when GLFW::KEY_RIGHT_SUPER then ImGuiKey_RightSuper
    when GLFW::KEY_MENU then ImGuiKey_Menu
    when GLFW::KEY_0 then ImGuiKey_0
    when GLFW::KEY_1 then ImGuiKey_1
    when GLFW::KEY_2 then ImGuiKey_2
    when GLFW::KEY_3 then ImGuiKey_3
    when GLFW::KEY_4 then ImGuiKey_4
    when GLFW::KEY_5 then ImGuiKey_5
    when GLFW::KEY_6 then ImGuiKey_6
    when GLFW::KEY_7 then ImGuiKey_7
    when GLFW::KEY_8 then ImGuiKey_8
    when GLFW::KEY_9 then ImGuiKey_9
    when GLFW::KEY_A then ImGuiKey_A
    when GLFW::KEY_B then ImGuiKey_B
    when GLFW::KEY_C then ImGuiKey_C
    when GLFW::KEY_D then ImGuiKey_D
    when GLFW::KEY_E then ImGuiKey_E
    when GLFW::KEY_F then ImGuiKey_F
    when GLFW::KEY_G then ImGuiKey_G
    when GLFW::KEY_H then ImGuiKey_H
    when GLFW::KEY_I then ImGuiKey_I
    when GLFW::KEY_J then ImGuiKey_J
    when GLFW::KEY_K then ImGuiKey_K
    when GLFW::KEY_L then ImGuiKey_L
    when GLFW::KEY_M then ImGuiKey_M
    when GLFW::KEY_N then ImGuiKey_N
    when GLFW::KEY_O then ImGuiKey_O
    when GLFW::KEY_P then ImGuiKey_P
    when GLFW::KEY_Q then ImGuiKey_Q
    when GLFW::KEY_R then ImGuiKey_R
    when GLFW::KEY_S then ImGuiKey_S
    when GLFW::KEY_T then ImGuiKey_T
    when GLFW::KEY_U then ImGuiKey_U
    when GLFW::KEY_V then ImGuiKey_V
    when GLFW::KEY_W then ImGuiKey_W
    when GLFW::KEY_X then ImGuiKey_X
    when GLFW::KEY_Y then ImGuiKey_Y
    when GLFW::KEY_Z then ImGuiKey_Z
    when GLFW::KEY_F1 then ImGuiKey_F1
    when GLFW::KEY_F2 then ImGuiKey_F2
    when GLFW::KEY_F3 then ImGuiKey_F3
    when GLFW::KEY_F4 then ImGuiKey_F4
    when GLFW::KEY_F5 then ImGuiKey_F5
    when GLFW::KEY_F6 then ImGuiKey_F6
    when GLFW::KEY_F7 then ImGuiKey_F7
    when GLFW::KEY_F8 then ImGuiKey_F8
    when GLFW::KEY_F9 then ImGuiKey_F9
    when GLFW::KEY_F10 then ImGuiKey_F10
    when GLFW::KEY_F11 then ImGuiKey_F11
    when GLFW::KEY_F12 then ImGuiKey_F12
    else ImGuiKey_None
    end
  end

  def self.ImGui_ImplGlfw_UpdateKeyModifiers(mods)
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddKeyEvent(ImGuiMod_Ctrl, (mods & GLFW::MOD_CONTROL) != 0)
    io.AddKeyEvent(ImGuiMod_Shift, (mods & GLFW::MOD_SHIFT) != 0)
    io.AddKeyEvent(ImGuiMod_Alt, (mods & GLFW::MOD_ALT) != 0)
    io.AddKeyEvent(ImGuiMod_Super, (mods & GLFW::MOD_SUPER) != 0)
  end

  @@ImplGlfw_MouseButtonCallback = GLFW::create_callback(:GLFWmousebuttonfun) do |window, button, action, mods|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackMousebutton.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackMousebutton, GLFW::GLFWmousebuttonfun_cb_args, GLFW::GLFWmousebuttonfun_cb_retval)
      userfunc.call(window, button, action, mods)
    end

    ImGui_ImplGlfw_UpdateKeyModifiers(mods)

    io = ImGuiIO.new(ImGui::GetIO())
    if button >= 0 && button < ImGuiMouseButton_COUNT
      io.AddMouseButtonEvent(button, action == GLFW::PRESS)
    end
  end

  @@ImplGlfw_ScrollCallback = GLFW::create_callback(:GLFWscrollfun) do |window, xoffset, yoffset|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackScroll.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackScroll, GLFW::GLFWscrollfun_cb_args, GLFW::GLFWscrollfun_cb_retval)
      userfunc.call(window, xoffset, yoffset)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io.AddMouseWheelEvent(xoffset.to_f, yoffset.to_f)
  end

  def self.ImGui_ImplGlfw_TranslateUntranslatedKey(key, scancode)

    # GLFW 3.1+ attempts to "untranslate" keys, which goes the opposite of what every other framework does, making using lettered shortcuts difficult.
    # (It had reasons to do so: namely GLFW is/was more likely to be used for WASD-type game controls rather than lettered shortcuts, but IHMO the 3.1 change could have been done differently)
    # See https://github.com/glfw/glfw/issues/1502 for details.
    # Adding a workaround to undo this (so our keys are translated->untranslated->translated, likely a lossy process).
    # This won't cover edge cases but this is at least going to cover common cases.
    return key if key >= GLFW::KEY_KP_0 && key <= GLFW::KEY_KP_EQUAL

    key_name_ptr = GLFW.GetKeyName(key, scancode)
    unless key_name_ptr.null?
      key_name = key_name_ptr.to_s
      if key_name[0] != 0 && key_name[1] == 0
        char_names = "`-=[]\\,;\'./".chars
        char_keys = [GLFW::KEY_GRAVE_ACCENT, GLFW::KEY_MINUS, GLFW::KEY_EQUAL, GLFW::KEY_LEFT_BRACKET, GLFW::KEY_RIGHT_BRACKET, GLFW::KEY_BACKSLASH, GLFW::KEY_COMMA, GLFW::KEY_SEMICOLON, GLFW::KEY_APOSTROPHE, GLFW::KEY_PERIOD, GLFW::KEY_SLASH]

        if key_name[0] >= '0' && key_name[0] <= '9'
          key = GLFW::KEY_0 + (key_name[0] - '0')
        elsif key_name[0] >= 'A' && key_name[0] <= 'Z'
          key = GLFW::KEY_A + (key_name[0] - 'A')
        elsif char_names.include? key_name[0]
          key = char_keys[char_names.index(key_name[0])]
        end
      end
    end

    return key
  end

  @@ImplGlfw_KeyCallback = GLFW::create_callback(:GLFWkeyfun) do |window, keycode, scancode, action, mods|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackKey.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackKey, GLFW::GLFWkeyfun_cb_args, GLFW::GLFWkeyfun_cb_retval)
      userfunc.call(window, keycode, scancode, action, mods)
    end

    return if (action != GLFW::PRESS && action != GLFW::RELEASE)

    ImGui_ImplGlfw_UpdateKeyModifiers(mods)

    keycode = ImGui_ImplGlfw_TranslateUntranslatedKey(keycode, scancode)

    io = ImGuiIO.new(ImGui::GetIO())
    imgui_key = ImGui_ImplGlfw_KeyToImGuiKey(keycode)
    io.AddKeyEvent(imgui_key, (action == GLFW::PRESS))
    io.SetKeyEventNativeData(imgui_key, keycode, scancode) # To support legacy indexing (<1.87 user code)
  end

  @@ImplGlfw_WindowFocusCallback = GLFW::create_callback(:GLFWwindowfocusfun) do |window, focused|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackWindowFocus.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackWindowFocus, GLFW::GLFWwindowfocusfun_cb_args, GLFW::GLFWwindowfocusfun_cb_retval)
      userfunc.call(window, focused)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io.AddFocusEvent(focused != 0)
  end

  @@ImplGlfw_CursorPosCallback = GLFW::create_callback(:GLFWcursorposfun) do |window, x, y|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackCursorPos.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackCursorPos, GLFW::GLFWcursorposfun_cb_args, GLFW::GLFWcursorposfun_cb_retval)
      userfunc.call(window, x, y)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io.AddMousePosEvent(x.to_f, y.to_f)
    bd.lastValidMousePos[:x] = x.to_f
    bd.lastValidMousePos[:y] = y.to_f
  end

  # Workaround: X11 seems to send spurious Leave/Enter events which would make us lose our position,
  # so we back it up and restore on Leave/Enter (see https://github.com/ocornut/imgui/issues/4984)
  @@ImplGlfw_CursorEnterCallback = GLFW::create_callback(:GLFWcursorenterfun) do |window, entered|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackCursorEnter.null?
      userfunc = Fiddle::Function.new(bd.prevUserCallbackCursorEnter, GLFW::GLFWcursorenterfun_cb_args, GLFW::GLFWcursorenterfun_cb_retval)
      userfunc.call(window, entered)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    if entered
      bd.mouseWindow = window
      io.AddMousePosEvent(bd.lastValidMousePos[:x], bd.lastValidMousePos[:y])
    elsif !entered && bd.mouseWindow == window
      bd.lastValidMousePos[:x] = io[:MousePos][:x]
      bd.lastValidMousePos[:y] = io[:MousePos][:y]
      bd.mouseWindow = nil
      io.AddMousePosEvent(-Float::MAX, -Float::MAX)
    end
  end

  @@ImplGlfw_CharCallback = GLFW::create_callback(:GLFWcharfun) do |window, c|
    bd = ImGui_ImplGlfw_GetBackendData()
    unless bd.prevUserCallbackChar.null?
      bd.prevUserCallbackChar.call(window, c)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io.AddInputCharacter(c);
  end

  @@ImplGlfw_MonitorCallback = GLFW::create_callback(:GLFWmonitorfun) do |monitor, event|
    # Unused in 'master' branch but 'docking' branch will use this, so we declare it ahead of it so if you have to install callbacks you can install this one too.

    # bd = ImGui_ImplGlfw_GetBackendData()
    # unless bd.prevUserCallbackMonitor.null?
    #   bd.prevUserCallbackMonitor.call(monitor, event)
    # end
  end

  def self.ImGui_ImplGlfw_InstallCallbacks(window)
    bd = ImGui_ImplGlfw_GetBackendData()

    bd.prevUserCallbackWindowFocus = GLFW.SetWindowFocusCallback(window, @@ImplGlfw_WindowFocusCallback)
    bd.prevUserCallbackCursorEnter = GLFW.SetCursorEnterCallback(window, @@ImplGlfw_CursorEnterCallback)
    bd.prevUserCallbackCursorPos = GLFW.SetCursorPosCallback(window, @@ImplGlfw_CursorPosCallback)
    bd.prevUserCallbackMousebutton = GLFW.SetMouseButtonCallback(window, @@ImplGlfw_MouseButtonCallback)
    bd.prevUserCallbackScroll = GLFW.SetScrollCallback(window, @@ImplGlfw_ScrollCallback)
    bd.prevUserCallbackKey = GLFW.SetKeyCallback(window, @@ImplGlfw_KeyCallback)
    bd.prevUserCallbackChar = GLFW.SetCharCallback(window, @@ImplGlfw_CharCallback)
    bd.prevUserCallbackMonitor = GLFW.SetMonitorCallback(@@ImplGlfw_MonitorCallback)
    bd.installedCallbacks = true
  end

  def self.ImGui_ImplGlfw_RestoreCallbacks(window)
    bd = ImGui_ImplGlfw_GetBackendData()
    GLFW.SetWindowFocusCallback(window, bd.prevUserCallbackWindowFocus)
    GLFW.SetCursorEnterCallback(window, bd.prevUserCallbackCursorEnter)
    GLFW.SetCursorPosCallback(window, bd.prevUserCallbackCursorPos)
    GLFW.SetMouseButtonCallback(window, bd.prevUserCallbackMousebutton)
    GLFW.SetScrollCallback(window, bd.prevUserCallbackScroll)
    GLFW.SetKeyCallback(window, bd.prevUserCallbackKey)
    GLFW.SetCharCallback(window, bd.prevUserCallbackChar)
    GLFW.SetMonitorCallback(bd.prevUserCallbackMonitor)

    bd.installedCallbacks = false
    bd.prevUserCallbackWindowFocus = nil
    bd.prevUserCallbackCursorEnter = nil
    bd.prevUserCallbackCursorPos = nil
    bd.prevUserCallbackMousebutton = nil
    bd.prevUserCallbackScroll = nil
    bd.prevUserCallbackKey = nil
    bd.prevUserCallbackChar = nil
    bd.prevUserCallbackMonitor = nil
  end

  def self.ImplGlfw_InitForOpenGL(window, install_callbacks)
    return ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_OpenGL)
  end

  def self.ImplGlfw_Shutdown()
    bd = ImGui_ImplGlfw_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    ImGui_ImplGlfw_RestoreCallbacks(bd.window) if bd.installedCallbacks

    ImGuiMouseCursor_COUNT.times do |cursor_n|
      GLFW.DestroyCursor(bd.mouseCursors[cursor_n])
      bd.mouseCursors[cursor_n] = nil
    end

    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    @@g_BackendData[ImGui::GetCurrentContext()] = nil
  end

  def self.ImplGlfw_UpdateMouseData()
    bd = ImGui_ImplGlfw_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    is_app_focused = GLFW.GetWindowAttrib(bd.window, GLFW::FOCUSED) != 0
    if is_app_focused
      # (Optional) Set OS mouse position from Dear ImGui if requested (rarely used, only when ImGuiConfigFlags_NavEnableSetMousePos is enabled by user)
      if io[:WantSetMousePos]
        GLFW.SetCursorPos(bd.window, io[:MousePos][:x].to_f, io[:MousePos][:y].to_f)
      elsif bd.mouseWindow != nil
        mouse_x = ' ' * 8
        mouse_y = ' ' * 8
        GLFW.GetCursorPos(bd.window, mouse_x, mouse_y)
        io[:MousePos][:x] = mouse_x.unpack1('d')
        io[:MousePos][:y] = mouse_y.unpack1('d')
      end
    end
  end

  def self.ImplGlfw_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplGlfw_GetBackendData()
    return if ((io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) || GLFW.GetInputMode(bd.window, GLFW::CURSOR) == GLFW::CURSOR_DISABLED)

    imgui_cursor = ImGui::GetMouseCursor()
    if imgui_cursor == ImGuiMouseCursor_None || io[:MouseDrawCursor]
        # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
        GLFW.SetInputMode(bd.window, GLFW::CURSOR, GLFW::CURSOR_HIDDEN)
    else
      # Show OS mouse cursor
      # FIXME-PLATFORM: Unfocused windows seems to fail changing the mouse cursor with GLFW 3.2, but 3.3 works here.
      GLFW.SetCursor(bd.window, bd.mouseCursors[imgui_cursor] ? bd.mouseCursors[imgui_cursor] : bd.mouseCursors[ImGuiMouseCursor_Arrow])
      GLFW.SetInputMode(bd.window, GLFW::CURSOR, GLFW::CURSOR_NORMAL)
    end
  end

  def self.ImplGlfw_NewFrame()
    bd = ImGui_ImplGlfw_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())
    # unless io[:Fonts].IsBuilt()
    #   puts "Font atlas not built! It is generally built by the renderer back-end. Missing call to renderer _NewFrame() function? e.g. ImGui_ImplOpenGL3_NewFrame()."
    # end

    #  Setup display size (every frame to accommodate for window resizing)
    w = ' ' * 4
    h = ' ' * 4
    display_w = ' ' * 4
    display_h = ' ' * 4
    GLFW.GetWindowSize(bd.window, w, h)
    GLFW.GetFramebufferSize(bd.window, display_w, display_h)

    w = w.unpack1('L')
    h = h.unpack1('L')
    io[:DisplaySize][:x] = w
    io[:DisplaySize][:y] = h

    if w > 0 && h > 0
      io[:DisplayFramebufferScale][:x] = display_w.unpack1('L') / w
      io[:DisplayFramebufferScale][:y] = display_h.unpack1('L') / h
    end

    #  Setup time step
    current_time = GLFW.GetTime()
    io[:DeltaTime] = bd.time > 0.0 ? (current_time - bd.time).to_f : (1.0/60.0)
    bd.time = current_time

    ImplGlfw_UpdateMouseData()
    ImplGlfw_UpdateMouseCursor()

    # TODO update gamepads
    # Update game controllers (if enabled and available)
    # ImGui_ImplGlfw_UpdateGamepads();
  end

  # private

  def self.ImplGlfw_Init(window, install_callbacks, client_api)
    # Setup backend capabilities flags
    bd = ImGui_ImplGlfw_Data.new
    @@g_BackendData[ImGui::GetCurrentContext().address] = bd

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendPlatformName] = @@g_BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)

    bd.window = window
    bd.time = 0.0

    # [TODO] Support ClipboardText & IME on Windows
    # io.SetClipboardTextFn = ImGui_ImplGlfw_SetClipboardText;
    # io.GetClipboardTextFn = ImGui_ImplGlfw_GetClipboardText;
    # io.ClipboardUserData = g_Window;
    # #if defined(_WIN32)
    # io.ImeWindowHandle = (void*)glfwGetWin32Window(g_Window);
    # #endif

    # GLFWerrorfun prev_error_callback = glfwSetErrorCallback(NULL);

    # Create mouse cursors
    # (By design, on X11 cursors are user configurable and some cursors may be missing. When a cursor doesn't exist,
    # GLFW will emit an error which will often be printed by the app, so we temporarily disable error reporting.
    # Missing cursors will return NULL and our _UpdateMouseCursor() function will use the Arrow cursor instead.)
    bd.mouseCursors[ImGuiMouseCursor_Arrow] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_TextInput] = GLFW.CreateStandardCursor(GLFW::IBEAM_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNS] = GLFW.CreateStandardCursor(GLFW::VRESIZE_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeEW] = GLFW.CreateStandardCursor(GLFW::HRESIZE_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_Hand] = GLFW.CreateStandardCursor(GLFW::HAND_CURSOR)

    # GLFW_HAS_NEW_CURSORS == false
    bd.mouseCursors[ImGuiMouseCursor_ResizeAll] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNESW] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNWSE] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_NotAllowed] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)

    # glfwSetErrorCallback(prev_error_callback)

    # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
    ImGui_ImplGlfw_InstallCallbacks(window) if install_callbacks

    # @@g_PrevUserCallbackMousebutton = nil
    # @@g_PrevUserCallbackScroll = nil
    # @@g_PrevUserCallbackKey = nil
    # @@g_PrevUserCallbackChar = nil
    # if install_callbacks
    #   @@g_PrevUserCallbackCursorEnter = GLFW.SetCursorEnterCallback(window, @@ImGui_ImplGlfw_CursorEnterCallback)
    #   @@g_PrevUserCallbackMousebutton = GLFW.SetMouseButtonCallback(window, @@ImplGlfw_MouseButtonCallback)
    #   @@g_PrevUserCallbackScroll = GLFW.SetScrollCallback(window, @@ImplGlfw_ScrollCallback)
    #   @@g_PrevUserCallbackKey = GLFW.SetKeyCallback(window, @@ImplGlfw_KeyCallback)
    #   @@g_PrevUserCallbackChar = GLFW.SetCharCallback(window, @@ImplGlfw_CharCallback)
    # end

    return true
  end

end
