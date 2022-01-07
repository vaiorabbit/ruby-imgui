require 'ffi'
require 'opengl'
require 'glfw'

require_relative 'imgui'

module ImGui

  @@g_Window = nil # GLFWwindow*
  @@g_Time = 0.0 # double
  @@g_MouseWindow = nil # GLFWwindow*
  @@g_MouseJustPressed = [false, false, false, false, false]
  @@g_MouseCursors = Array.new(ImGuiMouseCursor_COUNT) { 0 }

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_glfw")

  # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
  @@g_PrevUserCallbackCursorEnter = nil
  @@g_PrevUserCallbackMousebutton = nil
  @@g_PrevUserCallbackScroll = nil
  @@g_PrevUserCallbackKey = nil
  @@g_PrevUserCallbackChar = nil

  @@ImplGlfw_MouseButtonCallback = GLFW::create_callback(:GLFWmousebuttonfun) do |window, button, action, mods|
    unless @@g_PrevUserCallbackMousebutton.null?
      userfunc = Fiddle::Function.new(@@g_PrevUserCallbackMousebutton, GLFWmousebuttonfun_cb_args, GLFWmousebuttonfun_cb_retval)
      userfunc.call(window, button, action, mods)
    end

    if action == GLFW::PRESS && button >= 0 && button < @@g_MouseJustPressed.size
      @@g_MouseJustPressed[button] = true
    end
  end

  @@ImplGlfw_ScrollCallback = GLFW::create_callback(:GLFWscrollfun) do |window, xoffset, yoffset|
    unless @@g_PrevUserCallbackScroll.null?
      userfunc = Fiddle::Function.new(@@g_PrevUserCallbackScroll, GLFWscrollfun_cb_args, GLFWscrollfun_cb_retval)
      userfunc.call(window, xoffset, yoffset)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io[:MouseWheelH] += xoffset.to_f
    io[:MouseWheel] += yoffset.to_f
  end

  @@ImplGlfw_KeyCallback = GLFW::create_callback(:GLFWkeyfun) do |window, key, scancode, action, mods|
    unless @@g_PrevUserCallbackKey.null?
      userfunc = Fiddle::Function.new(@@g_PrevUserCallbackKey, GLFWkeyfun_cb_args, GLFWkeyfun_cb_retval)
      userfunc.call(window, key, scancode, action, mods)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io[:KeysDown][key] = true if action == GLFW::PRESS
    io[:KeysDown][key] = false if action == GLFW::RELEASE

    # Modifiers are not reliable across systems
    io[:KeyCtrl] = io[:KeysDown][GLFW::KEY_LEFT_CONTROL] || io[:KeysDown][GLFW::KEY_RIGHT_CONTROL]
    io[:KeyShift] = io[:KeysDown][GLFW::KEY_LEFT_SHIFT] || io[:KeysDown][GLFW::KEY_RIGHT_SHIFT]
    io[:KeyAlt] = io[:KeysDown][GLFW::KEY_LEFT_ALT] || io[:KeysDown][GLFW::KEY_RIGHT_ALT]
    io[:KeySuper] = io[:KeysDown][GLFW::KEY_LEFT_SUPER] || io[:KeysDown][GLFW::KEY_RIGHT_SUPER]
  end

  @@ImGui_ImplGlfw_CursorEnterCallback = GLFW::create_callback(:GLFWcursorenterfun) do |window, entered|
     unless @@g_PrevUserCallbackCursorEnter.null?
       userfunc = Fiddle::Function.new(@@g_PrevUserCallbackCursorEnter, GLFWcursorenterfun_cb_args, GLFWcursorenterfun_cb_retval)
       userfunc.call(window, entered)
     end

     @@g_MouseWindow = window if entered
     @@g_MouseWindow = nil if (!entered && @@g_MouseWindow == window)
  end

  @@ImplGlfw_CharCallback = GLFW::create_callback(:GLFWcharfun) do |window, c|
    unless @@g_PrevUserCallbackChar.null?
      @@g_PrevUserCallbackChar.call(window, c)
    end

    io = ImGuiIO.new(ImGui::GetIO())
    io.AddInputCharacter(c);
  end

  def self.ImplGlfw_UpdateMousePosAndButtons()
    # Update buttons
    io = ImGuiIO.new(ImGui::GetIO())
    io[:MouseDown].size.times do |i|
      # If a mouse press event came, always pass it as "mouse held this frame", so we don't miss click-release events that are shorter than 1 frame.
      io[:MouseDown][i] = (@@g_MouseJustPressed[i] || GLFW.GetMouseButton(@@g_Window, i) != 0)
      @@g_MouseJustPressed[i] = false
    end

    focused = GLFW.GetWindowAttrib(@@g_Window, GLFW::FOCUSED) != 0
    mouse_window = (@@g_MouseWindow == @@g_Window || focused) ? @@g_Window : nil

    # Update mouse position
    mouse_pos_backup = io[:MousePos]
    io[:MousePos][:x] = -Float::MAX
    io[:MousePos][:y] = -Float::MAX
    if io[:WantSetMousePos]
      if focused
        GLFW.SetCursorPos(@@g_Window, mouse_pos_backup[:x].to_f, mouse_pos_backup[:y].to_f)
      end
    elsif @@g_MouseWindow != nil
      mouse_x = ' ' * 8
      mouse_y = ' ' * 8
      GLFW.GetCursorPos(@@g_Window, mouse_x, mouse_y)
      io[:MousePos][:x] = mouse_x.unpack1('d')
      io[:MousePos][:y] = mouse_y.unpack1('d')
    end
  end

  def self.ImplGlfw_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if ((io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) || GLFW.GetInputMode(@@g_Window, GLFW::CURSOR) == GLFW::CURSOR_DISABLED)

    imgui_cursor = ImGui::GetMouseCursor()
    if imgui_cursor == ImGuiMouseCursor_None || io[:MouseDrawCursor]
        # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
        GLFW.SetInputMode(@@g_Window, GLFW::CURSOR, GLFW::CURSOR_HIDDEN)
    else
      # Show OS mouse cursor
      # FIXME-PLATFORM: Unfocused windows seems to fail changing the mouse cursor with GLFW 3.2, but 3.3 works here.
      GLFW.SetCursor(@@g_Window, @@g_MouseCursors[imgui_cursor] ? @@g_MouseCursors[imgui_cursor] : @@g_MouseCursors[ImGuiMouseCursor_Arrow])
      GLFW.SetInputMode(@@g_Window, GLFW::CURSOR, GLFW::CURSOR_NORMAL)
    end
  end

  def self.ImplGlfw_InitForOpenGL(window, install_callbacks)
    return ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_OpenGL)
  end

  def self.ImplGlfw_Shutdown()
    ImGuiMouseCursor_COUNT.times do |cursor_n|
      GLFW.DestroyCursor(@@g_MouseCursors[cursor_n])
      @@g_MouseCursors[cursor_n] = nil
    end
  end

  def self.ImplGlfw_NewFrame()
    io = ImGuiIO.new(ImGui::GetIO())
    unless io[:Fonts].IsBuilt()
      puts "Font atlas not built! It is generally built by the renderer back-end. Missing call to renderer _NewFrame() function? e.g. ImGui_ImplOpenGL3_NewFrame()."
    end

    #  Setup display size (every frame to accommodate for window resizing)
    w = ' ' * 4
    h = ' ' * 4
    display_w = ' ' * 4
    display_h = ' ' * 4
    GLFW.GetWindowSize(@@g_Window, w, h)
    GLFW.GetFramebufferSize(@@g_Window, display_w, display_h)

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
    io[:DeltaTime] = @@g_Time > 0.0 ? (current_time - @@g_Time).to_f : (1.0/60.0)
    @@g_Time = current_time

    ImplGlfw_UpdateMousePosAndButtons()
    ImplGlfw_UpdateMouseCursor()
    # TODO update gamepads
  end

  # private

  def self.ImplGlfw_Init(window, install_callbacks, client_api)
    @@g_Window = window
    @@g_Time = 0.0

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)
    io[:BackendPlatformName] = @@g_BackendPlatformName

    # Keyboard mapping. ImGui will use those indices to peek into the io.KeysDown[] array.
    io[:KeyMap][ImGuiKey_Tab] = GLFW::KEY_TAB
    io[:KeyMap][ImGuiKey_LeftArrow] = GLFW::KEY_LEFT
    io[:KeyMap][ImGuiKey_RightArrow] = GLFW::KEY_RIGHT
    io[:KeyMap][ImGuiKey_UpArrow] = GLFW::KEY_UP
    io[:KeyMap][ImGuiKey_DownArrow] = GLFW::KEY_DOWN
    io[:KeyMap][ImGuiKey_PageUp] = GLFW::KEY_PAGE_UP
    io[:KeyMap][ImGuiKey_PageDown] = GLFW::KEY_PAGE_DOWN
    io[:KeyMap][ImGuiKey_Home] = GLFW::KEY_HOME
    io[:KeyMap][ImGuiKey_End] = GLFW::KEY_END
    io[:KeyMap][ImGuiKey_Insert] = GLFW::KEY_INSERT
    io[:KeyMap][ImGuiKey_Delete] = GLFW::KEY_DELETE
    io[:KeyMap][ImGuiKey_Backspace] = GLFW::KEY_BACKSPACE
    io[:KeyMap][ImGuiKey_Space] = GLFW::KEY_SPACE
    io[:KeyMap][ImGuiKey_Enter] = GLFW::KEY_ENTER
    io[:KeyMap][ImGuiKey_Escape] = GLFW::KEY_ESCAPE
    io[:KeyMap][ImGuiKey_KeyPadEnter] = GLFW::KEY_KP_ENTER
    io[:KeyMap][ImGuiKey_A] = GLFW::KEY_A
    io[:KeyMap][ImGuiKey_C] = GLFW::KEY_C
    io[:KeyMap][ImGuiKey_V] = GLFW::KEY_V
    io[:KeyMap][ImGuiKey_X] = GLFW::KEY_X
    io[:KeyMap][ImGuiKey_Y] = GLFW::KEY_Y
    io[:KeyMap][ImGuiKey_Z] = GLFW::KEY_Z

    # [TODO] Support ClipboardText & IME on Windows
    # io.SetClipboardTextFn = ImGui_ImplGlfw_SetClipboardText;
    # io.GetClipboardTextFn = ImGui_ImplGlfw_GetClipboardText;
    # io.ClipboardUserData = g_Window;
    # #if defined(_WIN32)
    # io.ImeWindowHandle = (void*)glfwGetWin32Window(g_Window);
    # #endif

    @@g_MouseCursors[ImGuiMouseCursor_Arrow] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_TextInput] = GLFW.CreateStandardCursor(GLFW::IBEAM_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeAll] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)   # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNS] = GLFW.CreateStandardCursor(GLFW::VRESIZE_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeEW] = GLFW.CreateStandardCursor(GLFW::HRESIZE_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNESW] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)  # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNWSE] = GLFW.CreateStandardCursor(GLFW::ARROW_CURSOR)  # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_Hand] = GLFW.CreateStandardCursor(GLFW::HAND_CURSOR)

    # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
    @@g_PrevUserCallbackMousebutton = nil
    @@g_PrevUserCallbackScroll = nil
    @@g_PrevUserCallbackKey = nil
    @@g_PrevUserCallbackChar = nil
    if install_callbacks
      @@g_PrevUserCallbackCursorEnter = GLFW.SetCursorEnterCallback(window, @@ImGui_ImplGlfw_CursorEnterCallback)
      @@g_PrevUserCallbackMousebutton = GLFW.SetMouseButtonCallback(window, @@ImplGlfw_MouseButtonCallback)
      @@g_PrevUserCallbackScroll = GLFW.SetScrollCallback(window, @@ImplGlfw_ScrollCallback)
      @@g_PrevUserCallbackKey = GLFW.SetKeyCallback(window, @@ImplGlfw_KeyCallback)
      @@g_PrevUserCallbackChar = GLFW.SetCharCallback(window, @@ImplGlfw_CharCallback)
    end

    return true
  end

end
