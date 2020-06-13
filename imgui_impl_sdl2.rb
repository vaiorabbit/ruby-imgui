require 'ffi'
require 'sdl2'
require_relative 'imgui'

module ImGui

  @@g_Window = nil # SDL_Window*
  @@g_Time = 0.0 # UInt64
  @@g_MousePressed = [false, false, false]
  @@g_MouseCursors = Array.new(ImGuiMouseCursor_COUNT) { nil } # SDL_Cursor*
  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_sdl")

  # [TODO] Support ClipboardText
  # g_ClipboardTextData
  # ImplSDL2_GetClipboardText
  # ImplSDL2_SetClipboardText

  # [TODO] SDL_MOUSE
  def self.get_sdl2_mousebit(x); return (1 << ((x)-1)); end

  # [TODO] #define KMOD_CTRL, #define KMOD_SHIFT, #define KMOD_ALT and #define KMOD_GUI
  KMOD_CTRL = SDL2::KMOD_LCTRL|SDL2::KMOD_RCTRL
  KMOD_SHIFT = SDL2::KMOD_LSHIFT|SDL2::KMOD_RSHIFT
  KMOD_ALT = SDL2::KMOD_LALT|SDL2::KMOD_RALT
  KMOD_GUI = SDL2::KMOD_LGUI|SDL2::KMOD_RGUI

  def self.ImplSDL2_UpdateMousePosAndButtons()
    # Update buttons
    io = ImGuiIO.new(ImGui::GetIO())

    # Set OS mouse position if requested (rarely used, only when ImGuiConfigFlags_NavEnableSetMousePos is enabled by user)
    if io[:WantSetMousePos]
      SDL2::SDL_WarpMouseInWindow(@@g_Window, io[:MousePos][:x].to_i, io[:MousePos][:y].to_i)
    else
      io[:MousePos][:x] = -Float::MAX
      io[:MousePos][:y] = -Float::MAX
    end

    mx = FFI::MemoryPointer.new(:int)
    my = FFI::MemoryPointer.new(:int)
    mouse_buttons = SDL2::SDL_GetMouseState(mx, my)
    io[:MouseDown][0] = @@g_MousePressed[0] || (mouse_buttons & get_sdl2_mousebit(SDL2::SDL_BUTTON_LEFT)) != 0  # If a mouse press event came, always pass it as "mouse held this frame", so we don't miss click-release events that are shorter than 1 frame.
    io[:MouseDown][1] = @@g_MousePressed[1] || (mouse_buttons & get_sdl2_mousebit(SDL2::SDL_BUTTON_RIGHT)) != 0
    io[:MouseDown][2] = @@g_MousePressed[2] || (mouse_buttons & get_sdl2_mousebit(SDL2::SDL_BUTTON_MIDDLE)) != 0
    @@g_MousePressed[0] = @@g_MousePressed[1] = @@g_MousePressed[2] = false

    focused_window = SDL2::SDL_GetKeyboardFocus()
    if @@g_Window == focused_window
      # SDL_GetMouseState() gives mouse position seemingly based on the last window entered/focused(?)
      # The creation of a new windows at runtime and SDL_CaptureMouse both seems to severely mess up with that, so we retrieve that position globally.
      wx = FFI::MemoryPointer.new(:int)
      wy = FFI::MemoryPointer.new(:int)
      SDL2::SDL_GetWindowPosition(focused_window, wx, wy)
      SDL2::SDL_GetGlobalMouseState(mx, my)
      # mx -= wx
      # my -= wy
      io[:MousePos][:x] = mx.read(:int).to_f - wx.read(:int).to_f
      io[:MousePos][:y] = my.read(:int).to_f - wy.read(:int).to_f
    end

    # SDL_CaptureMouse() let the OS know e.g. that our imgui drag outside the SDL window boundaries shouldn't e.g. trigger the OS window resize cursor.
    # The function is only supported from SDL 2.0.4 (released Jan 2016)
    any_mouse_button_down = ImGui::IsAnyMouseDown()
    SDL2::SDL_CaptureMouse(any_mouse_button_down ? SDL2::SDL_TRUE : SDL2::SDL_FALSE)
  end

  def self.ImplSDL2_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange)

    imgui_cursor = ImGui::GetMouseCursor()
    if io[:MouseDrawCursor] || imgui_cursor == ImGuiMouseCursor_None
      # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
      SDL2::SDL_ShowCursor(SDL2::SDL_FALSE)
    else
      # Show OS mouse cursor
      SDL2::SDL_SetCursor(@@g_MouseCursors[imgui_cursor] ? @@g_MouseCursors[imgui_cursor] : @@g_MouseCursors[ImGuiMouseCursor_Arrow])
      SDL2::SDL_ShowCursor(SDL2::SDL_TRUE)
    end
  end

  #
  # [TODO] Support ImplSDL2_UpdateGamepads
  #

  def self.ImplSDL2_Shutdown()
    @@g_Window = nil
    ImGuiMouseCursor_COUNT.times do |cursor_n|
      SDL2::SDL_FreeCursor(@@g_MouseCursors[cursor_n])
      @@g_MouseCursors[cursor_n] = nil
    end
  end

  def self.ImplSDL2_NewFrame(window)
    io = ImGuiIO.new(ImGui::GetIO())
    unless io[:Fonts].IsBuilt()
      puts "Font atlas not built! It is generally built by the renderer back-end. Missing call to renderer _NewFrame() function? e.g. ImGui_ImplOpenGL3_NewFrame()."
    end

    #  Setup display size (every frame to accommodate for window resizing)
    w = ' ' * 4
    h = ' ' * 4
    display_w = ' ' * 4
    display_h = ' ' * 4
    SDL2::SDL_GetWindowSize(window, w, h)
    SDL2::SDL_GL_GetDrawableSize(window, display_w, display_h)

    w = w.unpack1('L')
    h = h.unpack1('L')
    display_size = ImVec2.new
    display_size[:x] = w.to_f
    display_size[:y] = h.to_f
    io[:DisplaySize] = display_size

    if w > 0 && h > 0
      fb_scale = ImVec2.new
      fb_scale[:x] = display_w.unpack1('L').to_f / w
      fb_scale[:y] = display_h.unpack1('L').to_f / h
      io[:DisplayFramebufferScale] = fb_scale
    end

    # Setup time step (we don't use SDL_GetTicks() because it is using millisecond resolution)
    frequency = SDL2::SDL_GetPerformanceFrequency()
    current_time = SDL2::SDL_GetPerformanceCounter()

    io[:DeltaTime] = @@g_Time > 0 ? ((current_time - @@g_Time).to_f / frequency) : (1.0/60.0)
    @@g_Time = current_time

    ImplSDL2_UpdateMousePosAndButtons()
    ImplSDL2_UpdateMouseCursor()

    # [TODO] update gamepads
  end

  # You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
  # - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application.
  # - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application.
  # Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
  # If you have multiple SDL events and some of them are not meant to be used by dear imgui, you may need to filter events based on their windowID field.
  def self.ImplSDL2_ProcessEvent(event)

    io = ImGuiIO.new(ImGui::GetIO())

    case event[:type]

    when SDL2::SDL_MOUSEWHEEL
      io[:MouseWheelH] += 1 if (event[:wheel][:x] > 0)
      io[:MouseWheelH] -= 1 if (event[:wheel][:x] < 0)
      io[:MouseWheel] += 1  if (event[:wheel][:y] > 0)
      io[:MouseWheel] -= 1  if (event[:wheel][:y] < 0)
      return true

    when SDL2::SDL_MOUSEBUTTONDOWN
      @@g_MousePressed[0] = true if event[:button][:button] == SDL2::SDL_BUTTON_LEFT
      @@g_MousePressed[1] = true if event[:button][:button] == SDL2::SDL_BUTTON_RIGHT
      @@g_MousePressed[2] = true if event[:button][:button] == SDL2::SDL_BUTTON_MIDDLE
      return true

    when SDL2::SDL_TEXTINPUT
      io.AddInputCharactersUTF8(event[:text][:text])
      return true

    when SDL2::SDL_KEYDOWN, SDL2::SDL_KEYUP
      key = event[:key][:keysym][:scancode]
      # IM_ASSERT(key >= 0 && key < IM_ARRAYSIZE(io.KeysDown))
      io[:KeysDown][key] = (event[:type] == SDL2::SDL_KEYDOWN)
      io[:KeyShift] = ((SDL2::SDL_GetModState() & KMOD_SHIFT) != 0)
      io[:KeyCtrl] = ((SDL2::SDL_GetModState() & KMOD_CTRL) != 0)
      io[:KeyAlt] = ((SDL2::SDL_GetModState() & KMOD_ALT) != 0)
      io[:KeySuper] = ((SDL2::SDL_GetModState() & KMOD_GUI) != 0)
      return true
    end

    return false
  end

  def self.ImplSDL2_Init(window)
    @@g_Window = window
    @@g_Time = 0

    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)
    io[:BackendPlatformName] = @@g_BackendPlatformName

    # Keyboard mapping. ImGui will use those indices to peek into the io.KeysDown[] array.
    io[:KeyMap][ImGuiKey_Tab] = SDL2::SDL_SCANCODE_TAB
    io[:KeyMap][ImGuiKey_LeftArrow] = SDL2::SDL_SCANCODE_LEFT
    io[:KeyMap][ImGuiKey_RightArrow] = SDL2::SDL_SCANCODE_RIGHT
    io[:KeyMap][ImGuiKey_UpArrow] = SDL2::SDL_SCANCODE_UP
    io[:KeyMap][ImGuiKey_DownArrow] = SDL2::SDL_SCANCODE_DOWN
    io[:KeyMap][ImGuiKey_PageUp] = SDL2::SDL_SCANCODE_PAGEUP
    io[:KeyMap][ImGuiKey_PageDown] = SDL2::SDL_SCANCODE_PAGEDOWN
    io[:KeyMap][ImGuiKey_Home] = SDL2::SDL_SCANCODE_HOME
    io[:KeyMap][ImGuiKey_End] = SDL2::SDL_SCANCODE_END
    io[:KeyMap][ImGuiKey_Insert] = SDL2::SDL_SCANCODE_INSERT
    io[:KeyMap][ImGuiKey_Delete] = SDL2::SDL_SCANCODE_DELETE
    io[:KeyMap][ImGuiKey_Backspace] = SDL2::SDL_SCANCODE_BACKSPACE
    io[:KeyMap][ImGuiKey_Space] = SDL2::SDL_SCANCODE_SPACE
    io[:KeyMap][ImGuiKey_Enter] = SDL2::SDL_SCANCODE_RETURN
    io[:KeyMap][ImGuiKey_Escape] = SDL2::SDL_SCANCODE_ESCAPE
    io[:KeyMap][ImGuiKey_KeyPadEnter] = SDL2::SDL_SCANCODE_RETURN2
    io[:KeyMap][ImGuiKey_A] = SDL2::SDL_SCANCODE_A
    io[:KeyMap][ImGuiKey_C] = SDL2::SDL_SCANCODE_C
    io[:KeyMap][ImGuiKey_V] = SDL2::SDL_SCANCODE_V
    io[:KeyMap][ImGuiKey_X] = SDL2::SDL_SCANCODE_X
    io[:KeyMap][ImGuiKey_Y] = SDL2::SDL_SCANCODE_Y
    io[:KeyMap][ImGuiKey_Z] = SDL2::SDL_SCANCODE_Z

    # [TODO] Support ClipboardText

    @@g_MouseCursors[ImGuiMouseCursor_Arrow]      = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_ARROW)
    @@g_MouseCursors[ImGuiMouseCursor_TextInput]  = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_IBEAM)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeAll]  = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_SIZEALL)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNS]   = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_SIZENS)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeEW]   = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_SIZEWE)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNESW] = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_SIZENESW)
    @@g_MouseCursors[ImGuiMouseCursor_ResizeNWSE] = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_SIZENWSE)
    @@g_MouseCursors[ImGuiMouseCursor_Hand]       = SDL2::SDL_CreateSystemCursor(SDL2::SDL_SYSTEM_CURSOR_HAND)

    return true
  end

end
