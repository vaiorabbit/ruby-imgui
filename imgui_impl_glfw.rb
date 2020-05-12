require 'ffi'
require 'opengl'
require 'glfw'

require_relative 'imgui'

module ImGui

  @@g_Window = nil # GLFWwindow*
  @@g_Time = 0.0 # double
  @@g_MouseJustPressed = [false, false, false, false, false]
  @@g_MouseCursors = Array.new(ImGuiMouseCursor_COUNT) { 0 }

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_glfw")

  # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
  @@g_PrevUserCallbackMousebutton = nil
  @@g_PrevUserCallbackScroll = nil
  @@g_PrevUserCallbackKey = nil
  @@g_PrevUserCallbackChar = nil

  @@ImplGlfw_MouseButtonCallback = GLFW::create_callback(:GLFWmousebuttonfun) do |window, button, action, mods|
    unless @@g_PrevUserCallbackMousebutton.null?
      userfunc = Fiddle::Function.new(@@g_PrevUserCallbackMousebutton, GLFWmousebuttonfun_cb_args, GLFWmousebuttonfun_cb_retval)
      userfunc.call(window, button, action, mods)
    end

    if action == GLFW_PRESS && button >= 0 && button < @@g_MouseJustPressed.size
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
    io[:KeysDown][key] = true if action == GLFW_PRESS
    io[:KeysDown][key] = false if action == GLFW_RELEASE

    # Modifiers are not reliable across systems
    io[:KeyCtrl] = io[:KeysDown][GLFW_KEY_LEFT_CONTROL] || io[:KeysDown][GLFW_KEY_RIGHT_CONTROL]
    io[:KeyShift] = io[:KeysDown][GLFW_KEY_LEFT_SHIFT] || io[:KeysDown][GLFW_KEY_RIGHT_SHIFT]
    io[:KeyAlt] = io[:KeysDown][GLFW_KEY_LEFT_ALT] || io[:KeysDown][GLFW_KEY_RIGHT_ALT]
    io[:KeySuper] = io[:KeysDown][GLFW_KEY_LEFT_SUPER] || io[:KeysDown][GLFW_KEY_RIGHT_SUPER]
  end

  @@ImplGlfw_CharCallback = GLFW::create_callback(:GLFWcharfun) do |window, c|
    unless @@g_PrevUserCallbackChar.null?
      @@g_PrevUserCallbackChar.call(window, c)
    end

    #
    # [TODO] Support ImGuiIO_AddInputCharacter
    #
    # io = ImGuiIO.new(ImGui::GetIO())
    # io.AddInputCharacter(c);
  end

  def self.ImplGlfw_UpdateMousePosAndButtons()
    # Update buttons
    io = ImGuiIO.new(ImGui::GetIO())
    io[:MouseDown].size.times do |i|
      # If a mouse press event came, always pass it as "mouse held this frame", so we don't miss click-release events that are shorter than 1 frame.
      io[:MouseDown][i] = (@@g_MouseJustPressed[i] || glfwGetMouseButton(@@g_Window, i) != 0)
      @@g_MouseJustPressed[i] = false
    end

    # Update mouse position
    mouse_pos_backup = io[:MousePos]
    io[:MousePos] = ImVec2.new
    io[:MousePos][:x] = -Float::MAX
    io[:MousePos][:y] = -Float::MAX
    focused = glfwGetWindowAttrib(@@g_Window, GLFW_FOCUSED) != 0
    if focused
      if io[:WantSetMousePos]
        glfwSetCursorPos(@@g_Window, mouse_pos_backup[:x].to_f, mouse_pos_backup[:y].to_f)
      else
        mouse_x = ' ' * 8
        mouse_y = ' ' * 8
        glfwGetCursorPos(@@g_Window, mouse_x, mouse_y)
        io[:MousePos][:x] = mouse_x.unpack1('d')
        io[:MousePos][:y] = mouse_y.unpack1('d')
      end
    end
  end

  def self.ImplGlfw_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if ((io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) || glfwGetInputMode(@@g_Window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED)

    imgui_cursor = ImGui::GetMouseCursor()
    if imgui_cursor == ImGuiMouseCursor_None || io[:MouseDrawCursor]
        # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
        glfwSetInputMode(@@g_Window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN)
    else
      # Show OS mouse cursor
      # FIXME-PLATFORM: Unfocused windows seems to fail changing the mouse cursor with GLFW 3.2, but 3.3 works here.
      glfwSetCursor(@@g_Window, @@g_MouseCursors[imgui_cursor] ? @@g_MouseCursors[imgui_cursor] : @@g_MouseCursors[ImGuiMouseCursor_Arrow])
      glfwSetInputMode(@@g_Window, GLFW_CURSOR, GLFW_CURSOR_NORMAL)
    end
  end

  def self.ImplGlfw_InitForOpenGL(window, install_callbacks)
    return ImplGlfw_Init(window, install_callbacks, :GlfwClientApi_OpenGL)
  end

  def self.ImplGlfw_Shutdown()
    ImGuiMouseCursor_COUNT.times do |cursor_n|
      glfwDestroyCursor(@@g_MouseCursors[cursor_n])
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
    glfwGetWindowSize(@@g_Window, w, h)
    glfwGetFramebufferSize(@@g_Window, display_w, display_h)

    w = w.unpack1('L')
    h = h.unpack1('L')
    display_size = ImVec2.new
    display_size[:x] = w
    display_size[:y] = h
    io[:DisplaySize] = display_size

    if w > 0 && h > 0
      fb_scale = ImVec2.new
      fb_scale[:x] = display_w.unpack1('L') / w
      fb_scale[:y] = display_h.unpack1('L') / h
      io[:DisplayFramebufferScale] = fb_scale
    end

    #  Setup time step
    current_time = glfwGetTime()
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
    io[:KeyMap][ImGuiKey_Tab] = GLFW_KEY_TAB
    io[:KeyMap][ImGuiKey_LeftArrow] = GLFW_KEY_LEFT
    io[:KeyMap][ImGuiKey_RightArrow] = GLFW_KEY_RIGHT
    io[:KeyMap][ImGuiKey_UpArrow] = GLFW_KEY_UP
    io[:KeyMap][ImGuiKey_DownArrow] = GLFW_KEY_DOWN
    io[:KeyMap][ImGuiKey_PageUp] = GLFW_KEY_PAGE_UP
    io[:KeyMap][ImGuiKey_PageDown] = GLFW_KEY_PAGE_DOWN
    io[:KeyMap][ImGuiKey_Home] = GLFW_KEY_HOME
    io[:KeyMap][ImGuiKey_End] = GLFW_KEY_END
    io[:KeyMap][ImGuiKey_Insert] = GLFW_KEY_INSERT
    io[:KeyMap][ImGuiKey_Delete] = GLFW_KEY_DELETE
    io[:KeyMap][ImGuiKey_Backspace] = GLFW_KEY_BACKSPACE
    io[:KeyMap][ImGuiKey_Space] = GLFW_KEY_SPACE
    io[:KeyMap][ImGuiKey_Enter] = GLFW_KEY_ENTER
    io[:KeyMap][ImGuiKey_Escape] = GLFW_KEY_ESCAPE
    io[:KeyMap][ImGuiKey_KeyPadEnter] = GLFW_KEY_KP_ENTER
    io[:KeyMap][ImGuiKey_A] = GLFW_KEY_A
    io[:KeyMap][ImGuiKey_C] = GLFW_KEY_C
    io[:KeyMap][ImGuiKey_V] = GLFW_KEY_V
    io[:KeyMap][ImGuiKey_X] = GLFW_KEY_X
    io[:KeyMap][ImGuiKey_Y] = GLFW_KEY_Y
    io[:KeyMap][ImGuiKey_Z] = GLFW_KEY_Z

    # [TODO] Support ClipboardText & IME on Windows
    # io.SetClipboardTextFn = ImGui_ImplGlfw_SetClipboardText;
    # io.GetClipboardTextFn = ImGui_ImplGlfw_GetClipboardText;
    # io.ClipboardUserData = g_Window;
    # #if defined(_WIN32)
    # io.ImeWindowHandle = (void*)glfwGetWin32Window(g_Window);
    # #endif

    @@g_MouseCursors[ImGuiMouseCursor_Arrow] = glfwCreateStandardCursor(GLFW_ARROW_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_TextInput] = glfwCreateStandardCursor(GLFW_IBEAM_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeAll] = glfwCreateStandardCursor(GLFW_ARROW_CURSOR)   # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNS] = glfwCreateStandardCursor(GLFW_VRESIZE_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeEW] = glfwCreateStandardCursor(GLFW_HRESIZE_CURSOR)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNESW] = glfwCreateStandardCursor(GLFW_ARROW_CURSOR)  # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNWSE] = glfwCreateStandardCursor(GLFW_ARROW_CURSOR)  # FIXME: GLFW doesn't have this.
    @@g_MouseCursors[ImGuiMouseCursor_Hand] = glfwCreateStandardCursor(GLFW_HAND_CURSOR)

    # Chain GLFW callbacks: our callbacks will call the user's previously installed callbacks, if any.
    @@g_PrevUserCallbackMousebutton = nil
    @@g_PrevUserCallbackScroll = nil
    @@g_PrevUserCallbackKey = nil
    @@g_PrevUserCallbackChar = nil
    if install_callbacks
      @@g_PrevUserCallbackMousebutton = glfwSetMouseButtonCallback(window, @@ImplGlfw_MouseButtonCallback)
      @@g_PrevUserCallbackScroll = glfwSetScrollCallback(window, @@ImplGlfw_ScrollCallback)
      @@g_PrevUserCallbackKey = glfwSetKeyCallback(window, @@ImplGlfw_KeyCallback)
      @@g_PrevUserCallbackChar = glfwSetCharCallback(window, @@ImplGlfw_CharCallback)
    end

    return true
  end

end
