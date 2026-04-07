require 'ffi'
require 'opengl'
require 'glfw'
require 'fiddle'

require_relative 'imgui'

module ImGui

  @@g_BackendData = {}
  @@g_WindowToContext = {}

  class ImGui_ImplGlfw_Data
    attr_accessor :contextAddress, :window, :clientApi, :time, :mouseWindow, :mouseCursors, :lastMouseCursor
    attr_accessor :lastValidMousePos, :isWayland, :installedCallbacks, :callbacksChainForAllWindows
    attr_accessor :backendPlatformName
    attr_accessor :prevUserCallbackWindowFocus, :prevUserCallbackCursorPos, :prevUserCallbackCursorEnter
    attr_accessor :prevUserCallbackMousebutton, :prevUserCallbackScroll, :prevUserCallbackKey
    attr_accessor :prevUserCallbackChar, :prevUserCallbackMonitor

    def initialize
      @contextAddress = nil
      @window = nil
      @clientApi = :GlfwClientApi_Unknown
      @time = 0.0
      @mouseWindow = nil
      @mouseCursors = Array.new(ImGuiMouseCursor_COUNT) { nil }
      @lastMouseCursor = nil
      @lastValidMousePos = ImVec2.create
      @isWayland = false
      @installedCallbacks = false
      @callbacksChainForAllWindows = false
      @backendPlatformName = nil

      @prevUserCallbackWindowFocus = nil
      @prevUserCallbackCursorPos = nil
      @prevUserCallbackCursorEnter = nil
      @prevUserCallbackMousebutton = nil
      @prevUserCallbackScroll = nil
      @prevUserCallbackKey = nil
      @prevUserCallbackChar = nil
      @prevUserCallbackMonitor = nil
    end
  end

  def self.ImGui_ImplGlfw_GetBackendData(window = nil)
    if window
      ctx_addr = ImGui_ImplGlfw_ContextMap_Get(window)
      return nil if ctx_addr.nil?
      return @@g_BackendData[ctx_addr]
    end

    ctx = ImGui::GetCurrentContext()
    return nil if ctx.nil?
    @@g_BackendData[ctx.address]
  end

  def self.ImGui_ImplGlfw_ContextMap_Add(window, ctx_addr)
    return if window.nil? || ctx_addr.nil?
    # @@g_WindowToContext[window.address] = ctx_addr
    @@g_WindowToContext[window] = ctx_addr
  end

  def self.ImGui_ImplGlfw_ContextMap_Get(window)
    return nil if window.nil?
    # @@g_WindowToContext[window.address]
    @@g_WindowToContext[window]
  end

  def self.ImGui_ImplGlfw_ContextMap_Remove(window)
    return if window.nil?
    # @@g_WindowToContext.delete(window.address)
    @@g_WindowToContext.delete(window)
  end

  def self.ImGui_ImplGlfw_IsWayland
    return false unless GLFW.respond_to?(:GetVersionString)
    GLFW.GetVersionString.to_s.include?('Wayland')
  rescue
    false
  end

  def self.ImGui_ImplGlfw_ShouldChainCallback(bd, window)
    return false if bd.nil?
    bd.callbacksChainForAllWindows || bd.window == window
  end

  def self.ImGui_ImplGlfw_CallbackPresent(callback)
    return false if callback.nil?
    return !callback.null? if callback.respond_to?(:null?)
    true
  end

  def self.ImGui_ImplGlfw_CallPreviousCallback(callback, args, cb_args = nil, cb_retval = nil)
    return unless ImGui_ImplGlfw_CallbackPresent(callback)

    if callback.respond_to?(:call)
      callback.call(*args)
    elsif cb_args && cb_retval
      Fiddle::Function.new(callback, cb_args, cb_retval).call(*args)
    end
  end

  def self.ImGui_ImplGlfw_KeyToImGuiKey(key, scancode = 0)
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
    when GLFW::KEY_WORLD_1, GLFW::KEY_WORLD_2 then ImGuiKey_Oem102
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
    when GLFW::KEY_F13 then ImGuiKey_F13
    when GLFW::KEY_F14 then ImGuiKey_F14
    when GLFW::KEY_F15 then ImGuiKey_F15
    when GLFW::KEY_F16 then ImGuiKey_F16
    when GLFW::KEY_F17 then ImGuiKey_F17
    when GLFW::KEY_F18 then ImGuiKey_F18
    when GLFW::KEY_F19 then ImGuiKey_F19
    when GLFW::KEY_F20 then ImGuiKey_F20
    when GLFW::KEY_F21 then ImGuiKey_F21
    when GLFW::KEY_F22 then ImGuiKey_F22
    when GLFW::KEY_F23 then ImGuiKey_F23
    when GLFW::KEY_F24 then ImGuiKey_F24
    else ImGuiKey_None
    end
  end

  def self.ImGui_ImplGlfw_UpdateKeyModifiers(io, window)
    io.AddKeyEvent(ImGuiMod_Ctrl,
      GLFW.GetKey(window, GLFW::KEY_LEFT_CONTROL) == GLFW::PRESS ||
      GLFW.GetKey(window, GLFW::KEY_RIGHT_CONTROL) == GLFW::PRESS)
    io.AddKeyEvent(ImGuiMod_Shift,
      GLFW.GetKey(window, GLFW::KEY_LEFT_SHIFT) == GLFW::PRESS ||
      GLFW.GetKey(window, GLFW::KEY_RIGHT_SHIFT) == GLFW::PRESS)
    io.AddKeyEvent(ImGuiMod_Alt,
      GLFW.GetKey(window, GLFW::KEY_LEFT_ALT) == GLFW::PRESS ||
      GLFW.GetKey(window, GLFW::KEY_RIGHT_ALT) == GLFW::PRESS)
    io.AddKeyEvent(ImGuiMod_Super,
      GLFW.GetKey(window, GLFW::KEY_LEFT_SUPER) == GLFW::PRESS ||
      GLFW.GetKey(window, GLFW::KEY_RIGHT_SUPER) == GLFW::PRESS)
  rescue
    # Fallback for older bindings where GetKey is unavailable.
  end

  def self.ImGui_ImplGlfw_TranslateUntranslatedKey(key, scancode)
    return key unless GLFW.respond_to?(:GetKeyName)
    return key if key >= GLFW::KEY_KP_0 && key <= GLFW::KEY_KP_EQUAL

    key_name_ptr = GLFW.GetKeyName(key, scancode)
    return key if key_name_ptr.nil? || (key_name_ptr.respond_to?(:null?) && key_name_ptr.null?)

    key_name = key_name_ptr.to_s
    return key unless key_name.length == 1

    char = key_name[0]
    char_names = "`-=[]\\,;'./"
    char_keys = [
      GLFW::KEY_GRAVE_ACCENT, GLFW::KEY_MINUS, GLFW::KEY_EQUAL, GLFW::KEY_LEFT_BRACKET,
      GLFW::KEY_RIGHT_BRACKET, GLFW::KEY_BACKSLASH, GLFW::KEY_COMMA, GLFW::KEY_SEMICOLON,
      GLFW::KEY_APOSTROPHE, GLFW::KEY_PERIOD, GLFW::KEY_SLASH
    ]

    if char >= '0' && char <= '9'
      GLFW::KEY_0 + (char.ord - '0'.ord)
    elsif char >= 'A' && char <= 'Z'
      GLFW::KEY_A + (char.ord - 'A'.ord)
    elsif char >= 'a' && char <= 'z'
      GLFW::KEY_A + (char.ord - 'a'.ord)
    elsif (idx = char_names.index(char))
      char_keys[idx]
    else
      key
    end
  rescue
    key
  end

  @@ImplGlfw_MouseButtonCallback = GLFW.create_callback(:GLFWmousebuttonfun) do |window, button, action, mods|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackMousebutton,
        [window, button, action, mods],
        GLFW::GLFWmousebuttonfun_cb_args,
        GLFW::GLFWmousebuttonfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    ImGui_ImplGlfw_UpdateKeyModifiers(io, window)
    if button >= 0 && button < ImGuiMouseButton_COUNT
      io.AddMouseButtonEvent(button, action == GLFW::PRESS)
    end
  end

  @@ImplGlfw_ScrollCallback = GLFW.create_callback(:GLFWscrollfun) do |window, xoffset, yoffset|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackScroll,
        [window, xoffset, yoffset],
        GLFW::GLFWscrollfun_cb_args,
        GLFW::GLFWscrollfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddMouseWheelEvent(xoffset.to_f, yoffset.to_f)
  end

  @@ImplGlfw_KeyCallback = GLFW.create_callback(:GLFWkeyfun) do |window, keycode, scancode, action, mods|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackKey,
        [window, keycode, scancode, action, mods],
        GLFW::GLFWkeyfun_cb_args,
        GLFW::GLFWkeyfun_cb_retval
      )
    end

    next if bd.nil?
    next unless action == GLFW::PRESS || action == GLFW::RELEASE

    io = ImGuiIO.new(ImGui::GetIO())
    ImGui_ImplGlfw_UpdateKeyModifiers(io, window)

    keycode = ImGui_ImplGlfw_TranslateUntranslatedKey(keycode, scancode)
    imgui_key = ImGui_ImplGlfw_KeyToImGuiKey(keycode, scancode)
    io.AddKeyEvent(imgui_key, action == GLFW::PRESS)
    io.SetKeyEventNativeData(imgui_key, keycode, scancode)
  end

  @@ImplGlfw_WindowFocusCallback = GLFW.create_callback(:GLFWwindowfocusfun) do |window, focused|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackWindowFocus,
        [window, focused],
        GLFW::GLFWwindowfocusfun_cb_args,
        GLFW::GLFWwindowfocusfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddFocusEvent(focused != 0)
  end

  @@ImplGlfw_CursorPosCallback = GLFW.create_callback(:GLFWcursorposfun) do |window, x, y|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackCursorPos,
        [window, x, y],
        GLFW::GLFWcursorposfun_cb_args,
        GLFW::GLFWcursorposfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddMousePosEvent(x.to_f, y.to_f)
    bd.lastValidMousePos[:x] = x.to_f
    bd.lastValidMousePos[:y] = y.to_f
  end

  @@ImplGlfw_CursorEnterCallback = GLFW.create_callback(:GLFWcursorenterfun) do |window, entered|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackCursorEnter,
        [window, entered],
        GLFW::GLFWcursorenterfun_cb_args,
        GLFW::GLFWcursorenterfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    if entered != 0
      bd.mouseWindow = window
      io.AddMousePosEvent(bd.lastValidMousePos[:x], bd.lastValidMousePos[:y])
    elsif bd.mouseWindow == window
      bd.lastValidMousePos[:x] = io[:MousePos][:x]
      bd.lastValidMousePos[:y] = io[:MousePos][:y]
      bd.mouseWindow = nil
      io.AddMousePosEvent(-Float::MAX, -Float::MAX)
    end
  end

  @@ImplGlfw_CharCallback = GLFW.create_callback(:GLFWcharfun) do |window, c|
    bd = ImGui_ImplGlfw_GetBackendData(window)
    if bd && ImGui_ImplGlfw_ShouldChainCallback(bd, window)
      ImGui_ImplGlfw_CallPreviousCallback(
        bd.prevUserCallbackChar,
        [window, c],
        GLFW::GLFWcharfun_cb_args,
        GLFW::GLFWcharfun_cb_retval
      )
    end

    next if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddInputCharacter(c)
  end

  @@ImplGlfw_MonitorCallback = GLFW.create_callback(:GLFWmonitorfun) do |monitor, event|
    # Reserved for docking branch parity.
  end

  def self.ImGui_ImplGlfw_InstallCallbacks(window)
    bd = ImGui_ImplGlfw_GetBackendData(window)
    return if bd.nil? || bd.installedCallbacks

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
    bd = ImGui_ImplGlfw_GetBackendData(window)
    return if bd.nil? || !bd.installedCallbacks

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

  def self.ImplGlfw_SetCallbacksChainForAllWindows(chain_for_all_windows)
    bd = ImGui_ImplGlfw_GetBackendData()
    return if bd.nil?
    bd.callbacksChainForAllWindows = !!chain_for_all_windows
  end

  def self.ImplGlfw_InitForOpenGL(window, install_callbacks)
    ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_OpenGL)
  end

  def self.ImplGlfw_InitForVulkan(window, install_callbacks)
    ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_Vulkan)
  end

  def self.ImplGlfw_InitForOther(window, install_callbacks)
    ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_Unknown)
  end

  def self.ImplGlfw_Shutdown
    bd = ImGui_ImplGlfw_GetBackendData()
    return if bd.nil?

    io = ImGuiIO.new(ImGui::GetIO())

    ImGui_ImplGlfw_RestoreCallbacks(bd.window) if bd.installedCallbacks

    ImGuiMouseCursor_COUNT.times do |cursor_n|
      cursor = bd.mouseCursors[cursor_n]
      GLFW.DestroyCursor(cursor) unless cursor.nil?
      bd.mouseCursors[cursor_n] = nil
    end

    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    io[:BackendFlags] &= ~(ImGuiBackendFlags_HasMouseCursors | ImGuiBackendFlags_HasSetMousePos | ImGuiBackendFlags_HasGamepad)

    ImGui_ImplGlfw_ContextMap_Remove(bd.window)
    @@g_BackendData.delete(bd.contextAddress)
  end

  def self.ImplGlfw_GetContentScaleForWindow(window)
    return 1.0 unless GLFW.respond_to?(:GetWindowContentScale)

    x_scale = ' ' * 4
    y_scale = ' ' * 4
    GLFW.GetWindowContentScale(window, x_scale, y_scale)
    x_scale.unpack1('f')
  rescue
    1.0
  end

  def self.ImplGlfw_GetContentScaleForMonitor(monitor)
    return 1.0 unless GLFW.respond_to?(:GetMonitorContentScale)

    x_scale = ' ' * 4
    y_scale = ' ' * 4
    GLFW.GetMonitorContentScale(monitor, x_scale, y_scale)
    x_scale.unpack1('f')
  rescue
    1.0
  end

  def self.ImplGlfw_GetWindowSizeAndFramebufferScale(window, out_size, out_framebuffer_scale)
    w_buf = ' ' * 4
    h_buf = ' ' * 4
    display_w_buf = ' ' * 4
    display_h_buf = ' ' * 4
    GLFW.GetWindowSize(window, w_buf, h_buf)
    GLFW.GetFramebufferSize(window, display_w_buf, display_h_buf)

    w = w_buf.unpack1('L')
    h = h_buf.unpack1('L')
    display_w = display_w_buf.unpack1('L')
    display_h = display_h_buf.unpack1('L')

    fb_scale_x = w > 0 ? (display_w.to_f / w.to_f) : 1.0
    fb_scale_y = h > 0 ? (display_h.to_f / h.to_f) : 1.0

    out_size[:x] = w.to_f
    out_size[:y] = h.to_f
    out_framebuffer_scale[:x] = fb_scale_x
    out_framebuffer_scale[:y] = fb_scale_y
  end

  def self.ImplGlfw_UpdateMouseData
    bd = ImGui_ImplGlfw_GetBackendData()
    return if bd.nil?
    io = ImGuiIO.new(ImGui::GetIO())

    is_window_focused = GLFW.GetWindowAttrib(bd.window, GLFW::FOCUSED) != 0
    if is_window_focused
      if io[:WantSetMousePos]
        GLFW.SetCursorPos(bd.window, io[:MousePos][:x].to_f, io[:MousePos][:y].to_f)
      end

      if bd.mouseWindow.nil?
        mouse_x = ' ' * 8
        mouse_y = ' ' * 8
        GLFW.GetCursorPos(bd.window, mouse_x, mouse_y)
        x = mouse_x.unpack1('d').to_f
        y = mouse_y.unpack1('d').to_f
        bd.lastValidMousePos[:x] = x
        bd.lastValidMousePos[:y] = y
        io.AddMousePosEvent(x, y)
      end
    end
  end

  def self.ImplGlfw_UpdateMouseCursor
    io = ImGuiIO.new(ImGui::GetIO())
    bd = ImGui_ImplGlfw_GetBackendData()
    return if bd.nil?

    if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) != 0 || GLFW.GetInputMode(bd.window, GLFW::CURSOR) == GLFW::CURSOR_DISABLED
      bd.lastMouseCursor = nil
      return
    end

    imgui_cursor = ImGui::GetMouseCursor()
    if imgui_cursor == ImGuiMouseCursor_None || io[:MouseDrawCursor]
      unless bd.lastMouseCursor.nil?
        GLFW.SetInputMode(bd.window, GLFW::CURSOR, GLFW::CURSOR_HIDDEN)
        bd.lastMouseCursor = nil
      end
    else
      cursor = bd.mouseCursors[imgui_cursor] || bd.mouseCursors[ImGuiMouseCursor_Arrow]
      if bd.lastMouseCursor != cursor
        GLFW.SetCursor(bd.window, cursor)
        bd.lastMouseCursor = cursor
      end
      GLFW.SetInputMode(bd.window, GLFW::CURSOR, GLFW::CURSOR_NORMAL)
    end
  end

  def self.ImplGlfw_UpdateGamepads
    io = ImGuiIO.new(ImGui::GetIO())
    if (io[:ConfigFlags] & ImGuiConfigFlags_NavEnableGamepad) == 0
      io[:BackendFlags] &= ~ImGuiBackendFlags_HasGamepad
      return
    end

    # Kept conservative for broad ruby-glfw compatibility. Expanding this requires
    # binding-specific handling for joystick/gamepad state structures.
    io[:BackendFlags] &= ~ImGuiBackendFlags_HasGamepad
  end

  def self.ImplGlfw_NewFrame
    bd = ImGui_ImplGlfw_GetBackendData()
    return if bd.nil?

    io = ImGuiIO.new(ImGui::GetIO())
    ImplGlfw_GetWindowSizeAndFramebufferScale(bd.window, io[:DisplaySize], io[:DisplayFramebufferScale])

    current_time = GLFW.GetTime().to_f
    current_time = bd.time + 0.00001 if current_time <= bd.time
    io[:DeltaTime] = bd.time > 0.0 ? (current_time - bd.time).to_f : (1.0 / 60.0)
    bd.time = current_time

    ImplGlfw_UpdateMouseData
    ImplGlfw_UpdateMouseCursor
    ImplGlfw_UpdateGamepads
  end

  def self.ImplGlfw_Sleep(milliseconds)
    Kernel.sleep(milliseconds.to_f / 1000.0)
  end

  def self.ImplGlfw_Init(window, install_callbacks, client_api)
    context = ImGui::GetCurrentContext()
    return false if context.nil?
    return false if @@g_BackendData.key?(context.address)

    bd = ImGui_ImplGlfw_Data.new
    bd.contextAddress = context.address
    bd.window = window
    bd.clientApi = client_api
    bd.time = 0.0
    bd.isWayland = ImGui_ImplGlfw_IsWayland()
    bd.backendPlatformName = FFI::MemoryPointer.from_string('imgui_impl_glfw')

    @@g_BackendData[bd.contextAddress] = bd
    ImGui_ImplGlfw_ContextMap_Add(window, bd.contextAddress)

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendPlatformUserData] = nil
    io[:BackendPlatformName] = bd.backendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos

    bd.mouseCursors[ImGuiMouseCursor_Arrow] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_TextInput] = GLFW.CreateStandardCursor(GLFW::IBEAM_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeNS] = GLFW.CreateStandardCursor(GLFW::VRESIZE_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_ResizeEW] = GLFW.CreateStandardCursor(GLFW::HRESIZE_CURSOR)
    bd.mouseCursors[ImGuiMouseCursor_Hand] = GLFW.CreateStandardCursor(GLFW::HAND_CURSOR)

    if defined?(GLFW::RESIZE_ALL_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_ResizeAll] = GLFW.CreateStandardCursor(GLFW::RESIZE_ALL_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_ResizeNESW] = GLFW.CreateStandardCursor(GLFW::RESIZE_NESW_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_ResizeNWSE] = GLFW.CreateStandardCursor(GLFW::RESIZE_NWSE_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_NotAllowed] = GLFW.CreateStandardCursor(GLFW::NOT_ALLOWED_CURSOR)
    else
      bd.mouseCursors[ImGuiMouseCursor_ResizeAll] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_ResizeNESW] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_ResizeNWSE] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
      bd.mouseCursors[ImGuiMouseCursor_NotAllowed] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    end

    ImGui_ImplGlfw_InstallCallbacks(window) if install_callbacks
    true
  end

end
