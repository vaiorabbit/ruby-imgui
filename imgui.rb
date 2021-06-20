# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

FFI.typedef :int, :ImDrawFlags
FFI.typedef :ushort, :ImDrawIdx
FFI.typedef :int, :ImDrawListFlags
FFI.typedef :int, :ImFontAtlasFlags
FFI.typedef :int, :ImGuiBackendFlags
FFI.typedef :int, :ImGuiButtonFlags
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
FFI.typedef :pointer, :ImGuiMemAllocFunc
FFI.typedef :pointer, :ImGuiMemFreeFunc
FFI.typedef :int, :ImGuiMouseButton
FFI.typedef :int, :ImGuiMouseCursor
FFI.typedef :int, :ImGuiNavInput
FFI.typedef :int, :ImGuiPopupFlags
FFI.typedef :int, :ImGuiSelectableFlags
FFI.typedef :int, :ImGuiSliderFlags
FFI.typedef :int, :ImGuiSortDirection
FFI.typedef :int, :ImGuiStyleVar
FFI.typedef :int, :ImGuiTabBarFlags
FFI.typedef :int, :ImGuiTabItemFlags
FFI.typedef :int, :ImGuiTableBgTarget
FFI.typedef :int, :ImGuiTableColumnFlags
FFI.typedef :int, :ImGuiTableFlags
FFI.typedef :int, :ImGuiTableRowFlags
FFI.typedef :int, :ImGuiTreeNodeFlags
FFI.typedef :int, :ImGuiViewportFlags
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

# ImDrawFlags_
ImDrawFlags_None = 0 # 0
ImDrawFlags_Closed = 1 # 1 << 0
ImDrawFlags_RoundCornersTopLeft = 16 # 1 << 4
ImDrawFlags_RoundCornersTopRight = 32 # 1 << 5
ImDrawFlags_RoundCornersBottomLeft = 64 # 1 << 6
ImDrawFlags_RoundCornersBottomRight = 128 # 1 << 7
ImDrawFlags_RoundCornersNone = 256 # 1 << 8
ImDrawFlags_RoundCornersTop = 48 # ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight
ImDrawFlags_RoundCornersBottom = 192 # ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight
ImDrawFlags_RoundCornersLeft = 80 # ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersTopLeft
ImDrawFlags_RoundCornersRight = 160 # ImDrawFlags_RoundCornersBottomRight | ImDrawFlags_RoundCornersTopRight
ImDrawFlags_RoundCornersAll = 240 # ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight | ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight
ImDrawFlags_RoundCornersDefault_ = 240 # ImDrawFlags_RoundCornersAll
ImDrawFlags_RoundCornersMask_ = 496 # ImDrawFlags_RoundCornersAll | ImDrawFlags_RoundCornersNone

# ImDrawListFlags_
ImDrawListFlags_None = 0 # 0
ImDrawListFlags_AntiAliasedLines = 1 # 1 << 0
ImDrawListFlags_AntiAliasedLinesUseTex = 2 # 1 << 1
ImDrawListFlags_AntiAliasedFill = 4 # 1 << 2
ImDrawListFlags_AllowVtxOffset = 8 # 1 << 3

# ImFontAtlasFlags_
ImFontAtlasFlags_None = 0 # 0
ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 1 << 0
ImFontAtlasFlags_NoMouseCursors = 2 # 1 << 1
ImFontAtlasFlags_NoBakedLines = 4 # 1 << 2

# ImGuiBackendFlags_
ImGuiBackendFlags_None = 0 # 0
ImGuiBackendFlags_HasGamepad = 1 # 1 << 0
ImGuiBackendFlags_HasMouseCursors = 2 # 1 << 1
ImGuiBackendFlags_HasSetMousePos = 4 # 1 << 2
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 1 << 3

# ImGuiButtonFlags_
ImGuiButtonFlags_None = 0 # 0
ImGuiButtonFlags_MouseButtonLeft = 1 # 1 << 0
ImGuiButtonFlags_MouseButtonRight = 2 # 1 << 1
ImGuiButtonFlags_MouseButtonMiddle = 4 # 1 << 2
ImGuiButtonFlags_MouseButtonMask_ = 7 # ImGuiButtonFlags_MouseButtonLeft | ImGuiButtonFlags_MouseButtonRight | ImGuiButtonFlags_MouseButtonMiddle
ImGuiButtonFlags_MouseButtonDefault_ = 1 # ImGuiButtonFlags_MouseButtonLeft

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
ImGuiCol_TableHeaderBg = 42 # 42
ImGuiCol_TableBorderStrong = 43 # 43
ImGuiCol_TableBorderLight = 44 # 44
ImGuiCol_TableRowBg = 45 # 45
ImGuiCol_TableRowBgAlt = 46 # 46
ImGuiCol_TextSelectedBg = 47 # 47
ImGuiCol_DragDropTarget = 48 # 48
ImGuiCol_NavHighlight = 49 # 49
ImGuiCol_NavWindowingHighlight = 50 # 50
ImGuiCol_NavWindowingDimBg = 51 # 51
ImGuiCol_ModalWindowDimBg = 52 # 52
ImGuiCol_COUNT = 53 # 53

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
ImGuiColorEditFlags__OptionsDefault = 177209344 # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags__DisplayMask = 7340032 # ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex
ImGuiColorEditFlags__DataTypeMask = 25165824 # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float
ImGuiColorEditFlags__PickerMask = 100663296 # ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags__InputMask = 402653184 # ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV

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
ImGuiCond_None = 0 # 0
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
ImGuiInputTextFlags_AlwaysOverwrite = 8192 # 1 << 13
ImGuiInputTextFlags_ReadOnly = 16384 # 1 << 14
ImGuiInputTextFlags_Password = 32768 # 1 << 15
ImGuiInputTextFlags_NoUndoRedo = 65536 # 1 << 16
ImGuiInputTextFlags_CharsScientific = 131072 # 1 << 17
ImGuiInputTextFlags_CallbackResize = 262144 # 1 << 18
ImGuiInputTextFlags_CallbackEdit = 524288 # 1 << 19

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

# ImGuiPopupFlags_
ImGuiPopupFlags_None = 0 # 0
ImGuiPopupFlags_MouseButtonLeft = 0 # 0
ImGuiPopupFlags_MouseButtonRight = 1 # 1
ImGuiPopupFlags_MouseButtonMiddle = 2 # 2
ImGuiPopupFlags_MouseButtonMask_ = 31 # 0x1F
ImGuiPopupFlags_MouseButtonDefault_ = 1 # 1
ImGuiPopupFlags_NoOpenOverExistingPopup = 32 # 1 << 5
ImGuiPopupFlags_NoOpenOverItems = 64 # 1 << 6
ImGuiPopupFlags_AnyPopupId = 128 # 1 << 7
ImGuiPopupFlags_AnyPopupLevel = 256 # 1 << 8
ImGuiPopupFlags_AnyPopup = 384 # ImGuiPopupFlags_AnyPopupId | ImGuiPopupFlags_AnyPopupLevel

# ImGuiSelectableFlags_
ImGuiSelectableFlags_None = 0 # 0
ImGuiSelectableFlags_DontClosePopups = 1 # 1 << 0
ImGuiSelectableFlags_SpanAllColumns = 2 # 1 << 1
ImGuiSelectableFlags_AllowDoubleClick = 4 # 1 << 2
ImGuiSelectableFlags_Disabled = 8 # 1 << 3
ImGuiSelectableFlags_AllowItemOverlap = 16 # 1 << 4

# ImGuiSliderFlags_
ImGuiSliderFlags_None = 0 # 0
ImGuiSliderFlags_AlwaysClamp = 16 # 1 << 4
ImGuiSliderFlags_Logarithmic = 32 # 1 << 5
ImGuiSliderFlags_NoRoundToFormat = 64 # 1 << 6
ImGuiSliderFlags_NoInput = 128 # 1 << 7
ImGuiSliderFlags_InvalidMask_ = 1879048207 # 0x7000000F

# ImGuiSortDirection_
ImGuiSortDirection_None = 0 # 0
ImGuiSortDirection_Ascending = 1 # 1
ImGuiSortDirection_Descending = 2 # 2

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
ImGuiStyleVar_CellPadding = 16 # 16
ImGuiStyleVar_ScrollbarSize = 17 # 17
ImGuiStyleVar_ScrollbarRounding = 18 # 18
ImGuiStyleVar_GrabMinSize = 19 # 19
ImGuiStyleVar_GrabRounding = 20 # 20
ImGuiStyleVar_TabRounding = 21 # 21
ImGuiStyleVar_ButtonTextAlign = 22 # 22
ImGuiStyleVar_SelectableTextAlign = 23 # 23
ImGuiStyleVar_COUNT = 24 # 24

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
ImGuiTabItemFlags_NoTooltip = 16 # 1 << 4
ImGuiTabItemFlags_NoReorder = 32 # 1 << 5
ImGuiTabItemFlags_Leading = 64 # 1 << 6
ImGuiTabItemFlags_Trailing = 128 # 1 << 7

# ImGuiTableBgTarget_
ImGuiTableBgTarget_None = 0 # 0
ImGuiTableBgTarget_RowBg0 = 1 # 1
ImGuiTableBgTarget_RowBg1 = 2 # 2
ImGuiTableBgTarget_CellBg = 3 # 3

# ImGuiTableColumnFlags_
ImGuiTableColumnFlags_None = 0 # 0
ImGuiTableColumnFlags_DefaultHide = 1 # 1 << 0
ImGuiTableColumnFlags_DefaultSort = 2 # 1 << 1
ImGuiTableColumnFlags_WidthStretch = 4 # 1 << 2
ImGuiTableColumnFlags_WidthFixed = 8 # 1 << 3
ImGuiTableColumnFlags_NoResize = 16 # 1 << 4
ImGuiTableColumnFlags_NoReorder = 32 # 1 << 5
ImGuiTableColumnFlags_NoHide = 64 # 1 << 6
ImGuiTableColumnFlags_NoClip = 128 # 1 << 7
ImGuiTableColumnFlags_NoSort = 256 # 1 << 8
ImGuiTableColumnFlags_NoSortAscending = 512 # 1 << 9
ImGuiTableColumnFlags_NoSortDescending = 1024 # 1 << 10
ImGuiTableColumnFlags_NoHeaderWidth = 2048 # 1 << 11
ImGuiTableColumnFlags_PreferSortAscending = 4096 # 1 << 12
ImGuiTableColumnFlags_PreferSortDescending = 8192 # 1 << 13
ImGuiTableColumnFlags_IndentEnable = 16384 # 1 << 14
ImGuiTableColumnFlags_IndentDisable = 32768 # 1 << 15
ImGuiTableColumnFlags_IsEnabled = 1048576 # 1 << 20
ImGuiTableColumnFlags_IsVisible = 2097152 # 1 << 21
ImGuiTableColumnFlags_IsSorted = 4194304 # 1 << 22
ImGuiTableColumnFlags_IsHovered = 8388608 # 1 << 23
ImGuiTableColumnFlags_WidthMask_ = 12 # ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed
ImGuiTableColumnFlags_IndentMask_ = 49152 # ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable
ImGuiTableColumnFlags_StatusMask_ = 15728640 # ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered
ImGuiTableColumnFlags_NoDirectResize_ = 1073741824 # 1 << 30

# ImGuiTableFlags_
ImGuiTableFlags_None = 0 # 0
ImGuiTableFlags_Resizable = 1 # 1 << 0
ImGuiTableFlags_Reorderable = 2 # 1 << 1
ImGuiTableFlags_Hideable = 4 # 1 << 2
ImGuiTableFlags_Sortable = 8 # 1 << 3
ImGuiTableFlags_NoSavedSettings = 16 # 1 << 4
ImGuiTableFlags_ContextMenuInBody = 32 # 1 << 5
ImGuiTableFlags_RowBg = 64 # 1 << 6
ImGuiTableFlags_BordersInnerH = 128 # 1 << 7
ImGuiTableFlags_BordersOuterH = 256 # 1 << 8
ImGuiTableFlags_BordersInnerV = 512 # 1 << 9
ImGuiTableFlags_BordersOuterV = 1024 # 1 << 10
ImGuiTableFlags_BordersH = 384 # ImGuiTableFlags_BordersInnerH | ImGuiTableFlags_BordersOuterH
ImGuiTableFlags_BordersV = 1536 # ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersOuterV
ImGuiTableFlags_BordersInner = 640 # ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersInnerH
ImGuiTableFlags_BordersOuter = 1280 # ImGuiTableFlags_BordersOuterV | ImGuiTableFlags_BordersOuterH
ImGuiTableFlags_Borders = 1920 # ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter
ImGuiTableFlags_NoBordersInBody = 2048 # 1 << 11
ImGuiTableFlags_NoBordersInBodyUntilResize = 4096 # 1 << 12
ImGuiTableFlags_SizingFixedFit = 8192 # 1 << 13
ImGuiTableFlags_SizingFixedSame = 16384 # 2 << 13
ImGuiTableFlags_SizingStretchProp = 24576 # 3 << 13
ImGuiTableFlags_SizingStretchSame = 32768 # 4 << 13
ImGuiTableFlags_NoHostExtendX = 65536 # 1 << 16
ImGuiTableFlags_NoHostExtendY = 131072 # 1 << 17
ImGuiTableFlags_NoKeepColumnsVisible = 262144 # 1 << 18
ImGuiTableFlags_PreciseWidths = 524288 # 1 << 19
ImGuiTableFlags_NoClip = 1048576 # 1 << 20
ImGuiTableFlags_PadOuterX = 2097152 # 1 << 21
ImGuiTableFlags_NoPadOuterX = 4194304 # 1 << 22
ImGuiTableFlags_NoPadInnerX = 8388608 # 1 << 23
ImGuiTableFlags_ScrollX = 16777216 # 1 << 24
ImGuiTableFlags_ScrollY = 33554432 # 1 << 25
ImGuiTableFlags_SortMulti = 67108864 # 1 << 26
ImGuiTableFlags_SortTristate = 134217728 # 1 << 27
ImGuiTableFlags_SizingMask_ = 57344 # ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_SizingFixedSame | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_SizingStretchSame

# ImGuiTableRowFlags_
ImGuiTableRowFlags_None = 0 # 0
ImGuiTableRowFlags_Headers = 1 # 1 << 0

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

# ImGuiViewportFlags_
ImGuiViewportFlags_None = 0 # 0
ImGuiViewportFlags_IsPlatformWindow = 1 # 1 << 0
ImGuiViewportFlags_IsPlatformMonitor = 2 # 1 << 1
ImGuiViewportFlags_OwnedByApp = 4 # 1 << 2

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

class ImDrawCmd < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,
    :TextureId, :pointer,
    :VtxOffset, :uint,
    :IdxOffset, :uint,
    :ElemCount, :uint,
    :UserCallback, :pointer,
    :UserCallbackData, :pointer
  )
end

class ImDrawCmdHeader < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,
    :TextureId, :pointer,
    :VtxOffset, :uint
  )
end

class ImDrawList < FFI::Struct
  layout(
    :CmdBuffer, ImVector.by_value,
    :IdxBuffer, ImVector.by_value,
    :VtxBuffer, ImVector.by_value,
    :Flags, :int,
    :_VtxCurrentIdx, :uint,
    :_Data, :pointer,
    :_OwnerName, :pointer,
    :_VtxWritePtr, ImDrawVert.ptr,
    :_IdxWritePtr, :pointer,
    :_ClipRectStack, ImVector.by_value,
    :_TextureIdStack, ImVector.by_value,
    :_Path, ImVector.by_value,
    :_CmdHeader, ImDrawCmdHeader.by_value,
    :_Splitter, ImDrawListSplitter.by_value,
    :_FringeScale, :float
  )

  def AddBezierCubic(p1, p2, p3, p4, col, thickness, num_segments = 0)
    ImGui::ImDrawList_AddBezierCubic(self, p1, p2, p3, p4, col, thickness, num_segments)
  end

  def AddBezierQuadratic(p1, p2, p3, col, thickness, num_segments = 0)
    ImGui::ImDrawList_AddBezierQuadratic(self, p1, p2, p3, col, thickness, num_segments)
  end

  def AddCallback(callback, callback_data)
    ImGui::ImDrawList_AddCallback(self, callback, callback_data)
  end

  def AddCircle(center, radius, col, num_segments = 0, thickness = 1.0)
    ImGui::ImDrawList_AddCircle(self, center, radius, col, num_segments, thickness)
  end

  def AddCircleFilled(center, radius, col, num_segments = 0)
    ImGui::ImDrawList_AddCircleFilled(self, center, radius, col, num_segments)
  end

  def AddConvexPolyFilled(points, num_points, col)
    ImGui::ImDrawList_AddConvexPolyFilled(self, points, num_points, col)
  end

  def AddDrawCmd()
    ImGui::ImDrawList_AddDrawCmd(self)
  end

  def AddImage(user_texture_id, p_min, p_max, uv_min = ImVec2.create(0,0), uv_max = ImVec2.create(1,1), col = ImColor.col32(255,255,255,255))
    ImGui::ImDrawList_AddImage(self, user_texture_id, p_min, p_max, uv_min, uv_max, col)
  end

  def AddImageQuad(user_texture_id, p1, p2, p3, p4, uv1 = ImVec2.create(0,0), uv2 = ImVec2.create(1,0), uv3 = ImVec2.create(1,1), uv4 = ImVec2.create(0,1), col = ImColor.col32(255,255,255,255))
    ImGui::ImDrawList_AddImageQuad(self, user_texture_id, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col)
  end

  def AddImageRounded(user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, flags = 0)
    ImGui::ImDrawList_AddImageRounded(self, user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, flags)
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

  def AddPolyline(points, num_points, col, flags, thickness)
    ImGui::ImDrawList_AddPolyline(self, points, num_points, col, flags, thickness)
  end

  def AddQuad(p1, p2, p3, p4, col, thickness = 1.0)
    ImGui::ImDrawList_AddQuad(self, p1, p2, p3, p4, col, thickness)
  end

  def AddQuadFilled(p1, p2, p3, p4, col)
    ImGui::ImDrawList_AddQuadFilled(self, p1, p2, p3, p4, col)
  end

  def AddRect(p_min, p_max, col, rounding = 0.0, flags = 0, thickness = 1.0)
    ImGui::ImDrawList_AddRect(self, p_min, p_max, col, rounding, flags, thickness)
  end

  def AddRectFilled(p_min, p_max, col, rounding = 0.0, flags = 0)
    ImGui::ImDrawList_AddRectFilled(self, p_min, p_max, col, rounding, flags)
  end

  def AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
    ImGui::ImDrawList_AddRectFilledMultiColor(self, p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
  end

  def AddText_Vec2(pos, col, text_begin, text_end = nil)
    ImGui::ImDrawList_AddText_Vec2(self, pos, col, text_begin, text_end)
  end

  def AddText_FontPtr(font, font_size, pos, col, text_begin, text_end = nil, wrap_width = 0.0, cpu_fine_clip_rect = nil)
    ImGui::ImDrawList_AddText_FontPtr(self, font, font_size, pos, col, text_begin, text_end, wrap_width, cpu_fine_clip_rect)
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

  def PathArcTo(center, radius, a_min, a_max, num_segments = 0)
    ImGui::ImDrawList_PathArcTo(self, center, radius, a_min, a_max, num_segments)
  end

  def PathArcToFast(center, radius, a_min_of_12, a_max_of_12)
    ImGui::ImDrawList_PathArcToFast(self, center, radius, a_min_of_12, a_max_of_12)
  end

  def PathBezierCubicCurveTo(p2, p3, p4, num_segments = 0)
    ImGui::ImDrawList_PathBezierCubicCurveTo(self, p2, p3, p4, num_segments)
  end

  def PathBezierQuadraticCurveTo(p2, p3, num_segments = 0)
    ImGui::ImDrawList_PathBezierQuadraticCurveTo(self, p2, p3, num_segments)
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

  def PathRect(rect_min, rect_max, rounding = 0.0, flags = 0)
    ImGui::ImDrawList_PathRect(self, rect_min, rect_max, rounding, flags)
  end

  def PathStroke(col, flags = 0, thickness = 1.0)
    ImGui::ImDrawList_PathStroke(self, col, flags, thickness)
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

  def _CalcCircleAutoSegmentCount(radius)
    ImGui::ImDrawList__CalcCircleAutoSegmentCount(self, radius)
  end

  def _ClearFreeMemory()
    ImGui::ImDrawList__ClearFreeMemory(self)
  end

  def _OnChangedClipRect()
    ImGui::ImDrawList__OnChangedClipRect(self)
  end

  def _OnChangedTextureID()
    ImGui::ImDrawList__OnChangedTextureID(self)
  end

  def _OnChangedVtxOffset()
    ImGui::ImDrawList__OnChangedVtxOffset(self)
  end

  def _PathArcToFastEx(center, radius, a_min_sample, a_max_sample, a_step)
    ImGui::ImDrawList__PathArcToFastEx(self, center, radius, a_min_sample, a_max_sample, a_step)
  end

  def _PathArcToN(center, radius, a_min, a_max, num_segments)
    ImGui::ImDrawList__PathArcToN(self, center, radius, a_min, a_max, num_segments)
  end

  def _PopUnusedDrawCmd()
    ImGui::ImDrawList__PopUnusedDrawCmd(self)
  end

  def _ResetForNewFrame()
    ImGui::ImDrawList__ResetForNewFrame(self)
  end

  def destroy()
    ImGui::ImDrawList_destroy(self)
  end

end

class ImFontAtlas < FFI::Struct
  layout(
    :Flags, :int,
    :TexID, :pointer,
    :TexDesiredWidth, :int,
    :TexGlyphPadding, :int,
    :Locked, :bool,
    :TexPixelsUseColors, :bool,
    :TexPixelsAlpha8, :pointer,
    :TexPixelsRGBA32, :pointer,
    :TexWidth, :int,
    :TexHeight, :int,
    :TexUvScale, ImVec2.by_value,
    :TexUvWhitePixel, ImVec2.by_value,
    :Fonts, ImVector.by_value,
    :CustomRects, ImVector.by_value,
    :ConfigData, ImVector.by_value,
    :TexUvLines, [ImVec4.by_value, 64],
    :FontBuilderIO, :pointer,
    :FontBuilderFlags, :uint,
    :PackIdMouseCursors, :int,
    :PackIdLines, :int
  )

  def AddCustomRectFontGlyph(font, id, width, height, advance_x, offset = ImVec2.create(0,0))
    ImGui::ImFontAtlas_AddCustomRectFontGlyph(self, font, id, width, height, advance_x, offset)
  end

  def AddCustomRectRegular(width, height)
    ImGui::ImFontAtlas_AddCustomRectRegular(self, width, height)
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

class ImDrawData < FFI::Struct
  layout(
    :Valid, :bool,
    :CmdListsCount, :int,
    :TotalIdxCount, :int,
    :TotalVtxCount, :int,
    :CmdLists, ImDrawList.ptr,
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
    :Used4kPagesMap, [:uchar, 2]
  )
end

class ImFontAtlasCustomRect < FFI::Struct
  layout(
    :Width, :ushort,
    :Height, :ushort,
    :X, :ushort,
    :Y, :ushort,
    :GlyphID, :uint,
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
    :FontBuilderFlags, :uint,
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
    :ConfigDragClickToInputText, :bool,
    :ConfigWindowsResizeFromEdges, :bool,
    :ConfigWindowsMoveFromTitleBarOnly, :bool,
    :ConfigMemoryCompactTimer, :float,
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
    :PenPressure, :float,
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
    :CellPadding, ImVec2.by_value,
    :TouchExtraPadding, ImVec2.by_value,
    :IndentSpacing, :float,
    :ColumnsMinSpacing, :float,
    :ScrollbarSize, :float,
    :ScrollbarRounding, :float,
    :GrabMinSize, :float,
    :GrabRounding, :float,
    :LogSliderDeadzone, :float,
    :TabRounding, :float,
    :TabBorderSize, :float,
    :TabMinWidthForCloseButton, :float,
    :ColorButtonPosition, :int,
    :ButtonTextAlign, ImVec2.by_value,
    :SelectableTextAlign, ImVec2.by_value,
    :DisplayWindowPadding, ImVec2.by_value,
    :DisplaySafeAreaPadding, ImVec2.by_value,
    :MouseCursorScale, :float,
    :AntiAliasedLines, :bool,
    :AntiAliasedLinesUseTex, :bool,
    :AntiAliasedFill, :bool,
    :CurveTessellationTol, :float,
    :CircleTessellationMaxError, :float,
    :Colors, [ImVec4.by_value, 53]
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

class ImGuiTableColumnSortSpecs < FFI::Struct
  layout(
    :ColumnUserID, :uint,
    :ColumnIndex, :short,
    :SortOrder, :short,
    :SortDirection, :int
  )
end

class ImGuiTableSortSpecs < FFI::Struct
  layout(
    :Specs, :pointer,
    :SpecsCount, :int,
    :SpecsDirty, :bool
  )
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
    return ImGuiTextRange.new(ImGui::ImGuiTextRange_ImGuiTextRange_Nil())
  end

  def self.create(_b, _e)
    return ImGuiTextRange.new(ImGui::ImGuiTextRange_ImGuiTextRange_Str(_b, _e))
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

class ImGuiViewport < FFI::Struct
  layout(
    :Flags, :int,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :WorkPos, ImVec2.by_value,
    :WorkSize, ImVec2.by_value
  )
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

  def self.load_lib(libpath = './imgui.dylib', output_error = false)
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols(output_error) unless @@imgui_import_done
  end

  def self.import_symbols(output_error = false)
    callback :ImDrawCallback, [ImDrawList, ImDrawCmd], :void
    callback :ImGuiInputTextCallback, [ImGuiInputTextCallbackData], :int
    callback :ImGuiSizeCallback, [ImGuiSizeCallbackData], :void

    symbols = [
      :ImDrawList_AddBezierCubic,
      :ImDrawList_AddBezierQuadratic,
      :ImDrawList_AddCallback,
      :ImDrawList_AddCircle,
      :ImDrawList_AddCircleFilled,
      :ImDrawList_AddConvexPolyFilled,
      :ImDrawList_AddDrawCmd,
      :ImDrawList_AddImage,
      :ImDrawList_AddImageQuad,
      :ImDrawList_AddImageRounded,
      :ImDrawList_AddLine,
      :ImDrawList_AddNgon,
      :ImDrawList_AddNgonFilled,
      :ImDrawList_AddPolyline,
      :ImDrawList_AddQuad,
      :ImDrawList_AddQuadFilled,
      :ImDrawList_AddRect,
      :ImDrawList_AddRectFilled,
      :ImDrawList_AddRectFilledMultiColor,
      :ImDrawList_AddText_Vec2,
      :ImDrawList_AddText_FontPtr,
      :ImDrawList_AddTriangle,
      :ImDrawList_AddTriangleFilled,
      :ImDrawList_ChannelsMerge,
      :ImDrawList_ChannelsSetCurrent,
      :ImDrawList_ChannelsSplit,
      :ImDrawList_CloneOutput,
      :ImDrawList_GetClipRectMax,
      :ImDrawList_GetClipRectMin,
      :ImDrawList_ImDrawList,
      :ImDrawList_PathArcTo,
      :ImDrawList_PathArcToFast,
      :ImDrawList_PathBezierCubicCurveTo,
      :ImDrawList_PathBezierQuadraticCurveTo,
      :ImDrawList_PathClear,
      :ImDrawList_PathFillConvex,
      :ImDrawList_PathLineTo,
      :ImDrawList_PathLineToMergeDuplicate,
      :ImDrawList_PathRect,
      :ImDrawList_PathStroke,
      :ImDrawList_PopClipRect,
      :ImDrawList_PopTextureID,
      :ImDrawList_PrimQuadUV,
      :ImDrawList_PrimRect,
      :ImDrawList_PrimRectUV,
      :ImDrawList_PrimReserve,
      :ImDrawList_PrimUnreserve,
      :ImDrawList_PrimVtx,
      :ImDrawList_PrimWriteIdx,
      :ImDrawList_PrimWriteVtx,
      :ImDrawList_PushClipRect,
      :ImDrawList_PushClipRectFullScreen,
      :ImDrawList_PushTextureID,
      :ImDrawList__CalcCircleAutoSegmentCount,
      :ImDrawList__ClearFreeMemory,
      :ImDrawList__OnChangedClipRect,
      :ImDrawList__OnChangedTextureID,
      :ImDrawList__OnChangedVtxOffset,
      :ImDrawList__PathArcToFastEx,
      :ImDrawList__PathArcToN,
      :ImDrawList__PopUnusedDrawCmd,
      :ImDrawList__ResetForNewFrame,
      :ImDrawList_destroy,
      :ImFontAtlas_AddCustomRectFontGlyph,
      :ImFontAtlas_AddCustomRectRegular,
      :ImFontAtlas_AddFont,
      :ImFontAtlas_AddFontDefault,
      :ImFontAtlas_AddFontFromFileTTF,
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF,
      :ImFontAtlas_AddFontFromMemoryCompressedTTF,
      :ImFontAtlas_AddFontFromMemoryTTF,
      :ImFontAtlas_Build,
      :ImFontAtlas_CalcCustomRectUV,
      :ImFontAtlas_Clear,
      :ImFontAtlas_ClearFonts,
      :ImFontAtlas_ClearInputData,
      :ImFontAtlas_ClearTexData,
      :ImFontAtlas_GetCustomRectByIndex,
      :ImFontAtlas_GetGlyphRangesChineseFull,
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon,
      :ImFontAtlas_GetGlyphRangesCyrillic,
      :ImFontAtlas_GetGlyphRangesDefault,
      :ImFontAtlas_GetGlyphRangesJapanese,
      :ImFontAtlas_GetGlyphRangesKorean,
      :ImFontAtlas_GetGlyphRangesThai,
      :ImFontAtlas_GetGlyphRangesVietnamese,
      :ImFontAtlas_GetMouseCursorTexData,
      :ImFontAtlas_GetTexDataAsAlpha8,
      :ImFontAtlas_GetTexDataAsRGBA32,
      :ImFontAtlas_ImFontAtlas,
      :ImFontAtlas_IsBuilt,
      :ImFontAtlas_SetTexID,
      :ImFontAtlas_destroy,
      :ImFontConfig_ImFontConfig,
      :ImFontConfig_destroy,
      :ImFontGlyphRangesBuilder_AddChar,
      :ImFontGlyphRangesBuilder_AddRanges,
      :ImFontGlyphRangesBuilder_AddText,
      :ImFontGlyphRangesBuilder_BuildRanges,
      :ImFontGlyphRangesBuilder_Clear,
      :ImFontGlyphRangesBuilder_GetBit,
      :ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder,
      :ImFontGlyphRangesBuilder_SetBit,
      :ImFontGlyphRangesBuilder_destroy,
      :ImGuiIO_AddInputCharacter,
      :ImGuiIO_AddInputCharacterUTF16,
      :ImGuiIO_AddInputCharactersUTF8,
      :ImGuiIO_ClearInputCharacters,
      :ImGuiIO_ImGuiIO,
      :ImGuiIO_destroy,
      :ImGuiStyle_ImGuiStyle,
      :ImGuiStyle_ScaleAllSizes,
      :ImGuiStyle_destroy,
      :ImGuiTextFilter_Build,
      :ImGuiTextFilter_Clear,
      :ImGuiTextFilter_Draw,
      :ImGuiTextFilter_ImGuiTextFilter,
      :ImGuiTextFilter_IsActive,
      :ImGuiTextFilter_PassFilter,
      :ImGuiTextFilter_destroy,
      :ImGuiTextRange_ImGuiTextRange_Nil,
      :ImGuiTextRange_ImGuiTextRange_Str,
      :ImGuiTextRange_destroy,
      :ImGuiTextRange_empty,
      :ImGuiTextRange_split,
      :igAcceptDragDropPayload,
      :igAlignTextToFramePadding,
      :igArrowButton,
      :igBegin,
      :igBeginChild_Str,
      :igBeginChild_ID,
      :igBeginChildFrame,
      :igBeginCombo,
      :igBeginDragDropSource,
      :igBeginDragDropTarget,
      :igBeginGroup,
      :igBeginListBox,
      :igBeginMainMenuBar,
      :igBeginMenu,
      :igBeginMenuBar,
      :igBeginPopup,
      :igBeginPopupContextItem,
      :igBeginPopupContextVoid,
      :igBeginPopupContextWindow,
      :igBeginPopupModal,
      :igBeginTabBar,
      :igBeginTabItem,
      :igBeginTable,
      :igBeginTooltip,
      :igBullet,
      :igBulletText,
      :igButton,
      :igCalcItemWidth,
      :igCalcListClipping,
      :igCalcTextSize,
      :igCaptureKeyboardFromApp,
      :igCaptureMouseFromApp,
      :igCheckbox,
      :igCheckboxFlags_IntPtr,
      :igCheckboxFlags_UintPtr,
      :igCloseCurrentPopup,
      :igCollapsingHeader_TreeNodeFlags,
      :igCollapsingHeader_BoolPtr,
      :igColorButton,
      :igColorConvertFloat4ToU32,
      :igColorConvertHSVtoRGB,
      :igColorConvertRGBtoHSV,
      :igColorConvertU32ToFloat4,
      :igColorEdit3,
      :igColorEdit4,
      :igColorPicker3,
      :igColorPicker4,
      :igColumns,
      :igCombo_Str_arr,
      :igCombo_Str,
      :igCombo_FnBoolPtr,
      :igCreateContext,
      :igDebugCheckVersionAndDataLayout,
      :igDestroyContext,
      :igDragFloat,
      :igDragFloat2,
      :igDragFloat3,
      :igDragFloat4,
      :igDragFloatRange2,
      :igDragInt,
      :igDragInt2,
      :igDragInt3,
      :igDragInt4,
      :igDragIntRange2,
      :igDragScalar,
      :igDragScalarN,
      :igDummy,
      :igEnd,
      :igEndChild,
      :igEndChildFrame,
      :igEndCombo,
      :igEndDragDropSource,
      :igEndDragDropTarget,
      :igEndFrame,
      :igEndGroup,
      :igEndListBox,
      :igEndMainMenuBar,
      :igEndMenu,
      :igEndMenuBar,
      :igEndPopup,
      :igEndTabBar,
      :igEndTabItem,
      :igEndTable,
      :igEndTooltip,
      :igGetAllocatorFunctions,
      :igGetBackgroundDrawList,
      :igGetClipboardText,
      :igGetColorU32_Col,
      :igGetColorU32_Vec4,
      :igGetColorU32_U32,
      :igGetColumnIndex,
      :igGetColumnOffset,
      :igGetColumnWidth,
      :igGetColumnsCount,
      :igGetContentRegionAvail,
      :igGetContentRegionMax,
      :igGetCurrentContext,
      :igGetCursorPos,
      :igGetCursorPosX,
      :igGetCursorPosY,
      :igGetCursorScreenPos,
      :igGetCursorStartPos,
      :igGetDragDropPayload,
      :igGetDrawData,
      :igGetDrawListSharedData,
      :igGetFont,
      :igGetFontSize,
      :igGetFontTexUvWhitePixel,
      :igGetForegroundDrawList,
      :igGetFrameCount,
      :igGetFrameHeight,
      :igGetFrameHeightWithSpacing,
      :igGetID_Str,
      :igGetID_StrStr,
      :igGetID_Ptr,
      :igGetIO,
      :igGetItemRectMax,
      :igGetItemRectMin,
      :igGetItemRectSize,
      :igGetKeyIndex,
      :igGetKeyPressedAmount,
      :igGetMainViewport,
      :igGetMouseCursor,
      :igGetMouseDragDelta,
      :igGetMousePos,
      :igGetMousePosOnOpeningCurrentPopup,
      :igGetScrollMaxX,
      :igGetScrollMaxY,
      :igGetScrollX,
      :igGetScrollY,
      :igGetStateStorage,
      :igGetStyle,
      :igGetStyleColorName,
      :igGetStyleColorVec4,
      :igGetTextLineHeight,
      :igGetTextLineHeightWithSpacing,
      :igGetTime,
      :igGetTreeNodeToLabelSpacing,
      :igGetVersion,
      :igGetWindowContentRegionMax,
      :igGetWindowContentRegionMin,
      :igGetWindowContentRegionWidth,
      :igGetWindowDrawList,
      :igGetWindowHeight,
      :igGetWindowPos,
      :igGetWindowSize,
      :igGetWindowWidth,
      :igImage,
      :igImageButton,
      :igIndent,
      :igInputDouble,
      :igInputFloat,
      :igInputFloat2,
      :igInputFloat3,
      :igInputFloat4,
      :igInputInt,
      :igInputInt2,
      :igInputInt3,
      :igInputInt4,
      :igInputScalar,
      :igInputScalarN,
      :igInputText,
      :igInputTextMultiline,
      :igInputTextWithHint,
      :igInvisibleButton,
      :igIsAnyItemActive,
      :igIsAnyItemFocused,
      :igIsAnyItemHovered,
      :igIsAnyMouseDown,
      :igIsItemActivated,
      :igIsItemActive,
      :igIsItemClicked,
      :igIsItemDeactivated,
      :igIsItemDeactivatedAfterEdit,
      :igIsItemEdited,
      :igIsItemFocused,
      :igIsItemHovered,
      :igIsItemToggledOpen,
      :igIsItemVisible,
      :igIsKeyDown,
      :igIsKeyPressed,
      :igIsKeyReleased,
      :igIsMouseClicked,
      :igIsMouseDoubleClicked,
      :igIsMouseDown,
      :igIsMouseDragging,
      :igIsMouseHoveringRect,
      :igIsMousePosValid,
      :igIsMouseReleased,
      :igIsPopupOpen,
      :igIsRectVisible_Nil,
      :igIsRectVisible_Vec2,
      :igIsWindowAppearing,
      :igIsWindowCollapsed,
      :igIsWindowFocused,
      :igIsWindowHovered,
      :igLabelText,
      :igListBox_Str_arr,
      :igListBox_FnBoolPtr,
      :igLoadIniSettingsFromDisk,
      :igLoadIniSettingsFromMemory,
      :igLogButtons,
      :igLogFinish,
      :igLogText,
      :igLogToClipboard,
      :igLogToFile,
      :igLogToTTY,
      :igMemAlloc,
      :igMemFree,
      :igMenuItem_Bool,
      :igMenuItem_BoolPtr,
      :igNewFrame,
      :igNewLine,
      :igNextColumn,
      :igOpenPopup_Str,
      :igOpenPopup_ID,
      :igOpenPopupOnItemClick,
      :igPlotHistogram_FloatPtr,
      :igPlotHistogram_FnFloatPtr,
      :igPlotLines_FloatPtr,
      :igPlotLines_FnFloatPtr,
      :igPopAllowKeyboardFocus,
      :igPopButtonRepeat,
      :igPopClipRect,
      :igPopFont,
      :igPopID,
      :igPopItemWidth,
      :igPopStyleColor,
      :igPopStyleVar,
      :igPopTextWrapPos,
      :igProgressBar,
      :igPushAllowKeyboardFocus,
      :igPushButtonRepeat,
      :igPushClipRect,
      :igPushFont,
      :igPushID_Str,
      :igPushID_StrStr,
      :igPushID_Ptr,
      :igPushID_Int,
      :igPushItemWidth,
      :igPushStyleColor_U32,
      :igPushStyleColor_Vec4,
      :igPushStyleVar_Float,
      :igPushStyleVar_Vec2,
      :igPushTextWrapPos,
      :igRadioButton_Bool,
      :igRadioButton_IntPtr,
      :igRender,
      :igResetMouseDragDelta,
      :igSameLine,
      :igSaveIniSettingsToDisk,
      :igSaveIniSettingsToMemory,
      :igSelectable_Bool,
      :igSelectable_BoolPtr,
      :igSeparator,
      :igSetAllocatorFunctions,
      :igSetClipboardText,
      :igSetColorEditOptions,
      :igSetColumnOffset,
      :igSetColumnWidth,
      :igSetCurrentContext,
      :igSetCursorPos,
      :igSetCursorPosX,
      :igSetCursorPosY,
      :igSetCursorScreenPos,
      :igSetDragDropPayload,
      :igSetItemAllowOverlap,
      :igSetItemDefaultFocus,
      :igSetKeyboardFocusHere,
      :igSetMouseCursor,
      :igSetNextItemOpen,
      :igSetNextItemWidth,
      :igSetNextWindowBgAlpha,
      :igSetNextWindowCollapsed,
      :igSetNextWindowContentSize,
      :igSetNextWindowFocus,
      :igSetNextWindowPos,
      :igSetNextWindowSize,
      :igSetNextWindowSizeConstraints,
      :igSetScrollFromPosX,
      :igSetScrollFromPosY,
      :igSetScrollHereX,
      :igSetScrollHereY,
      :igSetScrollX,
      :igSetScrollY,
      :igSetStateStorage,
      :igSetTabItemClosed,
      :igSetTooltip,
      :igSetWindowCollapsed_Bool,
      :igSetWindowCollapsed_Str,
      :igSetWindowFocus_Nil,
      :igSetWindowFocus_Str,
      :igSetWindowFontScale,
      :igSetWindowPos_Vec2,
      :igSetWindowPos_Str,
      :igSetWindowSize_Vec2,
      :igSetWindowSize_Str,
      :igShowAboutWindow,
      :igShowDemoWindow,
      :igShowFontSelector,
      :igShowMetricsWindow,
      :igShowStyleEditor,
      :igShowStyleSelector,
      :igShowUserGuide,
      :igSliderAngle,
      :igSliderFloat,
      :igSliderFloat2,
      :igSliderFloat3,
      :igSliderFloat4,
      :igSliderInt,
      :igSliderInt2,
      :igSliderInt3,
      :igSliderInt4,
      :igSliderScalar,
      :igSliderScalarN,
      :igSmallButton,
      :igSpacing,
      :igStyleColorsClassic,
      :igStyleColorsDark,
      :igStyleColorsLight,
      :igTabItemButton,
      :igTableGetColumnCount,
      :igTableGetColumnFlags,
      :igTableGetColumnIndex,
      :igTableGetColumnName,
      :igTableGetRowIndex,
      :igTableGetSortSpecs,
      :igTableHeader,
      :igTableHeadersRow,
      :igTableNextColumn,
      :igTableNextRow,
      :igTableSetBgColor,
      :igTableSetColumnEnabled,
      :igTableSetColumnIndex,
      :igTableSetupColumn,
      :igTableSetupScrollFreeze,
      :igText,
      :igTextColored,
      :igTextDisabled,
      :igTextUnformatted,
      :igTextWrapped,
      :igTreeNode_Str,
      :igTreeNode_StrStr,
      :igTreeNode_Ptr,
      :igTreeNodeEx_Str,
      :igTreeNodeEx_StrStr,
      :igTreeNodeEx_Ptr,
      :igTreePop,
      :igTreePush_Str,
      :igTreePush_Ptr,
      :igUnindent,
      :igVSliderFloat,
      :igVSliderInt,
      :igVSliderScalar,
      :igValue_Bool,
      :igValue_Int,
      :igValue_Uint,
      :igValue_Float,
    ]

    args = {
      :ImDrawList_AddBezierCubic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddBezierQuadratic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddCallback => [:pointer, :ImDrawCallback, :pointer],
      :ImDrawList_AddCircle => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddCircleFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddConvexPolyFilled => [:pointer, :pointer, :int, :uint],
      :ImDrawList_AddDrawCmd => [:pointer],
      :ImDrawList_AddImage => [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddImageQuad => [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddImageRounded => [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddLine => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddNgon => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddNgonFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddPolyline => [:pointer, :pointer, :int, :uint, :int, :float],
      :ImDrawList_AddQuad => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddQuadFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float],
      :ImDrawList_AddRectFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddRectFilledMultiColor => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint],
      :ImDrawList_AddText_Vec2 => [:pointer, ImVec2.by_value, :uint, :pointer, :pointer],
      :ImDrawList_AddText_FontPtr => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer],
      :ImDrawList_AddTriangle => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddTriangleFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_ChannelsMerge => [:pointer],
      :ImDrawList_ChannelsSetCurrent => [:pointer, :int],
      :ImDrawList_ChannelsSplit => [:pointer, :int],
      :ImDrawList_CloneOutput => [:pointer],
      :ImDrawList_GetClipRectMax => [:pointer, :pointer],
      :ImDrawList_GetClipRectMin => [:pointer, :pointer],
      :ImDrawList_ImDrawList => [:pointer],
      :ImDrawList_PathArcTo => [:pointer, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawList_PathArcToFast => [:pointer, ImVec2.by_value, :float, :int, :int],
      :ImDrawList_PathBezierCubicCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathBezierQuadraticCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathClear => [:pointer],
      :ImDrawList_PathFillConvex => [:pointer, :uint],
      :ImDrawList_PathLineTo => [:pointer, ImVec2.by_value],
      :ImDrawList_PathLineToMergeDuplicate => [:pointer, ImVec2.by_value],
      :ImDrawList_PathRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int],
      :ImDrawList_PathStroke => [:pointer, :uint, :int, :float],
      :ImDrawList_PopClipRect => [:pointer],
      :ImDrawList_PopTextureID => [:pointer],
      :ImDrawList_PrimQuadUV => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimRectUV => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimReserve => [:pointer, :int, :int],
      :ImDrawList_PrimUnreserve => [:pointer, :int, :int],
      :ImDrawList_PrimVtx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimWriteIdx => [:pointer, :ushort],
      :ImDrawList_PrimWriteVtx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PushClipRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :bool],
      :ImDrawList_PushClipRectFullScreen => [:pointer],
      :ImDrawList_PushTextureID => [:pointer, :pointer],
      :ImDrawList__CalcCircleAutoSegmentCount => [:pointer, :float],
      :ImDrawList__ClearFreeMemory => [:pointer],
      :ImDrawList__OnChangedClipRect => [:pointer],
      :ImDrawList__OnChangedTextureID => [:pointer],
      :ImDrawList__OnChangedVtxOffset => [:pointer],
      :ImDrawList__PathArcToFastEx => [:pointer, ImVec2.by_value, :float, :int, :int, :int],
      :ImDrawList__PathArcToN => [:pointer, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawList__PopUnusedDrawCmd => [:pointer],
      :ImDrawList__ResetForNewFrame => [:pointer],
      :ImDrawList_destroy => [:pointer],
      :ImFontAtlas_AddCustomRectFontGlyph => [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value],
      :ImFontAtlas_AddCustomRectRegular => [:pointer, :int, :int],
      :ImFontAtlas_AddFont => [:pointer, :pointer],
      :ImFontAtlas_AddFontDefault => [:pointer, :pointer],
      :ImFontAtlas_AddFontFromFileTTF => [:pointer, :pointer, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF => [:pointer, :pointer, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryCompressedTTF => [:pointer, :pointer, :int, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryTTF => [:pointer, :pointer, :int, :float, :pointer, :pointer],
      :ImFontAtlas_Build => [:pointer],
      :ImFontAtlas_CalcCustomRectUV => [:pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_Clear => [:pointer],
      :ImFontAtlas_ClearFonts => [:pointer],
      :ImFontAtlas_ClearInputData => [:pointer],
      :ImFontAtlas_ClearTexData => [:pointer],
      :ImFontAtlas_GetCustomRectByIndex => [:pointer, :int],
      :ImFontAtlas_GetGlyphRangesChineseFull => [:pointer],
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon => [:pointer],
      :ImFontAtlas_GetGlyphRangesCyrillic => [:pointer],
      :ImFontAtlas_GetGlyphRangesDefault => [:pointer],
      :ImFontAtlas_GetGlyphRangesJapanese => [:pointer],
      :ImFontAtlas_GetGlyphRangesKorean => [:pointer],
      :ImFontAtlas_GetGlyphRangesThai => [:pointer],
      :ImFontAtlas_GetGlyphRangesVietnamese => [:pointer],
      :ImFontAtlas_GetMouseCursorTexData => [:pointer, :int, :pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_GetTexDataAsAlpha8 => [:pointer, :pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_GetTexDataAsRGBA32 => [:pointer, :pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_ImFontAtlas => [],
      :ImFontAtlas_IsBuilt => [:pointer],
      :ImFontAtlas_SetTexID => [:pointer, :pointer],
      :ImFontAtlas_destroy => [:pointer],
      :ImFontConfig_ImFontConfig => [],
      :ImFontConfig_destroy => [:pointer],
      :ImFontGlyphRangesBuilder_AddChar => [:pointer, :ushort],
      :ImFontGlyphRangesBuilder_AddRanges => [:pointer, :pointer],
      :ImFontGlyphRangesBuilder_AddText => [:pointer, :pointer, :pointer],
      :ImFontGlyphRangesBuilder_BuildRanges => [:pointer, :pointer],
      :ImFontGlyphRangesBuilder_Clear => [:pointer],
      :ImFontGlyphRangesBuilder_GetBit => [:pointer, :size_t],
      :ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder => [],
      :ImFontGlyphRangesBuilder_SetBit => [:pointer, :size_t],
      :ImFontGlyphRangesBuilder_destroy => [:pointer],
      :ImGuiIO_AddInputCharacter => [:pointer, :uint],
      :ImGuiIO_AddInputCharacterUTF16 => [:pointer, :ushort],
      :ImGuiIO_AddInputCharactersUTF8 => [:pointer, :pointer],
      :ImGuiIO_ClearInputCharacters => [:pointer],
      :ImGuiIO_ImGuiIO => [],
      :ImGuiIO_destroy => [:pointer],
      :ImGuiStyle_ImGuiStyle => [],
      :ImGuiStyle_ScaleAllSizes => [:pointer, :float],
      :ImGuiStyle_destroy => [:pointer],
      :ImGuiTextFilter_Build => [:pointer],
      :ImGuiTextFilter_Clear => [:pointer],
      :ImGuiTextFilter_Draw => [:pointer, :pointer, :float],
      :ImGuiTextFilter_ImGuiTextFilter => [:pointer],
      :ImGuiTextFilter_IsActive => [:pointer],
      :ImGuiTextFilter_PassFilter => [:pointer, :pointer, :pointer],
      :ImGuiTextFilter_destroy => [:pointer],
      :ImGuiTextRange_ImGuiTextRange_Nil => [],
      :ImGuiTextRange_ImGuiTextRange_Str => [:pointer, :pointer],
      :ImGuiTextRange_destroy => [:pointer],
      :ImGuiTextRange_empty => [:pointer],
      :ImGuiTextRange_split => [:pointer, :char, :pointer],
      :igAcceptDragDropPayload => [:pointer, :int],
      :igAlignTextToFramePadding => [],
      :igArrowButton => [:pointer, :int],
      :igBegin => [:pointer, :pointer, :int],
      :igBeginChild_Str => [:pointer, ImVec2.by_value, :bool, :int],
      :igBeginChild_ID => [:uint, ImVec2.by_value, :bool, :int],
      :igBeginChildFrame => [:uint, ImVec2.by_value, :int],
      :igBeginCombo => [:pointer, :pointer, :int],
      :igBeginDragDropSource => [:int],
      :igBeginDragDropTarget => [],
      :igBeginGroup => [],
      :igBeginListBox => [:pointer, ImVec2.by_value],
      :igBeginMainMenuBar => [],
      :igBeginMenu => [:pointer, :bool],
      :igBeginMenuBar => [],
      :igBeginPopup => [:pointer, :int],
      :igBeginPopupContextItem => [:pointer, :int],
      :igBeginPopupContextVoid => [:pointer, :int],
      :igBeginPopupContextWindow => [:pointer, :int],
      :igBeginPopupModal => [:pointer, :pointer, :int],
      :igBeginTabBar => [:pointer, :int],
      :igBeginTabItem => [:pointer, :pointer, :int],
      :igBeginTable => [:pointer, :int, :int, ImVec2.by_value, :float],
      :igBeginTooltip => [],
      :igBullet => [],
      :igBulletText => [:pointer, :varargs],
      :igButton => [:pointer, ImVec2.by_value],
      :igCalcItemWidth => [],
      :igCalcListClipping => [:int, :float, :pointer, :pointer],
      :igCalcTextSize => [:pointer, :pointer, :pointer, :bool, :float],
      :igCaptureKeyboardFromApp => [:bool],
      :igCaptureMouseFromApp => [:bool],
      :igCheckbox => [:pointer, :pointer],
      :igCheckboxFlags_IntPtr => [:pointer, :pointer, :int],
      :igCheckboxFlags_UintPtr => [:pointer, :pointer, :uint],
      :igCloseCurrentPopup => [],
      :igCollapsingHeader_TreeNodeFlags => [:pointer, :int],
      :igCollapsingHeader_BoolPtr => [:pointer, :pointer, :int],
      :igColorButton => [:pointer, ImVec4.by_value, :int, ImVec2.by_value],
      :igColorConvertFloat4ToU32 => [ImVec4.by_value],
      :igColorConvertHSVtoRGB => [:float, :float, :float, :pointer, :pointer, :pointer],
      :igColorConvertRGBtoHSV => [:float, :float, :float, :pointer, :pointer, :pointer],
      :igColorConvertU32ToFloat4 => [:pointer, :uint],
      :igColorEdit3 => [:pointer, :pointer, :int],
      :igColorEdit4 => [:pointer, :pointer, :int],
      :igColorPicker3 => [:pointer, :pointer, :int],
      :igColorPicker4 => [:pointer, :pointer, :int, :pointer],
      :igColumns => [:int, :pointer, :bool],
      :igCombo_Str_arr => [:pointer, :pointer, :pointer, :int, :int],
      :igCombo_Str => [:pointer, :pointer, :pointer, :int],
      :igCombo_FnBoolPtr => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :igCreateContext => [:pointer],
      :igDebugCheckVersionAndDataLayout => [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t],
      :igDestroyContext => [:pointer],
      :igDragFloat => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :igDragFloat2 => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :igDragFloat3 => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :igDragFloat4 => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :igDragFloatRange2 => [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :int],
      :igDragInt => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :igDragInt2 => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :igDragInt3 => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :igDragInt4 => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :igDragIntRange2 => [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer, :int],
      :igDragScalar => [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :int],
      :igDragScalarN => [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :int],
      :igDummy => [ImVec2.by_value],
      :igEnd => [],
      :igEndChild => [],
      :igEndChildFrame => [],
      :igEndCombo => [],
      :igEndDragDropSource => [],
      :igEndDragDropTarget => [],
      :igEndFrame => [],
      :igEndGroup => [],
      :igEndListBox => [],
      :igEndMainMenuBar => [],
      :igEndMenu => [],
      :igEndMenuBar => [],
      :igEndPopup => [],
      :igEndTabBar => [],
      :igEndTabItem => [],
      :igEndTable => [],
      :igEndTooltip => [],
      :igGetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :igGetBackgroundDrawList => [],
      :igGetClipboardText => [],
      :igGetColorU32_Col => [:int, :float],
      :igGetColorU32_Vec4 => [ImVec4.by_value],
      :igGetColorU32_U32 => [:uint],
      :igGetColumnIndex => [],
      :igGetColumnOffset => [:int],
      :igGetColumnWidth => [:int],
      :igGetColumnsCount => [],
      :igGetContentRegionAvail => [:pointer],
      :igGetContentRegionMax => [:pointer],
      :igGetCurrentContext => [],
      :igGetCursorPos => [:pointer],
      :igGetCursorPosX => [],
      :igGetCursorPosY => [],
      :igGetCursorScreenPos => [:pointer],
      :igGetCursorStartPos => [:pointer],
      :igGetDragDropPayload => [],
      :igGetDrawData => [],
      :igGetDrawListSharedData => [],
      :igGetFont => [],
      :igGetFontSize => [],
      :igGetFontTexUvWhitePixel => [:pointer],
      :igGetForegroundDrawList => [],
      :igGetFrameCount => [],
      :igGetFrameHeight => [],
      :igGetFrameHeightWithSpacing => [],
      :igGetID_Str => [:pointer],
      :igGetID_StrStr => [:pointer, :pointer],
      :igGetID_Ptr => [:pointer],
      :igGetIO => [],
      :igGetItemRectMax => [:pointer],
      :igGetItemRectMin => [:pointer],
      :igGetItemRectSize => [:pointer],
      :igGetKeyIndex => [:int],
      :igGetKeyPressedAmount => [:int, :float, :float],
      :igGetMainViewport => [],
      :igGetMouseCursor => [],
      :igGetMouseDragDelta => [:pointer, :int, :float],
      :igGetMousePos => [:pointer],
      :igGetMousePosOnOpeningCurrentPopup => [:pointer],
      :igGetScrollMaxX => [],
      :igGetScrollMaxY => [],
      :igGetScrollX => [],
      :igGetScrollY => [],
      :igGetStateStorage => [],
      :igGetStyle => [],
      :igGetStyleColorName => [:int],
      :igGetStyleColorVec4 => [:int],
      :igGetTextLineHeight => [],
      :igGetTextLineHeightWithSpacing => [],
      :igGetTime => [],
      :igGetTreeNodeToLabelSpacing => [],
      :igGetVersion => [],
      :igGetWindowContentRegionMax => [:pointer],
      :igGetWindowContentRegionMin => [:pointer],
      :igGetWindowContentRegionWidth => [],
      :igGetWindowDrawList => [],
      :igGetWindowHeight => [],
      :igGetWindowPos => [:pointer],
      :igGetWindowSize => [:pointer],
      :igGetWindowWidth => [],
      :igImage => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :igImageButton => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int, ImVec4.by_value, ImVec4.by_value],
      :igIndent => [:float],
      :igInputDouble => [:pointer, :pointer, :double, :double, :pointer, :int],
      :igInputFloat => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igInputFloat2 => [:pointer, :pointer, :pointer, :int],
      :igInputFloat3 => [:pointer, :pointer, :pointer, :int],
      :igInputFloat4 => [:pointer, :pointer, :pointer, :int],
      :igInputInt => [:pointer, :pointer, :int, :int, :int],
      :igInputInt2 => [:pointer, :pointer, :int],
      :igInputInt3 => [:pointer, :pointer, :int],
      :igInputInt4 => [:pointer, :pointer, :int],
      :igInputScalar => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :igInputScalarN => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :igInputText => [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :igInputTextMultiline => [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer],
      :igInputTextWithHint => [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :igInvisibleButton => [:pointer, ImVec2.by_value, :int],
      :igIsAnyItemActive => [],
      :igIsAnyItemFocused => [],
      :igIsAnyItemHovered => [],
      :igIsAnyMouseDown => [],
      :igIsItemActivated => [],
      :igIsItemActive => [],
      :igIsItemClicked => [:int],
      :igIsItemDeactivated => [],
      :igIsItemDeactivatedAfterEdit => [],
      :igIsItemEdited => [],
      :igIsItemFocused => [],
      :igIsItemHovered => [:int],
      :igIsItemToggledOpen => [],
      :igIsItemVisible => [],
      :igIsKeyDown => [:int],
      :igIsKeyPressed => [:int, :bool],
      :igIsKeyReleased => [:int],
      :igIsMouseClicked => [:int, :bool],
      :igIsMouseDoubleClicked => [:int],
      :igIsMouseDown => [:int],
      :igIsMouseDragging => [:int, :float],
      :igIsMouseHoveringRect => [ImVec2.by_value, ImVec2.by_value, :bool],
      :igIsMousePosValid => [:pointer],
      :igIsMouseReleased => [:int],
      :igIsPopupOpen => [:pointer, :int],
      :igIsRectVisible_Nil => [ImVec2.by_value],
      :igIsRectVisible_Vec2 => [ImVec2.by_value, ImVec2.by_value],
      :igIsWindowAppearing => [],
      :igIsWindowCollapsed => [],
      :igIsWindowFocused => [:int],
      :igIsWindowHovered => [:int],
      :igLabelText => [:pointer, :pointer, :varargs],
      :igListBox_Str_arr => [:pointer, :pointer, :pointer, :int, :int],
      :igListBox_FnBoolPtr => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :igLoadIniSettingsFromDisk => [:pointer],
      :igLoadIniSettingsFromMemory => [:pointer, :size_t],
      :igLogButtons => [],
      :igLogFinish => [],
      :igLogText => [:pointer, :varargs],
      :igLogToClipboard => [:int],
      :igLogToFile => [:int, :pointer],
      :igLogToTTY => [:int],
      :igMemAlloc => [:size_t],
      :igMemFree => [:pointer],
      :igMenuItem_Bool => [:pointer, :pointer, :bool, :bool],
      :igMenuItem_BoolPtr => [:pointer, :pointer, :pointer, :bool],
      :igNewFrame => [],
      :igNewLine => [],
      :igNextColumn => [],
      :igOpenPopup_Str => [:pointer, :int],
      :igOpenPopup_ID => [:uint, :int],
      :igOpenPopupOnItemClick => [:pointer, :int],
      :igPlotHistogram_FloatPtr => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :igPlotHistogram_FnFloatPtr => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :igPlotLines_FloatPtr => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :igPlotLines_FnFloatPtr => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :igPopAllowKeyboardFocus => [],
      :igPopButtonRepeat => [],
      :igPopClipRect => [],
      :igPopFont => [],
      :igPopID => [],
      :igPopItemWidth => [],
      :igPopStyleColor => [:int],
      :igPopStyleVar => [:int],
      :igPopTextWrapPos => [],
      :igProgressBar => [:float, ImVec2.by_value, :pointer],
      :igPushAllowKeyboardFocus => [:bool],
      :igPushButtonRepeat => [:bool],
      :igPushClipRect => [ImVec2.by_value, ImVec2.by_value, :bool],
      :igPushFont => [:pointer],
      :igPushID_Str => [:pointer],
      :igPushID_StrStr => [:pointer, :pointer],
      :igPushID_Ptr => [:pointer],
      :igPushID_Int => [:int],
      :igPushItemWidth => [:float],
      :igPushStyleColor_U32 => [:int, :uint],
      :igPushStyleColor_Vec4 => [:int, ImVec4.by_value],
      :igPushStyleVar_Float => [:int, :float],
      :igPushStyleVar_Vec2 => [:int, ImVec2.by_value],
      :igPushTextWrapPos => [:float],
      :igRadioButton_Bool => [:pointer, :bool],
      :igRadioButton_IntPtr => [:pointer, :pointer, :int],
      :igRender => [],
      :igResetMouseDragDelta => [:int],
      :igSameLine => [:float, :float],
      :igSaveIniSettingsToDisk => [:pointer],
      :igSaveIniSettingsToMemory => [:pointer],
      :igSelectable_Bool => [:pointer, :bool, :int, ImVec2.by_value],
      :igSelectable_BoolPtr => [:pointer, :pointer, :int, ImVec2.by_value],
      :igSeparator => [],
      :igSetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :igSetClipboardText => [:pointer],
      :igSetColorEditOptions => [:int],
      :igSetColumnOffset => [:int, :float],
      :igSetColumnWidth => [:int, :float],
      :igSetCurrentContext => [:pointer],
      :igSetCursorPos => [ImVec2.by_value],
      :igSetCursorPosX => [:float],
      :igSetCursorPosY => [:float],
      :igSetCursorScreenPos => [ImVec2.by_value],
      :igSetDragDropPayload => [:pointer, :pointer, :size_t, :int],
      :igSetItemAllowOverlap => [],
      :igSetItemDefaultFocus => [],
      :igSetKeyboardFocusHere => [:int],
      :igSetMouseCursor => [:int],
      :igSetNextItemOpen => [:bool, :int],
      :igSetNextItemWidth => [:float],
      :igSetNextWindowBgAlpha => [:float],
      :igSetNextWindowCollapsed => [:bool, :int],
      :igSetNextWindowContentSize => [ImVec2.by_value],
      :igSetNextWindowFocus => [],
      :igSetNextWindowPos => [ImVec2.by_value, :int, ImVec2.by_value],
      :igSetNextWindowSize => [ImVec2.by_value, :int],
      :igSetNextWindowSizeConstraints => [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer],
      :igSetScrollFromPosX => [:float, :float],
      :igSetScrollFromPosY => [:float, :float],
      :igSetScrollHereX => [:float],
      :igSetScrollHereY => [:float],
      :igSetScrollX => [:float],
      :igSetScrollY => [:float],
      :igSetStateStorage => [:pointer],
      :igSetTabItemClosed => [:pointer],
      :igSetTooltip => [:pointer, :varargs],
      :igSetWindowCollapsed_Bool => [:bool, :int],
      :igSetWindowCollapsed_Str => [:pointer, :bool, :int],
      :igSetWindowFocus_Nil => [],
      :igSetWindowFocus_Str => [:pointer],
      :igSetWindowFontScale => [:float],
      :igSetWindowPos_Vec2 => [ImVec2.by_value, :int],
      :igSetWindowPos_Str => [:pointer, ImVec2.by_value, :int],
      :igSetWindowSize_Vec2 => [ImVec2.by_value, :int],
      :igSetWindowSize_Str => [:pointer, ImVec2.by_value, :int],
      :igShowAboutWindow => [:pointer],
      :igShowDemoWindow => [:pointer],
      :igShowFontSelector => [:pointer],
      :igShowMetricsWindow => [:pointer],
      :igShowStyleEditor => [:pointer],
      :igShowStyleSelector => [:pointer],
      :igShowUserGuide => [],
      :igSliderAngle => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderFloat => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderFloat2 => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderFloat3 => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderFloat4 => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderInt => [:pointer, :pointer, :int, :int, :pointer, :int],
      :igSliderInt2 => [:pointer, :pointer, :int, :int, :pointer, :int],
      :igSliderInt3 => [:pointer, :pointer, :int, :int, :pointer, :int],
      :igSliderInt4 => [:pointer, :pointer, :int, :int, :pointer, :int],
      :igSliderScalar => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :igSliderScalarN => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :igSmallButton => [:pointer],
      :igSpacing => [],
      :igStyleColorsClassic => [:pointer],
      :igStyleColorsDark => [:pointer],
      :igStyleColorsLight => [:pointer],
      :igTabItemButton => [:pointer, :int],
      :igTableGetColumnCount => [],
      :igTableGetColumnFlags => [:int],
      :igTableGetColumnIndex => [],
      :igTableGetColumnName => [:int],
      :igTableGetRowIndex => [],
      :igTableGetSortSpecs => [],
      :igTableHeader => [:pointer],
      :igTableHeadersRow => [],
      :igTableNextColumn => [],
      :igTableNextRow => [:int, :float],
      :igTableSetBgColor => [:int, :uint, :int],
      :igTableSetColumnEnabled => [:int, :bool],
      :igTableSetColumnIndex => [:int],
      :igTableSetupColumn => [:pointer, :int, :float, :uint],
      :igTableSetupScrollFreeze => [:int, :int],
      :igText => [:pointer, :varargs],
      :igTextColored => [ImVec4.by_value, :pointer, :varargs],
      :igTextDisabled => [:pointer, :varargs],
      :igTextUnformatted => [:pointer, :pointer],
      :igTextWrapped => [:pointer, :varargs],
      :igTreeNode_Str => [:pointer],
      :igTreeNode_StrStr => [:pointer, :pointer, :varargs],
      :igTreeNode_Ptr => [:pointer, :pointer, :varargs],
      :igTreeNodeEx_Str => [:pointer, :int],
      :igTreeNodeEx_StrStr => [:pointer, :int, :pointer, :varargs],
      :igTreeNodeEx_Ptr => [:pointer, :int, :pointer, :varargs],
      :igTreePop => [],
      :igTreePush_Str => [:pointer],
      :igTreePush_Ptr => [:pointer],
      :igUnindent => [:float],
      :igVSliderFloat => [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int],
      :igVSliderInt => [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int],
      :igVSliderScalar => [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :igValue_Bool => [:pointer, :bool],
      :igValue_Int => [:pointer, :int],
      :igValue_Uint => [:pointer, :uint],
      :igValue_Float => [:pointer, :float, :pointer],
    }

    retvals = {
      :ImDrawList_AddBezierCubic => :void,
      :ImDrawList_AddBezierQuadratic => :void,
      :ImDrawList_AddCallback => :void,
      :ImDrawList_AddCircle => :void,
      :ImDrawList_AddCircleFilled => :void,
      :ImDrawList_AddConvexPolyFilled => :void,
      :ImDrawList_AddDrawCmd => :void,
      :ImDrawList_AddImage => :void,
      :ImDrawList_AddImageQuad => :void,
      :ImDrawList_AddImageRounded => :void,
      :ImDrawList_AddLine => :void,
      :ImDrawList_AddNgon => :void,
      :ImDrawList_AddNgonFilled => :void,
      :ImDrawList_AddPolyline => :void,
      :ImDrawList_AddQuad => :void,
      :ImDrawList_AddQuadFilled => :void,
      :ImDrawList_AddRect => :void,
      :ImDrawList_AddRectFilled => :void,
      :ImDrawList_AddRectFilledMultiColor => :void,
      :ImDrawList_AddText_Vec2 => :void,
      :ImDrawList_AddText_FontPtr => :void,
      :ImDrawList_AddTriangle => :void,
      :ImDrawList_AddTriangleFilled => :void,
      :ImDrawList_ChannelsMerge => :void,
      :ImDrawList_ChannelsSetCurrent => :void,
      :ImDrawList_ChannelsSplit => :void,
      :ImDrawList_CloneOutput => :pointer,
      :ImDrawList_GetClipRectMax => :void,
      :ImDrawList_GetClipRectMin => :void,
      :ImDrawList_ImDrawList => :pointer,
      :ImDrawList_PathArcTo => :void,
      :ImDrawList_PathArcToFast => :void,
      :ImDrawList_PathBezierCubicCurveTo => :void,
      :ImDrawList_PathBezierQuadraticCurveTo => :void,
      :ImDrawList_PathClear => :void,
      :ImDrawList_PathFillConvex => :void,
      :ImDrawList_PathLineTo => :void,
      :ImDrawList_PathLineToMergeDuplicate => :void,
      :ImDrawList_PathRect => :void,
      :ImDrawList_PathStroke => :void,
      :ImDrawList_PopClipRect => :void,
      :ImDrawList_PopTextureID => :void,
      :ImDrawList_PrimQuadUV => :void,
      :ImDrawList_PrimRect => :void,
      :ImDrawList_PrimRectUV => :void,
      :ImDrawList_PrimReserve => :void,
      :ImDrawList_PrimUnreserve => :void,
      :ImDrawList_PrimVtx => :void,
      :ImDrawList_PrimWriteIdx => :void,
      :ImDrawList_PrimWriteVtx => :void,
      :ImDrawList_PushClipRect => :void,
      :ImDrawList_PushClipRectFullScreen => :void,
      :ImDrawList_PushTextureID => :void,
      :ImDrawList__CalcCircleAutoSegmentCount => :int,
      :ImDrawList__ClearFreeMemory => :void,
      :ImDrawList__OnChangedClipRect => :void,
      :ImDrawList__OnChangedTextureID => :void,
      :ImDrawList__OnChangedVtxOffset => :void,
      :ImDrawList__PathArcToFastEx => :void,
      :ImDrawList__PathArcToN => :void,
      :ImDrawList__PopUnusedDrawCmd => :void,
      :ImDrawList__ResetForNewFrame => :void,
      :ImDrawList_destroy => :void,
      :ImFontAtlas_AddCustomRectFontGlyph => :int,
      :ImFontAtlas_AddCustomRectRegular => :int,
      :ImFontAtlas_AddFont => :pointer,
      :ImFontAtlas_AddFontDefault => :pointer,
      :ImFontAtlas_AddFontFromFileTTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryCompressedTTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryTTF => :pointer,
      :ImFontAtlas_Build => :bool,
      :ImFontAtlas_CalcCustomRectUV => :void,
      :ImFontAtlas_Clear => :void,
      :ImFontAtlas_ClearFonts => :void,
      :ImFontAtlas_ClearInputData => :void,
      :ImFontAtlas_ClearTexData => :void,
      :ImFontAtlas_GetCustomRectByIndex => :pointer,
      :ImFontAtlas_GetGlyphRangesChineseFull => :pointer,
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon => :pointer,
      :ImFontAtlas_GetGlyphRangesCyrillic => :pointer,
      :ImFontAtlas_GetGlyphRangesDefault => :pointer,
      :ImFontAtlas_GetGlyphRangesJapanese => :pointer,
      :ImFontAtlas_GetGlyphRangesKorean => :pointer,
      :ImFontAtlas_GetGlyphRangesThai => :pointer,
      :ImFontAtlas_GetGlyphRangesVietnamese => :pointer,
      :ImFontAtlas_GetMouseCursorTexData => :bool,
      :ImFontAtlas_GetTexDataAsAlpha8 => :void,
      :ImFontAtlas_GetTexDataAsRGBA32 => :void,
      :ImFontAtlas_ImFontAtlas => :pointer,
      :ImFontAtlas_IsBuilt => :bool,
      :ImFontAtlas_SetTexID => :void,
      :ImFontAtlas_destroy => :void,
      :ImFontConfig_ImFontConfig => :pointer,
      :ImFontConfig_destroy => :void,
      :ImFontGlyphRangesBuilder_AddChar => :void,
      :ImFontGlyphRangesBuilder_AddRanges => :void,
      :ImFontGlyphRangesBuilder_AddText => :void,
      :ImFontGlyphRangesBuilder_BuildRanges => :void,
      :ImFontGlyphRangesBuilder_Clear => :void,
      :ImFontGlyphRangesBuilder_GetBit => :bool,
      :ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder => :pointer,
      :ImFontGlyphRangesBuilder_SetBit => :void,
      :ImFontGlyphRangesBuilder_destroy => :void,
      :ImGuiIO_AddInputCharacter => :void,
      :ImGuiIO_AddInputCharacterUTF16 => :void,
      :ImGuiIO_AddInputCharactersUTF8 => :void,
      :ImGuiIO_ClearInputCharacters => :void,
      :ImGuiIO_ImGuiIO => :pointer,
      :ImGuiIO_destroy => :void,
      :ImGuiStyle_ImGuiStyle => :pointer,
      :ImGuiStyle_ScaleAllSizes => :void,
      :ImGuiStyle_destroy => :void,
      :ImGuiTextFilter_Build => :void,
      :ImGuiTextFilter_Clear => :void,
      :ImGuiTextFilter_Draw => :bool,
      :ImGuiTextFilter_ImGuiTextFilter => :pointer,
      :ImGuiTextFilter_IsActive => :bool,
      :ImGuiTextFilter_PassFilter => :bool,
      :ImGuiTextFilter_destroy => :void,
      :ImGuiTextRange_ImGuiTextRange_Nil => :pointer,
      :ImGuiTextRange_ImGuiTextRange_Str => :pointer,
      :ImGuiTextRange_destroy => :void,
      :ImGuiTextRange_empty => :bool,
      :ImGuiTextRange_split => :void,
      :igAcceptDragDropPayload => :pointer,
      :igAlignTextToFramePadding => :void,
      :igArrowButton => :bool,
      :igBegin => :bool,
      :igBeginChild_Str => :bool,
      :igBeginChild_ID => :bool,
      :igBeginChildFrame => :bool,
      :igBeginCombo => :bool,
      :igBeginDragDropSource => :bool,
      :igBeginDragDropTarget => :bool,
      :igBeginGroup => :void,
      :igBeginListBox => :bool,
      :igBeginMainMenuBar => :bool,
      :igBeginMenu => :bool,
      :igBeginMenuBar => :bool,
      :igBeginPopup => :bool,
      :igBeginPopupContextItem => :bool,
      :igBeginPopupContextVoid => :bool,
      :igBeginPopupContextWindow => :bool,
      :igBeginPopupModal => :bool,
      :igBeginTabBar => :bool,
      :igBeginTabItem => :bool,
      :igBeginTable => :bool,
      :igBeginTooltip => :void,
      :igBullet => :void,
      :igBulletText => :void,
      :igButton => :bool,
      :igCalcItemWidth => :float,
      :igCalcListClipping => :void,
      :igCalcTextSize => :void,
      :igCaptureKeyboardFromApp => :void,
      :igCaptureMouseFromApp => :void,
      :igCheckbox => :bool,
      :igCheckboxFlags_IntPtr => :bool,
      :igCheckboxFlags_UintPtr => :bool,
      :igCloseCurrentPopup => :void,
      :igCollapsingHeader_TreeNodeFlags => :bool,
      :igCollapsingHeader_BoolPtr => :bool,
      :igColorButton => :bool,
      :igColorConvertFloat4ToU32 => :uint,
      :igColorConvertHSVtoRGB => :void,
      :igColorConvertRGBtoHSV => :void,
      :igColorConvertU32ToFloat4 => :void,
      :igColorEdit3 => :bool,
      :igColorEdit4 => :bool,
      :igColorPicker3 => :bool,
      :igColorPicker4 => :bool,
      :igColumns => :void,
      :igCombo_Str_arr => :bool,
      :igCombo_Str => :bool,
      :igCombo_FnBoolPtr => :bool,
      :igCreateContext => :pointer,
      :igDebugCheckVersionAndDataLayout => :bool,
      :igDestroyContext => :void,
      :igDragFloat => :bool,
      :igDragFloat2 => :bool,
      :igDragFloat3 => :bool,
      :igDragFloat4 => :bool,
      :igDragFloatRange2 => :bool,
      :igDragInt => :bool,
      :igDragInt2 => :bool,
      :igDragInt3 => :bool,
      :igDragInt4 => :bool,
      :igDragIntRange2 => :bool,
      :igDragScalar => :bool,
      :igDragScalarN => :bool,
      :igDummy => :void,
      :igEnd => :void,
      :igEndChild => :void,
      :igEndChildFrame => :void,
      :igEndCombo => :void,
      :igEndDragDropSource => :void,
      :igEndDragDropTarget => :void,
      :igEndFrame => :void,
      :igEndGroup => :void,
      :igEndListBox => :void,
      :igEndMainMenuBar => :void,
      :igEndMenu => :void,
      :igEndMenuBar => :void,
      :igEndPopup => :void,
      :igEndTabBar => :void,
      :igEndTabItem => :void,
      :igEndTable => :void,
      :igEndTooltip => :void,
      :igGetAllocatorFunctions => :void,
      :igGetBackgroundDrawList => :pointer,
      :igGetClipboardText => :pointer,
      :igGetColorU32_Col => :uint,
      :igGetColorU32_Vec4 => :uint,
      :igGetColorU32_U32 => :uint,
      :igGetColumnIndex => :int,
      :igGetColumnOffset => :float,
      :igGetColumnWidth => :float,
      :igGetColumnsCount => :int,
      :igGetContentRegionAvail => :void,
      :igGetContentRegionMax => :void,
      :igGetCurrentContext => :pointer,
      :igGetCursorPos => :void,
      :igGetCursorPosX => :float,
      :igGetCursorPosY => :float,
      :igGetCursorScreenPos => :void,
      :igGetCursorStartPos => :void,
      :igGetDragDropPayload => :pointer,
      :igGetDrawData => :pointer,
      :igGetDrawListSharedData => :pointer,
      :igGetFont => :pointer,
      :igGetFontSize => :float,
      :igGetFontTexUvWhitePixel => :void,
      :igGetForegroundDrawList => :pointer,
      :igGetFrameCount => :int,
      :igGetFrameHeight => :float,
      :igGetFrameHeightWithSpacing => :float,
      :igGetID_Str => :uint,
      :igGetID_StrStr => :uint,
      :igGetID_Ptr => :uint,
      :igGetIO => :pointer,
      :igGetItemRectMax => :void,
      :igGetItemRectMin => :void,
      :igGetItemRectSize => :void,
      :igGetKeyIndex => :int,
      :igGetKeyPressedAmount => :int,
      :igGetMainViewport => :pointer,
      :igGetMouseCursor => :int,
      :igGetMouseDragDelta => :void,
      :igGetMousePos => :void,
      :igGetMousePosOnOpeningCurrentPopup => :void,
      :igGetScrollMaxX => :float,
      :igGetScrollMaxY => :float,
      :igGetScrollX => :float,
      :igGetScrollY => :float,
      :igGetStateStorage => :pointer,
      :igGetStyle => :pointer,
      :igGetStyleColorName => :pointer,
      :igGetStyleColorVec4 => :pointer,
      :igGetTextLineHeight => :float,
      :igGetTextLineHeightWithSpacing => :float,
      :igGetTime => :double,
      :igGetTreeNodeToLabelSpacing => :float,
      :igGetVersion => :pointer,
      :igGetWindowContentRegionMax => :void,
      :igGetWindowContentRegionMin => :void,
      :igGetWindowContentRegionWidth => :float,
      :igGetWindowDrawList => :pointer,
      :igGetWindowHeight => :float,
      :igGetWindowPos => :void,
      :igGetWindowSize => :void,
      :igGetWindowWidth => :float,
      :igImage => :void,
      :igImageButton => :bool,
      :igIndent => :void,
      :igInputDouble => :bool,
      :igInputFloat => :bool,
      :igInputFloat2 => :bool,
      :igInputFloat3 => :bool,
      :igInputFloat4 => :bool,
      :igInputInt => :bool,
      :igInputInt2 => :bool,
      :igInputInt3 => :bool,
      :igInputInt4 => :bool,
      :igInputScalar => :bool,
      :igInputScalarN => :bool,
      :igInputText => :bool,
      :igInputTextMultiline => :bool,
      :igInputTextWithHint => :bool,
      :igInvisibleButton => :bool,
      :igIsAnyItemActive => :bool,
      :igIsAnyItemFocused => :bool,
      :igIsAnyItemHovered => :bool,
      :igIsAnyMouseDown => :bool,
      :igIsItemActivated => :bool,
      :igIsItemActive => :bool,
      :igIsItemClicked => :bool,
      :igIsItemDeactivated => :bool,
      :igIsItemDeactivatedAfterEdit => :bool,
      :igIsItemEdited => :bool,
      :igIsItemFocused => :bool,
      :igIsItemHovered => :bool,
      :igIsItemToggledOpen => :bool,
      :igIsItemVisible => :bool,
      :igIsKeyDown => :bool,
      :igIsKeyPressed => :bool,
      :igIsKeyReleased => :bool,
      :igIsMouseClicked => :bool,
      :igIsMouseDoubleClicked => :bool,
      :igIsMouseDown => :bool,
      :igIsMouseDragging => :bool,
      :igIsMouseHoveringRect => :bool,
      :igIsMousePosValid => :bool,
      :igIsMouseReleased => :bool,
      :igIsPopupOpen => :bool,
      :igIsRectVisible_Nil => :bool,
      :igIsRectVisible_Vec2 => :bool,
      :igIsWindowAppearing => :bool,
      :igIsWindowCollapsed => :bool,
      :igIsWindowFocused => :bool,
      :igIsWindowHovered => :bool,
      :igLabelText => :void,
      :igListBox_Str_arr => :bool,
      :igListBox_FnBoolPtr => :bool,
      :igLoadIniSettingsFromDisk => :void,
      :igLoadIniSettingsFromMemory => :void,
      :igLogButtons => :void,
      :igLogFinish => :void,
      :igLogText => :void,
      :igLogToClipboard => :void,
      :igLogToFile => :void,
      :igLogToTTY => :void,
      :igMemAlloc => :pointer,
      :igMemFree => :void,
      :igMenuItem_Bool => :bool,
      :igMenuItem_BoolPtr => :bool,
      :igNewFrame => :void,
      :igNewLine => :void,
      :igNextColumn => :void,
      :igOpenPopup_Str => :void,
      :igOpenPopup_ID => :void,
      :igOpenPopupOnItemClick => :void,
      :igPlotHistogram_FloatPtr => :void,
      :igPlotHistogram_FnFloatPtr => :void,
      :igPlotLines_FloatPtr => :void,
      :igPlotLines_FnFloatPtr => :void,
      :igPopAllowKeyboardFocus => :void,
      :igPopButtonRepeat => :void,
      :igPopClipRect => :void,
      :igPopFont => :void,
      :igPopID => :void,
      :igPopItemWidth => :void,
      :igPopStyleColor => :void,
      :igPopStyleVar => :void,
      :igPopTextWrapPos => :void,
      :igProgressBar => :void,
      :igPushAllowKeyboardFocus => :void,
      :igPushButtonRepeat => :void,
      :igPushClipRect => :void,
      :igPushFont => :void,
      :igPushID_Str => :void,
      :igPushID_StrStr => :void,
      :igPushID_Ptr => :void,
      :igPushID_Int => :void,
      :igPushItemWidth => :void,
      :igPushStyleColor_U32 => :void,
      :igPushStyleColor_Vec4 => :void,
      :igPushStyleVar_Float => :void,
      :igPushStyleVar_Vec2 => :void,
      :igPushTextWrapPos => :void,
      :igRadioButton_Bool => :bool,
      :igRadioButton_IntPtr => :bool,
      :igRender => :void,
      :igResetMouseDragDelta => :void,
      :igSameLine => :void,
      :igSaveIniSettingsToDisk => :void,
      :igSaveIniSettingsToMemory => :pointer,
      :igSelectable_Bool => :bool,
      :igSelectable_BoolPtr => :bool,
      :igSeparator => :void,
      :igSetAllocatorFunctions => :void,
      :igSetClipboardText => :void,
      :igSetColorEditOptions => :void,
      :igSetColumnOffset => :void,
      :igSetColumnWidth => :void,
      :igSetCurrentContext => :void,
      :igSetCursorPos => :void,
      :igSetCursorPosX => :void,
      :igSetCursorPosY => :void,
      :igSetCursorScreenPos => :void,
      :igSetDragDropPayload => :bool,
      :igSetItemAllowOverlap => :void,
      :igSetItemDefaultFocus => :void,
      :igSetKeyboardFocusHere => :void,
      :igSetMouseCursor => :void,
      :igSetNextItemOpen => :void,
      :igSetNextItemWidth => :void,
      :igSetNextWindowBgAlpha => :void,
      :igSetNextWindowCollapsed => :void,
      :igSetNextWindowContentSize => :void,
      :igSetNextWindowFocus => :void,
      :igSetNextWindowPos => :void,
      :igSetNextWindowSize => :void,
      :igSetNextWindowSizeConstraints => :void,
      :igSetScrollFromPosX => :void,
      :igSetScrollFromPosY => :void,
      :igSetScrollHereX => :void,
      :igSetScrollHereY => :void,
      :igSetScrollX => :void,
      :igSetScrollY => :void,
      :igSetStateStorage => :void,
      :igSetTabItemClosed => :void,
      :igSetTooltip => :void,
      :igSetWindowCollapsed_Bool => :void,
      :igSetWindowCollapsed_Str => :void,
      :igSetWindowFocus_Nil => :void,
      :igSetWindowFocus_Str => :void,
      :igSetWindowFontScale => :void,
      :igSetWindowPos_Vec2 => :void,
      :igSetWindowPos_Str => :void,
      :igSetWindowSize_Vec2 => :void,
      :igSetWindowSize_Str => :void,
      :igShowAboutWindow => :void,
      :igShowDemoWindow => :void,
      :igShowFontSelector => :void,
      :igShowMetricsWindow => :void,
      :igShowStyleEditor => :void,
      :igShowStyleSelector => :bool,
      :igShowUserGuide => :void,
      :igSliderAngle => :bool,
      :igSliderFloat => :bool,
      :igSliderFloat2 => :bool,
      :igSliderFloat3 => :bool,
      :igSliderFloat4 => :bool,
      :igSliderInt => :bool,
      :igSliderInt2 => :bool,
      :igSliderInt3 => :bool,
      :igSliderInt4 => :bool,
      :igSliderScalar => :bool,
      :igSliderScalarN => :bool,
      :igSmallButton => :bool,
      :igSpacing => :void,
      :igStyleColorsClassic => :void,
      :igStyleColorsDark => :void,
      :igStyleColorsLight => :void,
      :igTabItemButton => :bool,
      :igTableGetColumnCount => :int,
      :igTableGetColumnFlags => :int,
      :igTableGetColumnIndex => :int,
      :igTableGetColumnName => :pointer,
      :igTableGetRowIndex => :int,
      :igTableGetSortSpecs => :pointer,
      :igTableHeader => :void,
      :igTableHeadersRow => :void,
      :igTableNextColumn => :bool,
      :igTableNextRow => :void,
      :igTableSetBgColor => :void,
      :igTableSetColumnEnabled => :void,
      :igTableSetColumnIndex => :bool,
      :igTableSetupColumn => :void,
      :igTableSetupScrollFreeze => :void,
      :igText => :void,
      :igTextColored => :void,
      :igTextDisabled => :void,
      :igTextUnformatted => :void,
      :igTextWrapped => :void,
      :igTreeNode_Str => :bool,
      :igTreeNode_StrStr => :bool,
      :igTreeNode_Ptr => :bool,
      :igTreeNodeEx_Str => :bool,
      :igTreeNodeEx_StrStr => :bool,
      :igTreeNodeEx_Ptr => :bool,
      :igTreePop => :void,
      :igTreePush_Str => :void,
      :igTreePush_Ptr => :void,
      :igUnindent => :void,
      :igVSliderFloat => :bool,
      :igVSliderInt => :bool,
      :igVSliderScalar => :bool,
      :igValue_Bool => :void,
      :igValue_Int => :void,
      :igValue_Uint => :void,
      :igValue_Float => :void,
    }

    symbols.each do |sym|
      begin
        attach_function sym, args[sym], retvals[sym]
      rescue FFI::NotFoundError => error
        $stderr.puts("[Warning] Failed to import #{s}.\n") if output_error
      end
    end

    attach_function :ImVector_ImWchar_create, :ImVector_ImWchar_create, [], :pointer
    attach_function :ImVector_ImWchar_destroy, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_Init, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_UnInit, :ImVector_ImWchar_destroy, [:pointer], :void
  end # self.import_symbols

  # arg: type(const char*), flags(ImGuiDragDropFlags)
  # ret: pointer
  def self.AcceptDragDropPayload(type, flags = 0)
    igAcceptDragDropPayload(type, flags)
  end

  # ret: void
  def self.AlignTextToFramePadding()
    igAlignTextToFramePadding()
  end

  # arg: str_id(const char*), dir(ImGuiDir)
  # ret: bool
  def self.ArrowButton(str_id, dir)
    igArrowButton(str_id, dir)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.Begin(name, p_open = nil, flags = 0)
    igBegin(name, p_open, flags)
  end

  # arg: str_id(const char*), size(ImVec2), border(bool), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChild_Str(str_id, size = ImVec2.create(0,0), border = false, flags = 0)
    igBeginChild_Str(str_id, size, border, flags)
  end

  # arg: id(ImGuiID), size(ImVec2), border(bool), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChild_ID(id, size = ImVec2.create(0,0), border = false, flags = 0)
    igBeginChild_ID(id, size, border, flags)
  end

  # arg: id(ImGuiID), size(ImVec2), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildFrame(id, size, flags = 0)
    igBeginChildFrame(id, size, flags)
  end

  # arg: label(const char*), preview_value(const char*), flags(ImGuiComboFlags)
  # ret: bool
  def self.BeginCombo(label, preview_value, flags = 0)
    igBeginCombo(label, preview_value, flags)
  end

  # arg: flags(ImGuiDragDropFlags)
  # ret: bool
  def self.BeginDragDropSource(flags = 0)
    igBeginDragDropSource(flags)
  end

  # ret: bool
  def self.BeginDragDropTarget()
    igBeginDragDropTarget()
  end

  # ret: void
  def self.BeginGroup()
    igBeginGroup()
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  def self.BeginListBox(label, size = ImVec2.create(0,0))
    igBeginListBox(label, size)
  end

  # ret: bool
  def self.BeginMainMenuBar()
    igBeginMainMenuBar()
  end

  # arg: label(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenu(label, enabled = true)
    igBeginMenu(label, enabled)
  end

  # ret: bool
  def self.BeginMenuBar()
    igBeginMenuBar()
  end

  # arg: str_id(const char*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopup(str_id, flags = 0)
    igBeginPopup(str_id, flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextItem(str_id = nil, popup_flags = 1)
    igBeginPopupContextItem(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextVoid(str_id = nil, popup_flags = 1)
    igBeginPopupContextVoid(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextWindow(str_id = nil, popup_flags = 1)
    igBeginPopupContextWindow(str_id, popup_flags)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupModal(name, p_open = nil, flags = 0)
    igBeginPopupModal(name, p_open, flags)
  end

  # arg: str_id(const char*), flags(ImGuiTabBarFlags)
  # ret: bool
  def self.BeginTabBar(str_id, flags = 0)
    igBeginTabBar(str_id, flags)
  end

  # arg: label(const char*), p_open(bool*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.BeginTabItem(label, p_open = nil, flags = 0)
    igBeginTabItem(label, p_open, flags)
  end

  # arg: str_id(const char*), column(int), flags(ImGuiTableFlags), outer_size(ImVec2), inner_width(float)
  # ret: bool
  def self.BeginTable(str_id, column, flags = 0, outer_size = ImVec2.create(0.0,0.0), inner_width = 0.0)
    igBeginTable(str_id, column, flags, outer_size, inner_width)
  end

  # ret: void
  def self.BeginTooltip()
    igBeginTooltip()
  end

  # ret: void
  def self.Bullet()
    igBullet()
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.BulletText(fmt, *varargs)
    igBulletText(fmt, *varargs)
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  def self.Button(label, size = ImVec2.create(0,0))
    igButton(label, size)
  end

  # ret: float
  def self.CalcItemWidth()
    igCalcItemWidth()
  end

  # arg: items_count(int), items_height(float), out_items_display_start(int*), out_items_display_end(int*)
  # ret: void
  def self.CalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)
    igCalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)
  end

  # arg: text(const char*), text_end(const char*), hide_text_after_double_hash(bool), wrap_width(float)
  # ret: void
  def self.CalcTextSize(text, text_end = nil, hide_text_after_double_hash = false, wrap_width = -1.0)
    pOut = ImVec2.new
    igCalcTextSize(pOut, text, text_end, hide_text_after_double_hash, wrap_width)
    return pOut
  end

  # arg: want_capture_keyboard_value(bool)
  # ret: void
  def self.CaptureKeyboardFromApp(want_capture_keyboard_value = true)
    igCaptureKeyboardFromApp(want_capture_keyboard_value)
  end

  # arg: want_capture_mouse_value(bool)
  # ret: void
  def self.CaptureMouseFromApp(want_capture_mouse_value = true)
    igCaptureMouseFromApp(want_capture_mouse_value)
  end

  # arg: label(const char*), v(bool*)
  # ret: bool
  def self.Checkbox(label, v)
    igCheckbox(label, v)
  end

  # arg: label(const char*), flags(int*), flags_value(int)
  # ret: bool
  def self.CheckboxFlags_IntPtr(label, flags, flags_value)
    igCheckboxFlags_IntPtr(label, flags, flags_value)
  end

  # arg: label(const char*), flags(unsigned int*), flags_value(unsigned int)
  # ret: bool
  def self.CheckboxFlags_UintPtr(label, flags, flags_value)
    igCheckboxFlags_UintPtr(label, flags, flags_value)
  end

  # ret: void
  def self.CloseCurrentPopup()
    igCloseCurrentPopup()
  end

  # arg: label(const char*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.CollapsingHeader_TreeNodeFlags(label, flags = 0)
    igCollapsingHeader_TreeNodeFlags(label, flags)
  end

  # arg: label(const char*), p_visible(bool*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.CollapsingHeader_BoolPtr(label, p_visible, flags = 0)
    igCollapsingHeader_BoolPtr(label, p_visible, flags)
  end

  # arg: desc_id(const char*), col(ImVec4), flags(ImGuiColorEditFlags), size(ImVec2)
  # ret: bool
  def self.ColorButton(desc_id, col, flags = 0, size = ImVec2.create(0,0))
    igColorButton(desc_id, col, flags, size)
  end

  # arg: in(ImVec4)
  # ret: uint
  def self.ColorConvertFloat4ToU32(_in_)
    igColorConvertFloat4ToU32(_in_)
  end

  # arg: h(float), s(float), v(float), out_r(float*), out_g(float*), out_b(float*)
  # ret: void
  def self.ColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
    igColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
  end

  # arg: r(float), g(float), b(float), out_h(float*), out_s(float*), out_v(float*)
  # ret: void
  def self.ColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
    igColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
  end

  # arg: in(ImU32)
  # ret: void
  def self.ColorConvertU32ToFloat4(_in_)
    pOut = ImVec4.new
    igColorConvertU32ToFloat4(pOut, _in_)
    return pOut
  end

  # arg: label(const char*), col(float[3]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorEdit3(label, col, flags = 0)
    igColorEdit3(label, col, flags)
  end

  # arg: label(const char*), col(float[4]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorEdit4(label, col, flags = 0)
    igColorEdit4(label, col, flags)
  end

  # arg: label(const char*), col(float[3]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorPicker3(label, col, flags = 0)
    igColorPicker3(label, col, flags)
  end

  # arg: label(const char*), col(float[4]), flags(ImGuiColorEditFlags), ref_col(const float*)
  # ret: bool
  def self.ColorPicker4(label, col, flags = 0, ref_col = nil)
    igColorPicker4(label, col, flags, ref_col)
  end

  # arg: count(int), id(const char*), border(bool)
  # ret: void
  def self.Columns(count = 1, id = nil, border = true)
    igColumns(count, id, border)
  end

  # arg: label(const char*), current_item(int*), items(const char* const[]), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.Combo_Str_arr(label, current_item, items, items_count, popup_max_height_in_items = -1)
    igCombo_Str_arr(label, current_item, items, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), items_separated_by_zeros(const char*), popup_max_height_in_items(int)
  # ret: bool
  def self.Combo_Str(label, current_item, items_separated_by_zeros, popup_max_height_in_items = -1)
    igCombo_Str(label, current_item, items_separated_by_zeros, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), items_getter(bool(*)(void* data,int idx,const char** out_text)), data(void*), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.Combo_FnBoolPtr(label, current_item, items_getter, data, items_count, popup_max_height_in_items = -1)
    igCombo_FnBoolPtr(label, current_item, items_getter, data, items_count, popup_max_height_in_items)
  end

  # arg: shared_font_atlas(ImFontAtlas*)
  # ret: pointer
  def self.CreateContext(shared_font_atlas = nil)
    igCreateContext(shared_font_atlas)
  end

  # arg: version_str(const char*), sz_io(size_t), sz_style(size_t), sz_vec2(size_t), sz_vec4(size_t), sz_drawvert(size_t), sz_drawidx(size_t)
  # ret: bool
  def self.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
    igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.DestroyContext(ctx = nil)
    igDestroyContext(ctx)
  end

  # arg: label(const char*), v(float*), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    igDragFloat(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat2(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    igDragFloat2(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat3(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    igDragFloat3(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat4(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    igDragFloat4(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(float*), v_current_max(float*), v_speed(float), v_min(float), v_max(float), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", format_max = nil, flags = 0)
    igDragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), v(int*), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    igDragInt(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt2(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    igDragInt2(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt3(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    igDragInt3(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt4(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    igDragInt4(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(int*), v_current_max(int*), v_speed(float), v_min(int), v_max(int), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", format_max = nil, flags = 0)
    igDragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalar(label, data_type, p_data, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    igDragScalar(label, data_type, p_data, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarN(label, data_type, p_data, components, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    igDragScalarN(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.Dummy(size)
    igDummy(size)
  end

  # ret: void
  def self.End()
    igEnd()
  end

  # ret: void
  def self.EndChild()
    igEndChild()
  end

  # ret: void
  def self.EndChildFrame()
    igEndChildFrame()
  end

  # ret: void
  def self.EndCombo()
    igEndCombo()
  end

  # ret: void
  def self.EndDragDropSource()
    igEndDragDropSource()
  end

  # ret: void
  def self.EndDragDropTarget()
    igEndDragDropTarget()
  end

  # ret: void
  def self.EndFrame()
    igEndFrame()
  end

  # ret: void
  def self.EndGroup()
    igEndGroup()
  end

  # ret: void
  def self.EndListBox()
    igEndListBox()
  end

  # ret: void
  def self.EndMainMenuBar()
    igEndMainMenuBar()
  end

  # ret: void
  def self.EndMenu()
    igEndMenu()
  end

  # ret: void
  def self.EndMenuBar()
    igEndMenuBar()
  end

  # ret: void
  def self.EndPopup()
    igEndPopup()
  end

  # ret: void
  def self.EndTabBar()
    igEndTabBar()
  end

  # ret: void
  def self.EndTabItem()
    igEndTabItem()
  end

  # ret: void
  def self.EndTable()
    igEndTable()
  end

  # ret: void
  def self.EndTooltip()
    igEndTooltip()
  end

  # arg: p_alloc_func(ImGuiMemAllocFunc*), p_free_func(ImGuiMemFreeFunc*), p_user_data(void**)
  # ret: void
  def self.GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
    igGetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
  end

  # ret: pointer
  def self.GetBackgroundDrawList()
    igGetBackgroundDrawList()
  end

  # ret: pointer
  def self.GetClipboardText()
    igGetClipboardText()
  end

  # arg: idx(ImGuiCol), alpha_mul(float)
  # ret: uint
  def self.GetColorU32_Col(idx, alpha_mul = 1.0)
    igGetColorU32_Col(idx, alpha_mul)
  end

  # arg: col(ImVec4)
  # ret: uint
  def self.GetColorU32_Vec4(col)
    igGetColorU32_Vec4(col)
  end

  # arg: col(ImU32)
  # ret: uint
  def self.GetColorU32_U32(col)
    igGetColorU32_U32(col)
  end

  # ret: int
  def self.GetColumnIndex()
    igGetColumnIndex()
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnOffset(column_index = -1)
    igGetColumnOffset(column_index)
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnWidth(column_index = -1)
    igGetColumnWidth(column_index)
  end

  # ret: int
  def self.GetColumnsCount()
    igGetColumnsCount()
  end

  # ret: void
  def self.GetContentRegionAvail()
    pOut = ImVec2.new
    igGetContentRegionAvail(pOut)
    return pOut
  end

  # ret: void
  def self.GetContentRegionMax()
    pOut = ImVec2.new
    igGetContentRegionMax(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetCurrentContext()
    igGetCurrentContext()
  end

  # ret: void
  def self.GetCursorPos()
    pOut = ImVec2.new
    igGetCursorPos(pOut)
    return pOut
  end

  # ret: float
  def self.GetCursorPosX()
    igGetCursorPosX()
  end

  # ret: float
  def self.GetCursorPosY()
    igGetCursorPosY()
  end

  # ret: void
  def self.GetCursorScreenPos()
    pOut = ImVec2.new
    igGetCursorScreenPos(pOut)
    return pOut
  end

  # ret: void
  def self.GetCursorStartPos()
    pOut = ImVec2.new
    igGetCursorStartPos(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetDragDropPayload()
    igGetDragDropPayload()
  end

  # ret: pointer
  def self.GetDrawData()
    igGetDrawData()
  end

  # ret: pointer
  def self.GetDrawListSharedData()
    igGetDrawListSharedData()
  end

  # ret: pointer
  def self.GetFont()
    igGetFont()
  end

  # ret: float
  def self.GetFontSize()
    igGetFontSize()
  end

  # ret: void
  def self.GetFontTexUvWhitePixel()
    pOut = ImVec2.new
    igGetFontTexUvWhitePixel(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetForegroundDrawList()
    igGetForegroundDrawList()
  end

  # ret: int
  def self.GetFrameCount()
    igGetFrameCount()
  end

  # ret: float
  def self.GetFrameHeight()
    igGetFrameHeight()
  end

  # ret: float
  def self.GetFrameHeightWithSpacing()
    igGetFrameHeightWithSpacing()
  end

  # arg: str_id(const char*)
  # ret: uint
  def self.GetID_Str(str_id)
    igGetID_Str(str_id)
  end

  # arg: str_id_begin(const char*), str_id_end(const char*)
  # ret: uint
  def self.GetID_StrStr(str_id_begin, str_id_end)
    igGetID_StrStr(str_id_begin, str_id_end)
  end

  # arg: ptr_id(const void*)
  # ret: uint
  def self.GetID_Ptr(ptr_id)
    igGetID_Ptr(ptr_id)
  end

  # ret: pointer
  def self.GetIO()
    igGetIO()
  end

  # ret: void
  def self.GetItemRectMax()
    pOut = ImVec2.new
    igGetItemRectMax(pOut)
    return pOut
  end

  # ret: void
  def self.GetItemRectMin()
    pOut = ImVec2.new
    igGetItemRectMin(pOut)
    return pOut
  end

  # ret: void
  def self.GetItemRectSize()
    pOut = ImVec2.new
    igGetItemRectSize(pOut)
    return pOut
  end

  # arg: imgui_key(ImGuiKey)
  # ret: int
  def self.GetKeyIndex(imgui_key)
    igGetKeyIndex(imgui_key)
  end

  # arg: key_index(int), repeat_delay(float), rate(float)
  # ret: int
  def self.GetKeyPressedAmount(key_index, repeat_delay, rate)
    igGetKeyPressedAmount(key_index, repeat_delay, rate)
  end

  # ret: pointer
  def self.GetMainViewport()
    igGetMainViewport()
  end

  # ret: int
  def self.GetMouseCursor()
    igGetMouseCursor()
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: void
  def self.GetMouseDragDelta(button = 0, lock_threshold = -1.0)
    pOut = ImVec2.new
    igGetMouseDragDelta(pOut, button, lock_threshold)
    return pOut
  end

  # ret: void
  def self.GetMousePos()
    pOut = ImVec2.new
    igGetMousePos(pOut)
    return pOut
  end

  # ret: void
  def self.GetMousePosOnOpeningCurrentPopup()
    pOut = ImVec2.new
    igGetMousePosOnOpeningCurrentPopup(pOut)
    return pOut
  end

  # ret: float
  def self.GetScrollMaxX()
    igGetScrollMaxX()
  end

  # ret: float
  def self.GetScrollMaxY()
    igGetScrollMaxY()
  end

  # ret: float
  def self.GetScrollX()
    igGetScrollX()
  end

  # ret: float
  def self.GetScrollY()
    igGetScrollY()
  end

  # ret: pointer
  def self.GetStateStorage()
    igGetStateStorage()
  end

  # ret: pointer
  def self.GetStyle()
    igGetStyle()
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorName(idx)
    igGetStyleColorName(idx)
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorVec4(idx)
    igGetStyleColorVec4(idx)
  end

  # ret: float
  def self.GetTextLineHeight()
    igGetTextLineHeight()
  end

  # ret: float
  def self.GetTextLineHeightWithSpacing()
    igGetTextLineHeightWithSpacing()
  end

  # ret: double
  def self.GetTime()
    igGetTime()
  end

  # ret: float
  def self.GetTreeNodeToLabelSpacing()
    igGetTreeNodeToLabelSpacing()
  end

  # ret: pointer
  def self.GetVersion()
    igGetVersion()
  end

  # ret: void
  def self.GetWindowContentRegionMax()
    pOut = ImVec2.new
    igGetWindowContentRegionMax(pOut)
    return pOut
  end

  # ret: void
  def self.GetWindowContentRegionMin()
    pOut = ImVec2.new
    igGetWindowContentRegionMin(pOut)
    return pOut
  end

  # ret: float
  def self.GetWindowContentRegionWidth()
    igGetWindowContentRegionWidth()
  end

  # ret: pointer
  def self.GetWindowDrawList()
    igGetWindowDrawList()
  end

  # ret: float
  def self.GetWindowHeight()
    igGetWindowHeight()
  end

  # ret: void
  def self.GetWindowPos()
    pOut = ImVec2.new
    igGetWindowPos(pOut)
    return pOut
  end

  # ret: void
  def self.GetWindowSize()
    pOut = ImVec2.new
    igGetWindowSize(pOut)
    return pOut
  end

  # ret: float
  def self.GetWindowWidth()
    igGetWindowWidth()
  end

  # arg: user_texture_id(ImTextureID), size(ImVec2), uv0(ImVec2), uv1(ImVec2), tint_col(ImVec4), border_col(ImVec4)
  # ret: void
  def self.Image(user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), tint_col = ImVec4.create(1,1,1,1), border_col = ImVec4.create(0,0,0,0))
    igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
  end

  # arg: user_texture_id(ImTextureID), size(ImVec2), uv0(ImVec2), uv1(ImVec2), frame_padding(int), bg_col(ImVec4), tint_col(ImVec4)
  # ret: bool
  def self.ImageButton(user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), frame_padding = -1, bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))
    igImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Indent(indent_w = 0.0)
    igIndent(indent_w)
  end

  # arg: label(const char*), v(double*), step(double), step_fast(double), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputDouble(label, v, step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0)
    igInputDouble(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float*), step(float), step_fast(float), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat(label, v, step = 0.0, step_fast = 0.0, format = "%.3f", flags = 0)
    igInputFloat(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float[2]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat2(label, v, format = "%.3f", flags = 0)
    igInputFloat2(label, v, format, flags)
  end

  # arg: label(const char*), v(float[3]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat3(label, v, format = "%.3f", flags = 0)
    igInputFloat3(label, v, format, flags)
  end

  # arg: label(const char*), v(float[4]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat4(label, v, format = "%.3f", flags = 0)
    igInputFloat4(label, v, format, flags)
  end

  # arg: label(const char*), v(int*), step(int), step_fast(int), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt(label, v, step = 1, step_fast = 100, flags = 0)
    igInputInt(label, v, step, step_fast, flags)
  end

  # arg: label(const char*), v(int[2]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt2(label, v, flags = 0)
    igInputInt2(label, v, flags)
  end

  # arg: label(const char*), v(int[3]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt3(label, v, flags = 0)
    igInputInt3(label, v, flags)
  end

  # arg: label(const char*), v(int[4]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt4(label, v, flags = 0)
    igInputInt4(label, v, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalar(label, data_type, p_data, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    igInputScalar(label, data_type, p_data, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalarN(label, data_type, p_data, components, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    igInputScalarN(label, data_type, p_data, components, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputText(label, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    igInputText(label, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), size(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextMultiline(label, buf, buf_size, size = ImVec2.create(0,0), flags = 0, callback = nil, user_data = nil)
    igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextWithHint(label, hint, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    igInputTextWithHint(label, hint, buf, buf_size, flags, callback, user_data)
  end

  # arg: str_id(const char*), size(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.InvisibleButton(str_id, size, flags = 0)
    igInvisibleButton(str_id, size, flags)
  end

  # ret: bool
  def self.IsAnyItemActive()
    igIsAnyItemActive()
  end

  # ret: bool
  def self.IsAnyItemFocused()
    igIsAnyItemFocused()
  end

  # ret: bool
  def self.IsAnyItemHovered()
    igIsAnyItemHovered()
  end

  # ret: bool
  def self.IsAnyMouseDown()
    igIsAnyMouseDown()
  end

  # ret: bool
  def self.IsItemActivated()
    igIsItemActivated()
  end

  # ret: bool
  def self.IsItemActive()
    igIsItemActive()
  end

  # arg: mouse_button(ImGuiMouseButton)
  # ret: bool
  def self.IsItemClicked(mouse_button = 0)
    igIsItemClicked(mouse_button)
  end

  # ret: bool
  def self.IsItemDeactivated()
    igIsItemDeactivated()
  end

  # ret: bool
  def self.IsItemDeactivatedAfterEdit()
    igIsItemDeactivatedAfterEdit()
  end

  # ret: bool
  def self.IsItemEdited()
    igIsItemEdited()
  end

  # ret: bool
  def self.IsItemFocused()
    igIsItemFocused()
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsItemHovered(flags = 0)
    igIsItemHovered(flags)
  end

  # ret: bool
  def self.IsItemToggledOpen()
    igIsItemToggledOpen()
  end

  # ret: bool
  def self.IsItemVisible()
    igIsItemVisible()
  end

  # arg: user_key_index(int)
  # ret: bool
  def self.IsKeyDown(user_key_index)
    igIsKeyDown(user_key_index)
  end

  # arg: user_key_index(int), repeat(bool)
  # ret: bool
  def self.IsKeyPressed(user_key_index, repeat = true)
    igIsKeyPressed(user_key_index, repeat)
  end

  # arg: user_key_index(int)
  # ret: bool
  def self.IsKeyReleased(user_key_index)
    igIsKeyReleased(user_key_index)
  end

  # arg: button(ImGuiMouseButton), repeat(bool)
  # ret: bool
  def self.IsMouseClicked(button, repeat = false)
    igIsMouseClicked(button, repeat)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDoubleClicked(button)
    igIsMouseDoubleClicked(button)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDown(button)
    igIsMouseDown(button)
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: bool
  def self.IsMouseDragging(button, lock_threshold = -1.0)
    igIsMouseDragging(button, lock_threshold)
  end

  # arg: r_min(ImVec2), r_max(ImVec2), clip(bool)
  # ret: bool
  def self.IsMouseHoveringRect(r_min, r_max, clip = true)
    igIsMouseHoveringRect(r_min, r_max, clip)
  end

  # arg: mouse_pos(const ImVec2*)
  # ret: bool
  def self.IsMousePosValid(mouse_pos = nil)
    igIsMousePosValid(mouse_pos)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseReleased(button)
    igIsMouseReleased(button)
  end

  # arg: str_id(const char*), flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpen(str_id, flags = 0)
    igIsPopupOpen(str_id, flags)
  end

  # arg: size(ImVec2)
  # ret: bool
  def self.IsRectVisible_Nil(size)
    igIsRectVisible_Nil(size)
  end

  # arg: rect_min(ImVec2), rect_max(ImVec2)
  # ret: bool
  def self.IsRectVisible_Vec2(rect_min, rect_max)
    igIsRectVisible_Vec2(rect_min, rect_max)
  end

  # ret: bool
  def self.IsWindowAppearing()
    igIsWindowAppearing()
  end

  # ret: bool
  def self.IsWindowCollapsed()
    igIsWindowCollapsed()
  end

  # arg: flags(ImGuiFocusedFlags)
  # ret: bool
  def self.IsWindowFocused(flags = 0)
    igIsWindowFocused(flags)
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsWindowHovered(flags = 0)
    igIsWindowHovered(flags)
  end

  # arg: label(const char*), fmt(const char*), ...(...)
  # ret: void
  def self.LabelText(label, fmt, *varargs)
    igLabelText(label, fmt, *varargs)
  end

  # arg: label(const char*), current_item(int*), items(const char* const[]), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBox_Str_arr(label, current_item, items, items_count, height_in_items = -1)
    igListBox_Str_arr(label, current_item, items, items_count, height_in_items)
  end

  # arg: label(const char*), current_item(int*), items_getter(bool(*)(void* data,int idx,const char** out_text)), data(void*), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBox_FnBoolPtr(label, current_item, items_getter, data, items_count, height_in_items = -1)
    igListBox_FnBoolPtr(label, current_item, items_getter, data, items_count, height_in_items)
  end

  # arg: ini_filename(const char*)
  # ret: void
  def self.LoadIniSettingsFromDisk(ini_filename)
    igLoadIniSettingsFromDisk(ini_filename)
  end

  # arg: ini_data(const char*), ini_size(size_t)
  # ret: void
  def self.LoadIniSettingsFromMemory(ini_data, ini_size = 0)
    igLoadIniSettingsFromMemory(ini_data, ini_size)
  end

  # ret: void
  def self.LogButtons()
    igLogButtons()
  end

  # ret: void
  def self.LogFinish()
    igLogFinish()
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.LogText(fmt, *varargs)
    igLogText(fmt, *varargs)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToClipboard(auto_open_depth = -1)
    igLogToClipboard(auto_open_depth)
  end

  # arg: auto_open_depth(int), filename(const char*)
  # ret: void
  def self.LogToFile(auto_open_depth = -1, filename = nil)
    igLogToFile(auto_open_depth, filename)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToTTY(auto_open_depth = -1)
    igLogToTTY(auto_open_depth)
  end

  # arg: size(size_t)
  # ret: pointer
  def self.MemAlloc(size)
    igMemAlloc(size)
  end

  # arg: ptr(void*)
  # ret: void
  def self.MemFree(ptr)
    igMemFree(ptr)
  end

  # arg: label(const char*), shortcut(const char*), selected(bool), enabled(bool)
  # ret: bool
  def self.MenuItem_Bool(label, shortcut = nil, selected = false, enabled = true)
    igMenuItem_Bool(label, shortcut, selected, enabled)
  end

  # arg: label(const char*), shortcut(const char*), p_selected(bool*), enabled(bool)
  # ret: bool
  def self.MenuItem_BoolPtr(label, shortcut, p_selected, enabled = true)
    igMenuItem_BoolPtr(label, shortcut, p_selected, enabled)
  end

  # ret: void
  def self.NewFrame()
    igNewFrame()
  end

  # ret: void
  def self.NewLine()
    igNewLine()
  end

  # ret: void
  def self.NextColumn()
    igNextColumn()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopup_Str(str_id, popup_flags = 0)
    igOpenPopup_Str(str_id, popup_flags)
  end

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopup_ID(id, popup_flags = 0)
    igOpenPopup_ID(id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupOnItemClick(str_id = nil, popup_flags = 1)
    igOpenPopupOnItemClick(str_id, popup_flags)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotHistogram_FloatPtr(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    igPlotHistogram_FloatPtr(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  # arg: label(const char*), values_getter(float(*)(void* data,int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2)
  # ret: void
  def self.PlotHistogram_FnFloatPtr(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    igPlotHistogram_FnFloatPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotLines_FloatPtr(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    igPlotLines_FloatPtr(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  # arg: label(const char*), values_getter(float(*)(void* data,int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2)
  # ret: void
  def self.PlotLines_FnFloatPtr(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    igPlotLines_FnFloatPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  # ret: void
  def self.PopAllowKeyboardFocus()
    igPopAllowKeyboardFocus()
  end

  # ret: void
  def self.PopButtonRepeat()
    igPopButtonRepeat()
  end

  # ret: void
  def self.PopClipRect()
    igPopClipRect()
  end

  # ret: void
  def self.PopFont()
    igPopFont()
  end

  # ret: void
  def self.PopID()
    igPopID()
  end

  # ret: void
  def self.PopItemWidth()
    igPopItemWidth()
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleColor(count = 1)
    igPopStyleColor(count)
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleVar(count = 1)
    igPopStyleVar(count)
  end

  # ret: void
  def self.PopTextWrapPos()
    igPopTextWrapPos()
  end

  # arg: fraction(float), size_arg(ImVec2), overlay(const char*)
  # ret: void
  def self.ProgressBar(fraction, size_arg = ImVec2.create(-FLT_MIN,0), overlay = nil)
    igProgressBar(fraction, size_arg, overlay)
  end

  # arg: allow_keyboard_focus(bool)
  # ret: void
  def self.PushAllowKeyboardFocus(allow_keyboard_focus)
    igPushAllowKeyboardFocus(allow_keyboard_focus)
  end

  # arg: repeat(bool)
  # ret: void
  def self.PushButtonRepeat(repeat)
    igPushButtonRepeat(repeat)
  end

  # arg: clip_rect_min(ImVec2), clip_rect_max(ImVec2), intersect_with_current_clip_rect(bool)
  # ret: void
  def self.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
    igPushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  # arg: font(ImFont*)
  # ret: void
  def self.PushFont(font)
    igPushFont(font)
  end

  # arg: str_id(const char*)
  # ret: void
  def self.PushID_Str(str_id)
    igPushID_Str(str_id)
  end

  # arg: str_id_begin(const char*), str_id_end(const char*)
  # ret: void
  def self.PushID_StrStr(str_id_begin, str_id_end)
    igPushID_StrStr(str_id_begin, str_id_end)
  end

  # arg: ptr_id(const void*)
  # ret: void
  def self.PushID_Ptr(ptr_id)
    igPushID_Ptr(ptr_id)
  end

  # arg: int_id(int)
  # ret: void
  def self.PushID_Int(int_id)
    igPushID_Int(int_id)
  end

  # arg: item_width(float)
  # ret: void
  def self.PushItemWidth(item_width)
    igPushItemWidth(item_width)
  end

  # arg: idx(ImGuiCol), col(ImU32)
  # ret: void
  def self.PushStyleColor_U32(idx, col)
    igPushStyleColor_U32(idx, col)
  end

  # arg: idx(ImGuiCol), col(ImVec4)
  # ret: void
  def self.PushStyleColor_Vec4(idx, col)
    igPushStyleColor_Vec4(idx, col)
  end

  # arg: idx(ImGuiStyleVar), val(float)
  # ret: void
  def self.PushStyleVar_Float(idx, val)
    igPushStyleVar_Float(idx, val)
  end

  # arg: idx(ImGuiStyleVar), val(ImVec2)
  # ret: void
  def self.PushStyleVar_Vec2(idx, val)
    igPushStyleVar_Vec2(idx, val)
  end

  # arg: wrap_local_pos_x(float)
  # ret: void
  def self.PushTextWrapPos(wrap_local_pos_x = 0.0)
    igPushTextWrapPos(wrap_local_pos_x)
  end

  # arg: label(const char*), active(bool)
  # ret: bool
  def self.RadioButton_Bool(label, active)
    igRadioButton_Bool(label, active)
  end

  # arg: label(const char*), v(int*), v_button(int)
  # ret: bool
  def self.RadioButton_IntPtr(label, v, v_button)
    igRadioButton_IntPtr(label, v, v_button)
  end

  # ret: void
  def self.Render()
    igRender()
  end

  # arg: button(ImGuiMouseButton)
  # ret: void
  def self.ResetMouseDragDelta(button = 0)
    igResetMouseDragDelta(button)
  end

  # arg: offset_from_start_x(float), spacing(float)
  # ret: void
  def self.SameLine(offset_from_start_x = 0.0, spacing = -1.0)
    igSameLine(offset_from_start_x, spacing)
  end

  # arg: ini_filename(const char*)
  # ret: void
  def self.SaveIniSettingsToDisk(ini_filename)
    igSaveIniSettingsToDisk(ini_filename)
  end

  # arg: out_ini_size(size_t*)
  # ret: pointer
  def self.SaveIniSettingsToMemory(out_ini_size = nil)
    igSaveIniSettingsToMemory(out_ini_size)
  end

  # arg: label(const char*), selected(bool), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.Selectable_Bool(label, selected = false, flags = 0, size = ImVec2.create(0,0))
    igSelectable_Bool(label, selected, flags, size)
  end

  # arg: label(const char*), p_selected(bool*), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.Selectable_BoolPtr(label, p_selected, flags = 0, size = ImVec2.create(0,0))
    igSelectable_BoolPtr(label, p_selected, flags, size)
  end

  # ret: void
  def self.Separator()
    igSeparator()
  end

  # arg: alloc_func(ImGuiMemAllocFunc), free_func(ImGuiMemFreeFunc), user_data(void*)
  # ret: void
  def self.SetAllocatorFunctions(alloc_func, free_func, user_data = nil)
    igSetAllocatorFunctions(alloc_func, free_func, user_data)
  end

  # arg: text(const char*)
  # ret: void
  def self.SetClipboardText(text)
    igSetClipboardText(text)
  end

  # arg: flags(ImGuiColorEditFlags)
  # ret: void
  def self.SetColorEditOptions(flags)
    igSetColorEditOptions(flags)
  end

  # arg: column_index(int), offset_x(float)
  # ret: void
  def self.SetColumnOffset(column_index, offset_x)
    igSetColumnOffset(column_index, offset_x)
  end

  # arg: column_index(int), width(float)
  # ret: void
  def self.SetColumnWidth(column_index, width)
    igSetColumnWidth(column_index, width)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.SetCurrentContext(ctx)
    igSetCurrentContext(ctx)
  end

  # arg: local_pos(ImVec2)
  # ret: void
  def self.SetCursorPos(local_pos)
    igSetCursorPos(local_pos)
  end

  # arg: local_x(float)
  # ret: void
  def self.SetCursorPosX(local_x)
    igSetCursorPosX(local_x)
  end

  # arg: local_y(float)
  # ret: void
  def self.SetCursorPosY(local_y)
    igSetCursorPosY(local_y)
  end

  # arg: pos(ImVec2)
  # ret: void
  def self.SetCursorScreenPos(pos)
    igSetCursorScreenPos(pos)
  end

  # arg: type(const char*), data(const void*), sz(size_t), cond(ImGuiCond)
  # ret: bool
  def self.SetDragDropPayload(type, data, sz, cond = 0)
    igSetDragDropPayload(type, data, sz, cond)
  end

  # ret: void
  def self.SetItemAllowOverlap()
    igSetItemAllowOverlap()
  end

  # ret: void
  def self.SetItemDefaultFocus()
    igSetItemDefaultFocus()
  end

  # arg: offset(int)
  # ret: void
  def self.SetKeyboardFocusHere(offset = 0)
    igSetKeyboardFocusHere(offset)
  end

  # arg: cursor_type(ImGuiMouseCursor)
  # ret: void
  def self.SetMouseCursor(cursor_type)
    igSetMouseCursor(cursor_type)
  end

  # arg: is_open(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextItemOpen(is_open, cond = 0)
    igSetNextItemOpen(is_open, cond)
  end

  # arg: item_width(float)
  # ret: void
  def self.SetNextItemWidth(item_width)
    igSetNextItemWidth(item_width)
  end

  # arg: alpha(float)
  # ret: void
  def self.SetNextWindowBgAlpha(alpha)
    igSetNextWindowBgAlpha(alpha)
  end

  # arg: collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowCollapsed(collapsed, cond = 0)
    igSetNextWindowCollapsed(collapsed, cond)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.SetNextWindowContentSize(size)
    igSetNextWindowContentSize(size)
  end

  # ret: void
  def self.SetNextWindowFocus()
    igSetNextWindowFocus()
  end

  # arg: pos(ImVec2), cond(ImGuiCond), pivot(ImVec2)
  # ret: void
  def self.SetNextWindowPos(pos, cond = 0, pivot = ImVec2.create(0,0))
    igSetNextWindowPos(pos, cond, pivot)
  end

  # arg: size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowSize(size, cond = 0)
    igSetNextWindowSize(size, cond)
  end

  # arg: size_min(ImVec2), size_max(ImVec2), custom_callback(ImGuiSizeCallback), custom_callback_data(void*)
  # ret: void
  def self.SetNextWindowSizeConstraints(size_min, size_max, custom_callback = nil, custom_callback_data = nil)
    igSetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data)
  end

  # arg: local_x(float), center_x_ratio(float)
  # ret: void
  def self.SetScrollFromPosX(local_x, center_x_ratio = 0.5)
    igSetScrollFromPosX(local_x, center_x_ratio)
  end

  # arg: local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosY(local_y, center_y_ratio = 0.5)
    igSetScrollFromPosY(local_y, center_y_ratio)
  end

  # arg: center_x_ratio(float)
  # ret: void
  def self.SetScrollHereX(center_x_ratio = 0.5)
    igSetScrollHereX(center_x_ratio)
  end

  # arg: center_y_ratio(float)
  # ret: void
  def self.SetScrollHereY(center_y_ratio = 0.5)
    igSetScrollHereY(center_y_ratio)
  end

  # arg: scroll_x(float)
  # ret: void
  def self.SetScrollX(scroll_x)
    igSetScrollX(scroll_x)
  end

  # arg: scroll_y(float)
  # ret: void
  def self.SetScrollY(scroll_y)
    igSetScrollY(scroll_y)
  end

  # arg: storage(ImGuiStorage*)
  # ret: void
  def self.SetStateStorage(storage)
    igSetStateStorage(storage)
  end

  # arg: tab_or_docked_window_label(const char*)
  # ret: void
  def self.SetTabItemClosed(tab_or_docked_window_label)
    igSetTabItemClosed(tab_or_docked_window_label)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.SetTooltip(fmt, *varargs)
    igSetTooltip(fmt, *varargs)
  end

  # arg: collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsed_Bool(collapsed, cond = 0)
    igSetWindowCollapsed_Bool(collapsed, cond)
  end

  # arg: name(const char*), collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsed_Str(name, collapsed, cond = 0)
    igSetWindowCollapsed_Str(name, collapsed, cond)
  end

  # ret: void
  def self.SetWindowFocus_Nil()
    igSetWindowFocus_Nil()
  end

  # arg: name(const char*)
  # ret: void
  def self.SetWindowFocus_Str(name)
    igSetWindowFocus_Str(name)
  end

  # arg: scale(float)
  # ret: void
  def self.SetWindowFontScale(scale)
    igSetWindowFontScale(scale)
  end

  # arg: pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPos_Vec2(pos, cond = 0)
    igSetWindowPos_Vec2(pos, cond)
  end

  # arg: name(const char*), pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPos_Str(name, pos, cond = 0)
    igSetWindowPos_Str(name, pos, cond)
  end

  # arg: size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSize_Vec2(size, cond = 0)
    igSetWindowSize_Vec2(size, cond)
  end

  # arg: name(const char*), size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSize_Str(name, size, cond = 0)
    igSetWindowSize_Str(name, size, cond)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowAboutWindow(p_open = nil)
    igShowAboutWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDemoWindow(p_open = nil)
    igShowDemoWindow(p_open)
  end

  # arg: label(const char*)
  # ret: void
  def self.ShowFontSelector(label)
    igShowFontSelector(label)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowMetricsWindow(p_open = nil)
    igShowMetricsWindow(p_open)
  end

  # arg: ref(ImGuiStyle*)
  # ret: void
  def self.ShowStyleEditor(ref = nil)
    igShowStyleEditor(ref)
  end

  # arg: label(const char*)
  # ret: bool
  def self.ShowStyleSelector(label)
    igShowStyleSelector(label)
  end

  # ret: void
  def self.ShowUserGuide()
    igShowUserGuide()
  end

  # arg: label(const char*), v_rad(float*), v_degrees_min(float), v_degrees_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderAngle(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg", flags = 0)
    igSliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
  end

  # arg: label(const char*), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat(label, v, v_min, v_max, format = "%.3f", flags = 0)
    igSliderFloat(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat2(label, v, v_min, v_max, format = "%.3f", flags = 0)
    igSliderFloat2(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat3(label, v, v_min, v_max, format = "%.3f", flags = 0)
    igSliderFloat3(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat4(label, v, v_min, v_max, format = "%.3f", flags = 0)
    igSliderFloat4(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt(label, v, v_min, v_max, format = "%d", flags = 0)
    igSliderInt(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt2(label, v, v_min, v_max, format = "%d", flags = 0)
    igSliderInt2(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt3(label, v, v_min, v_max, format = "%d", flags = 0)
    igSliderInt3(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt4(label, v, v_min, v_max, format = "%d", flags = 0)
    igSliderInt4(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalar(label, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    igSliderScalar(label, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarN(label, data_type, p_data, components, p_min, p_max, format = nil, flags = 0)
    igSliderScalarN(label, data_type, p_data, components, p_min, p_max, format, flags)
  end

  # arg: label(const char*)
  # ret: bool
  def self.SmallButton(label)
    igSmallButton(label)
  end

  # ret: void
  def self.Spacing()
    igSpacing()
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsClassic(dst = nil)
    igStyleColorsClassic(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsDark(dst = nil)
    igStyleColorsDark(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsLight(dst = nil)
    igStyleColorsLight(dst)
  end

  # arg: label(const char*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.TabItemButton(label, flags = 0)
    igTabItemButton(label, flags)
  end

  # ret: int
  def self.TableGetColumnCount()
    igTableGetColumnCount()
  end

  # arg: column_n(int)
  # ret: int
  def self.TableGetColumnFlags(column_n = -1)
    igTableGetColumnFlags(column_n)
  end

  # ret: int
  def self.TableGetColumnIndex()
    igTableGetColumnIndex()
  end

  # arg: column_n(int)
  # ret: pointer
  def self.TableGetColumnName(column_n = -1)
    igTableGetColumnName(column_n)
  end

  # ret: int
  def self.TableGetRowIndex()
    igTableGetRowIndex()
  end

  # ret: pointer
  def self.TableGetSortSpecs()
    igTableGetSortSpecs()
  end

  # arg: label(const char*)
  # ret: void
  def self.TableHeader(label)
    igTableHeader(label)
  end

  # ret: void
  def self.TableHeadersRow()
    igTableHeadersRow()
  end

  # ret: bool
  def self.TableNextColumn()
    igTableNextColumn()
  end

  # arg: row_flags(ImGuiTableRowFlags), min_row_height(float)
  # ret: void
  def self.TableNextRow(row_flags = 0, min_row_height = 0.0)
    igTableNextRow(row_flags, min_row_height)
  end

  # arg: target(ImGuiTableBgTarget), color(ImU32), column_n(int)
  # ret: void
  def self.TableSetBgColor(target, color, column_n = -1)
    igTableSetBgColor(target, color, column_n)
  end

  # arg: column_n(int), v(bool)
  # ret: void
  def self.TableSetColumnEnabled(column_n, v)
    igTableSetColumnEnabled(column_n, v)
  end

  # arg: column_n(int)
  # ret: bool
  def self.TableSetColumnIndex(column_n)
    igTableSetColumnIndex(column_n)
  end

  # arg: label(const char*), flags(ImGuiTableColumnFlags), init_width_or_weight(float), user_id(ImGuiID)
  # ret: void
  def self.TableSetupColumn(label, flags = 0, init_width_or_weight = 0.0, user_id = 0)
    igTableSetupColumn(label, flags, init_width_or_weight, user_id)
  end

  # arg: cols(int), rows(int)
  # ret: void
  def self.TableSetupScrollFreeze(cols, rows)
    igTableSetupScrollFreeze(cols, rows)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.Text(fmt, *varargs)
    igText(fmt, *varargs)
  end

  # arg: col(ImVec4), fmt(const char*), ...(...)
  # ret: void
  def self.TextColored(col, fmt, *varargs)
    igTextColored(col, fmt, *varargs)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.TextDisabled(fmt, *varargs)
    igTextDisabled(fmt, *varargs)
  end

  # arg: text(const char*), text_end(const char*)
  # ret: void
  def self.TextUnformatted(text, text_end = nil)
    igTextUnformatted(text, text_end)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.TextWrapped(fmt, *varargs)
    igTextWrapped(fmt, *varargs)
  end

  # arg: label(const char*)
  # ret: bool
  def self.TreeNode_Str(label)
    igTreeNode_Str(label)
  end

  # arg: str_id(const char*), fmt(const char*), ...(...)
  # ret: bool
  def self.TreeNode_StrStr(str_id, fmt, *varargs)
    igTreeNode_StrStr(str_id, fmt, *varargs)
  end

  # arg: ptr_id(const void*), fmt(const char*), ...(...)
  # ret: bool
  def self.TreeNode_Ptr(ptr_id, fmt, *varargs)
    igTreeNode_Ptr(ptr_id, fmt, *varargs)
  end

  # arg: label(const char*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.TreeNodeEx_Str(label, flags = 0)
    igTreeNodeEx_Str(label, flags)
  end

  # arg: str_id(const char*), flags(ImGuiTreeNodeFlags), fmt(const char*), ...(...)
  # ret: bool
  def self.TreeNodeEx_StrStr(str_id, flags, fmt, *varargs)
    igTreeNodeEx_StrStr(str_id, flags, fmt, *varargs)
  end

  # arg: ptr_id(const void*), flags(ImGuiTreeNodeFlags), fmt(const char*), ...(...)
  # ret: bool
  def self.TreeNodeEx_Ptr(ptr_id, flags, fmt, *varargs)
    igTreeNodeEx_Ptr(ptr_id, flags, fmt, *varargs)
  end

  # ret: void
  def self.TreePop()
    igTreePop()
  end

  # arg: str_id(const char*)
  # ret: void
  def self.TreePush_Str(str_id)
    igTreePush_Str(str_id)
  end

  # arg: ptr_id(const void*)
  # ret: void
  def self.TreePush_Ptr(ptr_id = nil)
    igTreePush_Ptr(ptr_id)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Unindent(indent_w = 0.0)
    igUnindent(indent_w)
  end

  # arg: label(const char*), size(ImVec2), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderFloat(label, size, v, v_min, v_max, format = "%.3f", flags = 0)
    igVSliderFloat(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderInt(label, size, v, v_min, v_max, format = "%d", flags = 0)
    igVSliderInt(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderScalar(label, size, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    igVSliderScalar(label, size, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: prefix(const char*), b(bool)
  # ret: void
  def self.Value_Bool(prefix, b)
    igValue_Bool(prefix, b)
  end

  # arg: prefix(const char*), v(int)
  # ret: void
  def self.Value_Int(prefix, v)
    igValue_Int(prefix, v)
  end

  # arg: prefix(const char*), v(unsigned int)
  # ret: void
  def self.Value_Uint(prefix, v)
    igValue_Uint(prefix, v)
  end

  # arg: prefix(const char*), v(float), float_format(const char*)
  # ret: void
  def self.Value_Float(prefix, v, float_format = nil)
    igValue_Float(prefix, v, float_format)
  end

  # Overload functions

  def self.BeginChild(*arg)
    # arg: 0:str_id(const char*), 1:size(ImVec2), 2:border(bool), 3:flags(ImGuiWindowFlags)
    # ret: bool
    return igBeginChild_Str(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)) && arg[3].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:size(ImVec2), 2:border(bool), 3:flags(ImGuiWindowFlags)
    # ret: bool
    return igBeginChild_ID(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] BeginChild : No matching functions found (#{arg})")
  end

  def self.CheckboxFlags(*arg)
    # arg: 0:label(const char*), 1:flags(int*), 2:flags_value(int)
    # ret: bool
    return igCheckboxFlags_IntPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(unsigned int*), 2:flags_value(unsigned int)
    # ret: bool
    return igCheckboxFlags_UintPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] CheckboxFlags : No matching functions found (#{arg})")
  end

  def self.CollapsingHeader(*arg)
    # arg: 0:label(const char*), 1:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return igCollapsingHeader_TreeNodeFlags(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:label(const char*), 1:p_visible(bool*), 2:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return igCollapsingHeader_BoolPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] CollapsingHeader : No matching functions found (#{arg})")
  end

  def self.Combo(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char* const[]), 3:items_count(int), 4:popup_max_height_in_items(int)
    # ret: bool
    return igCombo_Str_arr(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_separated_by_zeros(const char*), 3:popup_max_height_in_items(int)
    # ret: bool
    return igCombo_Str(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_getter(bool(*)(void* data,int idx,const char** out_text)), 3:data(void*), 4:items_count(int), 5:popup_max_height_in_items(int)
    # ret: bool
    return igCombo_FnBoolPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] Combo : No matching functions found (#{arg})")
  end

  def self.GetColorU32(*arg)
    # arg: 0:idx(ImGuiCol), 1:alpha_mul(float)
    # ret: uint
    return igGetColorU32_Col(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:col(ImVec4)
    # ret: uint
    return igGetColorU32_Vec4(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec4))
    # arg: 0:col(ImU32)
    # ret: uint
    return igGetColorU32_U32(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] GetColorU32 : No matching functions found (#{arg})")
  end

  def self.GetID(*arg)
    # arg: 0:str_id(const char*)
    # ret: uint
    return igGetID_Str(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id_begin(const char*), 1:str_id_end(const char*)
    # ret: uint
    return igGetID_StrStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: uint
    return igGetID_Ptr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] GetID : No matching functions found (#{arg})")
  end

  def self.IsRectVisible(*arg)
    # arg: 0:size(ImVec2)
    # ret: bool
    return igIsRectVisible_Nil(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec2))
    # arg: 0:rect_min(ImVec2), 1:rect_max(ImVec2)
    # ret: bool
    return igIsRectVisible_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] IsRectVisible : No matching functions found (#{arg})")
  end

  def self.ListBox(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char* const[]), 3:items_count(int), 4:height_in_items(int)
    # ret: bool
    return igListBox_Str_arr(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_getter(bool(*)(void* data,int idx,const char** out_text)), 3:data(void*), 4:items_count(int), 5:height_in_items(int)
    # ret: bool
    return igListBox_FnBoolPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ListBox : No matching functions found (#{arg})")
  end

  def self.MenuItem(*arg)
    # arg: 0:label(const char*), 1:shortcut(const char*), 2:selected(bool), 3:enabled(bool)
    # ret: bool
    return igMenuItem_Bool(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)))
    # arg: 0:label(const char*), 1:shortcut(const char*), 2:p_selected(bool*), 3:enabled(bool)
    # ret: bool
    return igMenuItem_BoolPtr(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(FFI::Pointer) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)))
    $stderr.puts("[Warning] MenuItem : No matching functions found (#{arg})")
  end

  def self.OpenPopup(*arg)
    # arg: 0:str_id(const char*), 1:popup_flags(ImGuiPopupFlags)
    # ret: void
    return igOpenPopup_Str(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:popup_flags(ImGuiPopupFlags)
    # ret: void
    return igOpenPopup_ID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] OpenPopup : No matching functions found (#{arg})")
  end

  def self.PlotHistogram(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return igPlotHistogram_FloatPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float(*)(void* data,int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return igPlotHistogram_FnFloatPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] PlotHistogram : No matching functions found (#{arg})")
  end

  def self.PlotLines(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return igPlotLines_FloatPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float(*)(void* data,int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return igPlotLines_FnFloatPtr(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] PlotLines : No matching functions found (#{arg})")
  end

  def self.PushID(*arg)
    # arg: 0:str_id(const char*)
    # ret: void
    return igPushID_Str(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id_begin(const char*), 1:str_id_end(const char*)
    # ret: void
    return igPushID_StrStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: void
    return igPushID_Ptr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:int_id(int)
    # ret: void
    return igPushID_Int(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] PushID : No matching functions found (#{arg})")
  end

  def self.PushStyleColor(*arg)
    # arg: 0:idx(ImGuiCol), 1:col(ImU32)
    # ret: void
    return igPushStyleColor_U32(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:idx(ImGuiCol), 1:col(ImVec4)
    # ret: void
    return igPushStyleColor_Vec4(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec4))
    $stderr.puts("[Warning] PushStyleColor : No matching functions found (#{arg})")
  end

  def self.PushStyleVar(*arg)
    # arg: 0:idx(ImGuiStyleVar), 1:val(float)
    # ret: void
    return igPushStyleVar_Float(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:idx(ImGuiStyleVar), 1:val(ImVec2)
    # ret: void
    return igPushStyleVar_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] PushStyleVar : No matching functions found (#{arg})")
  end

  def self.RadioButton(*arg)
    # arg: 0:label(const char*), 1:active(bool)
    # ret: bool
    return igRadioButton_Bool(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:label(const char*), 1:v(int*), 2:v_button(int)
    # ret: bool
    return igRadioButton_IntPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] RadioButton : No matching functions found (#{arg})")
  end

  def self.Selectable(*arg)
    # arg: 0:label(const char*), 1:selected(bool), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return igSelectable_Bool(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    # arg: 0:label(const char*), 1:p_selected(bool*), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return igSelectable_BoolPtr(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    $stderr.puts("[Warning] Selectable : No matching functions found (#{arg})")
  end

  def self.SetWindowCollapsed(*arg)
    # arg: 0:collapsed(bool), 1:cond(ImGuiCond)
    # ret: void
    return igSetWindowCollapsed_Bool(arg[0], arg[1]) if arg.length == 2 && ((arg[0].is_a?(TrueClass) || arg[0].is_a?(FalseClass)) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowCollapsed_Str(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] SetWindowCollapsed : No matching functions found (#{arg})")
  end

  def self.SetWindowFocus(*arg)
    # arg: 
    # ret: void
    return igSetWindowFocus_Nil() if arg.length == 0 && ()
    # arg: 0:name(const char*)
    # ret: void
    return igSetWindowFocus_Str(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    $stderr.puts("[Warning] SetWindowFocus : No matching functions found (#{arg})")
  end

  def self.SetWindowPos(*arg)
    # arg: 0:pos(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return igSetWindowPos_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:pos(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowPos_Str(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] SetWindowPos : No matching functions found (#{arg})")
  end

  def self.SetWindowSize(*arg)
    # arg: 0:size(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return igSetWindowSize_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowSize_Str(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] SetWindowSize : No matching functions found (#{arg})")
  end

  def self.TreeNode(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return igTreeNode_Str(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id(const char*), 1:fmt(const char*), 2:...(...)
    # ret: bool
    return igTreeNode_StrStr(arg[0], arg[1], arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:fmt(const char*), 2:...(...)
    # ret: bool
    return igTreeNode_Ptr(arg[0], arg[1], arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] TreeNode : No matching functions found (#{arg})")
  end

  def self.TreeNodeEx(*arg)
    # arg: 0:label(const char*), 1:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return igTreeNodeEx_Str(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:str_id(const char*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:...(...)
    # ret: bool
    return igTreeNodeEx_StrStr(arg[0], arg[1], arg[2], arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:...(...)
    # ret: bool
    return igTreeNodeEx_Ptr(arg[0], arg[1], arg[2], arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    $stderr.puts("[Warning] TreeNodeEx : No matching functions found (#{arg})")
  end

  def self.TreePush(*arg)
    # arg: 0:str_id(const char*)
    # ret: void
    return igTreePush_Str(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: void
    return igTreePush_Ptr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] TreePush : No matching functions found (#{arg})")
  end

  def self.Value(*arg)
    # arg: 0:prefix(const char*), 1:b(bool)
    # ret: void
    return igValue_Bool(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:prefix(const char*), 1:v(int)
    # ret: void
    return igValue_Int(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:prefix(const char*), 1:v(unsigned int)
    # ret: void
    return igValue_Uint(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:prefix(const char*), 1:v(float), 2:float_format(const char*)
    # ret: void
    return igValue_Float(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Float) && arg[2].kind_of?(String))
    $stderr.puts("[Warning] Value : No matching functions found (#{arg})")
  end

end # module ImGui
