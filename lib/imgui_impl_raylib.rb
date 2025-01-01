require 'ffi'
require 'raylib'

require_relative 'imgui'

module ImGui

  @@g_BackendPlatformName = FFI::MemoryPointer.from_string("imgui_impl_raylib")

  # ImGui::GetCurrentContext().address => ImGui_ImplRaylib_Data
  @@g_BackendData = Hash.new

  # [INTERNAL]
  class ImGui_ImplRaylib_Data
    attr_accessor :time

    def initialize
      @time = 0.0
    end
  end

  # [INTERNAL]
  def self.ImGui_ImplRaylib_GetBackendData()
    if ImGui::GetCurrentContext() != nil
      @@g_BackendData[ImGui::GetCurrentContext().address]
    else
      nil
    end
  end

  # [TODO] Support ClipboardText
  # g_ClipboardTextData
  # ImplRaylib_GetClipboardText
  # ImplRaylib_SetClipboardText

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

  # [INTERNAL]
  def self.ImGui_ImplRaylib_KeyToImGuiKey(key)
    case key
    when Raylib::KEY_TAB then ImGuiKey_Tab
    when Raylib::KEY_LEFT then ImGuiKey_LeftArrow
    when Raylib::KEY_RIGHT then ImGuiKey_RightArrow
    when Raylib::KEY_UP then ImGuiKey_UpArrow
    when Raylib::KEY_DOWN then ImGuiKey_DownArrow
    when Raylib::KEY_PAGE_UP then ImGuiKey_PageUp
    when Raylib::KEY_PAGE_DOWN then ImGuiKey_PageDown
    when Raylib::KEY_HOME then ImGuiKey_Home
    when Raylib::KEY_END then ImGuiKey_End
    when Raylib::KEY_INSERT then ImGuiKey_Insert
    when Raylib::KEY_DELETE then ImGuiKey_Delete
    when Raylib::KEY_BACKSPACE then ImGuiKey_Backspace
    when Raylib::KEY_SPACE then ImGuiKey_Space
    when Raylib::KEY_ENTER then ImGuiKey_Enter
    when Raylib::KEY_ESCAPE then ImGuiKey_Escape
    when Raylib::KEY_APOSTROPHE then ImGuiKey_Apostrophe
    when Raylib::KEY_COMMA then ImGuiKey_Comma
    when Raylib::KEY_MINUS then ImGuiKey_Minus
    when Raylib::KEY_PERIOD then ImGuiKey_Period
    when Raylib::KEY_SLASH then ImGuiKey_Slash
    when Raylib::KEY_SEMICOLON then ImGuiKey_Semicolon
    when Raylib::KEY_EQUAL then ImGuiKey_Equal
    when Raylib::KEY_LEFT_BRACKET then ImGuiKey_LeftBracket
    when Raylib::KEY_BACKSLASH then ImGuiKey_Backslash
    when Raylib::KEY_RIGHT_BRACKET then ImGuiKey_RightBracket
    when Raylib::KEY_GRAVE then ImGuiKey_GraveAccent
    when Raylib::KEY_CAPS_LOCK then ImGuiKey_CapsLock
    when Raylib::KEY_SCROLL_LOCK then ImGuiKey_ScrollLock
    when Raylib::KEY_NUM_LOCK then ImGuiKey_NumLock
    when Raylib::KEY_PRINT_SCREEN then ImGuiKey_PrintScreen
    when Raylib::KEY_PAUSE then ImGuiKey_Pause
    when Raylib::KEY_KP_0 then ImGuiKey_Keypad0
    when Raylib::KEY_KP_1 then ImGuiKey_Keypad1
    when Raylib::KEY_KP_2 then ImGuiKey_Keypad2
    when Raylib::KEY_KP_3 then ImGuiKey_Keypad3
    when Raylib::KEY_KP_4 then ImGuiKey_Keypad4
    when Raylib::KEY_KP_5 then ImGuiKey_Keypad5
    when Raylib::KEY_KP_6 then ImGuiKey_Keypad6
    when Raylib::KEY_KP_7 then ImGuiKey_Keypad7
    when Raylib::KEY_KP_8 then ImGuiKey_Keypad8
    when Raylib::KEY_KP_9 then ImGuiKey_Keypad9
    when Raylib::KEY_KP_DECIMAL then ImGuiKey_KeypadDecimal
    when Raylib::KEY_KP_DIVIDE then ImGuiKey_KeypadDivide
    when Raylib::KEY_KP_MULTIPLY then ImGuiKey_KeypadMultiply
    when Raylib::KEY_KP_SUBTRACT then ImGuiKey_KeypadSubtract
    when Raylib::KEY_KP_ADD then ImGuiKey_KeypadAdd
    when Raylib::KEY_KP_ENTER then ImGuiKey_KeypadEnter
    when Raylib::KEY_KP_EQUAL then ImGuiKey_KeypadEqual
    when Raylib::KEY_LEFT_CONTROL then ImGuiKey_LeftCtrl
    when Raylib::KEY_LEFT_SHIFT then ImGuiKey_LeftShift
    when Raylib::KEY_LEFT_ALT then ImGuiKey_LeftAlt
    when Raylib::KEY_LEFT_SUPER then ImGuiKey_LeftSuper
    when Raylib::KEY_RIGHT_CONTROL then ImGuiKey_RightCtrl
    when Raylib::KEY_RIGHT_SHIFT then ImGuiKey_RightShift
    when Raylib::KEY_RIGHT_ALT then ImGuiKey_RightAlt
    when Raylib::KEY_RIGHT_SUPER then ImGuiKey_RightSuper
    when Raylib::KEY_MENU then ImGuiKey_Menu
    when Raylib::KEY_ZERO then ImGuiKey_0
    when Raylib::KEY_ONE then ImGuiKey_1
    when Raylib::KEY_TWO then ImGuiKey_2
    when Raylib::KEY_THREE then ImGuiKey_3
    when Raylib::KEY_FOUR then ImGuiKey_4
    when Raylib::KEY_FIVE then ImGuiKey_5
    when Raylib::KEY_SIX then ImGuiKey_6
    when Raylib::KEY_SEVEN then ImGuiKey_7
    when Raylib::KEY_EIGHT then ImGuiKey_8
    when Raylib::KEY_NINE then ImGuiKey_9
    when Raylib::KEY_A then ImGuiKey_A
    when Raylib::KEY_B then ImGuiKey_B
    when Raylib::KEY_C then ImGuiKey_C
    when Raylib::KEY_D then ImGuiKey_D
    when Raylib::KEY_E then ImGuiKey_E
    when Raylib::KEY_F then ImGuiKey_F
    when Raylib::KEY_G then ImGuiKey_G
    when Raylib::KEY_H then ImGuiKey_H
    when Raylib::KEY_I then ImGuiKey_I
    when Raylib::KEY_J then ImGuiKey_J
    when Raylib::KEY_K then ImGuiKey_K
    when Raylib::KEY_L then ImGuiKey_L
    when Raylib::KEY_M then ImGuiKey_M
    when Raylib::KEY_N then ImGuiKey_N
    when Raylib::KEY_O then ImGuiKey_O
    when Raylib::KEY_P then ImGuiKey_P
    when Raylib::KEY_Q then ImGuiKey_Q
    when Raylib::KEY_R then ImGuiKey_R
    when Raylib::KEY_S then ImGuiKey_S
    when Raylib::KEY_T then ImGuiKey_T
    when Raylib::KEY_U then ImGuiKey_U
    when Raylib::KEY_V then ImGuiKey_V
    when Raylib::KEY_W then ImGuiKey_W
    when Raylib::KEY_X then ImGuiKey_X
    when Raylib::KEY_Y then ImGuiKey_Y
    when Raylib::KEY_Z then ImGuiKey_Z
    when Raylib::KEY_F1 then ImGuiKey_F1
    when Raylib::KEY_F2 then ImGuiKey_F2
    when Raylib::KEY_F3 then ImGuiKey_F3
    when Raylib::KEY_F4 then ImGuiKey_F4
    when Raylib::KEY_F5 then ImGuiKey_F5
    when Raylib::KEY_F6 then ImGuiKey_F6
    when Raylib::KEY_F7 then ImGuiKey_F7
    when Raylib::KEY_F8 then ImGuiKey_F8
    when Raylib::KEY_F9 then ImGuiKey_F9
    when Raylib::KEY_F10 then ImGuiKey_F10
    when Raylib::KEY_F11 then ImGuiKey_F11
    when Raylib::KEY_F12 then ImGuiKey_F12
    else ImGuiKey_None
    end
  end

  # [INTERNAL]
  def self.ImGui_ImplRaylib_UpdateKeyModifiers()
    io = ImGuiIO.new(ImGui::GetIO())
    io.AddKeyEvent(ImGuiMod_Ctrl, Raylib.IsKeyDown(Raylib::KEY_RIGHT_CONTROL) || Raylib.IsKeyDown(Raylib::KEY_LEFT_CONTROL))
    io.AddKeyEvent(ImGuiMod_Shift, Raylib.IsKeyDown(Raylib::KEY_RIGHT_SHIFT) || Raylib.IsKeyDown(Raylib::KEY_LEFT_SHIFT))
    io.AddKeyEvent(ImGuiMod_Alt, Raylib.IsKeyDown(Raylib::KEY_RIGHT_ALT) || Raylib.IsKeyDown(Raylib::KEY_LEFT_ALT))
    io.AddKeyEvent(ImGuiMod_Super, Raylib.IsKeyDown(Raylib::KEY_RIGHT_SUPER) || Raylib.IsKeyDown(Raylib::KEY_LEFT_SUPER))
  end

  def self.ImplRaylib_ProcessKeyboard()
    io = ImGuiIO.new(ImGui::GetIO())

    ImGui_ImplRaylib_UpdateKeyModifiers()

    KEY_IDS.each do |raylib_key|
      if Raylib.IsKeyPressed(raylib_key)
        key = ImGui_ImplRaylib_KeyToImGuiKey(raylib_key)
        io.AddKeyEvent(key, true)
      elsif Raylib.IsKeyReleased(raylib_key)
        key = ImGui_ImplRaylib_KeyToImGuiKey(raylib_key)
        io.AddKeyEvent(key, false)
      end
    end

    while (charPressed = Raylib.GetCharPressed()) != 0
      io.AddInputCharacter(charPressed)
    end

    return true
  end

  # [INTERNAL]
  def self.ImplRaylib_UpdateMouseData()
    bd = ImGui_ImplRaylib_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    # Set OS mouse position if requested (rarely used, only when ImGuiConfigFlags_NavEnableSetMousePos is enabled by user)
    if io[:WantSetMousePos]
      Raylib.SetMousePosition(io[:MousePos][:x].to_i, io[:MousePos][:y].to_i)
    end

    wheel_move = Raylib.GetMouseWheelMove()
    wheel_y = if wheel_move > 0
                1.0
              elsif wheel_move < 0
                -1.0
              else
                0.0
              end
    io.AddMouseWheelEvent(0, wheel_y) # [TODO] Get wheel tilt from Raylib

    [Raylib::MOUSE_BUTTON_LEFT, Raylib::MOUSE_BUTTON_RIGHT, Raylib::MOUSE_BUTTON_MIDDLE].each_with_index do |button, mouse_button|
      pressed = Raylib.IsMouseButtonPressed(button)
      released = Raylib.IsMouseButtonReleased(button)
      if pressed || released
        io.AddMouseButtonEvent(mouse_button, pressed)
      end
    end

    mouse_pos = Raylib.GetMousePosition()
    io.AddMousePosEvent(mouse_pos[:x].to_f, mouse_pos[:y].to_f)
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

  def self.ImplRaylib_Init()
    # Setup backend capabilities flags
    bd = ImGui_ImplRaylib_Data.new
    @@g_BackendData[ImGui::GetCurrentContext().address] = bd

    io = ImGuiIO.new(ImGui::GetIO())

    io[:BackendPlatformUserData] = nil
    io[:BackendPlatformName] = @@g_BackendPlatformName
    io[:BackendFlags] |= ImGuiBackendFlags_HasMouseCursors # We can honor GetMouseCursor() values (optional)
    io[:BackendFlags] |= ImGuiBackendFlags_HasSetMousePos  # We can honor io.WantSetMousePos requests (optional, rarely used)

    bd.time = 0.0

    return true
  end

  def self.ImplRaylib_Shutdown()
    io = ImGuiIO.new(ImGui::GetIO())
    io[:BackendPlatformName] = nil
    io[:BackendPlatformUserData] = nil
    @@g_BackendData[ImGui::GetCurrentContext()] = nil
  end

  def self.ImplRaylib_NewFrame()
    bd = ImGui_ImplRaylib_GetBackendData()
    io = ImGuiIO.new(ImGui::GetIO())

    #  Setup display size (every frame to accommodate for window resizing)
    io[:DisplaySize][:x] = Raylib.GetScreenWidth()
    io[:DisplaySize][:y] = Raylib.GetScreenHeight()

    # Setup time step
    current_time = Raylib.GetTime()

    io[:DeltaTime] = bd.time > 0 ? (current_time - bd.time).to_f : 1.0 / 60.0
    bd.time = current_time

    ImplRaylib_ProcessKeyboard()
    ImplRaylib_UpdateMouseData()
    ImplRaylib_UpdateMouseCursor()

    # [TODO] update gamepads
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
      cmd_list = ImDrawList.new((draw_data[:CmdLists][:Data] + FFI.type_size(:pointer) * n).read_pointer)
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
              # Raylib.rlSetTexture(pcmd[:TextureId].read_uint32)
              Raylib.rlSetTexture(pcmd[:TextureId])

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
