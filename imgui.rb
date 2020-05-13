# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

FFI.typedef :int, :ImDrawCornerFlags
FFI.typedef :ushort, :ImDrawIdx
FFI.typedef :int, :ImDrawListFlags
FFI.typedef :int, :ImFontAtlasFlags
FFI.typedef :int, :ImGuiBackendFlags
FFI.typedef :int, :ImGuiCol
FFI.typedef :int, :ImGuiColorEditFlags
FFI.typedef :int, :ImGuiComboFlags
FFI.typedef :int, :ImGuiCond
FFI.typedef :int, :ImGuiConfigFlags
FFI.typedef :int, :ImGuiDataType
FFI.typedef :int, :ImGuiDir
FFI.typedef :int, :ImGuiDragDropFlags
FFI.typedef :int, :ImGuiFocusedFlags
FFI.typedef :int, :ImGuiHoveredFlags
FFI.typedef :uint, :ImGuiID
FFI.typedef :int, :ImGuiInputTextFlags
FFI.typedef :int, :ImGuiKey
FFI.typedef :int, :ImGuiKeyModFlags
FFI.typedef :int, :ImGuiMouseButton
FFI.typedef :int, :ImGuiMouseCursor
FFI.typedef :int, :ImGuiNavInput
FFI.typedef :int, :ImGuiSelectableFlags
FFI.typedef :int, :ImGuiStyleVar
FFI.typedef :int, :ImGuiTabBarFlags
FFI.typedef :int, :ImGuiTabItemFlags
FFI.typedef :int, :ImGuiTreeNodeFlags
FFI.typedef :int, :ImGuiWindowFlags
FFI.typedef :short, :ImS16
FFI.typedef :int, :ImS32
FFI.typedef :int64, :ImS64
FFI.typedef :char, :ImS8
FFI.typedef :pointer, :ImTextureID
FFI.typedef :ushort, :ImU16
FFI.typedef :uint, :ImU32
FFI.typedef :uint64, :ImU64
FFI.typedef :uchar, :ImU8
FFI.typedef :ushort, :ImWchar
FFI.typedef :ushort, :ImWchar16
FFI.typedef :uint, :ImWchar32

# ImDrawCornerFlags_
ImDrawCornerFlags_None = 0 # 0
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
ImDrawListFlags_AllowVtxOffset = 4 # 1 << 2

# ImFontAtlasFlags_
ImFontAtlasFlags_None = 0 # 0
ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 1 << 0
ImFontAtlasFlags_NoMouseCursors = 2 # 1 << 1

# ImGuiBackendFlags_
ImGuiBackendFlags_None = 0 # 0
ImGuiBackendFlags_HasGamepad = 1 # 1 << 0
ImGuiBackendFlags_HasMouseCursors = 2 # 1 << 1
ImGuiBackendFlags_HasSetMousePos = 4 # 1 << 2
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 1 << 3

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
ImGuiCol_Tab = 33 # 33
ImGuiCol_TabHovered = 34 # 34
ImGuiCol_TabActive = 35 # 35
ImGuiCol_TabUnfocused = 36 # 36
ImGuiCol_TabUnfocusedActive = 37 # 37
ImGuiCol_PlotLines = 38 # 38
ImGuiCol_PlotLinesHovered = 39 # 39
ImGuiCol_PlotHistogram = 40 # 40
ImGuiCol_PlotHistogramHovered = 41 # 41
ImGuiCol_TextSelectedBg = 42 # 42
ImGuiCol_DragDropTarget = 43 # 43
ImGuiCol_NavHighlight = 44 # 44
ImGuiCol_NavWindowingHighlight = 45 # 45
ImGuiCol_NavWindowingDimBg = 46 # 46
ImGuiCol_ModalWindowDimBg = 47 # 47
ImGuiCol_COUNT = 48 # 48

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
ImGuiColorEditFlags_NoBorder = 1024 # 1 << 10
ImGuiColorEditFlags_AlphaBar = 65536 # 1 << 16
ImGuiColorEditFlags_AlphaPreview = 131072 # 1 << 17
ImGuiColorEditFlags_AlphaPreviewHalf = 262144 # 1 << 18
ImGuiColorEditFlags_HDR = 524288 # 1 << 19
ImGuiColorEditFlags_DisplayRGB = 1048576 # 1 << 20
ImGuiColorEditFlags_DisplayHSV = 2097152 # 1 << 21
ImGuiColorEditFlags_DisplayHex = 4194304 # 1 << 22
ImGuiColorEditFlags_Uint8 = 8388608 # 1 << 23
ImGuiColorEditFlags_Float = 16777216 # 1 << 24
ImGuiColorEditFlags_PickerHueBar = 33554432 # 1 << 25
ImGuiColorEditFlags_PickerHueWheel = 67108864 # 1 << 26
ImGuiColorEditFlags_InputRGB = 134217728 # 1 << 27
ImGuiColorEditFlags_InputHSV = 268435456 # 1 << 28
ImGuiColorEditFlags__OptionsDefault = 177209344 # ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_DisplayRGB|ImGuiColorEditFlags_InputRGB|ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags__DisplayMask = 7340032 # ImGuiColorEditFlags_DisplayRGB|ImGuiColorEditFlags_DisplayHSV|ImGuiColorEditFlags_DisplayHex
ImGuiColorEditFlags__DataTypeMask = 25165824 # ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_Float
ImGuiColorEditFlags__PickerMask = 100663296 # ImGuiColorEditFlags_PickerHueWheel|ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags__InputMask = 402653184 # ImGuiColorEditFlags_InputRGB|ImGuiColorEditFlags_InputHSV

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
ImGuiDataType_S8 = 0 # 0
ImGuiDataType_U8 = 1 # 1
ImGuiDataType_S16 = 2 # 2
ImGuiDataType_U16 = 3 # 3
ImGuiDataType_S32 = 4 # 4
ImGuiDataType_U32 = 5 # 5
ImGuiDataType_S64 = 6 # 6
ImGuiDataType_U64 = 7 # 7
ImGuiDataType_Float = 8 # 8
ImGuiDataType_Double = 9 # 9
ImGuiDataType_COUNT = 10 # 10

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
ImGuiInputTextFlags_NoMarkEdited = 2097152 # 1 << 21

# ImGuiKeyModFlags_
ImGuiKeyModFlags_None = 0 # 0
ImGuiKeyModFlags_Ctrl = 1 # 1 << 0
ImGuiKeyModFlags_Shift = 2 # 1 << 1
ImGuiKeyModFlags_Alt = 4 # 1 << 2
ImGuiKeyModFlags_Super = 8 # 1 << 3

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
ImGuiKey_KeyPadEnter = 15 # 15
ImGuiKey_A = 16 # 16
ImGuiKey_C = 17 # 17
ImGuiKey_V = 18 # 18
ImGuiKey_X = 19 # 19
ImGuiKey_Y = 20 # 20
ImGuiKey_Z = 21 # 21
ImGuiKey_COUNT = 22 # 22

# ImGuiMouseButton_
ImGuiMouseButton_Left = 0 # 0
ImGuiMouseButton_Right = 1 # 1
ImGuiMouseButton_Middle = 2 # 2
ImGuiMouseButton_COUNT = 5 # 5

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
ImGuiMouseCursor_NotAllowed = 8 # 8
ImGuiMouseCursor_COUNT = 9 # 9

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
ImGuiSelectableFlags_AllowItemOverlap = 16 # 1 << 4

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
ImGuiStyleVar_TabRounding = 20 # 20
ImGuiStyleVar_ButtonTextAlign = 21 # 21
ImGuiStyleVar_SelectableTextAlign = 22 # 22
ImGuiStyleVar_COUNT = 23 # 23

# ImGuiTabBarFlags_
ImGuiTabBarFlags_None = 0 # 0
ImGuiTabBarFlags_Reorderable = 1 # 1 << 0
ImGuiTabBarFlags_AutoSelectNewTabs = 2 # 1 << 1
ImGuiTabBarFlags_TabListPopupButton = 4 # 1 << 2
ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8 # 1 << 3
ImGuiTabBarFlags_NoTabListScrollingButtons = 16 # 1 << 4
ImGuiTabBarFlags_NoTooltip = 32 # 1 << 5
ImGuiTabBarFlags_FittingPolicyResizeDown = 64 # 1 << 6
ImGuiTabBarFlags_FittingPolicyScroll = 128 # 1 << 7
ImGuiTabBarFlags_FittingPolicyMask_ = 192 # ImGuiTabBarFlags_FittingPolicyResizeDown | ImGuiTabBarFlags_FittingPolicyScroll
ImGuiTabBarFlags_FittingPolicyDefault_ = 64 # ImGuiTabBarFlags_FittingPolicyResizeDown

# ImGuiTabItemFlags_
ImGuiTabItemFlags_None = 0 # 0
ImGuiTabItemFlags_UnsavedDocument = 1 # 1 << 0
ImGuiTabItemFlags_SetSelected = 2 # 1 << 1
ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4 # 1 << 2
ImGuiTabItemFlags_NoPushId = 8 # 1 << 3

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
ImGuiTreeNodeFlags_SpanAvailWidth = 2048 # 1 << 11
ImGuiTreeNodeFlags_SpanFullWidth = 4096 # 1 << 12
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
ImGuiWindowFlags_UnsavedDocument = 1048576 # 1 << 20
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

class ImVector < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImDrawVert < FFI::Struct
  layout(
    :pos, ImVec2.by_value,
    :uv, ImVec2.by_value,
    :col, :uint
  )
end

class ImDrawListSplitter < FFI::Struct
  layout(
    :_Current, :int,
    :_Count, :int,
    :_Channels, ImVector.by_value
  )
end

class ImDrawList < FFI::Struct
  layout(
    :CmdBuffer, ImVector.by_value,
    :IdxBuffer, ImVector.by_value,
    :VtxBuffer, ImVector.by_value,
    :Flags, :int,
    :_Data, :pointer,
    :_OwnerName, :pointer,
    :_VtxCurrentOffset, :uint,
    :_VtxCurrentIdx, :uint,
    :_VtxWritePtr, ImDrawVert.ptr,
    :_IdxWritePtr, :pointer,
    :_ClipRectStack, ImVector.by_value,
    :_TextureIdStack, ImVector.by_value,
    :_Path, ImVector.by_value,
    :_Splitter, ImDrawListSplitter.by_value
  )

  def AddBezierCurve(p1, p2, p3, p4, col, thickness, num_segments = 0)
    ImGui::ImDrawList_AddBezierCurve(self, p1, p2, p3, p4, col, thickness, num_segments)
  end

  def AddCallback(callback, callback_data)
    ImGui::ImDrawList_AddCallback(self, callback, callback_data)
  end

  def AddCircle(center, radius, col, num_segments = 12, thickness = 1.0)
    ImGui::ImDrawList_AddCircle(self, center, radius, col, num_segments, thickness)
  end

  def AddCircleFilled(center, radius, col, num_segments = 12)
    ImGui::ImDrawList_AddCircleFilled(self, center, radius, col, num_segments)
  end

  def AddConvexPolyFilled(points, num_points, col)
    ImGui::ImDrawList_AddConvexPolyFilled(self, points, num_points, col)
  end

  def AddDrawCmd()
    ImGui::ImDrawList_AddDrawCmd(self)
  end

  def AddImage(user_texture_id, p_min, p_max, uv_min = ImVec2.create(0,0), uv_max = ImVec2.create(1,1), col = ImColor.create(255,255,255,255))
    ImGui::ImDrawList_AddImage(self, user_texture_id, p_min, p_max, uv_min, uv_max, col)
  end

  def AddImageQuad(user_texture_id, p1, p2, p3, p4, uv1 = ImVec2.create(0,0), uv2 = ImVec2.create(1,0), uv3 = ImVec2.create(1,1), uv4 = ImVec2.create(0,1), col = ImColor.create(255,255,255,255))
    ImGui::ImDrawList_AddImageQuad(self, user_texture_id, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col)
  end

  def AddImageRounded(user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, rounding_corners = ImDrawCornerFlags_All)
    ImGui::ImDrawList_AddImageRounded(self, user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, rounding_corners)
  end

  def AddLine(p1, p2, col, thickness = 1.0)
    ImGui::ImDrawList_AddLine(self, p1, p2, col, thickness)
  end

  def AddNgon(center, radius, col, num_segments, thickness = 1.0)
    ImGui::ImDrawList_AddNgon(self, center, radius, col, num_segments, thickness)
  end

  def AddNgonFilled(center, radius, col, num_segments)
    ImGui::ImDrawList_AddNgonFilled(self, center, radius, col, num_segments)
  end

  def AddPolyline(points, num_points, col, closed, thickness)
    ImGui::ImDrawList_AddPolyline(self, points, num_points, col, closed, thickness)
  end

  def AddQuad(p1, p2, p3, p4, col, thickness = 1.0)
    ImGui::ImDrawList_AddQuad(self, p1, p2, p3, p4, col, thickness)
  end

  def AddQuadFilled(p1, p2, p3, p4, col)
    ImGui::ImDrawList_AddQuadFilled(self, p1, p2, p3, p4, col)
  end

  def AddRect(p_min, p_max, col, rounding = 0.0, rounding_corners = ImDrawCornerFlags_All, thickness = 1.0)
    ImGui::ImDrawList_AddRect(self, p_min, p_max, col, rounding, rounding_corners, thickness)
  end

  def AddRectFilled(p_min, p_max, col, rounding = 0.0, rounding_corners = ImDrawCornerFlags_All)
    ImGui::ImDrawList_AddRectFilled(self, p_min, p_max, col, rounding, rounding_corners)
  end

  def AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
    ImGui::ImDrawList_AddRectFilledMultiColor(self, p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
  end

  def AddTextVec2(pos, col, text_begin, text_end = nil)
    ImGui::ImDrawList_AddTextVec2(self, pos, col, text_begin, text_end)
  end

  def AddTextFontPtr(font, font_size, pos, col, text_begin, text_end = nil, wrap_width = 0.0, cpu_fine_clip_rect = nil)
    ImGui::ImDrawList_AddTextFontPtr(self, font, font_size, pos, col, text_begin, text_end, wrap_width, cpu_fine_clip_rect)
  end

  def AddTriangle(p1, p2, p3, col, thickness = 1.0)
    ImGui::ImDrawList_AddTriangle(self, p1, p2, p3, col, thickness)
  end

  def AddTriangleFilled(p1, p2, p3, col)
    ImGui::ImDrawList_AddTriangleFilled(self, p1, p2, p3, col)
  end

  def ChannelsMerge()
    ImGui::ImDrawList_ChannelsMerge(self)
  end

  def ChannelsSetCurrent(n)
    ImGui::ImDrawList_ChannelsSetCurrent(self, n)
  end

  def ChannelsSplit(count)
    ImGui::ImDrawList_ChannelsSplit(self, count)
  end

  def Clear()
    ImGui::ImDrawList_Clear(self)
  end

  def ClearFreeMemory()
    ImGui::ImDrawList_ClearFreeMemory(self)
  end

  def CloneOutput()
    ImGui::ImDrawList_CloneOutput(self)
  end

  def GetClipRectMax()
    pOut = ImVec2.new
    ImGui::ImDrawList_GetClipRectMax(pOut, self)
    return pOut
  end

  def GetClipRectMin()
    pOut = ImVec2.new
    ImGui::ImDrawList_GetClipRectMin(pOut, self)
    return pOut
  end

  def self.create(shared_data)
    return ImDrawList.new(ImGui::ImDrawList_ImDrawList(shared_data))
  end

  def PathArcTo(center, radius, a_min, a_max, num_segments = 10)
    ImGui::ImDrawList_PathArcTo(self, center, radius, a_min, a_max, num_segments)
  end

  def PathArcToFast(center, radius, a_min_of_12, a_max_of_12)
    ImGui::ImDrawList_PathArcToFast(self, center, radius, a_min_of_12, a_max_of_12)
  end

  def PathBezierCurveTo(p2, p3, p4, num_segments = 0)
    ImGui::ImDrawList_PathBezierCurveTo(self, p2, p3, p4, num_segments)
  end

  def PathClear()
    ImGui::ImDrawList_PathClear(self)
  end

  def PathFillConvex(col)
    ImGui::ImDrawList_PathFillConvex(self, col)
  end

  def PathLineTo(pos)
    ImGui::ImDrawList_PathLineTo(self, pos)
  end

  def PathLineToMergeDuplicate(pos)
    ImGui::ImDrawList_PathLineToMergeDuplicate(self, pos)
  end

  def PathRect(rect_min, rect_max, rounding = 0.0, rounding_corners = ImDrawCornerFlags_All)
    ImGui::ImDrawList_PathRect(self, rect_min, rect_max, rounding, rounding_corners)
  end

  def PathStroke(col, closed, thickness = 1.0)
    ImGui::ImDrawList_PathStroke(self, col, closed, thickness)
  end

  def PopClipRect()
    ImGui::ImDrawList_PopClipRect(self)
  end

  def PopTextureID()
    ImGui::ImDrawList_PopTextureID(self)
  end

  def PrimQuadUV(a, b, c, d, uv_a, uv_b, uv_c, uv_d, col)
    ImGui::ImDrawList_PrimQuadUV(self, a, b, c, d, uv_a, uv_b, uv_c, uv_d, col)
  end

  def PrimRect(a, b, col)
    ImGui::ImDrawList_PrimRect(self, a, b, col)
  end

  def PrimRectUV(a, b, uv_a, uv_b, col)
    ImGui::ImDrawList_PrimRectUV(self, a, b, uv_a, uv_b, col)
  end

  def PrimReserve(idx_count, vtx_count)
    ImGui::ImDrawList_PrimReserve(self, idx_count, vtx_count)
  end

  def PrimUnreserve(idx_count, vtx_count)
    ImGui::ImDrawList_PrimUnreserve(self, idx_count, vtx_count)
  end

  def PrimVtx(pos, uv, col)
    ImGui::ImDrawList_PrimVtx(self, pos, uv, col)
  end

  def PrimWriteIdx(idx)
    ImGui::ImDrawList_PrimWriteIdx(self, idx)
  end

  def PrimWriteVtx(pos, uv, col)
    ImGui::ImDrawList_PrimWriteVtx(self, pos, uv, col)
  end

  def PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect = false)
    ImGui::ImDrawList_PushClipRect(self, clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  def PushClipRectFullScreen()
    ImGui::ImDrawList_PushClipRectFullScreen(self)
  end

  def PushTextureID(texture_id)
    ImGui::ImDrawList_PushTextureID(self, texture_id)
  end

  def UpdateClipRect()
    ImGui::ImDrawList_UpdateClipRect(self)
  end

  def UpdateTextureID()
    ImGui::ImDrawList_UpdateTextureID(self)
  end

  def destroy()
    ImGui::ImDrawList_destroy(self)
  end

end

class ImFontAtlas < FFI::Struct
  layout(
    :Locked, :bool,
    :Flags, :int,
    :TexID, :pointer,
    :TexDesiredWidth, :int,
    :TexGlyphPadding, :int,
    :TexPixelsAlpha8, :pointer,
    :TexPixelsRGBA32, :pointer,
    :TexWidth, :int,
    :TexHeight, :int,
    :TexUvScale, ImVec2.by_value,
    :TexUvWhitePixel, ImVec2.by_value,
    :Fonts, ImVector.by_value,
    :CustomRects, ImVector.by_value,
    :ConfigData, ImVector.by_value,
    :CustomRectIds, [:int, 1]
  )

  def AddCustomRectFontGlyph(font, id, width, height, advance_x, offset = ImVec2.create(0,0))
    ImGui::ImFontAtlas_AddCustomRectFontGlyph(self, font, id, width, height, advance_x, offset)
  end

  def AddCustomRectRegular(id, width, height)
    ImGui::ImFontAtlas_AddCustomRectRegular(self, id, width, height)
  end

  def AddFont(font_cfg)
    ImGui::ImFontAtlas_AddFont(self, font_cfg)
  end

  def AddFontDefault(font_cfg = nil)
    ImGui::ImFontAtlas_AddFontDefault(self, font_cfg)
  end

  def AddFontFromFileTTF(filename, size_pixels, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromFileTTF(self, filename, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryCompressedBase85TTF(compressed_font_data_base85, size_pixels, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self, compressed_font_data_base85, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryCompressedTTF(compressed_font_data, compressed_font_size, size_pixels, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryCompressedTTF(self, compressed_font_data, compressed_font_size, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryTTF(font_data, font_size, size_pixels, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryTTF(self, font_data, font_size, size_pixels, font_cfg, glyph_ranges)
  end

  def Build()
    ImGui::ImFontAtlas_Build(self)
  end

  def CalcCustomRectUV(rect, out_uv_min, out_uv_max)
    ImGui::ImFontAtlas_CalcCustomRectUV(self, rect, out_uv_min, out_uv_max)
  end

  def Clear()
    ImGui::ImFontAtlas_Clear(self)
  end

  def ClearFonts()
    ImGui::ImFontAtlas_ClearFonts(self)
  end

  def ClearInputData()
    ImGui::ImFontAtlas_ClearInputData(self)
  end

  def ClearTexData()
    ImGui::ImFontAtlas_ClearTexData(self)
  end

  def GetCustomRectByIndex(index)
    ImGui::ImFontAtlas_GetCustomRectByIndex(self, index)
  end

  def GetGlyphRangesChineseFull()
    ImGui::ImFontAtlas_GetGlyphRangesChineseFull(self)
  end

  def GetGlyphRangesChineseSimplifiedCommon()
    ImGui::ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self)
  end

  def GetGlyphRangesCyrillic()
    ImGui::ImFontAtlas_GetGlyphRangesCyrillic(self)
  end

  def GetGlyphRangesDefault()
    ImGui::ImFontAtlas_GetGlyphRangesDefault(self)
  end

  def GetGlyphRangesJapanese()
    ImGui::ImFontAtlas_GetGlyphRangesJapanese(self)
  end

  def GetGlyphRangesKorean()
    ImGui::ImFontAtlas_GetGlyphRangesKorean(self)
  end

  def GetGlyphRangesThai()
    ImGui::ImFontAtlas_GetGlyphRangesThai(self)
  end

  def GetGlyphRangesVietnamese()
    ImGui::ImFontAtlas_GetGlyphRangesVietnamese(self)
  end

  def GetMouseCursorTexData(cursor, out_offset, out_size, out_uv_border, out_uv_fill)
    ImGui::ImFontAtlas_GetMouseCursorTexData(self, cursor, out_offset, out_size, out_uv_border, out_uv_fill)
  end

  def GetTexDataAsAlpha8(out_pixels, out_width, out_height, out_bytes_per_pixel = nil)
    ImGui::ImFontAtlas_GetTexDataAsAlpha8(self, out_pixels, out_width, out_height, out_bytes_per_pixel)
  end

  def GetTexDataAsRGBA32(out_pixels, out_width, out_height, out_bytes_per_pixel = nil)
    ImGui::ImFontAtlas_GetTexDataAsRGBA32(self, out_pixels, out_width, out_height, out_bytes_per_pixel)
  end

  def self.create()
    return ImFontAtlas.new(ImGui::ImFontAtlas_ImFontAtlas())
  end

  def IsBuilt()
    ImGui::ImFontAtlas_IsBuilt(self)
  end

  def SetTexID(id)
    ImGui::ImFontAtlas_SetTexID(self, id)
  end

  def destroy()
    ImGui::ImFontAtlas_destroy(self)
  end

end

class ImColor < FFI::Struct
  layout(
    :Value, ImVec4.by_value
  )
end

class ImDrawCmd < FFI::Struct
  layout(
    :ElemCount, :uint,
    :ClipRect, ImVec4.by_value,
    :TextureId, :pointer,
    :VtxOffset, :uint,
    :IdxOffset, :uint,
    :UserCallback, :pointer,
    :UserCallbackData, :pointer
  )
end

class ImDrawData < FFI::Struct
  layout(
    :Valid, :bool,
    :CmdLists, ImDrawList.ptr,
    :CmdListsCount, :int,
    :TotalIdxCount, :int,
    :TotalVtxCount, :int,
    :DisplayPos, ImVec2.by_value,
    :DisplaySize, ImVec2.by_value,
    :FramebufferScale, ImVec2.by_value
  )
end

class ImFont < FFI::Struct
  layout(
    :IndexAdvanceX, ImVector.by_value,
    :FallbackAdvanceX, :float,
    :FontSize, :float,
    :IndexLookup, ImVector.by_value,
    :Glyphs, ImVector.by_value,
    :FallbackGlyph, :pointer,
    :DisplayOffset, ImVec2.by_value,
    :ContainerAtlas, ImFontAtlas.ptr,
    :ConfigData, :pointer,
    :ConfigDataCount, :short,
    :FallbackChar, :ushort,
    :EllipsisChar, :ushort,
    :DirtyLookupTables, :bool,
    :Scale, :float,
    :Ascent, :float,
    :Descent, :float,
    :MetricsTotalSurface, :int,
    :Used4kPagesMap[(0xFFFF+1)/4096/8], [:uchar, 2]
  )
end

class ImFontAtlasCustomRect < FFI::Struct
  layout(
    :ID, :uint,
    :Width, :ushort,
    :Height, :ushort,
    :X, :ushort,
    :Y, :ushort,
    :GlyphAdvanceX, :float,
    :GlyphOffset, ImVec2.by_value,
    :Font, ImFont.ptr
  )
end

class ImFontConfig < FFI::Struct
  layout(
    :FontData, :pointer,
    :FontDataSize, :int,
    :FontDataOwnedByAtlas, :bool,
    :FontNo, :int,
    :SizePixels, :float,
    :OversampleH, :int,
    :OversampleV, :int,
    :PixelSnapH, :bool,
    :GlyphExtraSpacing, ImVec2.by_value,
    :GlyphOffset, ImVec2.by_value,
    :GlyphRanges, :pointer,
    :GlyphMinAdvanceX, :float,
    :GlyphMaxAdvanceX, :float,
    :MergeMode, :bool,
    :RasterizerFlags, :uint,
    :RasterizerMultiply, :float,
    :EllipsisChar, :ushort,
    :Name, [:char, 40],
    :DstFont, ImFont.ptr
  )

  def self.create()
    return ImFontConfig.new(ImGui::ImFontConfig_ImFontConfig())
  end

  def destroy()
    ImGui::ImFontConfig_destroy(self)
  end

end

class ImFontGlyphRangesBuilder < FFI::Struct
  layout(
    :UsedChars, ImVector.by_value
  )

  def AddChar(c)
    ImGui::ImFontGlyphRangesBuilder_AddChar(self, c)
  end

  def AddRanges(ranges)
    ImGui::ImFontGlyphRangesBuilder_AddRanges(self, ranges)
  end

  def AddText(text, text_end = nil)
    ImGui::ImFontGlyphRangesBuilder_AddText(self, text, text_end)
  end

  def BuildRanges(out_ranges)
    ImGui::ImFontGlyphRangesBuilder_BuildRanges(self, out_ranges)
  end

  def Clear()
    ImGui::ImFontGlyphRangesBuilder_Clear(self)
  end

  def GetBit(n)
    ImGui::ImFontGlyphRangesBuilder_GetBit(self, n)
  end

  def self.create()
    return ImFontGlyphRangesBuilder.new(ImGui::ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder())
  end

  def SetBit(n)
    ImGui::ImFontGlyphRangesBuilder_SetBit(self, n)
  end

  def destroy()
    ImGui::ImFontGlyphRangesBuilder_destroy(self)
  end

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
    :KeyMap, [:int, 22],
    :KeyRepeatDelay, :float,
    :KeyRepeatRate, :float,
    :UserData, :pointer,
    :Fonts, ImFontAtlas.ptr,
    :FontGlobalScale, :float,
    :FontAllowUserScaling, :bool,
    :FontDefault, ImFont.ptr,
    :DisplayFramebufferScale, ImVec2.by_value,
    :MouseDrawCursor, :bool,
    :ConfigMacOSXBehaviors, :bool,
    :ConfigInputTextCursorBlink, :bool,
    :ConfigWindowsResizeFromEdges, :bool,
    :ConfigWindowsMoveFromTitleBarOnly, :bool,
    :ConfigWindowsMemoryCompactTimer, :float,
    :BackendPlatformName, :pointer,
    :BackendRendererName, :pointer,
    :BackendPlatformUserData, :pointer,
    :BackendRendererUserData, :pointer,
    :BackendLanguageUserData, :pointer,
    :GetClipboardTextFn, :pointer,
    :SetClipboardTextFn, :pointer,
    :ClipboardUserData, :pointer,
    :ImeSetInputScreenPosFn, :pointer,
    :ImeWindowHandle, :pointer,
    :RenderDrawListsFnUnused, :pointer,
    :MousePos, ImVec2.by_value,
    :MouseDown, [:bool, 5],
    :MouseWheel, :float,
    :MouseWheelH, :float,
    :KeyCtrl, :bool,
    :KeyShift, :bool,
    :KeyAlt, :bool,
    :KeySuper, :bool,
    :KeysDown, [:bool, 512],
    :NavInputs, [:float, 21],
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
    :KeyMods, :int,
    :MousePosPrev, ImVec2.by_value,
    :MouseClickedPos, [ImVec2.by_value, 5],
    :MouseClickedTime, [:double, 5],
    :MouseClicked, [:bool, 5],
    :MouseDoubleClicked, [:bool, 5],
    :MouseReleased, [:bool, 5],
    :MouseDownOwned, [:bool, 5],
    :MouseDownWasDoubleClick, [:bool, 5],
    :MouseDownDuration, [:float, 5],
    :MouseDownDurationPrev, [:float, 5],
    :MouseDragMaxDistanceAbs, [ImVec2.by_value, 5],
    :MouseDragMaxDistanceSqr, [:float, 5],
    :KeysDownDuration, [:float, 512],
    :KeysDownDurationPrev, [:float, 512],
    :NavInputsDownDuration, [:float, 21],
    :NavInputsDownDurationPrev, [:float, 21],
    :InputQueueSurrogate, :ushort,
    :InputQueueCharacters, ImVector.by_value
  )

  def AddInputCharacter(c)
    ImGui::ImGuiIO_AddInputCharacter(self, c)
  end

  def AddInputCharacterUTF16(c)
    ImGui::ImGuiIO_AddInputCharacterUTF16(self, c)
  end

  def AddInputCharactersUTF8(str)
    ImGui::ImGuiIO_AddInputCharactersUTF8(self, str)
  end

  def ClearInputCharacters()
    ImGui::ImGuiIO_ClearInputCharacters(self)
  end

  def self.create()
    return ImGuiIO.new(ImGui::ImGuiIO_ImGuiIO())
  end

  def destroy()
    ImGui::ImGuiIO_destroy(self)
  end

end

class ImGuiInputTextCallbackData < FFI::Struct
  layout(
    :EventFlag, :int,
    :Flags, :int,
    :UserData, :pointer,
    :EventChar, :ushort,
    :EventKey, :int,
    :Buf, :pointer,
    :BufTextLen, :int,
    :BufSize, :int,
    :BufDirty, :bool,
    :CursorPos, :int,
    :SelectionStart, :int,
    :SelectionEnd, :int
  )
end

class ImGuiSizeCallbackData < FFI::Struct
  layout(
    :UserData, :pointer,
    :Pos, ImVec2.by_value,
    :CurrentSize, ImVec2.by_value,
    :DesiredSize, ImVec2.by_value
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
    :WindowMenuButtonPosition, :int,
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
    :TabRounding, :float,
    :TabBorderSize, :float,
    :ColorButtonPosition, :int,
    :ButtonTextAlign, ImVec2.by_value,
    :SelectableTextAlign, ImVec2.by_value,
    :DisplayWindowPadding, ImVec2.by_value,
    :DisplaySafeAreaPadding, ImVec2.by_value,
    :MouseCursorScale, :float,
    :AntiAliasedLines, :bool,
    :AntiAliasedFill, :bool,
    :CurveTessellationTol, :float,
    :CircleSegmentMaxError, :float,
    :Colors, [ImVec4.by_value, 48]
  )

  def self.create()
    return ImGuiStyle.new(ImGui::ImGuiStyle_ImGuiStyle())
  end

  def ScaleAllSizes(scale_factor)
    ImGui::ImGuiStyle_ScaleAllSizes(self, scale_factor)
  end

  def destroy()
    ImGui::ImGuiStyle_destroy(self)
  end

end

class ImGuiTextFilter < FFI::Struct
  layout(
    :InputBuf, [:char, 256],
    :Filters, ImVector.by_value,
    :CountGrep, :int
  )

  def Build()
    ImGui::ImGuiTextFilter_Build(self)
  end

  def Clear()
    ImGui::ImGuiTextFilter_Clear(self)
  end

  def Draw(label = "Filter(inc,-exc)", width = 0.0)
    ImGui::ImGuiTextFilter_Draw(self, label, width)
  end

  def self.create(default_filter = "")
    return ImGuiTextFilter.new(ImGui::ImGuiTextFilter_ImGuiTextFilter(default_filter))
  end

  def IsActive()
    ImGui::ImGuiTextFilter_IsActive(self)
  end

  def PassFilter(text, text_end = nil)
    ImGui::ImGuiTextFilter_PassFilter(self, text, text_end)
  end

  def destroy()
    ImGui::ImGuiTextFilter_destroy(self)
  end

end

class ImGuiTextRange < FFI::Struct
  layout(
    :b, :pointer,
    :e, :pointer
  )

  def self.create()
    return ImGuiTextRange.new(ImGui::ImGuiTextRange_ImGuiTextRangeNil())
  end

  def self.create(_b, _e)
    return ImGuiTextRange.new(ImGui::ImGuiTextRange_ImGuiTextRangeStr(_b, _e))
  end

  def destroy()
    ImGui::ImGuiTextRange_destroy(self)
  end

  def empty()
    ImGui::ImGuiTextRange_empty(self)
  end

  def split(separator, out)
    ImGui::ImGuiTextRange_split(self, separator, out)
  end

end

class ImGuiStoragePair < FFI::Struct
  layout(
    :key, :uint,
    :val_p, :pointer
  )
end

# shorthand initializer
def ImVec2.create(x = 0, y = 0)
  instance = ImVec2.new
  instance[:x] = x
  instance[:y] = y
  return instance
end

def ImVec4.create(x = 0, y = 0, z = 0, w = 0)
  instance = ImVec4.new
  instance[:x] = x
  instance[:y] = y
  instance[:z] = z
  instance[:w] = w
  return instance
end

def ImColor.create(r = 0, g = 0, b = 0, a = 255)
  sc = 1.0 / 255.0
  instance = ImColor.new
  instance[:Value][:x] = r.to_f * sc
  instance[:Value][:y] = g.to_f * sc
  instance[:Value][:z] = b.to_f * sc
  instance[:Value][:w] = a.to_f * sc
  return instance
end

def ImColor.col32(r = 0, g = 0, b = 0, a = 255)
  return ((a.to_i << 24) | (b.to_i << 0) | (g.to_i << 8) | (r.to_i << 16))
end

module ImGui

  extend FFI::Library

  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui.dylib')
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols() unless @@imgui_import_done
  end

  def self.import_symbols()
    callback :ImDrawCallback, [ImDrawList, ImDrawCmd], :void
    callback :ImGuiInputTextCallback, [ImGuiInputTextCallbackData], :int
    callback :ImGuiSizeCallback, [ImGuiSizeCallbackData], :void
    attach_function :ImDrawList_AddBezierCurve, :ImDrawList_AddBezierCurve, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void
    attach_function :ImDrawList_AddCallback, :ImDrawList_AddCallback, [:pointer, :ImDrawCallback, :pointer], :void
    attach_function :ImDrawList_AddCircle, :ImDrawList_AddCircle, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void
    attach_function :ImDrawList_AddCircleFilled, :ImDrawList_AddCircleFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void
    attach_function :ImDrawList_AddConvexPolyFilled, :ImDrawList_AddConvexPolyFilled, [:pointer, :pointer, :int, :uint], :void
    attach_function :ImDrawList_AddDrawCmd, :ImDrawList_AddDrawCmd, [:pointer], :void
    attach_function :ImDrawList_AddImage, :ImDrawList_AddImage, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_AddImageQuad, :ImDrawList_AddImageQuad, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_AddImageRounded, :ImDrawList_AddImageRounded, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void
    attach_function :ImDrawList_AddLine, :ImDrawList_AddLine, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void
    attach_function :ImDrawList_AddNgon, :ImDrawList_AddNgon, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void
    attach_function :ImDrawList_AddNgonFilled, :ImDrawList_AddNgonFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void
    attach_function :ImDrawList_AddPolyline, :ImDrawList_AddPolyline, [:pointer, :pointer, :int, :uint, :bool, :float], :void
    attach_function :ImDrawList_AddQuad, :ImDrawList_AddQuad, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void
    attach_function :ImDrawList_AddQuadFilled, :ImDrawList_AddQuadFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_AddRect, :ImDrawList_AddRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float], :void
    attach_function :ImDrawList_AddRectFilled, :ImDrawList_AddRectFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void
    attach_function :ImDrawList_AddRectFilledMultiColor, :ImDrawList_AddRectFilledMultiColor, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint], :void
    attach_function :ImDrawList_AddTextVec2, :ImDrawList_AddTextVec2, [:pointer, ImVec2.by_value, :uint, :pointer, :pointer], :void
    attach_function :ImDrawList_AddTextFontPtr, :ImDrawList_AddTextFontPtr, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer], :void
    attach_function :ImDrawList_AddTriangle, :ImDrawList_AddTriangle, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void
    attach_function :ImDrawList_AddTriangleFilled, :ImDrawList_AddTriangleFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_ChannelsMerge, :ImDrawList_ChannelsMerge, [:pointer], :void
    attach_function :ImDrawList_ChannelsSetCurrent, :ImDrawList_ChannelsSetCurrent, [:pointer, :int], :void
    attach_function :ImDrawList_ChannelsSplit, :ImDrawList_ChannelsSplit, [:pointer, :int], :void
    attach_function :ImDrawList_Clear, :ImDrawList_Clear, [:pointer], :void
    attach_function :ImDrawList_ClearFreeMemory, :ImDrawList_ClearFreeMemory, [:pointer], :void
    attach_function :ImDrawList_CloneOutput, :ImDrawList_CloneOutput, [:pointer], :pointer
    attach_function :ImDrawList_GetClipRectMax, :ImDrawList_GetClipRectMax, [:pointer, :pointer], :void
    attach_function :ImDrawList_GetClipRectMin, :ImDrawList_GetClipRectMin, [:pointer, :pointer], :void
    attach_function :ImDrawList_ImDrawList, :ImDrawList_ImDrawList, [:pointer], :pointer
    attach_function :ImDrawList_PathArcTo, :ImDrawList_PathArcTo, [:pointer, ImVec2.by_value, :float, :float, :float, :int], :void
    attach_function :ImDrawList_PathArcToFast, :ImDrawList_PathArcToFast, [:pointer, ImVec2.by_value, :float, :int, :int], :void
    attach_function :ImDrawList_PathBezierCurveTo, :ImDrawList_PathBezierCurveTo, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int], :void
    attach_function :ImDrawList_PathClear, :ImDrawList_PathClear, [:pointer], :void
    attach_function :ImDrawList_PathFillConvex, :ImDrawList_PathFillConvex, [:pointer, :uint], :void
    attach_function :ImDrawList_PathLineTo, :ImDrawList_PathLineTo, [:pointer, ImVec2.by_value], :void
    attach_function :ImDrawList_PathLineToMergeDuplicate, :ImDrawList_PathLineToMergeDuplicate, [:pointer, ImVec2.by_value], :void
    attach_function :ImDrawList_PathRect, :ImDrawList_PathRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int], :void
    attach_function :ImDrawList_PathStroke, :ImDrawList_PathStroke, [:pointer, :uint, :bool, :float], :void
    attach_function :ImDrawList_PopClipRect, :ImDrawList_PopClipRect, [:pointer], :void
    attach_function :ImDrawList_PopTextureID, :ImDrawList_PopTextureID, [:pointer], :void
    attach_function :ImDrawList_PrimQuadUV, :ImDrawList_PrimQuadUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_PrimRect, :ImDrawList_PrimRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_PrimRectUV, :ImDrawList_PrimRectUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_PrimReserve, :ImDrawList_PrimReserve, [:pointer, :int, :int], :void
    attach_function :ImDrawList_PrimUnreserve, :ImDrawList_PrimUnreserve, [:pointer, :int, :int], :void
    attach_function :ImDrawList_PrimVtx, :ImDrawList_PrimVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_PrimWriteIdx, :ImDrawList_PrimWriteIdx, [:pointer, :ushort], :void
    attach_function :ImDrawList_PrimWriteVtx, :ImDrawList_PrimWriteVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void
    attach_function :ImDrawList_PushClipRect, :ImDrawList_PushClipRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :bool], :void
    attach_function :ImDrawList_PushClipRectFullScreen, :ImDrawList_PushClipRectFullScreen, [:pointer], :void
    attach_function :ImDrawList_PushTextureID, :ImDrawList_PushTextureID, [:pointer, :pointer], :void
    attach_function :ImDrawList_UpdateClipRect, :ImDrawList_UpdateClipRect, [:pointer], :void
    attach_function :ImDrawList_UpdateTextureID, :ImDrawList_UpdateTextureID, [:pointer], :void
    attach_function :ImDrawList_destroy, :ImDrawList_destroy, [:pointer], :void
    attach_function :ImFontAtlas_AddCustomRectFontGlyph, :ImFontAtlas_AddCustomRectFontGlyph, [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value], :int
    attach_function :ImFontAtlas_AddCustomRectRegular, :ImFontAtlas_AddCustomRectRegular, [:pointer, :uint, :int, :int], :int
    attach_function :ImFontAtlas_AddFont, :ImFontAtlas_AddFont, [:pointer, :pointer], :pointer
    attach_function :ImFontAtlas_AddFontDefault, :ImFontAtlas_AddFontDefault, [:pointer, :pointer], :pointer
    attach_function :ImFontAtlas_AddFontFromFileTTF, :ImFontAtlas_AddFontFromFileTTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer
    attach_function :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer
    attach_function :ImFontAtlas_AddFontFromMemoryCompressedTTF, :ImFontAtlas_AddFontFromMemoryCompressedTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer
    attach_function :ImFontAtlas_AddFontFromMemoryTTF, :ImFontAtlas_AddFontFromMemoryTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer
    attach_function :ImFontAtlas_Build, :ImFontAtlas_Build, [:pointer], :bool
    attach_function :ImFontAtlas_CalcCustomRectUV, :ImFontAtlas_CalcCustomRectUV, [:pointer, :pointer, :pointer, :pointer], :void
    attach_function :ImFontAtlas_Clear, :ImFontAtlas_Clear, [:pointer], :void
    attach_function :ImFontAtlas_ClearFonts, :ImFontAtlas_ClearFonts, [:pointer], :void
    attach_function :ImFontAtlas_ClearInputData, :ImFontAtlas_ClearInputData, [:pointer], :void
    attach_function :ImFontAtlas_ClearTexData, :ImFontAtlas_ClearTexData, [:pointer], :void
    attach_function :ImFontAtlas_GetCustomRectByIndex, :ImFontAtlas_GetCustomRectByIndex, [:pointer, :int], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesChineseFull, :ImFontAtlas_GetGlyphRangesChineseFull, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesCyrillic, :ImFontAtlas_GetGlyphRangesCyrillic, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesDefault, :ImFontAtlas_GetGlyphRangesDefault, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesJapanese, :ImFontAtlas_GetGlyphRangesJapanese, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesKorean, :ImFontAtlas_GetGlyphRangesKorean, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesThai, :ImFontAtlas_GetGlyphRangesThai, [:pointer], :pointer
    attach_function :ImFontAtlas_GetGlyphRangesVietnamese, :ImFontAtlas_GetGlyphRangesVietnamese, [:pointer], :pointer
    attach_function :ImFontAtlas_GetMouseCursorTexData, :ImFontAtlas_GetMouseCursorTexData, [:pointer, :int, :pointer, :pointer, :pointer, :pointer], :bool
    attach_function :ImFontAtlas_GetTexDataAsAlpha8, :ImFontAtlas_GetTexDataAsAlpha8, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :ImFontAtlas_GetTexDataAsRGBA32, :ImFontAtlas_GetTexDataAsRGBA32, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :ImFontAtlas_ImFontAtlas, :ImFontAtlas_ImFontAtlas, [], :pointer
    attach_function :ImFontAtlas_IsBuilt, :ImFontAtlas_IsBuilt, [:pointer], :bool
    attach_function :ImFontAtlas_SetTexID, :ImFontAtlas_SetTexID, [:pointer, :pointer], :void
    attach_function :ImFontAtlas_destroy, :ImFontAtlas_destroy, [:pointer], :void
    attach_function :ImFontConfig_ImFontConfig, :ImFontConfig_ImFontConfig, [], :pointer
    attach_function :ImFontConfig_destroy, :ImFontConfig_destroy, [:pointer], :void
    attach_function :ImFontGlyphRangesBuilder_AddChar, :ImFontGlyphRangesBuilder_AddChar, [:pointer, :ushort], :void
    attach_function :ImFontGlyphRangesBuilder_AddRanges, :ImFontGlyphRangesBuilder_AddRanges, [:pointer, :pointer], :void
    attach_function :ImFontGlyphRangesBuilder_AddText, :ImFontGlyphRangesBuilder_AddText, [:pointer, :pointer, :pointer], :void
    attach_function :ImFontGlyphRangesBuilder_BuildRanges, :ImFontGlyphRangesBuilder_BuildRanges, [:pointer, :pointer], :void
    attach_function :ImFontGlyphRangesBuilder_Clear, :ImFontGlyphRangesBuilder_Clear, [:pointer], :void
    attach_function :ImFontGlyphRangesBuilder_GetBit, :ImFontGlyphRangesBuilder_GetBit, [:pointer, :size_t], :bool
    attach_function :ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder, :ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder, [], :pointer
    attach_function :ImFontGlyphRangesBuilder_SetBit, :ImFontGlyphRangesBuilder_SetBit, [:pointer, :size_t], :void
    attach_function :ImFontGlyphRangesBuilder_destroy, :ImFontGlyphRangesBuilder_destroy, [:pointer], :void
    attach_function :ImGuiIO_AddInputCharacter, :ImGuiIO_AddInputCharacter, [:pointer, :uint], :void
    attach_function :ImGuiIO_AddInputCharacterUTF16, :ImGuiIO_AddInputCharacterUTF16, [:pointer, :ushort], :void
    attach_function :ImGuiIO_AddInputCharactersUTF8, :ImGuiIO_AddInputCharactersUTF8, [:pointer, :pointer], :void
    attach_function :ImGuiIO_ClearInputCharacters, :ImGuiIO_ClearInputCharacters, [:pointer], :void
    attach_function :ImGuiIO_ImGuiIO, :ImGuiIO_ImGuiIO, [], :pointer
    attach_function :ImGuiIO_destroy, :ImGuiIO_destroy, [:pointer], :void
    attach_function :ImGuiStyle_ImGuiStyle, :ImGuiStyle_ImGuiStyle, [], :pointer
    attach_function :ImGuiStyle_ScaleAllSizes, :ImGuiStyle_ScaleAllSizes, [:pointer, :float], :void
    attach_function :ImGuiStyle_destroy, :ImGuiStyle_destroy, [:pointer], :void
    attach_function :ImGuiTextFilter_Build, :ImGuiTextFilter_Build, [:pointer], :void
    attach_function :ImGuiTextFilter_Clear, :ImGuiTextFilter_Clear, [:pointer], :void
    attach_function :ImGuiTextFilter_Draw, :ImGuiTextFilter_Draw, [:pointer, :pointer, :float], :bool
    attach_function :ImGuiTextFilter_ImGuiTextFilter, :ImGuiTextFilter_ImGuiTextFilter, [:pointer], :pointer
    attach_function :ImGuiTextFilter_IsActive, :ImGuiTextFilter_IsActive, [:pointer], :bool
    attach_function :ImGuiTextFilter_PassFilter, :ImGuiTextFilter_PassFilter, [:pointer, :pointer, :pointer], :bool
    attach_function :ImGuiTextFilter_destroy, :ImGuiTextFilter_destroy, [:pointer], :void
    attach_function :ImGuiTextRange_ImGuiTextRangeNil, :ImGuiTextRange_ImGuiTextRangeNil, [], :pointer
    attach_function :ImGuiTextRange_ImGuiTextRangeStr, :ImGuiTextRange_ImGuiTextRangeStr, [:pointer, :pointer], :pointer
    attach_function :ImGuiTextRange_destroy, :ImGuiTextRange_destroy, [:pointer], :void
    attach_function :ImGuiTextRange_empty, :ImGuiTextRange_empty, [:pointer], :bool
    attach_function :ImGuiTextRange_split, :ImGuiTextRange_split, [:pointer, :char, :pointer], :void
    attach_function :igAcceptDragDropPayload, :igAcceptDragDropPayload, [:pointer, :int], :pointer
    attach_function :igAlignTextToFramePadding, :igAlignTextToFramePadding, [], :void
    attach_function :igArrowButton, :igArrowButton, [:pointer, :int], :bool
    attach_function :igBegin, :igBegin, [:pointer, :pointer, :int], :bool
    attach_function :igBeginChildStr, :igBeginChildStr, [:pointer, ImVec2.by_value, :bool, :int], :bool
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
    attach_function :igBeginTabBar, :igBeginTabBar, [:pointer, :int], :bool
    attach_function :igBeginTabItem, :igBeginTabItem, [:pointer, :pointer, :int], :bool
    attach_function :igBeginTooltip, :igBeginTooltip, [], :void
    attach_function :igBullet, :igBullet, [], :void
    attach_function :igBulletText, :igBulletText, [:pointer, :varargs], :void
    attach_function :igButton, :igButton, [:pointer, ImVec2.by_value], :bool
    attach_function :igCalcItemWidth, :igCalcItemWidth, [], :float
    attach_function :igCalcListClipping, :igCalcListClipping, [:int, :float, :pointer, :pointer], :void
    attach_function :igCalcTextSize, :igCalcTextSize, [:pointer, :pointer, :pointer, :bool, :float], :void
    attach_function :igCaptureKeyboardFromApp, :igCaptureKeyboardFromApp, [:bool], :void
    attach_function :igCaptureMouseFromApp, :igCaptureMouseFromApp, [:bool], :void
    attach_function :igCheckbox, :igCheckbox, [:pointer, :pointer], :bool
    attach_function :igCheckboxFlags, :igCheckboxFlags, [:pointer, :pointer, :uint], :bool
    attach_function :igCloseCurrentPopup, :igCloseCurrentPopup, [], :void
    attach_function :igCollapsingHeaderTreeNodeFlags, :igCollapsingHeaderTreeNodeFlags, [:pointer, :int], :bool
    attach_function :igCollapsingHeaderBoolPtr, :igCollapsingHeaderBoolPtr, [:pointer, :pointer, :int], :bool
    attach_function :igColorButton, :igColorButton, [:pointer, ImVec4.by_value, :int, ImVec2.by_value], :bool
    attach_function :igColorConvertFloat4ToU32, :igColorConvertFloat4ToU32, [ImVec4.by_value], :uint
    attach_function :igColorConvertHSVtoRGB, :igColorConvertHSVtoRGB, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :igColorConvertRGBtoHSV, :igColorConvertRGBtoHSV, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :igColorConvertU32ToFloat4, :igColorConvertU32ToFloat4, [:pointer, :uint], :void
    attach_function :igColorEdit3, :igColorEdit3, [:pointer, :pointer, :int], :bool
    attach_function :igColorEdit4, :igColorEdit4, [:pointer, :pointer, :int], :bool
    attach_function :igColorPicker3, :igColorPicker3, [:pointer, :pointer, :int], :bool
    attach_function :igColorPicker4, :igColorPicker4, [:pointer, :pointer, :int, :pointer], :bool
    attach_function :igColumns, :igColumns, [:int, :pointer, :bool], :void
    attach_function :igComboStr_arr, :igComboStr_arr, [:pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igComboStr, :igComboStr, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :igComboFnPtr, :igComboFnPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :igCreateContext, :igCreateContext, [:pointer], :pointer
    attach_function :igDebugCheckVersionAndDataLayout, :igDebugCheckVersionAndDataLayout, [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t], :bool
    attach_function :igDestroyContext, :igDestroyContext, [:pointer], :void
    attach_function :igDragFloat, :igDragFloat, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat2, :igDragFloat2, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat3, :igDragFloat3, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloat4, :igDragFloat4, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :igDragFloatRange2, :igDragFloatRange2, [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :float], :bool
    attach_function :igDragInt, :igDragInt, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt2, :igDragInt2, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt3, :igDragInt3, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
    attach_function :igDragInt4, :igDragInt4, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
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
    attach_function :igEndTabBar, :igEndTabBar, [], :void
    attach_function :igEndTabItem, :igEndTabItem, [], :void
    attach_function :igEndTooltip, :igEndTooltip, [], :void
    attach_function :igGetBackgroundDrawList, :igGetBackgroundDrawList, [], :pointer
    attach_function :igGetClipboardText, :igGetClipboardText, [], :pointer
    attach_function :igGetColorU32Col, :igGetColorU32Col, [:int, :float], :uint
    attach_function :igGetColorU32Vec4, :igGetColorU32Vec4, [ImVec4.by_value], :uint
    attach_function :igGetColorU32U32, :igGetColorU32U32, [:uint], :uint
    attach_function :igGetColumnIndex, :igGetColumnIndex, [], :int
    attach_function :igGetColumnOffset, :igGetColumnOffset, [:int], :float
    attach_function :igGetColumnWidth, :igGetColumnWidth, [:int], :float
    attach_function :igGetColumnsCount, :igGetColumnsCount, [], :int
    attach_function :igGetContentRegionAvail, :igGetContentRegionAvail, [:pointer], :void
    attach_function :igGetContentRegionMax, :igGetContentRegionMax, [:pointer], :void
    attach_function :igGetCurrentContext, :igGetCurrentContext, [], :pointer
    attach_function :igGetCursorPos, :igGetCursorPos, [:pointer], :void
    attach_function :igGetCursorPosX, :igGetCursorPosX, [], :float
    attach_function :igGetCursorPosY, :igGetCursorPosY, [], :float
    attach_function :igGetCursorScreenPos, :igGetCursorScreenPos, [:pointer], :void
    attach_function :igGetCursorStartPos, :igGetCursorStartPos, [:pointer], :void
    attach_function :igGetDragDropPayload, :igGetDragDropPayload, [], :pointer
    attach_function :igGetDrawData, :igGetDrawData, [], :pointer
    attach_function :igGetDrawListSharedData, :igGetDrawListSharedData, [], :pointer
    attach_function :igGetFont, :igGetFont, [], :pointer
    attach_function :igGetFontSize, :igGetFontSize, [], :float
    attach_function :igGetFontTexUvWhitePixel, :igGetFontTexUvWhitePixel, [:pointer], :void
    attach_function :igGetForegroundDrawList, :igGetForegroundDrawList, [], :pointer
    attach_function :igGetFrameCount, :igGetFrameCount, [], :int
    attach_function :igGetFrameHeight, :igGetFrameHeight, [], :float
    attach_function :igGetFrameHeightWithSpacing, :igGetFrameHeightWithSpacing, [], :float
    attach_function :igGetIDStr, :igGetIDStr, [:pointer], :uint
    attach_function :igGetIDStrStr, :igGetIDStrStr, [:pointer, :pointer], :uint
    attach_function :igGetIDPtr, :igGetIDPtr, [:pointer], :uint
    attach_function :igGetIO, :igGetIO, [], :pointer
    attach_function :igGetItemRectMax, :igGetItemRectMax, [:pointer], :void
    attach_function :igGetItemRectMin, :igGetItemRectMin, [:pointer], :void
    attach_function :igGetItemRectSize, :igGetItemRectSize, [:pointer], :void
    attach_function :igGetKeyIndex, :igGetKeyIndex, [:int], :int
    attach_function :igGetKeyPressedAmount, :igGetKeyPressedAmount, [:int, :float, :float], :int
    attach_function :igGetMouseCursor, :igGetMouseCursor, [], :int
    attach_function :igGetMouseDragDelta, :igGetMouseDragDelta, [:pointer, :int, :float], :void
    attach_function :igGetMousePos, :igGetMousePos, [:pointer], :void
    attach_function :igGetMousePosOnOpeningCurrentPopup, :igGetMousePosOnOpeningCurrentPopup, [:pointer], :void
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
    attach_function :igGetWindowContentRegionMax, :igGetWindowContentRegionMax, [:pointer], :void
    attach_function :igGetWindowContentRegionMin, :igGetWindowContentRegionMin, [:pointer], :void
    attach_function :igGetWindowContentRegionWidth, :igGetWindowContentRegionWidth, [], :float
    attach_function :igGetWindowDrawList, :igGetWindowDrawList, [], :pointer
    attach_function :igGetWindowHeight, :igGetWindowHeight, [], :float
    attach_function :igGetWindowPos, :igGetWindowPos, [:pointer], :void
    attach_function :igGetWindowSize, :igGetWindowSize, [:pointer], :void
    attach_function :igGetWindowWidth, :igGetWindowWidth, [], :float
    attach_function :igImage, :igImage, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void
    attach_function :igImageButton, :igImageButton, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int, ImVec4.by_value, ImVec4.by_value], :bool
    attach_function :igIndent, :igIndent, [:float], :void
    attach_function :igInputDouble, :igInputDouble, [:pointer, :pointer, :double, :double, :pointer, :int], :bool
    attach_function :igInputFloat, :igInputFloat, [:pointer, :pointer, :float, :float, :pointer, :int], :bool
    attach_function :igInputFloat2, :igInputFloat2, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputFloat3, :igInputFloat3, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputFloat4, :igInputFloat4, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputInt, :igInputInt, [:pointer, :pointer, :int, :int, :int], :bool
    attach_function :igInputInt2, :igInputInt2, [:pointer, :pointer, :int], :bool
    attach_function :igInputInt3, :igInputInt3, [:pointer, :pointer, :int], :bool
    attach_function :igInputInt4, :igInputInt4, [:pointer, :pointer, :int], :bool
    attach_function :igInputScalar, :igInputScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputScalarN, :igInputScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool
    attach_function :igInputText, :igInputText, [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool
    attach_function :igInputTextMultiline, :igInputTextMultiline, [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer], :bool
    attach_function :igInputTextWithHint, :igInputTextWithHint, [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool
    attach_function :igInvisibleButton, :igInvisibleButton, [:pointer, ImVec2.by_value], :bool
    attach_function :igIsAnyItemActive, :igIsAnyItemActive, [], :bool
    attach_function :igIsAnyItemFocused, :igIsAnyItemFocused, [], :bool
    attach_function :igIsAnyItemHovered, :igIsAnyItemHovered, [], :bool
    attach_function :igIsAnyMouseDown, :igIsAnyMouseDown, [], :bool
    attach_function :igIsItemActivated, :igIsItemActivated, [], :bool
    attach_function :igIsItemActive, :igIsItemActive, [], :bool
    attach_function :igIsItemClicked, :igIsItemClicked, [:int], :bool
    attach_function :igIsItemDeactivated, :igIsItemDeactivated, [], :bool
    attach_function :igIsItemDeactivatedAfterEdit, :igIsItemDeactivatedAfterEdit, [], :bool
    attach_function :igIsItemEdited, :igIsItemEdited, [], :bool
    attach_function :igIsItemFocused, :igIsItemFocused, [], :bool
    attach_function :igIsItemHovered, :igIsItemHovered, [:int], :bool
    attach_function :igIsItemToggledOpen, :igIsItemToggledOpen, [], :bool
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
    attach_function :igIsRectVisibleNil, :igIsRectVisibleNil, [ImVec2.by_value], :bool
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
    attach_function :igPlotLinesFloatPtr, :igPlotLinesFloatPtr, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void
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
    attach_function :igPushIDStrStr, :igPushIDStrStr, [:pointer, :pointer], :void
    attach_function :igPushIDPtr, :igPushIDPtr, [:pointer], :void
    attach_function :igPushIDInt, :igPushIDInt, [:int], :void
    attach_function :igPushItemWidth, :igPushItemWidth, [:float], :void
    attach_function :igPushStyleColorU32, :igPushStyleColorU32, [:int, :uint], :void
    attach_function :igPushStyleColorVec4, :igPushStyleColorVec4, [:int, ImVec4.by_value], :void
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
    attach_function :igSelectableBool, :igSelectableBool, [:pointer, :bool, :int, ImVec2.by_value], :bool
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
    attach_function :igSetNextItemOpen, :igSetNextItemOpen, [:bool, :int], :void
    attach_function :igSetNextItemWidth, :igSetNextItemWidth, [:float], :void
    attach_function :igSetNextWindowBgAlpha, :igSetNextWindowBgAlpha, [:float], :void
    attach_function :igSetNextWindowCollapsed, :igSetNextWindowCollapsed, [:bool, :int], :void
    attach_function :igSetNextWindowContentSize, :igSetNextWindowContentSize, [ImVec2.by_value], :void
    attach_function :igSetNextWindowFocus, :igSetNextWindowFocus, [], :void
    attach_function :igSetNextWindowPos, :igSetNextWindowPos, [ImVec2.by_value, :int, ImVec2.by_value], :void
    attach_function :igSetNextWindowSize, :igSetNextWindowSize, [ImVec2.by_value, :int], :void
    attach_function :igSetNextWindowSizeConstraints, :igSetNextWindowSizeConstraints, [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer], :void
    attach_function :igSetScrollFromPosX, :igSetScrollFromPosX, [:float, :float], :void
    attach_function :igSetScrollFromPosY, :igSetScrollFromPosY, [:float, :float], :void
    attach_function :igSetScrollHereX, :igSetScrollHereX, [:float], :void
    attach_function :igSetScrollHereY, :igSetScrollHereY, [:float], :void
    attach_function :igSetScrollX, :igSetScrollX, [:float], :void
    attach_function :igSetScrollY, :igSetScrollY, [:float], :void
    attach_function :igSetStateStorage, :igSetStateStorage, [:pointer], :void
    attach_function :igSetTabItemClosed, :igSetTabItemClosed, [:pointer], :void
    attach_function :igSetTooltip, :igSetTooltip, [:pointer, :varargs], :void
    attach_function :igSetWindowCollapsedBool, :igSetWindowCollapsedBool, [:bool, :int], :void
    attach_function :igSetWindowCollapsedStr, :igSetWindowCollapsedStr, [:pointer, :bool, :int], :void
    attach_function :igSetWindowFocusNil, :igSetWindowFocusNil, [], :void
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
    attach_function :igSliderFloat2, :igSliderFloat2, [:pointer, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :igSliderFloat3, :igSliderFloat3, [:pointer, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :igSliderFloat4, :igSliderFloat4, [:pointer, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :igSliderInt, :igSliderInt, [:pointer, :pointer, :int, :int, :pointer], :bool
    attach_function :igSliderInt2, :igSliderInt2, [:pointer, :pointer, :int, :int, :pointer], :bool
    attach_function :igSliderInt3, :igSliderInt3, [:pointer, :pointer, :int, :int, :pointer], :bool
    attach_function :igSliderInt4, :igSliderInt4, [:pointer, :pointer, :int, :int, :pointer], :bool
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
    attach_function :ImVector_ImWchar_create, :ImVector_ImWchar_create, [], :pointer
    attach_function :ImVector_ImWchar_destroy, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_Init, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_UnInit, :ImVector_ImWchar_destroy, [:pointer], :void
  end # self.import_symbols

  def self.AcceptDragDropPayload(type, flags = 0)
    igAcceptDragDropPayload(type, flags)
  end

  def self.AlignTextToFramePadding()
    igAlignTextToFramePadding()
  end

  def self.ArrowButton(str_id, dir)
    igArrowButton(str_id, dir)
  end

  def self.Begin(name, p_open = nil, flags = 0)
    igBegin(name, p_open, flags)
  end

  def self.BeginChildStr(str_id, size = ImVec2.create(0,0), border = false, flags = 0)
    igBeginChildStr(str_id, size, border, flags)
  end

  def self.BeginChildID(id, size = ImVec2.create(0,0), border = false, flags = 0)
    igBeginChildID(id, size, border, flags)
  end

  def self.BeginChildFrame(id, size, flags = 0)
    igBeginChildFrame(id, size, flags)
  end

  def self.BeginCombo(label, preview_value, flags = 0)
    igBeginCombo(label, preview_value, flags)
  end

  def self.BeginDragDropSource(flags = 0)
    igBeginDragDropSource(flags)
  end

  def self.BeginDragDropTarget()
    igBeginDragDropTarget()
  end

  def self.BeginGroup()
    igBeginGroup()
  end

  def self.BeginMainMenuBar()
    igBeginMainMenuBar()
  end

  def self.BeginMenu(label, enabled = true)
    igBeginMenu(label, enabled)
  end

  def self.BeginMenuBar()
    igBeginMenuBar()
  end

  def self.BeginPopup(str_id, flags = 0)
    igBeginPopup(str_id, flags)
  end

  def self.BeginPopupContextItem(str_id = nil, mouse_button = 1)
    igBeginPopupContextItem(str_id, mouse_button)
  end

  def self.BeginPopupContextVoid(str_id = nil, mouse_button = 1)
    igBeginPopupContextVoid(str_id, mouse_button)
  end

  def self.BeginPopupContextWindow(str_id = nil, mouse_button = 1, also_over_items = true)
    igBeginPopupContextWindow(str_id, mouse_button, also_over_items)
  end

  def self.BeginPopupModal(name, p_open = nil, flags = 0)
    igBeginPopupModal(name, p_open, flags)
  end

  def self.BeginTabBar(str_id, flags = 0)
    igBeginTabBar(str_id, flags)
  end

  def self.BeginTabItem(label, p_open = nil, flags = 0)
    igBeginTabItem(label, p_open, flags)
  end

  def self.BeginTooltip()
    igBeginTooltip()
  end

  def self.Bullet()
    igBullet()
  end

  def self.BulletText(fmt, *varargs)
    igBulletText(fmt, *varargs)
  end

  def self.Button(label, size = ImVec2.create(0,0))
    igButton(label, size)
  end

  def self.CalcItemWidth()
    igCalcItemWidth()
  end

  def self.CalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)
    igCalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)
  end

  def self.CalcTextSize(text, text_end = nil, hide_text_after_double_hash = false, wrap_width = -1.0)
    pOut = ImVec2.new
    igCalcTextSize(pOut, text, text_end, hide_text_after_double_hash, wrap_width)
    return pOut
  end

  def self.CaptureKeyboardFromApp(want_capture_keyboard_value = true)
    igCaptureKeyboardFromApp(want_capture_keyboard_value)
  end

  def self.CaptureMouseFromApp(want_capture_mouse_value = true)
    igCaptureMouseFromApp(want_capture_mouse_value)
  end

  def self.Checkbox(label, v)
    igCheckbox(label, v)
  end

  def self.CheckboxFlags(label, flags, flags_value)
    igCheckboxFlags(label, flags, flags_value)
  end

  def self.CloseCurrentPopup()
    igCloseCurrentPopup()
  end

  def self.CollapsingHeaderTreeNodeFlags(label, flags = 0)
    igCollapsingHeaderTreeNodeFlags(label, flags)
  end

  def self.CollapsingHeaderBoolPtr(label, p_open, flags = 0)
    igCollapsingHeaderBoolPtr(label, p_open, flags)
  end

  def self.ColorButton(desc_id, col, flags = 0, size = ImVec2.create(0,0))
    igColorButton(desc_id, col, flags, size)
  end

  def self.ColorConvertFloat4ToU32(_in_)
    igColorConvertFloat4ToU32(_in_)
  end

  def self.ColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
    igColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
  end

  def self.ColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
    igColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
  end

  def self.ColorConvertU32ToFloat4(_in_)
    pOut = ImVec4.new
    igColorConvertU32ToFloat4(pOut, _in_)
    return pOut
  end

  def self.ColorEdit3(label, col, flags = 0)
    igColorEdit3(label, col, flags)
  end

  def self.ColorEdit4(label, col, flags = 0)
    igColorEdit4(label, col, flags)
  end

  def self.ColorPicker3(label, col, flags = 0)
    igColorPicker3(label, col, flags)
  end

  def self.ColorPicker4(label, col, flags = 0, ref_col = nil)
    igColorPicker4(label, col, flags, ref_col)
  end

  def self.Columns(count = 1, id = nil, border = true)
    igColumns(count, id, border)
  end

  def self.ComboStr_arr(label, current_item, items, items_count, popup_max_height_in_items = -1)
    igComboStr_arr(label, current_item, items, items_count, popup_max_height_in_items)
  end

  def self.ComboStr(label, current_item, items_separated_by_zeros, popup_max_height_in_items = -1)
    igComboStr(label, current_item, items_separated_by_zeros, popup_max_height_in_items)
  end

  def self.ComboFnPtr(label, current_item, items_getter, data, items_count, popup_max_height_in_items = -1)
    igComboFnPtr(label, current_item, items_getter, data, items_count, popup_max_height_in_items)
  end

  def self.CreateContext(shared_font_atlas = nil)
    igCreateContext(shared_font_atlas)
  end

  def self.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
    igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
  end

  def self.DestroyContext(ctx = nil)
    igDestroyContext(ctx)
  end

  def self.DragFloat(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", power = 1.0)
    igDragFloat(label, v, v_speed, v_min, v_max, format, power)
  end

  def self.DragFloat2(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", power = 1.0)
    igDragFloat2(label, v, v_speed, v_min, v_max, format, power)
  end

  def self.DragFloat3(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", power = 1.0)
    igDragFloat3(label, v, v_speed, v_min, v_max, format, power)
  end

  def self.DragFloat4(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", power = 1.0)
    igDragFloat4(label, v, v_speed, v_min, v_max, format, power)
  end

  def self.DragFloatRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", format_max = nil, power = 1.0)
    igDragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, power)
  end

  def self.DragInt(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d")
    igDragInt(label, v, v_speed, v_min, v_max, format)
  end

  def self.DragInt2(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d")
    igDragInt2(label, v, v_speed, v_min, v_max, format)
  end

  def self.DragInt3(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d")
    igDragInt3(label, v, v_speed, v_min, v_max, format)
  end

  def self.DragInt4(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d")
    igDragInt4(label, v, v_speed, v_min, v_max, format)
  end

  def self.DragIntRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", format_max = nil)
    igDragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max)
  end

  def self.DragScalar(label, data_type, p_data, v_speed, p_min = nil, p_max = nil, format = nil, power = 1.0)
    igDragScalar(label, data_type, p_data, v_speed, p_min, p_max, format, power)
  end

  def self.DragScalarN(label, data_type, p_data, components, v_speed, p_min = nil, p_max = nil, format = nil, power = 1.0)
    igDragScalarN(label, data_type, p_data, components, v_speed, p_min, p_max, format, power)
  end

  def self.Dummy(size)
    igDummy(size)
  end

  def self.End()
    igEnd()
  end

  def self.EndChild()
    igEndChild()
  end

  def self.EndChildFrame()
    igEndChildFrame()
  end

  def self.EndCombo()
    igEndCombo()
  end

  def self.EndDragDropSource()
    igEndDragDropSource()
  end

  def self.EndDragDropTarget()
    igEndDragDropTarget()
  end

  def self.EndFrame()
    igEndFrame()
  end

  def self.EndGroup()
    igEndGroup()
  end

  def self.EndMainMenuBar()
    igEndMainMenuBar()
  end

  def self.EndMenu()
    igEndMenu()
  end

  def self.EndMenuBar()
    igEndMenuBar()
  end

  def self.EndPopup()
    igEndPopup()
  end

  def self.EndTabBar()
    igEndTabBar()
  end

  def self.EndTabItem()
    igEndTabItem()
  end

  def self.EndTooltip()
    igEndTooltip()
  end

  def self.GetBackgroundDrawList()
    igGetBackgroundDrawList()
  end

  def self.GetClipboardText()
    igGetClipboardText()
  end

  def self.GetColorU32Col(idx, alpha_mul = 1.0)
    igGetColorU32Col(idx, alpha_mul)
  end

  def self.GetColorU32Vec4(col)
    igGetColorU32Vec4(col)
  end

  def self.GetColorU32U32(col)
    igGetColorU32U32(col)
  end

  def self.GetColumnIndex()
    igGetColumnIndex()
  end

  def self.GetColumnOffset(column_index = -1)
    igGetColumnOffset(column_index)
  end

  def self.GetColumnWidth(column_index = -1)
    igGetColumnWidth(column_index)
  end

  def self.GetColumnsCount()
    igGetColumnsCount()
  end

  def self.GetContentRegionAvail()
    pOut = ImVec2.new
    igGetContentRegionAvail(pOut)
    return pOut
  end

  def self.GetContentRegionMax()
    pOut = ImVec2.new
    igGetContentRegionMax(pOut)
    return pOut
  end

  def self.GetCurrentContext()
    igGetCurrentContext()
  end

  def self.GetCursorPos()
    pOut = ImVec2.new
    igGetCursorPos(pOut)
    return pOut
  end

  def self.GetCursorPosX()
    igGetCursorPosX()
  end

  def self.GetCursorPosY()
    igGetCursorPosY()
  end

  def self.GetCursorScreenPos()
    pOut = ImVec2.new
    igGetCursorScreenPos(pOut)
    return pOut
  end

  def self.GetCursorStartPos()
    pOut = ImVec2.new
    igGetCursorStartPos(pOut)
    return pOut
  end

  def self.GetDragDropPayload()
    igGetDragDropPayload()
  end

  def self.GetDrawData()
    igGetDrawData()
  end

  def self.GetDrawListSharedData()
    igGetDrawListSharedData()
  end

  def self.GetFont()
    igGetFont()
  end

  def self.GetFontSize()
    igGetFontSize()
  end

  def self.GetFontTexUvWhitePixel()
    pOut = ImVec2.new
    igGetFontTexUvWhitePixel(pOut)
    return pOut
  end

  def self.GetForegroundDrawList()
    igGetForegroundDrawList()
  end

  def self.GetFrameCount()
    igGetFrameCount()
  end

  def self.GetFrameHeight()
    igGetFrameHeight()
  end

  def self.GetFrameHeightWithSpacing()
    igGetFrameHeightWithSpacing()
  end

  def self.GetIDStr(str_id)
    igGetIDStr(str_id)
  end

  def self.GetIDStrStr(str_id_begin, str_id_end)
    igGetIDStrStr(str_id_begin, str_id_end)
  end

  def self.GetIDPtr(ptr_id)
    igGetIDPtr(ptr_id)
  end

  def self.GetIO()
    igGetIO()
  end

  def self.GetItemRectMax()
    pOut = ImVec2.new
    igGetItemRectMax(pOut)
    return pOut
  end

  def self.GetItemRectMin()
    pOut = ImVec2.new
    igGetItemRectMin(pOut)
    return pOut
  end

  def self.GetItemRectSize()
    pOut = ImVec2.new
    igGetItemRectSize(pOut)
    return pOut
  end

  def self.GetKeyIndex(imgui_key)
    igGetKeyIndex(imgui_key)
  end

  def self.GetKeyPressedAmount(key_index, repeat_delay, rate)
    igGetKeyPressedAmount(key_index, repeat_delay, rate)
  end

  def self.GetMouseCursor()
    igGetMouseCursor()
  end

  def self.GetMouseDragDelta(button = 0, lock_threshold = -1.0)
    pOut = ImVec2.new
    igGetMouseDragDelta(pOut, button, lock_threshold)
    return pOut
  end

  def self.GetMousePos()
    pOut = ImVec2.new
    igGetMousePos(pOut)
    return pOut
  end

  def self.GetMousePosOnOpeningCurrentPopup()
    pOut = ImVec2.new
    igGetMousePosOnOpeningCurrentPopup(pOut)
    return pOut
  end

  def self.GetScrollMaxX()
    igGetScrollMaxX()
  end

  def self.GetScrollMaxY()
    igGetScrollMaxY()
  end

  def self.GetScrollX()
    igGetScrollX()
  end

  def self.GetScrollY()
    igGetScrollY()
  end

  def self.GetStateStorage()
    igGetStateStorage()
  end

  def self.GetStyle()
    igGetStyle()
  end

  def self.GetStyleColorName(idx)
    igGetStyleColorName(idx)
  end

  def self.GetStyleColorVec4(idx)
    igGetStyleColorVec4(idx)
  end

  def self.GetTextLineHeight()
    igGetTextLineHeight()
  end

  def self.GetTextLineHeightWithSpacing()
    igGetTextLineHeightWithSpacing()
  end

  def self.GetTime()
    igGetTime()
  end

  def self.GetTreeNodeToLabelSpacing()
    igGetTreeNodeToLabelSpacing()
  end

  def self.GetVersion()
    igGetVersion()
  end

  def self.GetWindowContentRegionMax()
    pOut = ImVec2.new
    igGetWindowContentRegionMax(pOut)
    return pOut
  end

  def self.GetWindowContentRegionMin()
    pOut = ImVec2.new
    igGetWindowContentRegionMin(pOut)
    return pOut
  end

  def self.GetWindowContentRegionWidth()
    igGetWindowContentRegionWidth()
  end

  def self.GetWindowDrawList()
    igGetWindowDrawList()
  end

  def self.GetWindowHeight()
    igGetWindowHeight()
  end

  def self.GetWindowPos()
    pOut = ImVec2.new
    igGetWindowPos(pOut)
    return pOut
  end

  def self.GetWindowSize()
    pOut = ImVec2.new
    igGetWindowSize(pOut)
    return pOut
  end

  def self.GetWindowWidth()
    igGetWindowWidth()
  end

  def self.Image(user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), tint_col = ImVec4.create(1,1,1,1), border_col = ImVec4.create(0,0,0,0))
    igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
  end

  def self.ImageButton(user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), frame_padding = -1, bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))
    igImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col)
  end

  def self.Indent(indent_w = 0.0)
    igIndent(indent_w)
  end

  def self.InputDouble(label, v, step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0)
    igInputDouble(label, v, step, step_fast, format, flags)
  end

  def self.InputFloat(label, v, step = 0.0, step_fast = 0.0, format = "%.3f", flags = 0)
    igInputFloat(label, v, step, step_fast, format, flags)
  end

  def self.InputFloat2(label, v, format = "%.3f", flags = 0)
    igInputFloat2(label, v, format, flags)
  end

  def self.InputFloat3(label, v, format = "%.3f", flags = 0)
    igInputFloat3(label, v, format, flags)
  end

  def self.InputFloat4(label, v, format = "%.3f", flags = 0)
    igInputFloat4(label, v, format, flags)
  end

  def self.InputInt(label, v, step = 1, step_fast = 100, flags = 0)
    igInputInt(label, v, step, step_fast, flags)
  end

  def self.InputInt2(label, v, flags = 0)
    igInputInt2(label, v, flags)
  end

  def self.InputInt3(label, v, flags = 0)
    igInputInt3(label, v, flags)
  end

  def self.InputInt4(label, v, flags = 0)
    igInputInt4(label, v, flags)
  end

  def self.InputScalar(label, data_type, p_data, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    igInputScalar(label, data_type, p_data, p_step, p_step_fast, format, flags)
  end

  def self.InputScalarN(label, data_type, p_data, components, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    igInputScalarN(label, data_type, p_data, components, p_step, p_step_fast, format, flags)
  end

  def self.InputText(label, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    igInputText(label, buf, buf_size, flags, callback, user_data)
  end

  def self.InputTextMultiline(label, buf, buf_size, size = ImVec2.create(0,0), flags = 0, callback = nil, user_data = nil)
    igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)
  end

  def self.InputTextWithHint(label, hint, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    igInputTextWithHint(label, hint, buf, buf_size, flags, callback, user_data)
  end

  def self.InvisibleButton(str_id, size)
    igInvisibleButton(str_id, size)
  end

  def self.IsAnyItemActive()
    igIsAnyItemActive()
  end

  def self.IsAnyItemFocused()
    igIsAnyItemFocused()
  end

  def self.IsAnyItemHovered()
    igIsAnyItemHovered()
  end

  def self.IsAnyMouseDown()
    igIsAnyMouseDown()
  end

  def self.IsItemActivated()
    igIsItemActivated()
  end

  def self.IsItemActive()
    igIsItemActive()
  end

  def self.IsItemClicked(mouse_button = 0)
    igIsItemClicked(mouse_button)
  end

  def self.IsItemDeactivated()
    igIsItemDeactivated()
  end

  def self.IsItemDeactivatedAfterEdit()
    igIsItemDeactivatedAfterEdit()
  end

  def self.IsItemEdited()
    igIsItemEdited()
  end

  def self.IsItemFocused()
    igIsItemFocused()
  end

  def self.IsItemHovered(flags = 0)
    igIsItemHovered(flags)
  end

  def self.IsItemToggledOpen()
    igIsItemToggledOpen()
  end

  def self.IsItemVisible()
    igIsItemVisible()
  end

  def self.IsKeyDown(user_key_index)
    igIsKeyDown(user_key_index)
  end

  def self.IsKeyPressed(user_key_index, repeat = true)
    igIsKeyPressed(user_key_index, repeat)
  end

  def self.IsKeyReleased(user_key_index)
    igIsKeyReleased(user_key_index)
  end

  def self.IsMouseClicked(button, repeat = false)
    igIsMouseClicked(button, repeat)
  end

  def self.IsMouseDoubleClicked(button)
    igIsMouseDoubleClicked(button)
  end

  def self.IsMouseDown(button)
    igIsMouseDown(button)
  end

  def self.IsMouseDragging(button, lock_threshold = -1.0)
    igIsMouseDragging(button, lock_threshold)
  end

  def self.IsMouseHoveringRect(r_min, r_max, clip = true)
    igIsMouseHoveringRect(r_min, r_max, clip)
  end

  def self.IsMousePosValid(mouse_pos = nil)
    igIsMousePosValid(mouse_pos)
  end

  def self.IsMouseReleased(button)
    igIsMouseReleased(button)
  end

  def self.IsPopupOpen(str_id)
    igIsPopupOpen(str_id)
  end

  def self.IsRectVisibleNil(size)
    igIsRectVisibleNil(size)
  end

  def self.IsRectVisibleVec2(rect_min, rect_max)
    igIsRectVisibleVec2(rect_min, rect_max)
  end

  def self.IsWindowAppearing()
    igIsWindowAppearing()
  end

  def self.IsWindowCollapsed()
    igIsWindowCollapsed()
  end

  def self.IsWindowFocused(flags = 0)
    igIsWindowFocused(flags)
  end

  def self.IsWindowHovered(flags = 0)
    igIsWindowHovered(flags)
  end

  def self.LabelText(label, fmt, *varargs)
    igLabelText(label, fmt, *varargs)
  end

  def self.ListBoxStr_arr(label, current_item, items, items_count, height_in_items = -1)
    igListBoxStr_arr(label, current_item, items, items_count, height_in_items)
  end

  def self.ListBoxFnPtr(label, current_item, items_getter, data, items_count, height_in_items = -1)
    igListBoxFnPtr(label, current_item, items_getter, data, items_count, height_in_items)
  end

  def self.ListBoxFooter()
    igListBoxFooter()
  end

  def self.ListBoxHeaderVec2(label, size = ImVec2.create(0,0))
    igListBoxHeaderVec2(label, size)
  end

  def self.ListBoxHeaderInt(label, items_count, height_in_items = -1)
    igListBoxHeaderInt(label, items_count, height_in_items)
  end

  def self.LoadIniSettingsFromDisk(ini_filename)
    igLoadIniSettingsFromDisk(ini_filename)
  end

  def self.LoadIniSettingsFromMemory(ini_data, ini_size = 0)
    igLoadIniSettingsFromMemory(ini_data, ini_size)
  end

  def self.LogButtons()
    igLogButtons()
  end

  def self.LogFinish()
    igLogFinish()
  end

  def self.LogText(fmt, *varargs)
    igLogText(fmt, *varargs)
  end

  def self.LogToClipboard(auto_open_depth = -1)
    igLogToClipboard(auto_open_depth)
  end

  def self.LogToFile(auto_open_depth = -1, filename = nil)
    igLogToFile(auto_open_depth, filename)
  end

  def self.LogToTTY(auto_open_depth = -1)
    igLogToTTY(auto_open_depth)
  end

  def self.MemAlloc(size)
    igMemAlloc(size)
  end

  def self.MemFree(ptr)
    igMemFree(ptr)
  end

  def self.MenuItemBool(label, shortcut = nil, selected = false, enabled = true)
    igMenuItemBool(label, shortcut, selected, enabled)
  end

  def self.MenuItemBoolPtr(label, shortcut, p_selected, enabled = true)
    igMenuItemBoolPtr(label, shortcut, p_selected, enabled)
  end

  def self.NewFrame()
    igNewFrame()
  end

  def self.NewLine()
    igNewLine()
  end

  def self.NextColumn()
    igNextColumn()
  end

  def self.OpenPopup(str_id)
    igOpenPopup(str_id)
  end

  def self.OpenPopupOnItemClick(str_id = nil, mouse_button = 1)
    igOpenPopupOnItemClick(str_id, mouse_button)
  end

  def self.PlotHistogramFloatPtr(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    igPlotHistogramFloatPtr(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  def self.PlotHistogramFnPtr(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    igPlotHistogramFnPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  def self.PlotLinesFloatPtr(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    igPlotLinesFloatPtr(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  def self.PlotLinesFnPtr(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    igPlotLinesFnPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  def self.PopAllowKeyboardFocus()
    igPopAllowKeyboardFocus()
  end

  def self.PopButtonRepeat()
    igPopButtonRepeat()
  end

  def self.PopClipRect()
    igPopClipRect()
  end

  def self.PopFont()
    igPopFont()
  end

  def self.PopID()
    igPopID()
  end

  def self.PopItemWidth()
    igPopItemWidth()
  end

  def self.PopStyleColor(count = 1)
    igPopStyleColor(count)
  end

  def self.PopStyleVar(count = 1)
    igPopStyleVar(count)
  end

  def self.PopTextWrapPos()
    igPopTextWrapPos()
  end

  def self.ProgressBar(fraction, size_arg = ImVec2.create(-1,0), overlay = nil)
    igProgressBar(fraction, size_arg, overlay)
  end

  def self.PushAllowKeyboardFocus(allow_keyboard_focus)
    igPushAllowKeyboardFocus(allow_keyboard_focus)
  end

  def self.PushButtonRepeat(repeat)
    igPushButtonRepeat(repeat)
  end

  def self.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
    igPushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  def self.PushFont(font)
    igPushFont(font)
  end

  def self.PushIDStr(str_id)
    igPushIDStr(str_id)
  end

  def self.PushIDStrStr(str_id_begin, str_id_end)
    igPushIDStrStr(str_id_begin, str_id_end)
  end

  def self.PushIDPtr(ptr_id)
    igPushIDPtr(ptr_id)
  end

  def self.PushIDInt(int_id)
    igPushIDInt(int_id)
  end

  def self.PushItemWidth(item_width)
    igPushItemWidth(item_width)
  end

  def self.PushStyleColorU32(idx, col)
    igPushStyleColorU32(idx, col)
  end

  def self.PushStyleColorVec4(idx, col)
    igPushStyleColorVec4(idx, col)
  end

  def self.PushStyleVarFloat(idx, val)
    igPushStyleVarFloat(idx, val)
  end

  def self.PushStyleVarVec2(idx, val)
    igPushStyleVarVec2(idx, val)
  end

  def self.PushTextWrapPos(wrap_local_pos_x = 0.0)
    igPushTextWrapPos(wrap_local_pos_x)
  end

  def self.RadioButtonBool(label, active)
    igRadioButtonBool(label, active)
  end

  def self.RadioButtonIntPtr(label, v, v_button)
    igRadioButtonIntPtr(label, v, v_button)
  end

  def self.Render()
    igRender()
  end

  def self.ResetMouseDragDelta(button = 0)
    igResetMouseDragDelta(button)
  end

  def self.SameLine(offset_from_start_x = 0.0, spacing = -1.0)
    igSameLine(offset_from_start_x, spacing)
  end

  def self.SaveIniSettingsToDisk(ini_filename)
    igSaveIniSettingsToDisk(ini_filename)
  end

  def self.SaveIniSettingsToMemory(out_ini_size = nil)
    igSaveIniSettingsToMemory(out_ini_size)
  end

  def self.SelectableBool(label, selected = false, flags = 0, size = ImVec2.create(0,0))
    igSelectableBool(label, selected, flags, size)
  end

  def self.SelectableBoolPtr(label, p_selected, flags = 0, size = ImVec2.create(0,0))
    igSelectableBoolPtr(label, p_selected, flags, size)
  end

  def self.Separator()
    igSeparator()
  end

  def self.SetAllocatorFunctions(alloc_func, free_func, user_data = nil)
    igSetAllocatorFunctions(alloc_func, free_func, user_data)
  end

  def self.SetClipboardText(text)
    igSetClipboardText(text)
  end

  def self.SetColorEditOptions(flags)
    igSetColorEditOptions(flags)
  end

  def self.SetColumnOffset(column_index, offset_x)
    igSetColumnOffset(column_index, offset_x)
  end

  def self.SetColumnWidth(column_index, width)
    igSetColumnWidth(column_index, width)
  end

  def self.SetCurrentContext(ctx)
    igSetCurrentContext(ctx)
  end

  def self.SetCursorPos(local_pos)
    igSetCursorPos(local_pos)
  end

  def self.SetCursorPosX(local_x)
    igSetCursorPosX(local_x)
  end

  def self.SetCursorPosY(local_y)
    igSetCursorPosY(local_y)
  end

  def self.SetCursorScreenPos(pos)
    igSetCursorScreenPos(pos)
  end

  def self.SetDragDropPayload(type, data, sz, cond = 0)
    igSetDragDropPayload(type, data, sz, cond)
  end

  def self.SetItemAllowOverlap()
    igSetItemAllowOverlap()
  end

  def self.SetItemDefaultFocus()
    igSetItemDefaultFocus()
  end

  def self.SetKeyboardFocusHere(offset = 0)
    igSetKeyboardFocusHere(offset)
  end

  def self.SetMouseCursor(cursor_type)
    igSetMouseCursor(cursor_type)
  end

  def self.SetNextItemOpen(is_open, cond = 0)
    igSetNextItemOpen(is_open, cond)
  end

  def self.SetNextItemWidth(item_width)
    igSetNextItemWidth(item_width)
  end

  def self.SetNextWindowBgAlpha(alpha)
    igSetNextWindowBgAlpha(alpha)
  end

  def self.SetNextWindowCollapsed(collapsed, cond = 0)
    igSetNextWindowCollapsed(collapsed, cond)
  end

  def self.SetNextWindowContentSize(size)
    igSetNextWindowContentSize(size)
  end

  def self.SetNextWindowFocus()
    igSetNextWindowFocus()
  end

  def self.SetNextWindowPos(pos, cond = 0, pivot = ImVec2.create(0,0))
    igSetNextWindowPos(pos, cond, pivot)
  end

  def self.SetNextWindowSize(size, cond = 0)
    igSetNextWindowSize(size, cond)
  end

  def self.SetNextWindowSizeConstraints(size_min, size_max, custom_callback = nil, custom_callback_data = nil)
    igSetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data)
  end

  def self.SetScrollFromPosX(local_x, center_x_ratio = 0.5)
    igSetScrollFromPosX(local_x, center_x_ratio)
  end

  def self.SetScrollFromPosY(local_y, center_y_ratio = 0.5)
    igSetScrollFromPosY(local_y, center_y_ratio)
  end

  def self.SetScrollHereX(center_x_ratio = 0.5)
    igSetScrollHereX(center_x_ratio)
  end

  def self.SetScrollHereY(center_y_ratio = 0.5)
    igSetScrollHereY(center_y_ratio)
  end

  def self.SetScrollX(scroll_x)
    igSetScrollX(scroll_x)
  end

  def self.SetScrollY(scroll_y)
    igSetScrollY(scroll_y)
  end

  def self.SetStateStorage(storage)
    igSetStateStorage(storage)
  end

  def self.SetTabItemClosed(tab_or_docked_window_label)
    igSetTabItemClosed(tab_or_docked_window_label)
  end

  def self.SetTooltip(fmt, *varargs)
    igSetTooltip(fmt, *varargs)
  end

  def self.SetWindowCollapsedBool(collapsed, cond = 0)
    igSetWindowCollapsedBool(collapsed, cond)
  end

  def self.SetWindowCollapsedStr(name, collapsed, cond = 0)
    igSetWindowCollapsedStr(name, collapsed, cond)
  end

  def self.SetWindowFocusNil()
    igSetWindowFocusNil()
  end

  def self.SetWindowFocusStr(name)
    igSetWindowFocusStr(name)
  end

  def self.SetWindowFontScale(scale)
    igSetWindowFontScale(scale)
  end

  def self.SetWindowPosVec2(pos, cond = 0)
    igSetWindowPosVec2(pos, cond)
  end

  def self.SetWindowPosStr(name, pos, cond = 0)
    igSetWindowPosStr(name, pos, cond)
  end

  def self.SetWindowSizeVec2(size, cond = 0)
    igSetWindowSizeVec2(size, cond)
  end

  def self.SetWindowSizeStr(name, size, cond = 0)
    igSetWindowSizeStr(name, size, cond)
  end

  def self.ShowAboutWindow(p_open = nil)
    igShowAboutWindow(p_open)
  end

  def self.ShowDemoWindow(p_open = nil)
    igShowDemoWindow(p_open)
  end

  def self.ShowFontSelector(label)
    igShowFontSelector(label)
  end

  def self.ShowMetricsWindow(p_open = nil)
    igShowMetricsWindow(p_open)
  end

  def self.ShowStyleEditor(ref = nil)
    igShowStyleEditor(ref)
  end

  def self.ShowStyleSelector(label)
    igShowStyleSelector(label)
  end

  def self.ShowUserGuide()
    igShowUserGuide()
  end

  def self.SliderAngle(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg")
    igSliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format)
  end

  def self.SliderFloat(label, v, v_min, v_max, format = "%.3f", power = 1.0)
    igSliderFloat(label, v, v_min, v_max, format, power)
  end

  def self.SliderFloat2(label, v, v_min, v_max, format = "%.3f", power = 1.0)
    igSliderFloat2(label, v, v_min, v_max, format, power)
  end

  def self.SliderFloat3(label, v, v_min, v_max, format = "%.3f", power = 1.0)
    igSliderFloat3(label, v, v_min, v_max, format, power)
  end

  def self.SliderFloat4(label, v, v_min, v_max, format = "%.3f", power = 1.0)
    igSliderFloat4(label, v, v_min, v_max, format, power)
  end

  def self.SliderInt(label, v, v_min, v_max, format = "%d")
    igSliderInt(label, v, v_min, v_max, format)
  end

  def self.SliderInt2(label, v, v_min, v_max, format = "%d")
    igSliderInt2(label, v, v_min, v_max, format)
  end

  def self.SliderInt3(label, v, v_min, v_max, format = "%d")
    igSliderInt3(label, v, v_min, v_max, format)
  end

  def self.SliderInt4(label, v, v_min, v_max, format = "%d")
    igSliderInt4(label, v, v_min, v_max, format)
  end

  def self.SliderScalar(label, data_type, p_data, p_min, p_max, format = nil, power = 1.0)
    igSliderScalar(label, data_type, p_data, p_min, p_max, format, power)
  end

  def self.SliderScalarN(label, data_type, p_data, components, p_min, p_max, format = nil, power = 1.0)
    igSliderScalarN(label, data_type, p_data, components, p_min, p_max, format, power)
  end

  def self.SmallButton(label)
    igSmallButton(label)
  end

  def self.Spacing()
    igSpacing()
  end

  def self.StyleColorsClassic(dst = nil)
    igStyleColorsClassic(dst)
  end

  def self.StyleColorsDark(dst = nil)
    igStyleColorsDark(dst)
  end

  def self.StyleColorsLight(dst = nil)
    igStyleColorsLight(dst)
  end

  def self.Text(fmt, *varargs)
    igText(fmt, *varargs)
  end

  def self.TextColored(col, fmt, *varargs)
    igTextColored(col, fmt, *varargs)
  end

  def self.TextDisabled(fmt, *varargs)
    igTextDisabled(fmt, *varargs)
  end

  def self.TextUnformatted(text, text_end = nil)
    igTextUnformatted(text, text_end)
  end

  def self.TextWrapped(fmt, *varargs)
    igTextWrapped(fmt, *varargs)
  end

  def self.TreeNodeStr(label)
    igTreeNodeStr(label)
  end

  def self.TreeNodeStrStr(str_id, fmt, *varargs)
    igTreeNodeStrStr(str_id, fmt, *varargs)
  end

  def self.TreeNodePtr(ptr_id, fmt, *varargs)
    igTreeNodePtr(ptr_id, fmt, *varargs)
  end

  def self.TreeNodeExStr(label, flags = 0)
    igTreeNodeExStr(label, flags)
  end

  def self.TreeNodeExStrStr(str_id, flags, fmt, *varargs)
    igTreeNodeExStrStr(str_id, flags, fmt, *varargs)
  end

  def self.TreeNodeExPtr(ptr_id, flags, fmt, *varargs)
    igTreeNodeExPtr(ptr_id, flags, fmt, *varargs)
  end

  def self.TreePop()
    igTreePop()
  end

  def self.TreePushStr(str_id)
    igTreePushStr(str_id)
  end

  def self.TreePushPtr(ptr_id = nil)
    igTreePushPtr(ptr_id)
  end

  def self.Unindent(indent_w = 0.0)
    igUnindent(indent_w)
  end

  def self.VSliderFloat(label, size, v, v_min, v_max, format = "%.3f", power = 1.0)
    igVSliderFloat(label, size, v, v_min, v_max, format, power)
  end

  def self.VSliderInt(label, size, v, v_min, v_max, format = "%d")
    igVSliderInt(label, size, v, v_min, v_max, format)
  end

  def self.VSliderScalar(label, size, data_type, p_data, p_min, p_max, format = nil, power = 1.0)
    igVSliderScalar(label, size, data_type, p_data, p_min, p_max, format, power)
  end

  def self.ValueBool(prefix, b)
    igValueBool(prefix, b)
  end

  def self.ValueInt(prefix, v)
    igValueInt(prefix, v)
  end

  def self.ValueUint(prefix, v)
    igValueUint(prefix, v)
  end

  def self.ValueFloat(prefix, v, float_format = nil)
    igValueFloat(prefix, v, float_format)
  end

end # module ImGui
