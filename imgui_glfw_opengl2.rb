# imgui-bindings
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

module ImGui

  extend FFI::Library

  # ImDrawCornerFlags_
  ImDrawCornerFlags_TopLeft = 1 # 1 << 0
  ImDrawCornerFlags_TopRight = 2 # 1 << 1
  ImDrawCornerFlags_BotLeft = 4 # 1 << 2
  ImDrawCornerFlags_BotRight = 8 # 1 << 3
  ImDrawCornerFlags_Top = 3 # ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_TopRight
  ImDrawCornerFlags_Bot = 12 # ImDrawCornerFlags_BotLeft | ImDrawCornerFlags_BotRight
  ImDrawCornerFlags_Left = 5 # ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_BotLeft
  ImDrawCornerFlags_Right = 10 # ImDrawCornerFlags_TopRight | ImDrawCornerFlags_BotRight
  ImDrawCornerFlags_All = 15 # 0xF

  # ImDrawListFlags_
  ImDrawListFlags_None = 0 # 0
  ImDrawListFlags_AntiAliasedLines = 1 # 1 << 0
  ImDrawListFlags_AntiAliasedFill = 2 # 1 << 1

  # ImFontAtlasFlags_
  ImFontAtlasFlags_None = 0 # 0
  ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 1 << 0
  ImFontAtlasFlags_NoMouseCursors = 2 # 1 << 1

  # ImGuiBackendFlags_
  ImGuiBackendFlags_None = 0 # 0
  ImGuiBackendFlags_HasGamepad = 1 # 1 << 0
  ImGuiBackendFlags_HasMouseCursors = 2 # 1 << 1
  ImGuiBackendFlags_HasSetMousePos = 4 # 1 << 2

  # ImGuiCol_
  ImGuiCol_Text = 0 # 0
  ImGuiCol_TextDisabled = 1 # 1
  ImGuiCol_WindowBg = 2 # 2
  ImGuiCol_ChildBg = 3 # 3
  ImGuiCol_PopupBg = 4 # 4
  ImGuiCol_Border = 5 # 5
  ImGuiCol_BorderShadow = 6 # 6
  ImGuiCol_FrameBg = 7 # 7
  ImGuiCol_FrameBgHovered = 8 # 8
  ImGuiCol_FrameBgActive = 9 # 9
  ImGuiCol_TitleBg = 10 # 10
  ImGuiCol_TitleBgActive = 11 # 11
  ImGuiCol_TitleBgCollapsed = 12 # 12
  ImGuiCol_MenuBarBg = 13 # 13
  ImGuiCol_ScrollbarBg = 14 # 14
  ImGuiCol_ScrollbarGrab = 15 # 15
  ImGuiCol_ScrollbarGrabHovered = 16 # 16
  ImGuiCol_ScrollbarGrabActive = 17 # 17
  ImGuiCol_CheckMark = 18 # 18
  ImGuiCol_SliderGrab = 19 # 19
  ImGuiCol_SliderGrabActive = 20 # 20
  ImGuiCol_Button = 21 # 21
  ImGuiCol_ButtonHovered = 22 # 22
  ImGuiCol_ButtonActive = 23 # 23
  ImGuiCol_Header = 24 # 24
  ImGuiCol_HeaderHovered = 25 # 25
  ImGuiCol_HeaderActive = 26 # 26
  ImGuiCol_Separator = 27 # 27
  ImGuiCol_SeparatorHovered = 28 # 28
  ImGuiCol_SeparatorActive = 29 # 29
  ImGuiCol_ResizeGrip = 30 # 30
  ImGuiCol_ResizeGripHovered = 31 # 31
  ImGuiCol_ResizeGripActive = 32 # 32
  ImGuiCol_PlotLines = 33 # 33
  ImGuiCol_PlotLinesHovered = 34 # 34
  ImGuiCol_PlotHistogram = 35 # 35
  ImGuiCol_PlotHistogramHovered = 36 # 36
  ImGuiCol_TextSelectedBg = 37 # 37
  ImGuiCol_DragDropTarget = 38 # 38
  ImGuiCol_NavHighlight = 39 # 39
  ImGuiCol_NavWindowingHighlight = 40 # 40
  ImGuiCol_NavWindowingDimBg = 41 # 41
  ImGuiCol_ModalWindowDimBg = 42 # 42
  ImGuiCol_COUNT = 43 # 43

  # ImGuiColorEditFlags_
  ImGuiColorEditFlags_None = 0 # 0
  ImGuiColorEditFlags_NoAlpha = 2 # 1 << 1
  ImGuiColorEditFlags_NoPicker = 4 # 1 << 2
  ImGuiColorEditFlags_NoOptions = 8 # 1 << 3
  ImGuiColorEditFlags_NoSmallPreview = 16 # 1 << 4
  ImGuiColorEditFlags_NoInputs = 32 # 1 << 5
  ImGuiColorEditFlags_NoTooltip = 64 # 1 << 6
  ImGuiColorEditFlags_NoLabel = 128 # 1 << 7
  ImGuiColorEditFlags_NoSidePreview = 256 # 1 << 8
  ImGuiColorEditFlags_NoDragDrop = 512 # 1 << 9
  ImGuiColorEditFlags_AlphaBar = 65536 # 1 << 16
  ImGuiColorEditFlags_AlphaPreview = 131072 # 1 << 17
  ImGuiColorEditFlags_AlphaPreviewHalf = 262144 # 1 << 18
  ImGuiColorEditFlags_HDR = 524288 # 1 << 19
  ImGuiColorEditFlags_RGB = 1048576 # 1 << 20
  ImGuiColorEditFlags_HSV = 2097152 # 1 << 21
  ImGuiColorEditFlags_HEX = 4194304 # 1 << 22
  ImGuiColorEditFlags_Uint8 = 8388608 # 1 << 23
  ImGuiColorEditFlags_Float = 16777216 # 1 << 24
  ImGuiColorEditFlags_PickerHueBar = 33554432 # 1 << 25
  ImGuiColorEditFlags_PickerHueWheel = 67108864 # 1 << 26
  ImGuiColorEditFlags__InputsMask = 7340032 # ImGuiColorEditFlags_RGB|ImGuiColorEditFlags_HSV|ImGuiColorEditFlags_HEX
  ImGuiColorEditFlags__DataTypeMask = 25165824 # ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_Float
  ImGuiColorEditFlags__PickerMask = 100663296 # ImGuiColorEditFlags_PickerHueWheel|ImGuiColorEditFlags_PickerHueBar
  ImGuiColorEditFlags__OptionsDefault = 42991616 # ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_RGB|ImGuiColorEditFlags_PickerHueBar

  # ImGuiComboFlags_
  ImGuiComboFlags_None = 0 # 0
  ImGuiComboFlags_PopupAlignLeft = 1 # 1 << 0
  ImGuiComboFlags_HeightSmall = 2 # 1 << 1
  ImGuiComboFlags_HeightRegular = 4 # 1 << 2
  ImGuiComboFlags_HeightLarge = 8 # 1 << 3
  ImGuiComboFlags_HeightLargest = 16 # 1 << 4
  ImGuiComboFlags_NoArrowButton = 32 # 1 << 5
  ImGuiComboFlags_NoPreview = 64 # 1 << 6
  ImGuiComboFlags_HeightMask_ = 30 # ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest

  # ImGuiCond_
  ImGuiCond_Always = 1 # 1 << 0
  ImGuiCond_Once = 2 # 1 << 1
  ImGuiCond_FirstUseEver = 4 # 1 << 2
  ImGuiCond_Appearing = 8 # 1 << 3

  # ImGuiConfigFlags_
  ImGuiConfigFlags_None = 0 # 0
  ImGuiConfigFlags_NavEnableKeyboard = 1 # 1 << 0
  ImGuiConfigFlags_NavEnableGamepad = 2 # 1 << 1
  ImGuiConfigFlags_NavEnableSetMousePos = 4 # 1 << 2
  ImGuiConfigFlags_NavNoCaptureKeyboard = 8 # 1 << 3
  ImGuiConfigFlags_NoMouse = 16 # 1 << 4
  ImGuiConfigFlags_NoMouseCursorChange = 32 # 1 << 5
  ImGuiConfigFlags_IsSRGB = 1048576 # 1 << 20
  ImGuiConfigFlags_IsTouchScreen = 2097152 # 1 << 21

  # ImGuiDataType_
  ImGuiDataType_S32 = 0 # 0
  ImGuiDataType_U32 = 1 # 1
  ImGuiDataType_S64 = 2 # 2
  ImGuiDataType_U64 = 3 # 3
  ImGuiDataType_Float = 4 # 4
  ImGuiDataType_Double = 5 # 5
  ImGuiDataType_COUNT = 6 # 6

  # ImGuiDir_
  ImGuiDir_None = -1 # -1
  ImGuiDir_Left = 0 # 0
  ImGuiDir_Right = 1 # 1
  ImGuiDir_Up = 2 # 2
  ImGuiDir_Down = 3 # 3
  ImGuiDir_COUNT = 4 # 4

  # ImGuiDragDropFlags_
  ImGuiDragDropFlags_None = 0 # 0
  ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 # 1 << 0
  ImGuiDragDropFlags_SourceNoDisableHover = 2 # 1 << 1
  ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4 # 1 << 2
  ImGuiDragDropFlags_SourceAllowNullID = 8 # 1 << 3
  ImGuiDragDropFlags_SourceExtern = 16 # 1 << 4
  ImGuiDragDropFlags_SourceAutoExpirePayload = 32 # 1 << 5
  ImGuiDragDropFlags_AcceptBeforeDelivery = 1024 # 1 << 10
  ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048 # 1 << 11
  ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096 # 1 << 12
  ImGuiDragDropFlags_AcceptPeekOnly = 3072 # ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect

  # ImGuiFocusedFlags_
  ImGuiFocusedFlags_None = 0 # 0
  ImGuiFocusedFlags_ChildWindows = 1 # 1 << 0
  ImGuiFocusedFlags_RootWindow = 2 # 1 << 1
  ImGuiFocusedFlags_AnyWindow = 4 # 1 << 2
  ImGuiFocusedFlags_RootAndChildWindows = 3 # ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows

  # ImGuiHoveredFlags_
  ImGuiHoveredFlags_None = 0 # 0
  ImGuiHoveredFlags_ChildWindows = 1 # 1 << 0
  ImGuiHoveredFlags_RootWindow = 2 # 1 << 1
  ImGuiHoveredFlags_AnyWindow = 4 # 1 << 2
  ImGuiHoveredFlags_AllowWhenBlockedByPopup = 8 # 1 << 3
  ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 32 # 1 << 5
  ImGuiHoveredFlags_AllowWhenOverlapped = 64 # 1 << 6
  ImGuiHoveredFlags_AllowWhenDisabled = 128 # 1 << 7
  ImGuiHoveredFlags_RectOnly = 104 # ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped
  ImGuiHoveredFlags_RootAndChildWindows = 3 # ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows

  # ImGuiInputTextFlags_
  ImGuiInputTextFlags_None = 0 # 0
  ImGuiInputTextFlags_CharsDecimal = 1 # 1 << 0
  ImGuiInputTextFlags_CharsHexadecimal = 2 # 1 << 1
  ImGuiInputTextFlags_CharsUppercase = 4 # 1 << 2
  ImGuiInputTextFlags_CharsNoBlank = 8 # 1 << 3
  ImGuiInputTextFlags_AutoSelectAll = 16 # 1 << 4
  ImGuiInputTextFlags_EnterReturnsTrue = 32 # 1 << 5
  ImGuiInputTextFlags_CallbackCompletion = 64 # 1 << 6
  ImGuiInputTextFlags_CallbackHistory = 128 # 1 << 7
  ImGuiInputTextFlags_CallbackAlways = 256 # 1 << 8
  ImGuiInputTextFlags_CallbackCharFilter = 512 # 1 << 9
  ImGuiInputTextFlags_AllowTabInput = 1024 # 1 << 10
  ImGuiInputTextFlags_CtrlEnterForNewLine = 2048 # 1 << 11
  ImGuiInputTextFlags_NoHorizontalScroll = 4096 # 1 << 12
  ImGuiInputTextFlags_AlwaysInsertMode = 8192 # 1 << 13
  ImGuiInputTextFlags_ReadOnly = 16384 # 1 << 14
  ImGuiInputTextFlags_Password = 32768 # 1 << 15
  ImGuiInputTextFlags_NoUndoRedo = 65536 # 1 << 16
  ImGuiInputTextFlags_CharsScientific = 131072 # 1 << 17
  ImGuiInputTextFlags_CallbackResize = 262144 # 1 << 18
  ImGuiInputTextFlags_Multiline = 1048576 # 1 << 20

  # ImGuiKey_
  ImGuiKey_Tab = 0 # 0
  ImGuiKey_LeftArrow = 1 # 1
  ImGuiKey_RightArrow = 2 # 2
  ImGuiKey_UpArrow = 3 # 3
  ImGuiKey_DownArrow = 4 # 4
  ImGuiKey_PageUp = 5 # 5
  ImGuiKey_PageDown = 6 # 6
  ImGuiKey_Home = 7 # 7
  ImGuiKey_End = 8 # 8
  ImGuiKey_Insert = 9 # 9
  ImGuiKey_Delete = 10 # 10
  ImGuiKey_Backspace = 11 # 11
  ImGuiKey_Space = 12 # 12
  ImGuiKey_Enter = 13 # 13
  ImGuiKey_Escape = 14 # 14
  ImGuiKey_A = 15 # 15
  ImGuiKey_C = 16 # 16
  ImGuiKey_V = 17 # 17
  ImGuiKey_X = 18 # 18
  ImGuiKey_Y = 19 # 19
  ImGuiKey_Z = 20 # 20
  ImGuiKey_COUNT = 21 # 21

  # ImGuiMouseCursor_
  ImGuiMouseCursor_None = -1 # -1
  ImGuiMouseCursor_Arrow = 0 # 0
  ImGuiMouseCursor_TextInput = 1 # 1
  ImGuiMouseCursor_ResizeAll = 2 # 2
  ImGuiMouseCursor_ResizeNS = 3 # 3
  ImGuiMouseCursor_ResizeEW = 4 # 4
  ImGuiMouseCursor_ResizeNESW = 5 # 5
  ImGuiMouseCursor_ResizeNWSE = 6 # 6
  ImGuiMouseCursor_Hand = 7 # 7
  ImGuiMouseCursor_COUNT = 8 # 8

  # ImGuiNavInput_
  ImGuiNavInput_Activate = 0 # 0
  ImGuiNavInput_Cancel = 1 # 1
  ImGuiNavInput_Input = 2 # 2
  ImGuiNavInput_Menu = 3 # 3
  ImGuiNavInput_DpadLeft = 4 # 4
  ImGuiNavInput_DpadRight = 5 # 5
  ImGuiNavInput_DpadUp = 6 # 6
  ImGuiNavInput_DpadDown = 7 # 7
  ImGuiNavInput_LStickLeft = 8 # 8
  ImGuiNavInput_LStickRight = 9 # 9
  ImGuiNavInput_LStickUp = 10 # 10
  ImGuiNavInput_LStickDown = 11 # 11
  ImGuiNavInput_FocusPrev = 12 # 12
  ImGuiNavInput_FocusNext = 13 # 13
  ImGuiNavInput_TweakSlow = 14 # 14
  ImGuiNavInput_TweakFast = 15 # 15
  ImGuiNavInput_KeyMenu_ = 16 # 16
  ImGuiNavInput_KeyLeft_ = 17 # 17
  ImGuiNavInput_KeyRight_ = 18 # 18
  ImGuiNavInput_KeyUp_ = 19 # 19
  ImGuiNavInput_KeyDown_ = 20 # 20
  ImGuiNavInput_COUNT = 21 # 21
  ImGuiNavInput_InternalStart_ = 16 # ImGuiNavInput_KeyMenu_

  # ImGuiSelectableFlags_
  ImGuiSelectableFlags_None = 0 # 0
  ImGuiSelectableFlags_DontClosePopups = 1 # 1 << 0
  ImGuiSelectableFlags_SpanAllColumns = 2 # 1 << 1
  ImGuiSelectableFlags_AllowDoubleClick = 4 # 1 << 2
  ImGuiSelectableFlags_Disabled = 8 # 1 << 3

  # ImGuiStyleVar_
  ImGuiStyleVar_Alpha = 0 # 0
  ImGuiStyleVar_WindowPadding = 1 # 1
  ImGuiStyleVar_WindowRounding = 2 # 2
  ImGuiStyleVar_WindowBorderSize = 3 # 3
  ImGuiStyleVar_WindowMinSize = 4 # 4
  ImGuiStyleVar_WindowTitleAlign = 5 # 5
  ImGuiStyleVar_ChildRounding = 6 # 6
  ImGuiStyleVar_ChildBorderSize = 7 # 7
  ImGuiStyleVar_PopupRounding = 8 # 8
  ImGuiStyleVar_PopupBorderSize = 9 # 9
  ImGuiStyleVar_FramePadding = 10 # 10
  ImGuiStyleVar_FrameRounding = 11 # 11
  ImGuiStyleVar_FrameBorderSize = 12 # 12
  ImGuiStyleVar_ItemSpacing = 13 # 13
  ImGuiStyleVar_ItemInnerSpacing = 14 # 14
  ImGuiStyleVar_IndentSpacing = 15 # 15
  ImGuiStyleVar_ScrollbarSize = 16 # 16
  ImGuiStyleVar_ScrollbarRounding = 17 # 17
  ImGuiStyleVar_GrabMinSize = 18 # 18
  ImGuiStyleVar_GrabRounding = 19 # 19
  ImGuiStyleVar_ButtonTextAlign = 20 # 20
  ImGuiStyleVar_COUNT = 21 # 21

  # ImGuiTreeNodeFlags_
  ImGuiTreeNodeFlags_None = 0 # 0
  ImGuiTreeNodeFlags_Selected = 1 # 1 << 0
  ImGuiTreeNodeFlags_Framed = 2 # 1 << 1
  ImGuiTreeNodeFlags_AllowItemOverlap = 4 # 1 << 2
  ImGuiTreeNodeFlags_NoTreePushOnOpen = 8 # 1 << 3
  ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16 # 1 << 4
  ImGuiTreeNodeFlags_DefaultOpen = 32 # 1 << 5
  ImGuiTreeNodeFlags_OpenOnDoubleClick = 64 # 1 << 6
  ImGuiTreeNodeFlags_OpenOnArrow = 128 # 1 << 7
  ImGuiTreeNodeFlags_Leaf = 256 # 1 << 8
  ImGuiTreeNodeFlags_Bullet = 512 # 1 << 9
  ImGuiTreeNodeFlags_FramePadding = 1024 # 1 << 10
  ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 8192 # 1 << 13
  ImGuiTreeNodeFlags_CollapsingHeader = 26 # ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog

  # ImGuiWindowFlags_
  ImGuiWindowFlags_None = 0 # 0
  ImGuiWindowFlags_NoTitleBar = 1 # 1 << 0
  ImGuiWindowFlags_NoResize = 2 # 1 << 1
  ImGuiWindowFlags_NoMove = 4 # 1 << 2
  ImGuiWindowFlags_NoScrollbar = 8 # 1 << 3
  ImGuiWindowFlags_NoScrollWithMouse = 16 # 1 << 4
  ImGuiWindowFlags_NoCollapse = 32 # 1 << 5
  ImGuiWindowFlags_AlwaysAutoResize = 64 # 1 << 6
  ImGuiWindowFlags_NoBackground = 128 # 1 << 7
  ImGuiWindowFlags_NoSavedSettings = 256 # 1 << 8
  ImGuiWindowFlags_NoMouseInputs = 512 # 1 << 9
  ImGuiWindowFlags_MenuBar = 1024 # 1 << 10
  ImGuiWindowFlags_HorizontalScrollbar = 2048 # 1 << 11
  ImGuiWindowFlags_NoFocusOnAppearing = 4096 # 1 << 12
  ImGuiWindowFlags_NoBringToFrontOnFocus = 8192 # 1 << 13
  ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384 # 1 << 14
  ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768 # 1<< 15
  ImGuiWindowFlags_AlwaysUseWindowPadding = 65536 # 1 << 16
  ImGuiWindowFlags_NoNavInputs = 262144 # 1 << 18
  ImGuiWindowFlags_NoNavFocus = 524288 # 1 << 19
  ImGuiWindowFlags_NoNav = 786432 # ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus
  ImGuiWindowFlags_NoDecoration = 43 # ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse
  ImGuiWindowFlags_NoInputs = 786944 # ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus
  ImGuiWindowFlags_NavFlattened = 8388608 # 1 << 23
  ImGuiWindowFlags_ChildWindow = 16777216 # 1 << 24
  ImGuiWindowFlags_Tooltip = 33554432 # 1 << 25
  ImGuiWindowFlags_Popup = 67108864 # 1 << 26
  ImGuiWindowFlags_Modal = 134217728 # 1 << 27
  ImGuiWindowFlags_ChildMenu = 268435456 # 1 << 28


  class ImVec2 < FFI::Struct
    layout(
      :x, :float,
      :y, :float
    )
  end

  class ImVec4 < FFI::Struct
    layout(
      :x, :float,
      :y, :float,
      :z, :float,
      :w, :float
    )
  end

  class ImColor < FFI::Struct
    layout(
      :Value, ImVec4.by_value
    )
  end

  class ImGuiIO < FFI::Struct
    layout(
      :ConfigFlags, :int,
      :BackendFlags, :int,
      :DisplaySize, ImVec2.by_value,
      :DeltaTime, :float,
      :IniSavingRate, :float,
      :IniFilename, :pointer,
      :LogFilename, :pointer,
      :MouseDoubleClickTime, :float,
      :MouseDoubleClickMaxDist, :float,
      :MouseDragThreshold, :float,
      :KeyMap, :int,
      :KeyRepeatDelay, :float,
      :KeyRepeatRate, :float,
      :UserData, :pointer,
      :Fonts, :pointer,
      :FontGlobalScale, :float,
      :FontAllowUserScaling, :bool,
      :FontDefault, :pointer,
      :DisplayFramebufferScale, ImVec2.by_value,
      :DisplayVisibleMin, ImVec2.by_value,
      :DisplayVisibleMax, ImVec2.by_value,
      :MouseDrawCursor, :bool,
      :ConfigMacOSXBehaviors, :bool,
      :ConfigInputTextCursorBlink, :bool,
      :ConfigResizeWindowsFromEdges, :bool,
      :BackendPlatformName, :pointer,
      :BackendRendererName, :pointer,
      :GetClipboardTextFn, :pointer,
      :SetClipboardTextFn, :pointer,
      :ClipboardUserData, :pointer,
      :ImeSetInputScreenPosFn, :pointer,
      :ImeWindowHandle, :pointer,
      :RenderDrawListsFnUnused, :pointer,
      :MousePos, ImVec2.by_value,
      :MouseDown, :bool,
      :MouseWheel, :float,
      :MouseWheelH, :float,
      :KeyCtrl, :bool,
      :KeyShift, :bool,
      :KeyAlt, :bool,
      :KeySuper, :bool,
      :KeysDown, :bool,
      :InputCharacters, :ushort,
      :NavInputs, :float,
      :WantCaptureMouse, :bool,
      :WantCaptureKeyboard, :bool,
      :WantTextInput, :bool,
      :WantSetMousePos, :bool,
      :WantSaveIniSettings, :bool,
      :NavActive, :bool,
      :NavVisible, :bool,
      :Framerate, :float,
      :MetricsRenderVertices, :int,
      :MetricsRenderIndices, :int,
      :MetricsRenderWindows, :int,
      :MetricsActiveWindows, :int,
      :MetricsActiveAllocations, :int,
      :MouseDelta, ImVec2.by_value,
      :MousePosPrev, ImVec2.by_value,
      :MouseClickedPos, ImVec2.by_value,
      :MouseClickedTime, :double,
      :MouseClicked, :bool,
      :MouseDoubleClicked, :bool,
      :MouseReleased, :bool,
      :MouseDownOwned, :bool,
      :MouseDownDuration, :float,
      :MouseDownDurationPrev, :float,
      :MouseDragMaxDistanceAbs, ImVec2.by_value,
      :MouseDragMaxDistanceSqr, :float,
      :KeysDownDuration, :float,
      :KeysDownDurationPrev, :float,
      :NavInputsDownDuration, :float,
      :NavInputsDownDurationPrev, :float
    )
  end

  class ImGuiStyle < FFI::Struct
    layout(
      :Alpha, :float,
      :WindowPadding, ImVec2.by_value,
      :WindowRounding, :float,
      :WindowBorderSize, :float,
      :WindowMinSize, ImVec2.by_value,
      :WindowTitleAlign, ImVec2.by_value,
      :ChildRounding, :float,
      :ChildBorderSize, :float,
      :PopupRounding, :float,
      :PopupBorderSize, :float,
      :FramePadding, ImVec2.by_value,
      :FrameRounding, :float,
      :FrameBorderSize, :float,
      :ItemSpacing, ImVec2.by_value,
      :ItemInnerSpacing, ImVec2.by_value,
      :TouchExtraPadding, ImVec2.by_value,
      :IndentSpacing, :float,
      :ColumnsMinSpacing, :float,
      :ScrollbarSize, :float,
      :ScrollbarRounding, :float,
      :GrabMinSize, :float,
      :GrabRounding, :float,
      :ButtonTextAlign, ImVec2.by_value,
      :DisplayWindowPadding, ImVec2.by_value,
      :DisplaySafeAreaPadding, ImVec2.by_value,
      :MouseCursorScale, :float,
      :AntiAliasedLines, :bool,
      :AntiAliasedFill, :bool,
      :CurveTessellationTol, :float,
      :Colors, ImVec4.by_value
    )
  end

  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui_glfw_opengl2.dylib')
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols() unless @@imgui_import_done
  end

  def self.import_symbols()
    attach_function :igAcceptDragDropPayload, :igAcceptDragDropPayload, [:pointer, :int], :pointer
    attach_function :igAlignTextToFramePadding, :igAlignTextToFramePadding, [], :void
    attach_function :igArrowButton, :igArrowButton, [:pointer, :int], :bool
    attach_function :igBegin, :igBegin, [:pointer, :pointer, :int], :bool
    attach_function :igBeginChild, :igBeginChild, [:pointer, ImVec2.by_value, :bool, :int], :bool
    attach_function :igBeginChildID, :igBeginChildID, [:uint, ImVec2.by_value, :bool, :int], :bool
    attach_function :igBeginChildFrame, :igBeginChildFrame, [:uint, ImVec2.by_value, :int], :bool
    attach_function :igBeginCombo, :igBeginCombo, [:pointer, :pointer, :int], :bool
    attach_function :igBeginDragDropSource, :igBeginDragDropSource, [:int], :bool
    attach_function :igBeginDragDropTarget, :igBeginDragDropTarget, [], :bool
    attach_function :igBeginGroup, :igBeginGroup, [], :void
    attach_function :igBeginMainMenuBar, :igBeginMainMenuBar, [], :bool
    attach_function :igBeginMenu, :igBeginMenu, [:pointer, :bool], :bool
    attach_function :igBeginMenuBar, :igBeginMenuBar, [], :bool
    attach_function :igBeginPopup, :igBeginPopup, [:pointer, :int], :bool
    attach_function :igBeginPopupContextItem, :igBeginPopupContextItem, [:pointer, :int], :bool
    attach_function :igBeginPopupContextVoid, :igBeginPopupContextVoid, [:pointer, :int], :bool
    attach_function :igBeginPopupContextWindow, :igBeginPopupContextWindow, [:pointer, :int, :bool], :bool
    attach_function :igBeginPopupModal, :igBeginPopupModal, [:pointer, :pointer, :int], :bool
    attach_function :igBeginTooltip, :igBeginTooltip, [], :void
    attach_function :igBullet, :igBullet, [], :void
    attach_function :igBulletText, :igBulletText, [:pointer, :varargs], :void
    attach_function :igButton, :igButton, [:pointer, ImVec2.by_value], :bool
    attach_function :igCalcItemWidth, :igCalcItemWidth, [], :float
    attach_function :igCalcListClipping, :igCalcListClipping, [:int, :float, :pointer, :pointer], :void
    attach_function :igCalcTextSize, :igCalcTextSize, [:pointer, :pointer, :bool, :float], ImVec2.by_value
    attach_function :igCalcTextSize_nonUDT, :igCalcTextSize_nonUDT, [:pointer, :pointer, :pointer, :bool, :float], :void
    attach_function :igCalcTextSize_nonUDT2, :igCalcTextSize_nonUDT2, [:pointer, :pointer, :bool, :float], ImVec2.by_value
    attach_function :igCaptureKeyboardFromApp, :igCaptureKeyboardFromApp, [:bool], :void
    attach_function :igCaptureMouseFromApp, :igCaptureMouseFromApp, [:bool], :void
    attach_function :igCheckbox, :igCheckbox, [:pointer, :pointer], :bool
    attach_function :igCheckboxFlags, :igCheckboxFlags, [:pointer, :pointer, :uint], :bool
    attach_function :igCloseCurrentPopup, :igCloseCurrentPopup, [], :void
    attach_function :igCollapsingHeader, :igCollapsingHeader, [:pointer, :int], :bool
    attach_function :igCollapsingHeaderBoolPtr, :igCollapsingHeaderBoolPtr, [:pointer, :pointer, :int], :bool
    attach_function :igColorButton, :igColorButton, [:pointer, ImVec4.by_value, :int, ImVec2.by_value], :bool
    attach_function :igColorConvertFloat4ToU32, :igColorConvertFloat4ToU32, [ImVec4.by_value], :uint
    attach_function :igColorConvertHSVtoRGB, :igColorConvertHSVtoRGB, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :igColorConvertRGBtoHSV, :igColorConvertRGBtoHSV, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :igColorConvertU32ToFloat4, :igColorConvertU32ToFloat4, [:uint], ImVec4.by_value
    attach_function :igColorConvertU32ToFloat4_nonUDT, :igColorConvertU32ToFloat4_nonUDT, [:pointer, :uint], :void
    attach_function :igColorConvertU32ToFloat4_nonUDT2, :igColorConvertU32ToFloat4_nonUDT2, [:uint], ImVec4.by_value
    attach_function :igColorEdit3, :igColorEdit3, [:pointer, :float, :int], :bool
    attach_function :igColorEdit4, :igColorEdit4, [:pointer, :float, :int], :bool
    attach_function :igColorPicker3, :igColorPicker3, [:pointer, :float, :int], :bool
    attach_function :igColorPicker4, :igColorPicker4, [:pointer, :float, :int, :pointer], :bool
    attach_function :igColumns, :igColumns, [:int, :pointer, :bool], :void
    attach_function :igCombo, :igCombo, [:pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igComboStr, :igComboStr, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :igComboFnPtr, :igComboFnPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igCreateContext, :igCreateContext, [:pointer], :pointer
    attach_function :igDebugCheckVersionAndDataLayout, :igDebugCheckVersionAndDataLayout, [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t], :bool
    attach_function :igDestroyContext, :igDestroyContext, [:pointer], :void
    attach_function :igDragFloat, :igDragFloat, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat2, :igDragFloat2, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat3, :igDragFloat3, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat4, :igDragFloat4, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloatRange2, :igDragFloatRange2, [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :float], :bool
    attach_function :igDragInt, :igDragInt, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt2, :igDragInt2, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt3, :igDragInt3, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt4, :igDragInt4, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :igDragIntRange2, :igDragIntRange2, [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer], :bool
    attach_function :igDragScalar, :igDragScalar, [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :float], :bool
    attach_function :igDragScalarN, :igDragScalarN, [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :float], :bool
    attach_function :igDummy, :igDummy, [ImVec2.by_value], :void
    attach_function :igEnd, :igEnd, [], :void
    attach_function :igEndChild, :igEndChild, [], :void
    attach_function :igEndChildFrame, :igEndChildFrame, [], :void
    attach_function :igEndCombo, :igEndCombo, [], :void
    attach_function :igEndDragDropSource, :igEndDragDropSource, [], :void
    attach_function :igEndDragDropTarget, :igEndDragDropTarget, [], :void
    attach_function :igEndFrame, :igEndFrame, [], :void
    attach_function :igEndGroup, :igEndGroup, [], :void
    attach_function :igEndMainMenuBar, :igEndMainMenuBar, [], :void
    attach_function :igEndMenu, :igEndMenu, [], :void
    attach_function :igEndMenuBar, :igEndMenuBar, [], :void
    attach_function :igEndPopup, :igEndPopup, [], :void
    attach_function :igEndTooltip, :igEndTooltip, [], :void
    attach_function :igGetClipboardText, :igGetClipboardText, [], :pointer
    attach_function :igGetColorU32, :igGetColorU32, [:int, :float], :uint
    attach_function :igGetColorU32Vec4, :igGetColorU32Vec4, [ImVec4.by_value], :uint
    attach_function :igGetColorU32U32, :igGetColorU32U32, [:uint], :uint
    attach_function :igGetColumnIndex, :igGetColumnIndex, [], :int
    attach_function :igGetColumnOffset, :igGetColumnOffset, [:int], :float
    attach_function :igGetColumnWidth, :igGetColumnWidth, [:int], :float
    attach_function :igGetColumnsCount, :igGetColumnsCount, [], :int
    attach_function :igGetContentRegionAvail, :igGetContentRegionAvail, [], ImVec2.by_value
    attach_function :igGetContentRegionAvail_nonUDT, :igGetContentRegionAvail_nonUDT, [:pointer], :void
    attach_function :igGetContentRegionAvail_nonUDT2, :igGetContentRegionAvail_nonUDT2, [], ImVec2.by_value
    attach_function :igGetContentRegionAvailWidth, :igGetContentRegionAvailWidth, [], :float
    attach_function :igGetContentRegionMax, :igGetContentRegionMax, [], ImVec2.by_value
    attach_function :igGetContentRegionMax_nonUDT, :igGetContentRegionMax_nonUDT, [:pointer], :void
    attach_function :igGetContentRegionMax_nonUDT2, :igGetContentRegionMax_nonUDT2, [], ImVec2.by_value
    attach_function :igGetCurrentContext, :igGetCurrentContext, [], :pointer
    attach_function :igGetCursorPos, :igGetCursorPos, [], ImVec2.by_value
    attach_function :igGetCursorPos_nonUDT, :igGetCursorPos_nonUDT, [:pointer], :void
    attach_function :igGetCursorPos_nonUDT2, :igGetCursorPos_nonUDT2, [], ImVec2.by_value
    attach_function :igGetCursorPosX, :igGetCursorPosX, [], :float
    attach_function :igGetCursorPosY, :igGetCursorPosY, [], :float
    attach_function :igGetCursorScreenPos, :igGetCursorScreenPos, [], ImVec2.by_value
    attach_function :igGetCursorScreenPos_nonUDT, :igGetCursorScreenPos_nonUDT, [:pointer], :void
    attach_function :igGetCursorScreenPos_nonUDT2, :igGetCursorScreenPos_nonUDT2, [], ImVec2.by_value
    attach_function :igGetCursorStartPos, :igGetCursorStartPos, [], ImVec2.by_value
    attach_function :igGetCursorStartPos_nonUDT, :igGetCursorStartPos_nonUDT, [:pointer], :void
    attach_function :igGetCursorStartPos_nonUDT2, :igGetCursorStartPos_nonUDT2, [], ImVec2.by_value
    attach_function :igGetDragDropPayload, :igGetDragDropPayload, [], :pointer
    attach_function :igGetDrawData, :igGetDrawData, [], :pointer
    attach_function :igGetDrawListSharedData, :igGetDrawListSharedData, [], :pointer
    attach_function :igGetFont, :igGetFont, [], :pointer
    attach_function :igGetFontSize, :igGetFontSize, [], :float
    attach_function :igGetFontTexUvWhitePixel, :igGetFontTexUvWhitePixel, [], ImVec2.by_value
    attach_function :igGetFontTexUvWhitePixel_nonUDT, :igGetFontTexUvWhitePixel_nonUDT, [:pointer], :void
    attach_function :igGetFontTexUvWhitePixel_nonUDT2, :igGetFontTexUvWhitePixel_nonUDT2, [], ImVec2.by_value
    attach_function :igGetFrameCount, :igGetFrameCount, [], :int
    attach_function :igGetFrameHeight, :igGetFrameHeight, [], :float
    attach_function :igGetFrameHeightWithSpacing, :igGetFrameHeightWithSpacing, [], :float
    attach_function :igGetIDStr, :igGetIDStr, [:pointer], :uint
    attach_function :igGetIDRange, :igGetIDRange, [:pointer, :pointer], :uint
    attach_function :igGetIDPtr, :igGetIDPtr, [:pointer], :uint
    attach_function :igGetIO, :igGetIO, [], :pointer
    attach_function :igGetItemRectMax, :igGetItemRectMax, [], ImVec2.by_value
    attach_function :igGetItemRectMax_nonUDT, :igGetItemRectMax_nonUDT, [:pointer], :void
    attach_function :igGetItemRectMax_nonUDT2, :igGetItemRectMax_nonUDT2, [], ImVec2.by_value
    attach_function :igGetItemRectMin, :igGetItemRectMin, [], ImVec2.by_value
    attach_function :igGetItemRectMin_nonUDT, :igGetItemRectMin_nonUDT, [:pointer], :void
    attach_function :igGetItemRectMin_nonUDT2, :igGetItemRectMin_nonUDT2, [], ImVec2.by_value
    attach_function :igGetItemRectSize, :igGetItemRectSize, [], ImVec2.by_value
    attach_function :igGetItemRectSize_nonUDT, :igGetItemRectSize_nonUDT, [:pointer], :void
    attach_function :igGetItemRectSize_nonUDT2, :igGetItemRectSize_nonUDT2, [], ImVec2.by_value
    attach_function :igGetKeyIndex, :igGetKeyIndex, [:int], :int
    attach_function :igGetKeyPressedAmount, :igGetKeyPressedAmount, [:int, :float, :float], :int
    attach_function :igGetMouseCursor, :igGetMouseCursor, [], :int
    attach_function :igGetMouseDragDelta, :igGetMouseDragDelta, [:int, :float], ImVec2.by_value
    attach_function :igGetMouseDragDelta_nonUDT, :igGetMouseDragDelta_nonUDT, [:pointer, :int, :float], :void
    attach_function :igGetMouseDragDelta_nonUDT2, :igGetMouseDragDelta_nonUDT2, [:int, :float], ImVec2.by_value
    attach_function :igGetMousePos, :igGetMousePos, [], ImVec2.by_value
    attach_function :igGetMousePos_nonUDT, :igGetMousePos_nonUDT, [:pointer], :void
    attach_function :igGetMousePos_nonUDT2, :igGetMousePos_nonUDT2, [], ImVec2.by_value
    attach_function :igGetMousePosOnOpeningCurrentPopup, :igGetMousePosOnOpeningCurrentPopup, [], ImVec2.by_value
    attach_function :igGetMousePosOnOpeningCurrentPopup_nonUDT, :igGetMousePosOnOpeningCurrentPopup_nonUDT, [:pointer], :void
    attach_function :igGetMousePosOnOpeningCurrentPopup_nonUDT2, :igGetMousePosOnOpeningCurrentPopup_nonUDT2, [], ImVec2.by_value
    attach_function :igGetOverlayDrawList, :igGetOverlayDrawList, [], :pointer
    attach_function :igGetScrollMaxX, :igGetScrollMaxX, [], :float
    attach_function :igGetScrollMaxY, :igGetScrollMaxY, [], :float
    attach_function :igGetScrollX, :igGetScrollX, [], :float
    attach_function :igGetScrollY, :igGetScrollY, [], :float
    attach_function :igGetStateStorage, :igGetStateStorage, [], :pointer
    attach_function :igGetStyle, :igGetStyle, [], :pointer
    attach_function :igGetStyleColorName, :igGetStyleColorName, [:int], :pointer
    attach_function :igGetStyleColorVec4, :igGetStyleColorVec4, [:int], :pointer
    attach_function :igGetTextLineHeight, :igGetTextLineHeight, [], :float
    attach_function :igGetTextLineHeightWithSpacing, :igGetTextLineHeightWithSpacing, [], :float
    attach_function :igGetTime, :igGetTime, [], :double
    attach_function :igGetTreeNodeToLabelSpacing, :igGetTreeNodeToLabelSpacing, [], :float
    attach_function :igGetVersion, :igGetVersion, [], :pointer
    attach_function :igGetWindowContentRegionMax, :igGetWindowContentRegionMax, [], ImVec2.by_value
    attach_function :igGetWindowContentRegionMax_nonUDT, :igGetWindowContentRegionMax_nonUDT, [:pointer], :void
    attach_function :igGetWindowContentRegionMax_nonUDT2, :igGetWindowContentRegionMax_nonUDT2, [], ImVec2.by_value
    attach_function :igGetWindowContentRegionMin, :igGetWindowContentRegionMin, [], ImVec2.by_value
    attach_function :igGetWindowContentRegionMin_nonUDT, :igGetWindowContentRegionMin_nonUDT, [:pointer], :void
    attach_function :igGetWindowContentRegionMin_nonUDT2, :igGetWindowContentRegionMin_nonUDT2, [], ImVec2.by_value
    attach_function :igGetWindowContentRegionWidth, :igGetWindowContentRegionWidth, [], :float
    attach_function :igGetWindowDrawList, :igGetWindowDrawList, [], :pointer
    attach_function :igGetWindowHeight, :igGetWindowHeight, [], :float
    attach_function :igGetWindowPos, :igGetWindowPos, [], ImVec2.by_value
    attach_function :igGetWindowPos_nonUDT, :igGetWindowPos_nonUDT, [:pointer], :void
    attach_function :igGetWindowPos_nonUDT2, :igGetWindowPos_nonUDT2, [], ImVec2.by_value
    attach_function :igGetWindowSize, :igGetWindowSize, [], ImVec2.by_value
    attach_function :igGetWindowSize_nonUDT, :igGetWindowSize_nonUDT, [:pointer], :void
    attach_function :igGetWindowSize_nonUDT2, :igGetWindowSize_nonUDT2, [], ImVec2.by_value
    attach_function :igGetWindowWidth, :igGetWindowWidth, [], :float
    attach_function :igImage, :igImage, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void
    attach_function :igImageButton, :igImageButton, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int, ImVec4.by_value, ImVec4.by_value], :bool
    attach_function :igIndent, :igIndent, [:float], :void
    attach_function :igInputDouble, :igInputDouble, [:pointer, :pointer, :double, :double, :pointer, :int], :bool
    attach_function :igInputFloat, :igInputFloat, [:pointer, :pointer, :float, :float, :pointer, :int], :bool
    attach_function :igInputFloat2, :igInputFloat2, [:pointer, :float, :pointer, :int], :bool
    attach_function :igInputFloat3, :igInputFloat3, [:pointer, :float, :pointer, :int], :bool
    attach_function :igInputFloat4, :igInputFloat4, [:pointer, :float, :pointer, :int], :bool
    attach_function :igInputInt, :igInputInt, [:pointer, :pointer, :int, :int, :int], :bool
    attach_function :igInputInt2, :igInputInt2, [:pointer, :int, :int], :bool
    attach_function :igInputInt3, :igInputInt3, [:pointer, :int, :int], :bool
    attach_function :igInputInt4, :igInputInt4, [:pointer, :int, :int], :bool
    attach_function :igInputScalar, :igInputScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputScalarN, :igInputScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputText, :igInputText, [:pointer, :pointer, :size_t, :int, :pointer, :pointer], :bool
    attach_function :igInputTextMultiline, :igInputTextMultiline, [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :pointer, :pointer], :bool
    attach_function :igInvisibleButton, :igInvisibleButton, [:pointer, ImVec2.by_value], :bool
    attach_function :igIsAnyItemActive, :igIsAnyItemActive, [], :bool
    attach_function :igIsAnyItemFocused, :igIsAnyItemFocused, [], :bool
    attach_function :igIsAnyItemHovered, :igIsAnyItemHovered, [], :bool
    attach_function :igIsAnyMouseDown, :igIsAnyMouseDown, [], :bool
    attach_function :igIsItemActive, :igIsItemActive, [], :bool
    attach_function :igIsItemClicked, :igIsItemClicked, [:int], :bool
    attach_function :igIsItemDeactivated, :igIsItemDeactivated, [], :bool
    attach_function :igIsItemDeactivatedAfterEdit, :igIsItemDeactivatedAfterEdit, [], :bool
    attach_function :igIsItemEdited, :igIsItemEdited, [], :bool
    attach_function :igIsItemFocused, :igIsItemFocused, [], :bool
    attach_function :igIsItemHovered, :igIsItemHovered, [:int], :bool
    attach_function :igIsItemVisible, :igIsItemVisible, [], :bool
    attach_function :igIsKeyDown, :igIsKeyDown, [:int], :bool
    attach_function :igIsKeyPressed, :igIsKeyPressed, [:int, :bool], :bool
    attach_function :igIsKeyReleased, :igIsKeyReleased, [:int], :bool
    attach_function :igIsMouseClicked, :igIsMouseClicked, [:int, :bool], :bool
    attach_function :igIsMouseDoubleClicked, :igIsMouseDoubleClicked, [:int], :bool
    attach_function :igIsMouseDown, :igIsMouseDown, [:int], :bool
    attach_function :igIsMouseDragging, :igIsMouseDragging, [:int, :float], :bool
    attach_function :igIsMouseHoveringRect, :igIsMouseHoveringRect, [ImVec2.by_value, ImVec2.by_value, :bool], :bool
    attach_function :igIsMousePosValid, :igIsMousePosValid, [:pointer], :bool
    attach_function :igIsMouseReleased, :igIsMouseReleased, [:int], :bool
    attach_function :igIsPopupOpen, :igIsPopupOpen, [:pointer], :bool
    attach_function :igIsRectVisible, :igIsRectVisible, [ImVec2.by_value], :bool
    attach_function :igIsRectVisibleVec2, :igIsRectVisibleVec2, [ImVec2.by_value, ImVec2.by_value], :bool
    attach_function :igIsWindowAppearing, :igIsWindowAppearing, [], :bool
    attach_function :igIsWindowCollapsed, :igIsWindowCollapsed, [], :bool
    attach_function :igIsWindowFocused, :igIsWindowFocused, [:int], :bool
    attach_function :igIsWindowHovered, :igIsWindowHovered, [:int], :bool
    attach_function :igLabelText, :igLabelText, [:pointer, :pointer, :varargs], :void
    attach_function :igListBoxStr_arr, :igListBoxStr_arr, [:pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igListBoxFnPtr, :igListBoxFnPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igListBoxFooter, :igListBoxFooter, [], :void
    attach_function :igListBoxHeaderVec2, :igListBoxHeaderVec2, [:pointer, ImVec2.by_value], :bool
    attach_function :igListBoxHeaderInt, :igListBoxHeaderInt, [:pointer, :int, :int], :bool
    attach_function :igLoadIniSettingsFromDisk, :igLoadIniSettingsFromDisk, [:pointer], :void
    attach_function :igLoadIniSettingsFromMemory, :igLoadIniSettingsFromMemory, [:pointer, :size_t], :void
    attach_function :igLogButtons, :igLogButtons, [], :void
    attach_function :igLogFinish, :igLogFinish, [], :void
    attach_function :igLogText, :igLogText, [:pointer, :varargs], :void
    attach_function :igLogToClipboard, :igLogToClipboard, [:int], :void
    attach_function :igLogToFile, :igLogToFile, [:int, :pointer], :void
    attach_function :igLogToTTY, :igLogToTTY, [:int], :void
    attach_function :igMemAlloc, :igMemAlloc, [:size_t], :pointer
    attach_function :igMemFree, :igMemFree, [:pointer], :void
    attach_function :igMenuItemBool, :igMenuItemBool, [:pointer, :pointer, :bool, :bool], :bool
    attach_function :igMenuItemBoolPtr, :igMenuItemBoolPtr, [:pointer, :pointer, :pointer, :bool], :bool
    attach_function :igNewFrame, :igNewFrame, [], :void
    attach_function :igNewLine, :igNewLine, [], :void
    attach_function :igNextColumn, :igNextColumn, [], :void
    attach_function :igOpenPopup, :igOpenPopup, [:pointer], :void
    attach_function :igOpenPopupOnItemClick, :igOpenPopupOnItemClick, [:pointer, :int], :bool
    attach_function :igPlotHistogramFloatPtr, :igPlotHistogramFloatPtr, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void
    attach_function :igPlotHistogramFnPtr, :igPlotHistogramFnPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void
    attach_function :igPlotLines, :igPlotLines, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void
    attach_function :igPlotLinesFnPtr, :igPlotLinesFnPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void
    attach_function :igPopAllowKeyboardFocus, :igPopAllowKeyboardFocus, [], :void
    attach_function :igPopButtonRepeat, :igPopButtonRepeat, [], :void
    attach_function :igPopClipRect, :igPopClipRect, [], :void
    attach_function :igPopFont, :igPopFont, [], :void
    attach_function :igPopID, :igPopID, [], :void
    attach_function :igPopItemWidth, :igPopItemWidth, [], :void
    attach_function :igPopStyleColor, :igPopStyleColor, [:int], :void
    attach_function :igPopStyleVar, :igPopStyleVar, [:int], :void
    attach_function :igPopTextWrapPos, :igPopTextWrapPos, [], :void
    attach_function :igProgressBar, :igProgressBar, [:float, ImVec2.by_value, :pointer], :void
    attach_function :igPushAllowKeyboardFocus, :igPushAllowKeyboardFocus, [:bool], :void
    attach_function :igPushButtonRepeat, :igPushButtonRepeat, [:bool], :void
    attach_function :igPushClipRect, :igPushClipRect, [ImVec2.by_value, ImVec2.by_value, :bool], :void
    attach_function :igPushFont, :igPushFont, [:pointer], :void
    attach_function :igPushIDStr, :igPushIDStr, [:pointer], :void
    attach_function :igPushIDRange, :igPushIDRange, [:pointer, :pointer], :void
    attach_function :igPushIDPtr, :igPushIDPtr, [:pointer], :void
    attach_function :igPushIDInt, :igPushIDInt, [:int], :void
    attach_function :igPushItemWidth, :igPushItemWidth, [:float], :void
    attach_function :igPushStyleColorU32, :igPushStyleColorU32, [:int, :uint], :void
    attach_function :igPushStyleColor, :igPushStyleColor, [:int, ImVec4.by_value], :void
    attach_function :igPushStyleVarFloat, :igPushStyleVarFloat, [:int, :float], :void
    attach_function :igPushStyleVarVec2, :igPushStyleVarVec2, [:int, ImVec2.by_value], :void
    attach_function :igPushTextWrapPos, :igPushTextWrapPos, [:float], :void
    attach_function :igRadioButtonBool, :igRadioButtonBool, [:pointer, :bool], :bool
    attach_function :igRadioButtonIntPtr, :igRadioButtonIntPtr, [:pointer, :pointer, :int], :bool
    attach_function :igRender, :igRender, [], :void
    attach_function :igResetMouseDragDelta, :igResetMouseDragDelta, [:int], :void
    attach_function :igSameLine, :igSameLine, [:float, :float], :void
    attach_function :igSaveIniSettingsToDisk, :igSaveIniSettingsToDisk, [:pointer], :void
    attach_function :igSaveIniSettingsToMemory, :igSaveIniSettingsToMemory, [:pointer], :pointer
    attach_function :igSelectable, :igSelectable, [:pointer, :bool, :int, ImVec2.by_value], :bool
    attach_function :igSelectableBoolPtr, :igSelectableBoolPtr, [:pointer, :pointer, :int, ImVec2.by_value], :bool
    attach_function :igSeparator, :igSeparator, [], :void
    attach_function :igSetAllocatorFunctions, :igSetAllocatorFunctions, [:pointer, :pointer, :pointer], :void
    attach_function :igSetClipboardText, :igSetClipboardText, [:pointer], :void
    attach_function :igSetColorEditOptions, :igSetColorEditOptions, [:int], :void
    attach_function :igSetColumnOffset, :igSetColumnOffset, [:int, :float], :void
    attach_function :igSetColumnWidth, :igSetColumnWidth, [:int, :float], :void
    attach_function :igSetCurrentContext, :igSetCurrentContext, [:pointer], :void
    attach_function :igSetCursorPos, :igSetCursorPos, [ImVec2.by_value], :void
    attach_function :igSetCursorPosX, :igSetCursorPosX, [:float], :void
    attach_function :igSetCursorPosY, :igSetCursorPosY, [:float], :void
    attach_function :igSetCursorScreenPos, :igSetCursorScreenPos, [ImVec2.by_value], :void
    attach_function :igSetDragDropPayload, :igSetDragDropPayload, [:pointer, :pointer, :size_t, :int], :bool
    attach_function :igSetItemAllowOverlap, :igSetItemAllowOverlap, [], :void
    attach_function :igSetItemDefaultFocus, :igSetItemDefaultFocus, [], :void
    attach_function :igSetKeyboardFocusHere, :igSetKeyboardFocusHere, [:int], :void
    attach_function :igSetMouseCursor, :igSetMouseCursor, [:int], :void
    attach_function :igSetNextTreeNodeOpen, :igSetNextTreeNodeOpen, [:bool, :int], :void
    attach_function :igSetNextWindowBgAlpha, :igSetNextWindowBgAlpha, [:float], :void
    attach_function :igSetNextWindowCollapsed, :igSetNextWindowCollapsed, [:bool, :int], :void
    attach_function :igSetNextWindowContentSize, :igSetNextWindowContentSize, [ImVec2.by_value], :void
    attach_function :igSetNextWindowFocus, :igSetNextWindowFocus, [], :void
    attach_function :igSetNextWindowPos, :igSetNextWindowPos, [ImVec2.by_value, :int, ImVec2.by_value], :void
    attach_function :igSetNextWindowSize, :igSetNextWindowSize, [ImVec2.by_value, :int], :void
    attach_function :igSetNextWindowSizeConstraints, :igSetNextWindowSizeConstraints, [ImVec2.by_value, ImVec2.by_value, :pointer, :pointer], :void
    attach_function :igSetScrollFromPosY, :igSetScrollFromPosY, [:float, :float], :void
    attach_function :igSetScrollHereY, :igSetScrollHereY, [:float], :void
    attach_function :igSetScrollX, :igSetScrollX, [:float], :void
    attach_function :igSetScrollY, :igSetScrollY, [:float], :void
    attach_function :igSetStateStorage, :igSetStateStorage, [:pointer], :void
    attach_function :igSetTooltip, :igSetTooltip, [:pointer, :varargs], :void
    attach_function :igSetWindowCollapsedBool, :igSetWindowCollapsedBool, [:bool, :int], :void
    attach_function :igSetWindowCollapsedStr, :igSetWindowCollapsedStr, [:pointer, :bool, :int], :void
    attach_function :igSetWindowFocus, :igSetWindowFocus, [], :void
    attach_function :igSetWindowFocusStr, :igSetWindowFocusStr, [:pointer], :void
    attach_function :igSetWindowFontScale, :igSetWindowFontScale, [:float], :void
    attach_function :igSetWindowPosVec2, :igSetWindowPosVec2, [ImVec2.by_value, :int], :void
    attach_function :igSetWindowPosStr, :igSetWindowPosStr, [:pointer, ImVec2.by_value, :int], :void
    attach_function :igSetWindowSizeVec2, :igSetWindowSizeVec2, [ImVec2.by_value, :int], :void
    attach_function :igSetWindowSizeStr, :igSetWindowSizeStr, [:pointer, ImVec2.by_value, :int], :void
    attach_function :igShowAboutWindow, :igShowAboutWindow, [:pointer], :void
    attach_function :igShowDemoWindow, :igShowDemoWindow, [:pointer], :void
    attach_function :igShowFontSelector, :igShowFontSelector, [:pointer], :void
    attach_function :igShowMetricsWindow, :igShowMetricsWindow, [:pointer], :void
    attach_function :igShowStyleEditor, :igShowStyleEditor, [:pointer], :void
    attach_function :igShowStyleSelector, :igShowStyleSelector, [:pointer], :bool
    attach_function :igShowUserGuide, :igShowUserGuide, [], :void
    attach_function :igSliderAngle, :igSliderAngle, [:pointer, :pointer, :float, :float, :pointer], :bool
    attach_function :igSliderFloat, :igSliderFloat, [:pointer, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :igSliderFloat2, :igSliderFloat2, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igSliderFloat3, :igSliderFloat3, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igSliderFloat4, :igSliderFloat4, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igSliderInt, :igSliderInt, [:pointer, :pointer, :int, :int, :pointer], :bool
    attach_function :igSliderInt2, :igSliderInt2, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :igSliderInt3, :igSliderInt3, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :igSliderInt4, :igSliderInt4, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :igSliderScalar, :igSliderScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :float], :bool
    attach_function :igSliderScalarN, :igSliderScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :float], :bool
    attach_function :igSmallButton, :igSmallButton, [:pointer], :bool
    attach_function :igSpacing, :igSpacing, [], :void
    attach_function :igStyleColorsClassic, :igStyleColorsClassic, [:pointer], :void
    attach_function :igStyleColorsDark, :igStyleColorsDark, [:pointer], :void
    attach_function :igStyleColorsLight, :igStyleColorsLight, [:pointer], :void
    attach_function :igText, :igText, [:pointer, :varargs], :void
    attach_function :igTextColored, :igTextColored, [ImVec4.by_value, :pointer, :varargs], :void
    attach_function :igTextDisabled, :igTextDisabled, [:pointer, :varargs], :void
    attach_function :igTextUnformatted, :igTextUnformatted, [:pointer, :pointer], :void
    attach_function :igTextWrapped, :igTextWrapped, [:pointer, :varargs], :void
    attach_function :igTreeAdvanceToLabelPos, :igTreeAdvanceToLabelPos, [], :void
    attach_function :igTreeNodeStr, :igTreeNodeStr, [:pointer], :bool
    attach_function :igTreeNodeStrStr, :igTreeNodeStrStr, [:pointer, :pointer, :varargs], :bool
    attach_function :igTreeNodePtr, :igTreeNodePtr, [:pointer, :pointer, :varargs], :bool
    attach_function :igTreeNodeExStr, :igTreeNodeExStr, [:pointer, :int], :bool
    attach_function :igTreeNodeExStrStr, :igTreeNodeExStrStr, [:pointer, :int, :pointer, :varargs], :bool
    attach_function :igTreeNodeExPtr, :igTreeNodeExPtr, [:pointer, :int, :pointer, :varargs], :bool
    attach_function :igTreePop, :igTreePop, [], :void
    attach_function :igTreePushStr, :igTreePushStr, [:pointer], :void
    attach_function :igTreePushPtr, :igTreePushPtr, [:pointer], :void
    attach_function :igUnindent, :igUnindent, [:float], :void
    attach_function :igVSliderFloat, :igVSliderFloat, [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :igVSliderInt, :igVSliderInt, [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer], :bool
    attach_function :igVSliderScalar, :igVSliderScalar, [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :float], :bool
    attach_function :igValueBool, :igValueBool, [:pointer, :bool], :void
    attach_function :igValueInt, :igValueInt, [:pointer, :int], :void
    attach_function :igValueUint, :igValueUint, [:pointer, :uint], :void
    attach_function :igValueFloat, :igValueFloat, [:pointer, :float, :pointer], :void
    attach_function :ImGui_ImplGlfw_CharCallback, :ImGui_ImplGlfw_CharCallback, [:pointer, :uint], :void
    attach_function :ImGui_ImplGlfw_InitForOpenGL, :ImGui_ImplGlfw_InitForOpenGL, [:pointer, :bool], :bool
    attach_function :ImGui_ImplGlfw_InitForVulkan, :ImGui_ImplGlfw_InitForVulkan, [:pointer, :bool], :bool
    attach_function :ImGui_ImplGlfw_KeyCallback, :ImGui_ImplGlfw_KeyCallback, [:pointer, :int, :int, :int, :int], :void
    attach_function :ImGui_ImplGlfw_MouseButtonCallback, :ImGui_ImplGlfw_MouseButtonCallback, [:pointer, :int, :int, :int], :void
    attach_function :ImGui_ImplGlfw_NewFrame, :ImGui_ImplGlfw_NewFrame, [], :void
    attach_function :ImGui_ImplGlfw_ScrollCallback, :ImGui_ImplGlfw_ScrollCallback, [:pointer, :double, :double], :void
    attach_function :ImGui_ImplGlfw_Shutdown, :ImGui_ImplGlfw_Shutdown, [], :void
    attach_function :ImGui_ImplOpenGL2_CreateDeviceObjects, :ImGui_ImplOpenGL2_CreateDeviceObjects, [], :bool
    attach_function :ImGui_ImplOpenGL2_CreateFontsTexture, :ImGui_ImplOpenGL2_CreateFontsTexture, [], :bool
    attach_function :ImGui_ImplOpenGL2_DestroyDeviceObjects, :ImGui_ImplOpenGL2_DestroyDeviceObjects, [], :void
    attach_function :ImGui_ImplOpenGL2_DestroyFontsTexture, :ImGui_ImplOpenGL2_DestroyFontsTexture, [], :void
    attach_function :ImGui_ImplOpenGL2_Init, :ImGui_ImplOpenGL2_Init, [], :bool
    attach_function :ImGui_ImplOpenGL2_NewFrame, :ImGui_ImplOpenGL2_NewFrame, [], :void
    attach_function :ImGui_ImplOpenGL2_RenderDrawData, :ImGui_ImplOpenGL2_RenderDrawData, [:pointer], :void
    attach_function :ImGui_ImplOpenGL2_Shutdown, :ImGui_ImplOpenGL2_Shutdown, [], :void
  end # self.import_symbols

end # module ImGui
