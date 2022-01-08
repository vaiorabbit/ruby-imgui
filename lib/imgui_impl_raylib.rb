require 'ffi'
require 'raylib'
require 'opengl'

require_relative 'imgui'

module ImGui

  @@g_Time = 0.0 # UInt64
  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_raylib")

  # [TODO] Support ClipboardText
  # g_ClipboardTextData
  # ImplRaylib_GetClipboardText
  # ImplRaylib_SetClipboardText

  # [INTERNAL]
  def self.ImplRaylib_UpdateMousePosAndButtons()
    # Update buttons
    io = ImGuiIO.new(ImGui::GetIO())

    # Set OS mouse position if requested (rarely used, only when ImGuiConfigFlags_NavEnableSetMousePos is enabled by user)
    if io[:WantSetMousePos]
      Raylib.SetMousePosition(io[:MousePos][:x].to_i, io[:MousePos][:y].to_i)
    else
      io[:MousePos][:x] = -Float::MAX
      io[:MousePos][:y] = -Float::MAX
    end

    io[:MouseDown][0] = Raylib.IsMouseButtonDown(Raylib::MOUSE_BUTTON_LEFT)
    io[:MouseDown][1] = Raylib.IsMouseButtonDown(Raylib::MOUSE_BUTTON_MIDDLE)
    io[:MouseDown][2] = Raylib.IsMouseButtonDown(Raylib::MOUSE_BUTTON_RIGHT)

    mouse_pos = Raylib.GetMousePosition()
    io[:MousePos][:x] = mouse_pos[:x]
    io[:MousePos][:y] = mouse_pos[:y]
  end

  # [INTERNAL]
  def self.ImplRaylib_UpdateMouseCursor()
    io = ImGuiIO.new(ImGui::GetIO())
    return if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange)

    if io[:MouseDrawCursor] || ImGui::GetMouseCursor() == ImGuiMouseCursor_None
      Raylib.HideCursor() # Hide OS mouse cursor if imgui is drawing it or if it wants no cursor
    else
      Raylib.ShowCursor() # Show OS mouse cursor
    end
  end

  #
  # [TODO] Support ImplRaylib_UpdateGamepads
  #

  def self.ImplRaylib_Shutdown()
  end

  def self.ImplRaylib_NewFrame()
    io = ImGuiIO.new(ImGui::GetIO())

    unless io[:Fonts].IsBuilt()
      puts "Font atlas not built! It is generally built by the renderer back-end. Missing call to renderer _NewFrame() function? e.g. ImGui_ImplOpenGL3_NewFrame()."
    end

    #  Setup display size (every frame to accommodate for window resizing)
    io[:DisplaySize][:x] = Raylib.GetScreenWidth()
    io[:DisplaySize][:y] = Raylib.GetScreenHeight()

    # Setup time step
    current_time = Raylib.GetTime()

    io[:DeltaTime] = @@g_Time > 0 ? (current_time - @@g_Time).to_f : 1.0 / 60.0
    @@g_Time = current_time

    ImplRaylib_UpdateMousePosAndButtons()
    ImplRaylib_UpdateMouseCursor()

    wheel_y = Raylib.GetMouseWheelMove()
    io[:MouseWheel] += 1 if wheel_y > 0
    io[:MouseWheel] -= 1 if wheel_y < 0
    io[:MouseWheelH] = 0 # [TODO] Get wheel tilt from Raylib
    io[:MouseWheelH] = 0 # [TODO] Get wheel tilt from Raylib

    # [TODO] update gamepads

    # [NOTE] rlgl does not provide glBlendFuncSeparate wrapper. So we manually set states for ImGui here.
    #        Ref.: https://github.com/vaiorabbit/ruby-imgui/blob/05e94e6bf1969d3abf12598fef831219dca90247/lib/imgui_impl_opengl3.rb#L227-L234
    # [TODO] Hide raw OpenGL operation
    GL.BlendFuncSeparate(GL::SRC_ALPHA, GL::ONE_MINUS_SRC_ALPHA, GL::ONE, GL::ONE_MINUS_SRC_ALPHA)

  end

  KEY_IDS = [
    # Alphanumeric keys
    Raylib::KEY_APOSTROPHE,    # Key: '
    Raylib::KEY_COMMA,         # Key: ,
    Raylib::KEY_MINUS,         # Key: -
    Raylib::KEY_PERIOD,        # Key: .
    Raylib::KEY_SLASH,         # Key: /
    Raylib::KEY_ZERO,          # Key: 0
    Raylib::KEY_ONE,           # Key: 1
    Raylib::KEY_TWO,           # Key: 2
    Raylib::KEY_THREE,         # Key: 3
    Raylib::KEY_FOUR,          # Key: 4
    Raylib::KEY_FIVE,          # Key: 5
    Raylib::KEY_SIX,           # Key: 6
    Raylib::KEY_SEVEN,         # Key: 7
    Raylib::KEY_EIGHT,         # Key: 8
    Raylib::KEY_NINE,          # Key: 9
    Raylib::KEY_SEMICOLON,     # Key: ;
    Raylib::KEY_EQUAL,         # Key: =
    Raylib::KEY_A,             # Key: A | a
    Raylib::KEY_B,             # Key: B | b
    Raylib::KEY_C,             # Key: C | c
    Raylib::KEY_D,             # Key: D | d
    Raylib::KEY_E,             # Key: E | e
    Raylib::KEY_F,             # Key: F | f
    Raylib::KEY_G,             # Key: G | g
    Raylib::KEY_H,             # Key: H | h
    Raylib::KEY_I,             # Key: I | i
    Raylib::KEY_J,             # Key: J | j
    Raylib::KEY_K,             # Key: K | k
    Raylib::KEY_L,             # Key: L | l
    Raylib::KEY_M,             # Key: M | m
    Raylib::KEY_N,             # Key: N | n
    Raylib::KEY_O,             # Key: O | o
    Raylib::KEY_P,             # Key: P | p
    Raylib::KEY_Q,             # Key: Q | q
    Raylib::KEY_R,             # Key: R | r
    Raylib::KEY_S,             # Key: S | s
    Raylib::KEY_T,             # Key: T | t
    Raylib::KEY_U,             # Key: U | u
    Raylib::KEY_V,             # Key: V | v
    Raylib::KEY_W,             # Key: W | w
    Raylib::KEY_X,             # Key: X | x
    Raylib::KEY_Y,             # Key: Y | y
    Raylib::KEY_Z,             # Key: Z | z
    Raylib::KEY_LEFT_BRACKET,  # Key: [
    Raylib::KEY_BACKSLASH,     # Key: '\'
    Raylib::KEY_RIGHT_BRACKET, # Key: ]
    Raylib::KEY_GRAVE,         # Key: `
    # Function keys
    Raylib::KEY_SPACE,         # Key: Space
    Raylib::KEY_ESCAPE,        # Key: Esc
    Raylib::KEY_ENTER,         # Key: Enter
    Raylib::KEY_TAB,           # Key: Tab
    Raylib::KEY_BACKSPACE,     # Key: Backspace
    Raylib::KEY_INSERT,        # Key: Ins
    Raylib::KEY_DELETE,        # Key: Del
    Raylib::KEY_RIGHT,         # Key: Cursor right
    Raylib::KEY_LEFT,          # Key: Cursor left
    Raylib::KEY_DOWN,          # Key: Cursor down
    Raylib::KEY_UP,            # Key: Cursor up
    Raylib::KEY_PAGE_UP,       # Key: Page up
    Raylib::KEY_PAGE_DOWN,     # Key: Page down
    Raylib::KEY_HOME,          # Key: Home
    Raylib::KEY_END,           # Key: End
    Raylib::KEY_CAPS_LOCK,     # Key: Caps lock
    Raylib::KEY_SCROLL_LOCK,   # Key: Scroll down
    Raylib::KEY_NUM_LOCK,      # Key: Num lock
    Raylib::KEY_PRINT_SCREEN,  # Key: Print screen
    Raylib::KEY_PAUSE,         # Key: Pause
    Raylib::KEY_F1,            # Key: F1
    Raylib::KEY_F2,            # Key: F2
    Raylib::KEY_F3,            # Key: F3
    Raylib::KEY_F4,            # Key: F4
    Raylib::KEY_F5,            # Key: F5
    Raylib::KEY_F6,            # Key: F6
    Raylib::KEY_F7,            # Key: F7
    Raylib::KEY_F8,            # Key: F8
    Raylib::KEY_F9,            # Key: F9
    Raylib::KEY_F10,           # Key: F10
    Raylib::KEY_F11,           # Key: F11
    Raylib::KEY_F12,           # Key: F12
    Raylib::KEY_LEFT_SHIFT,    # Key: Shift left
    Raylib::KEY_LEFT_CONTROL,  # Key: Control left
    Raylib::KEY_LEFT_ALT,      # Key: Alt left
    Raylib::KEY_LEFT_SUPER,    # Key: Super left
    Raylib::KEY_RIGHT_SHIFT,   # Key: Shift right
    Raylib::KEY_RIGHT_CONTROL, # Key: Control right
    Raylib::KEY_RIGHT_ALT,     # Key: Alt right
    Raylib::KEY_RIGHT_SUPER,   # Key: Super right
    Raylib::KEY_KB_MENU,       # Key: KB menu
    # Keypad keys
    Raylib::KEY_KP_0,          # Key: Keypad 0
    Raylib::KEY_KP_1,          # Key: Keypad 1
    Raylib::KEY_KP_2,          # Key: Keypad 2
    Raylib::KEY_KP_3,          # Key: Keypad 3
    Raylib::KEY_KP_4,          # Key: Keypad 4
    Raylib::KEY_KP_5,          # Key: Keypad 5
    Raylib::KEY_KP_6,          # Key: Keypad 6
    Raylib::KEY_KP_7,          # Key: Keypad 7
    Raylib::KEY_KP_8,          # Key: Keypad 8
    Raylib::KEY_KP_9,          # Key: Keypad 9
    Raylib::KEY_KP_DECIMAL,    # Key: Keypad .
    Raylib::KEY_KP_DIVIDE,     # Key: Keypad /
    Raylib::KEY_KP_MULTIPLY,   # Key: Keypad *
    Raylib::KEY_KP_SUBTRACT,   # Key: Keypad -
    Raylib::KEY_KP_ADD,        # Key: Keypad +
    Raylib::KEY_KP_ENTER,      # Key: Keypad Enter
    Raylib::KEY_KP_EQUAL,      # Key: Keypad =
  ]

  def self.ImplRaylib_ProcessKeyboard()
    io = ImGuiIO.new(ImGui::GetIO())

    io[:KeyShift] = Raylib.IsKeyDown(Raylib::KEY_RIGHT_SHIFT) || Raylib.IsKeyDown(Raylib::KEY_LEFT_SHIFT)
    io[:KeyCtrl] = Raylib.IsKeyDown(Raylib::KEY_RIGHT_CONTROL) || Raylib.IsKeyDown(Raylib::KEY_LEFT_CONTROL)
    io[:KeyAlt] = Raylib.IsKeyDown(Raylib::KEY_RIGHT_ALT) || Raylib.IsKeyDown(Raylib::KEY_LEFT_ALT)
    io[:KeySuper] = Raylib.IsKeyDown(Raylib::KEY_RIGHT_SUPER) || Raylib.IsKeyDown(Raylib::KEY_LEFT_SUPER) # [TODO] io.KeySuper = false on _WIN32

    KEY_IDS.each { |key| io[:KeysDown][key] = Raylib.IsKeyDown(key) }

    keyPressed = Raylib.GetKeyPressed()
    io.AddInputCharacter(keyPressed) if keyPressed > 0

    return true
  end

  def self.ImplRaylib_Init()
    @@g_Time = 0

    io = ImGuiIO.new(ImGui::GetIO())

    io[:BackendPlatformUserData] = nil
    io[:BackendPlatformName] = @@g_BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)

    # Keyboard mapping. ImGui will use those indices to peek into the io.KeysDown[] array.
    io[:KeyMap][ImGuiKey_Tab] = Raylib::KEY_TAB
    io[:KeyMap][ImGuiKey_LeftArrow] = Raylib::KEY_LEFT
    io[:KeyMap][ImGuiKey_RightArrow] = Raylib::KEY_RIGHT
    io[:KeyMap][ImGuiKey_UpArrow] = Raylib::KEY_UP
    io[:KeyMap][ImGuiKey_DownArrow] = Raylib::KEY_DOWN
    io[:KeyMap][ImGuiKey_PageUp] = Raylib::KEY_PAGE_UP
    io[:KeyMap][ImGuiKey_PageDown] = Raylib::KEY_PAGE_DOWN
    io[:KeyMap][ImGuiKey_Home] = Raylib::KEY_HOME
    io[:KeyMap][ImGuiKey_End] = Raylib::KEY_END
    io[:KeyMap][ImGuiKey_Insert] = Raylib::KEY_INSERT
    io[:KeyMap][ImGuiKey_Delete] = Raylib::KEY_DELETE
    io[:KeyMap][ImGuiKey_Backspace] = Raylib::KEY_BACKSPACE
    io[:KeyMap][ImGuiKey_Space] = Raylib::KEY_SPACE
    io[:KeyMap][ImGuiKey_Enter] = Raylib::KEY_ENTER
    io[:KeyMap][ImGuiKey_Escape] = Raylib::KEY_ESCAPE
    io[:KeyMap][ImGuiKey_KeyPadEnter] = Raylib::KEY_KP_ENTER
    io[:KeyMap][ImGuiKey_A] = Raylib::KEY_A
    io[:KeyMap][ImGuiKey_C] = Raylib::KEY_C
    io[:KeyMap][ImGuiKey_V] = Raylib::KEY_V
    io[:KeyMap][ImGuiKey_X] = Raylib::KEY_X
    io[:KeyMap][ImGuiKey_Y] = Raylib::KEY_Y
    io[:KeyMap][ImGuiKey_Z] = Raylib::KEY_Z

    # [TODO] Support ClipboardText

    mouse_pos = Raylib.GetMousePosition()
    io[:MousePos][:x] = mouse_pos[:x]
    io[:MousePos][:y] = mouse_pos[:y]

    return true
  end

  # [INTERNAL]
  def self.set_vertex(xy, uv, color)
    Raylib.rlColor4ub(color[0], color[1], color[2], color[3])
    Raylib.rlTexCoord2f(uv[0], uv[1])
    Raylib.rlVertex2f(xy[0], xy[1])
  end

  def self.ImplRaylib_RenderDrawData(draw_data_raw)
    draw_data = ImDrawData.new(draw_data_raw)
    Raylib.rlDisableBackfaceCulling()

    clip_offset = draw_data[:DisplayPos]
    draw_data[:CmdListsCount].times do |n|
      cmd_list = ImDrawList.new((draw_data[:CmdLists].pointer + FFI.type_size(:pointer) * n).read_pointer)
      vtx_buffer = cmd_list[:VtxBuffer][:Data] # const ImDrawVert*
      idx_buffer = cmd_list[:IdxBuffer][:Data] # const ImDrawIdx*

      cmd_list[:CmdBuffer][:Size].times do |cmd_i|
        pcmd = ImDrawCmd.new(cmd_list[:CmdBuffer][:Data] + ImDrawCmd.size * cmd_i) # const ImDrawCmd*
        if pcmd[:UserCallback] != nil
          # [TODO] Handle user callback (Ref.: https://github.com/ffi/ffi/wiki/Callbacks )
        else
          rect_min_x = (pcmd[:ClipRect][:x] - clip_offset[:x])
          rect_min_y = (pcmd[:ClipRect][:y] - clip_offset[:y])
          rect_max_x = (pcmd[:ClipRect][:z] - clip_offset[:x])
          rect_max_y = (pcmd[:ClipRect][:w] - clip_offset[:y])

          rect_w = rect_max_x - rect_min_x
          rect_h = rect_max_y - rect_min_y

          Raylib.BeginScissorMode(rect_min_x, rect_min_y, rect_w, rect_h)

          # Render triangles
          indices = idx_buffer + FFI.type_size(:ImDrawIdx) * pcmd[:IdxOffset]
          vertices = vtx_buffer + ImDrawVert.size * pcmd[:VtxOffset]
          0.step(pcmd[:ElemCount] - 3, 3) do |i|
            Raylib.rlPushMatrix()
              Raylib.rlBegin(Raylib::RL_TRIANGLES)
                Raylib.rlSetTexture(pcmd[:TextureId].read_uint32)

                index = indices.get_array_of_uint16(i * FFI::type_size(:ImDrawIdx), 3)

                base_offset = ImDrawVert.size * index[0]
                xy = vertices + (base_offset + ImDrawVert.offset_of(:pos))
                uv = vertices + (base_offset + ImDrawVert.offset_of(:uv))
                color = vertices + (base_offset + ImDrawVert.offset_of(:col))
                set_vertex(xy.read_array_of_float(2), uv.read_array_of_float(2), color.read_array_of_uint8(4))

                base_offset = ImDrawVert.size * index[2]
                xy = vertices + (base_offset + ImDrawVert.offset_of(:pos))
                uv = vertices + (base_offset + ImDrawVert.offset_of(:uv))
                color = vertices + (base_offset + ImDrawVert.offset_of(:col))
                set_vertex(xy.read_array_of_float(2), uv.read_array_of_float(2), color.read_array_of_uint8(4))

                base_offset = ImDrawVert.size * index[1]
                xy = vertices + (base_offset + ImDrawVert.offset_of(:pos))
                uv = vertices + (base_offset + ImDrawVert.offset_of(:uv))
                color = vertices + (base_offset + ImDrawVert.offset_of(:col))
                set_vertex(xy.read_array_of_float(2), uv.read_array_of_float(2), color.read_array_of_uint8(4))

                Raylib.rlSetTexture(0)
              Raylib.rlEnd()
            Raylib.rlPopMatrix()
          end
          Raylib.EndScissorMode()
        end
      end
    end
    Raylib.rlEnableBackfaceCulling()
  end

end
