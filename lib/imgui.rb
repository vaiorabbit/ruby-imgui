# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

FFI.typedef :int, :ImDrawFlags
FFI.typedef :ushort, :ImDrawIdx
FFI.typedef :int, :ImDrawListFlags
FFI.typedef :pointer, :ImFileHandle
FFI.typedef :int, :ImFontAtlasFlags
FFI.typedef :int, :ImGuiActivateFlags
FFI.typedef :int, :ImGuiBackendFlags
FFI.typedef :int, :ImGuiButtonFlags
FFI.typedef :int, :ImGuiCol
FFI.typedef :int, :ImGuiColorEditFlags
FFI.typedef :int, :ImGuiComboFlags
FFI.typedef :int, :ImGuiCond
FFI.typedef :int, :ImGuiConfigFlags
FFI.typedef :int, :ImGuiDataType
FFI.typedef :int, :ImGuiDebugLogFlags
FFI.typedef :int, :ImGuiDir
FFI.typedef :int, :ImGuiDragDropFlags
FFI.typedef :pointer, :ImGuiErrorLogCallback
FFI.typedef :int, :ImGuiFocusedFlags
FFI.typedef :int, :ImGuiHoveredFlags
FFI.typedef :uint, :ImGuiID
FFI.typedef :int, :ImGuiInputTextFlags
FFI.typedef :int, :ImGuiItemFlags
FFI.typedef :int, :ImGuiItemStatusFlags
FFI.typedef :int, :ImGuiKey
FFI.typedef :int, :ImGuiLayoutType
FFI.typedef :pointer, :ImGuiMemAllocFunc
FFI.typedef :pointer, :ImGuiMemFreeFunc
FFI.typedef :int, :ImGuiModFlags
FFI.typedef :int, :ImGuiMouseButton
FFI.typedef :int, :ImGuiMouseCursor
FFI.typedef :int, :ImGuiNavDirSourceFlags
FFI.typedef :int, :ImGuiNavHighlightFlags
FFI.typedef :int, :ImGuiNavInput
FFI.typedef :int, :ImGuiNavMoveFlags
FFI.typedef :int, :ImGuiNextItemDataFlags
FFI.typedef :int, :ImGuiNextWindowDataFlags
FFI.typedef :int, :ImGuiOldColumnFlags
FFI.typedef :int, :ImGuiPopupFlags
FFI.typedef :int, :ImGuiScrollFlags
FFI.typedef :int, :ImGuiSelectableFlags
FFI.typedef :int, :ImGuiSeparatorFlags
FFI.typedef :int, :ImGuiSliderFlags
FFI.typedef :int, :ImGuiSortDirection
FFI.typedef :int, :ImGuiStyleVar
FFI.typedef :int, :ImGuiTabBarFlags
FFI.typedef :int, :ImGuiTabItemFlags
FFI.typedef :int, :ImGuiTableBgTarget
FFI.typedef :int, :ImGuiTableColumnFlags
FFI.typedef :char, :ImGuiTableColumnIdx
FFI.typedef :uchar, :ImGuiTableDrawChannelIdx
FFI.typedef :int, :ImGuiTableFlags
FFI.typedef :int, :ImGuiTableRowFlags
FFI.typedef :int, :ImGuiTextFlags
FFI.typedef :int, :ImGuiTooltipFlags
FFI.typedef :int, :ImGuiTreeNodeFlags
FFI.typedef :int, :ImGuiViewportFlags
FFI.typedef :int, :ImGuiWindowFlags
FFI.typedef :int, :ImPoolIdx
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
FFI.typedef :int, :ImGuiContextHookType
FFI.typedef :int, :ImGuiPopupPositionPolicy
FFI.typedef :int, :ImGuiInputReadMode
FFI.typedef :int, :ImGuiAxis
FFI.typedef :int, :ImGuiLogType
FFI.typedef :int, :ImGuiPlotType
FFI.typedef :int, :ImGuiNavLayer
FFI.typedef :int, :ImGuiInputSource
FFI.typedef :int, :ImGuiDockNodeState
FFI.typedef :int, :ImGuiInputEventType
FFI.typedef :int, :ImGuiNavReadMode

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

# ImGuiActivateFlags_
ImGuiActivateFlags_None = 0 # 0
ImGuiActivateFlags_PreferInput = 1 # 1 << 0
ImGuiActivateFlags_PreferTweak = 2 # 1 << 1
ImGuiActivateFlags_TryToPreserveState = 4 # 1 << 2

# ImGuiAxis
ImGuiAxis_None = -1 # -1
ImGuiAxis_X = 0 # 0
ImGuiAxis_Y = 1 # 1

# ImGuiBackendFlags_
ImGuiBackendFlags_None = 0 # 0
ImGuiBackendFlags_HasGamepad = 1 # 1 << 0
ImGuiBackendFlags_HasMouseCursors = 2 # 1 << 1
ImGuiBackendFlags_HasSetMousePos = 4 # 1 << 2
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 1 << 3

# ImGuiButtonFlagsPrivate_
ImGuiButtonFlags_PressedOnClick = 16 # 1 << 4
ImGuiButtonFlags_PressedOnClickRelease = 32 # 1 << 5
ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 64 # 1 << 6
ImGuiButtonFlags_PressedOnRelease = 128 # 1 << 7
ImGuiButtonFlags_PressedOnDoubleClick = 256 # 1 << 8
ImGuiButtonFlags_PressedOnDragDropHold = 512 # 1 << 9
ImGuiButtonFlags_Repeat = 1024 # 1 << 10
ImGuiButtonFlags_FlattenChildren = 2048 # 1 << 11
ImGuiButtonFlags_AllowItemOverlap = 4096 # 1 << 12
ImGuiButtonFlags_DontClosePopups = 8192 # 1 << 13
ImGuiButtonFlags_AlignTextBaseLine = 32768 # 1 << 15
ImGuiButtonFlags_NoKeyModifiers = 65536 # 1 << 16
ImGuiButtonFlags_NoHoldingActiveId = 131072 # 1 << 17
ImGuiButtonFlags_NoNavFocus = 262144 # 1 << 18
ImGuiButtonFlags_NoHoveredOnFocus = 524288 # 1 << 19
ImGuiButtonFlags_PressedOnMask_ = 1008 # ImGuiButtonFlags_PressedOnClick | ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnClickReleaseAnywhere | ImGuiButtonFlags_PressedOnRelease | ImGuiButtonFlags_PressedOnDoubleClick | ImGuiButtonFlags_PressedOnDragDropHold
ImGuiButtonFlags_PressedOnDefault_ = 32 # ImGuiButtonFlags_PressedOnClickRelease

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
ImGuiColorEditFlags_DefaultOptions_ = 177209344 # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags_DisplayMask_ = 7340032 # ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex
ImGuiColorEditFlags_DataTypeMask_ = 25165824 # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float
ImGuiColorEditFlags_PickerMask_ = 100663296 # ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags_InputMask_ = 402653184 # ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV

# ImGuiComboFlagsPrivate_
ImGuiComboFlags_CustomPreview = 1048576 # 1 << 20

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

# ImGuiContextHookType
ImGuiContextHookType_NewFramePre = 0 # 0
ImGuiContextHookType_NewFramePost = 1 # 1
ImGuiContextHookType_EndFramePre = 2 # 2
ImGuiContextHookType_EndFramePost = 3 # 3
ImGuiContextHookType_RenderPre = 4 # 4
ImGuiContextHookType_RenderPost = 5 # 5
ImGuiContextHookType_Shutdown = 6 # 6
ImGuiContextHookType_PendingRemoval_ = 7 # 7

# ImGuiDataTypePrivate_
ImGuiDataType_String = 11 # ImGuiDataType_COUNT + 1
ImGuiDataType_Pointer = 12 # ImGuiDataType_COUNT + 1+1
ImGuiDataType_ID = 13 # ImGuiDataType_COUNT + 1+1+1

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

# ImGuiDebugLogFlags_
ImGuiDebugLogFlags_None = 0 # 0
ImGuiDebugLogFlags_EventActiveId = 1 # 1 << 0
ImGuiDebugLogFlags_EventFocus = 2 # 1 << 1
ImGuiDebugLogFlags_EventPopup = 4 # 1 << 2
ImGuiDebugLogFlags_EventNav = 8 # 1 << 3
ImGuiDebugLogFlags_EventIO = 16 # 1 << 4
ImGuiDebugLogFlags_EventMask_ = 31 # ImGuiDebugLogFlags_EventActiveId | ImGuiDebugLogFlags_EventFocus | ImGuiDebugLogFlags_EventPopup | ImGuiDebugLogFlags_EventNav | ImGuiDebugLogFlags_EventIO
ImGuiDebugLogFlags_OutputToTTY = 1024 # 1 << 10

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
ImGuiFocusedFlags_NoPopupHierarchy = 8 # 1 << 3
ImGuiFocusedFlags_RootAndChildWindows = 3 # ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows

# ImGuiHoveredFlags_
ImGuiHoveredFlags_None = 0 # 0
ImGuiHoveredFlags_ChildWindows = 1 # 1 << 0
ImGuiHoveredFlags_RootWindow = 2 # 1 << 1
ImGuiHoveredFlags_AnyWindow = 4 # 1 << 2
ImGuiHoveredFlags_NoPopupHierarchy = 8 # 1 << 3
ImGuiHoveredFlags_AllowWhenBlockedByPopup = 32 # 1 << 5
ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 128 # 1 << 7
ImGuiHoveredFlags_AllowWhenOverlapped = 256 # 1 << 8
ImGuiHoveredFlags_AllowWhenDisabled = 512 # 1 << 9
ImGuiHoveredFlags_NoNavOverride = 1024 # 1 << 10
ImGuiHoveredFlags_RectOnly = 416 # ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped
ImGuiHoveredFlags_RootAndChildWindows = 3 # ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows

# ImGuiInputEventType
ImGuiInputEventType_None = 0 # 0
ImGuiInputEventType_MousePos = 1 # 1
ImGuiInputEventType_MouseWheel = 2 # 2
ImGuiInputEventType_MouseButton = 3 # 3
ImGuiInputEventType_Key = 4 # 4
ImGuiInputEventType_Text = 5 # 5
ImGuiInputEventType_Focus = 6 # 6
ImGuiInputEventType_COUNT = 7 # 7

# ImGuiInputSource
ImGuiInputSource_None = 0 # 0
ImGuiInputSource_Mouse = 1 # 1
ImGuiInputSource_Keyboard = 2 # 2
ImGuiInputSource_Gamepad = 3 # 3
ImGuiInputSource_Clipboard = 4 # 4
ImGuiInputSource_Nav = 5 # 5
ImGuiInputSource_COUNT = 6 # 6

# ImGuiInputTextFlagsPrivate_
ImGuiInputTextFlags_Multiline = 67108864 # 1 << 26
ImGuiInputTextFlags_NoMarkEdited = 134217728 # 1 << 27
ImGuiInputTextFlags_MergedItem = 268435456 # 1 << 28

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

# ImGuiItemFlags_
ImGuiItemFlags_None = 0 # 0
ImGuiItemFlags_NoTabStop = 1 # 1 << 0
ImGuiItemFlags_ButtonRepeat = 2 # 1 << 1
ImGuiItemFlags_Disabled = 4 # 1 << 2
ImGuiItemFlags_NoNav = 8 # 1 << 3
ImGuiItemFlags_NoNavDefaultFocus = 16 # 1 << 4
ImGuiItemFlags_SelectableDontClosePopup = 32 # 1 << 5
ImGuiItemFlags_MixedValue = 64 # 1 << 6
ImGuiItemFlags_ReadOnly = 128 # 1 << 7
ImGuiItemFlags_Inputable = 256 # 1 << 8

# ImGuiItemStatusFlags_
ImGuiItemStatusFlags_None = 0 # 0
ImGuiItemStatusFlags_HoveredRect = 1 # 1 << 0
ImGuiItemStatusFlags_HasDisplayRect = 2 # 1 << 1
ImGuiItemStatusFlags_Edited = 4 # 1 << 2
ImGuiItemStatusFlags_ToggledSelection = 8 # 1 << 3
ImGuiItemStatusFlags_ToggledOpen = 16 # 1 << 4
ImGuiItemStatusFlags_HasDeactivated = 32 # 1 << 5
ImGuiItemStatusFlags_Deactivated = 64 # 1 << 6
ImGuiItemStatusFlags_HoveredWindow = 128 # 1 << 7
ImGuiItemStatusFlags_FocusedByTabbing = 256 # 1 << 8

# ImGuiKeyPrivate_
ImGuiKey_LegacyNativeKey_BEGIN = 0 # 0
ImGuiKey_LegacyNativeKey_END = 512 # 512
ImGuiKey_Gamepad_BEGIN = 617 # ImGuiKey_GamepadStart
ImGuiKey_Gamepad_END = 641 # ImGuiKey_GamepadRStickRight + 1

# ImGuiKey_
ImGuiKey_None = 0 # 0
ImGuiKey_Tab = 512 # 512
ImGuiKey_LeftArrow = 513 # 513
ImGuiKey_RightArrow = 514 # 514
ImGuiKey_UpArrow = 515 # 515
ImGuiKey_DownArrow = 516 # 516
ImGuiKey_PageUp = 517 # 517
ImGuiKey_PageDown = 518 # 518
ImGuiKey_Home = 519 # 519
ImGuiKey_End = 520 # 520
ImGuiKey_Insert = 521 # 521
ImGuiKey_Delete = 522 # 522
ImGuiKey_Backspace = 523 # 523
ImGuiKey_Space = 524 # 524
ImGuiKey_Enter = 525 # 525
ImGuiKey_Escape = 526 # 526
ImGuiKey_LeftCtrl = 527 # 527
ImGuiKey_LeftShift = 528 # 528
ImGuiKey_LeftAlt = 529 # 529
ImGuiKey_LeftSuper = 530 # 530
ImGuiKey_RightCtrl = 531 # 531
ImGuiKey_RightShift = 532 # 532
ImGuiKey_RightAlt = 533 # 533
ImGuiKey_RightSuper = 534 # 534
ImGuiKey_Menu = 535 # 535
ImGuiKey_0 = 536 # 536
ImGuiKey_1 = 537 # 537
ImGuiKey_2 = 538 # 538
ImGuiKey_3 = 539 # 539
ImGuiKey_4 = 540 # 540
ImGuiKey_5 = 541 # 541
ImGuiKey_6 = 542 # 542
ImGuiKey_7 = 543 # 543
ImGuiKey_8 = 544 # 544
ImGuiKey_9 = 545 # 545
ImGuiKey_A = 546 # 546
ImGuiKey_B = 547 # 547
ImGuiKey_C = 548 # 548
ImGuiKey_D = 549 # 549
ImGuiKey_E = 550 # 550
ImGuiKey_F = 551 # 551
ImGuiKey_G = 552 # 552
ImGuiKey_H = 553 # 553
ImGuiKey_I = 554 # 554
ImGuiKey_J = 555 # 555
ImGuiKey_K = 556 # 556
ImGuiKey_L = 557 # 557
ImGuiKey_M = 558 # 558
ImGuiKey_N = 559 # 559
ImGuiKey_O = 560 # 560
ImGuiKey_P = 561 # 561
ImGuiKey_Q = 562 # 562
ImGuiKey_R = 563 # 563
ImGuiKey_S = 564 # 564
ImGuiKey_T = 565 # 565
ImGuiKey_U = 566 # 566
ImGuiKey_V = 567 # 567
ImGuiKey_W = 568 # 568
ImGuiKey_X = 569 # 569
ImGuiKey_Y = 570 # 570
ImGuiKey_Z = 571 # 571
ImGuiKey_F1 = 572 # 572
ImGuiKey_F2 = 573 # 573
ImGuiKey_F3 = 574 # 574
ImGuiKey_F4 = 575 # 575
ImGuiKey_F5 = 576 # 576
ImGuiKey_F6 = 577 # 577
ImGuiKey_F7 = 578 # 578
ImGuiKey_F8 = 579 # 579
ImGuiKey_F9 = 580 # 580
ImGuiKey_F10 = 581 # 581
ImGuiKey_F11 = 582 # 582
ImGuiKey_F12 = 583 # 583
ImGuiKey_Apostrophe = 584 # 584
ImGuiKey_Comma = 585 # 585
ImGuiKey_Minus = 586 # 586
ImGuiKey_Period = 587 # 587
ImGuiKey_Slash = 588 # 588
ImGuiKey_Semicolon = 589 # 589
ImGuiKey_Equal = 590 # 590
ImGuiKey_LeftBracket = 591 # 591
ImGuiKey_Backslash = 592 # 592
ImGuiKey_RightBracket = 593 # 593
ImGuiKey_GraveAccent = 594 # 594
ImGuiKey_CapsLock = 595 # 595
ImGuiKey_ScrollLock = 596 # 596
ImGuiKey_NumLock = 597 # 597
ImGuiKey_PrintScreen = 598 # 598
ImGuiKey_Pause = 599 # 599
ImGuiKey_Keypad0 = 600 # 600
ImGuiKey_Keypad1 = 601 # 601
ImGuiKey_Keypad2 = 602 # 602
ImGuiKey_Keypad3 = 603 # 603
ImGuiKey_Keypad4 = 604 # 604
ImGuiKey_Keypad5 = 605 # 605
ImGuiKey_Keypad6 = 606 # 606
ImGuiKey_Keypad7 = 607 # 607
ImGuiKey_Keypad8 = 608 # 608
ImGuiKey_Keypad9 = 609 # 609
ImGuiKey_KeypadDecimal = 610 # 610
ImGuiKey_KeypadDivide = 611 # 611
ImGuiKey_KeypadMultiply = 612 # 612
ImGuiKey_KeypadSubtract = 613 # 613
ImGuiKey_KeypadAdd = 614 # 614
ImGuiKey_KeypadEnter = 615 # 615
ImGuiKey_KeypadEqual = 616 # 616
ImGuiKey_GamepadStart = 617 # 617
ImGuiKey_GamepadBack = 618 # 618
ImGuiKey_GamepadFaceUp = 619 # 619
ImGuiKey_GamepadFaceDown = 620 # 620
ImGuiKey_GamepadFaceLeft = 621 # 621
ImGuiKey_GamepadFaceRight = 622 # 622
ImGuiKey_GamepadDpadUp = 623 # 623
ImGuiKey_GamepadDpadDown = 624 # 624
ImGuiKey_GamepadDpadLeft = 625 # 625
ImGuiKey_GamepadDpadRight = 626 # 626
ImGuiKey_GamepadL1 = 627 # 627
ImGuiKey_GamepadR1 = 628 # 628
ImGuiKey_GamepadL2 = 629 # 629
ImGuiKey_GamepadR2 = 630 # 630
ImGuiKey_GamepadL3 = 631 # 631
ImGuiKey_GamepadR3 = 632 # 632
ImGuiKey_GamepadLStickUp = 633 # 633
ImGuiKey_GamepadLStickDown = 634 # 634
ImGuiKey_GamepadLStickLeft = 635 # 635
ImGuiKey_GamepadLStickRight = 636 # 636
ImGuiKey_GamepadRStickUp = 637 # 637
ImGuiKey_GamepadRStickDown = 638 # 638
ImGuiKey_GamepadRStickLeft = 639 # 639
ImGuiKey_GamepadRStickRight = 640 # 640
ImGuiKey_ModCtrl = 641 # 641
ImGuiKey_ModShift = 642 # 642
ImGuiKey_ModAlt = 643 # 643
ImGuiKey_ModSuper = 644 # 644
ImGuiKey_COUNT = 645 # 645
ImGuiKey_NamedKey_BEGIN = 512 # 512
ImGuiKey_NamedKey_END = 645 # ImGuiKey_COUNT
ImGuiKey_NamedKey_COUNT = 133 # ImGuiKey_NamedKey_END - ImGuiKey_NamedKey_BEGIN
ImGuiKey_KeysData_SIZE = 645 # ImGuiKey_COUNT
ImGuiKey_KeysData_OFFSET = 0 # 0

# ImGuiLayoutType_
ImGuiLayoutType_Horizontal = 0 # 0
ImGuiLayoutType_Vertical = 1 # 1

# ImGuiLogType
ImGuiLogType_None = 0 # 0
ImGuiLogType_TTY = 1 # 1
ImGuiLogType_File = 2 # 2
ImGuiLogType_Buffer = 3 # 3
ImGuiLogType_Clipboard = 4 # 4

# ImGuiModFlags_
ImGuiModFlags_None = 0 # 0
ImGuiModFlags_Ctrl = 1 # 1 << 0
ImGuiModFlags_Shift = 2 # 1 << 1
ImGuiModFlags_Alt = 4 # 1 << 2
ImGuiModFlags_Super = 8 # 1 << 3

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

# ImGuiNavDirSourceFlags_
ImGuiNavDirSourceFlags_None = 0 # 0
ImGuiNavDirSourceFlags_RawKeyboard = 1 # 1 << 0
ImGuiNavDirSourceFlags_Keyboard = 2 # 1 << 1
ImGuiNavDirSourceFlags_PadDPad = 4 # 1 << 2
ImGuiNavDirSourceFlags_PadLStick = 8 # 1 << 3

# ImGuiNavHighlightFlags_
ImGuiNavHighlightFlags_None = 0 # 0
ImGuiNavHighlightFlags_TypeDefault = 1 # 1 << 0
ImGuiNavHighlightFlags_TypeThin = 2 # 1 << 1
ImGuiNavHighlightFlags_AlwaysDraw = 4 # 1 << 2
ImGuiNavHighlightFlags_NoRounding = 8 # 1 << 3

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
ImGuiNavInput_KeyLeft_ = 16 # 16
ImGuiNavInput_KeyRight_ = 17 # 17
ImGuiNavInput_KeyUp_ = 18 # 18
ImGuiNavInput_KeyDown_ = 19 # 19
ImGuiNavInput_COUNT = 20 # 20

# ImGuiNavLayer
ImGuiNavLayer_Main = 0 # 0
ImGuiNavLayer_Menu = 1 # 1
ImGuiNavLayer_COUNT = 2 # 2

# ImGuiNavMoveFlags_
ImGuiNavMoveFlags_None = 0 # 0
ImGuiNavMoveFlags_LoopX = 1 # 1 << 0
ImGuiNavMoveFlags_LoopY = 2 # 1 << 1
ImGuiNavMoveFlags_WrapX = 4 # 1 << 2
ImGuiNavMoveFlags_WrapY = 8 # 1 << 3
ImGuiNavMoveFlags_AllowCurrentNavId = 16 # 1 << 4
ImGuiNavMoveFlags_AlsoScoreVisibleSet = 32 # 1 << 5
ImGuiNavMoveFlags_ScrollToEdgeY = 64 # 1 << 6
ImGuiNavMoveFlags_Forwarded = 128 # 1 << 7
ImGuiNavMoveFlags_DebugNoResult = 256 # 1 << 8
ImGuiNavMoveFlags_FocusApi = 512 # 1 << 9
ImGuiNavMoveFlags_Tabbing = 1024 # 1 << 10
ImGuiNavMoveFlags_Activate = 2048 # 1 << 11
ImGuiNavMoveFlags_DontSetNavHighlight = 4096 # 1 << 12

# ImGuiNavReadMode
ImGuiNavReadMode_Down = 0 # 0
ImGuiNavReadMode_Pressed = 1 # 1
ImGuiNavReadMode_Released = 2 # 2
ImGuiNavReadMode_Repeat = 3 # 3
ImGuiNavReadMode_RepeatSlow = 4 # 4
ImGuiNavReadMode_RepeatFast = 5 # 5

# ImGuiNextItemDataFlags_
ImGuiNextItemDataFlags_None = 0 # 0
ImGuiNextItemDataFlags_HasWidth = 1 # 1 << 0
ImGuiNextItemDataFlags_HasOpen = 2 # 1 << 1

# ImGuiNextWindowDataFlags_
ImGuiNextWindowDataFlags_None = 0 # 0
ImGuiNextWindowDataFlags_HasPos = 1 # 1 << 0
ImGuiNextWindowDataFlags_HasSize = 2 # 1 << 1
ImGuiNextWindowDataFlags_HasContentSize = 4 # 1 << 2
ImGuiNextWindowDataFlags_HasCollapsed = 8 # 1 << 3
ImGuiNextWindowDataFlags_HasSizeConstraint = 16 # 1 << 4
ImGuiNextWindowDataFlags_HasFocus = 32 # 1 << 5
ImGuiNextWindowDataFlags_HasBgAlpha = 64 # 1 << 6
ImGuiNextWindowDataFlags_HasScroll = 128 # 1 << 7

# ImGuiOldColumnFlags_
ImGuiOldColumnFlags_None = 0 # 0
ImGuiOldColumnFlags_NoBorder = 1 # 1 << 0
ImGuiOldColumnFlags_NoResize = 2 # 1 << 1
ImGuiOldColumnFlags_NoPreserveWidths = 4 # 1 << 2
ImGuiOldColumnFlags_NoForceWithinWindow = 8 # 1 << 3
ImGuiOldColumnFlags_GrowParentContentsSize = 16 # 1 << 4

# ImGuiPlotType
ImGuiPlotType_Lines = 0 # 0
ImGuiPlotType_Histogram = 1 # 1

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

# ImGuiPopupPositionPolicy
ImGuiPopupPositionPolicy_Default = 0 # 0
ImGuiPopupPositionPolicy_ComboBox = 1 # 1
ImGuiPopupPositionPolicy_Tooltip = 2 # 2

# ImGuiScrollFlags_
ImGuiScrollFlags_None = 0 # 0
ImGuiScrollFlags_KeepVisibleEdgeX = 1 # 1 << 0
ImGuiScrollFlags_KeepVisibleEdgeY = 2 # 1 << 1
ImGuiScrollFlags_KeepVisibleCenterX = 4 # 1 << 2
ImGuiScrollFlags_KeepVisibleCenterY = 8 # 1 << 3
ImGuiScrollFlags_AlwaysCenterX = 16 # 1 << 4
ImGuiScrollFlags_AlwaysCenterY = 32 # 1 << 5
ImGuiScrollFlags_NoScrollParent = 64 # 1 << 6
ImGuiScrollFlags_MaskX_ = 21 # ImGuiScrollFlags_KeepVisibleEdgeX | ImGuiScrollFlags_KeepVisibleCenterX | ImGuiScrollFlags_AlwaysCenterX
ImGuiScrollFlags_MaskY_ = 42 # ImGuiScrollFlags_KeepVisibleEdgeY | ImGuiScrollFlags_KeepVisibleCenterY | ImGuiScrollFlags_AlwaysCenterY

# ImGuiSelectableFlagsPrivate_
ImGuiSelectableFlags_NoHoldingActiveID = 1048576 # 1 << 20
ImGuiSelectableFlags_SelectOnNav = 2097152 # 1 << 21
ImGuiSelectableFlags_SelectOnClick = 4194304 # 1 << 22
ImGuiSelectableFlags_SelectOnRelease = 8388608 # 1 << 23
ImGuiSelectableFlags_SpanAvailWidth = 16777216 # 1 << 24
ImGuiSelectableFlags_DrawHoveredWhenHeld = 33554432 # 1 << 25
ImGuiSelectableFlags_SetNavIdOnHover = 67108864 # 1 << 26
ImGuiSelectableFlags_NoPadWithHalfSpacing = 134217728 # 1 << 27

# ImGuiSelectableFlags_
ImGuiSelectableFlags_None = 0 # 0
ImGuiSelectableFlags_DontClosePopups = 1 # 1 << 0
ImGuiSelectableFlags_SpanAllColumns = 2 # 1 << 1
ImGuiSelectableFlags_AllowDoubleClick = 4 # 1 << 2
ImGuiSelectableFlags_Disabled = 8 # 1 << 3
ImGuiSelectableFlags_AllowItemOverlap = 16 # 1 << 4

# ImGuiSeparatorFlags_
ImGuiSeparatorFlags_None = 0 # 0
ImGuiSeparatorFlags_Horizontal = 1 # 1 << 0
ImGuiSeparatorFlags_Vertical = 2 # 1 << 1
ImGuiSeparatorFlags_SpanAllColumns = 4 # 1 << 2

# ImGuiSliderFlagsPrivate_
ImGuiSliderFlags_Vertical = 1048576 # 1 << 20
ImGuiSliderFlags_ReadOnly = 2097152 # 1 << 21

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
ImGuiStyleVar_DisabledAlpha = 1 # 1
ImGuiStyleVar_WindowPadding = 2 # 2
ImGuiStyleVar_WindowRounding = 3 # 3
ImGuiStyleVar_WindowBorderSize = 4 # 4
ImGuiStyleVar_WindowMinSize = 5 # 5
ImGuiStyleVar_WindowTitleAlign = 6 # 6
ImGuiStyleVar_ChildRounding = 7 # 7
ImGuiStyleVar_ChildBorderSize = 8 # 8
ImGuiStyleVar_PopupRounding = 9 # 9
ImGuiStyleVar_PopupBorderSize = 10 # 10
ImGuiStyleVar_FramePadding = 11 # 11
ImGuiStyleVar_FrameRounding = 12 # 12
ImGuiStyleVar_FrameBorderSize = 13 # 13
ImGuiStyleVar_ItemSpacing = 14 # 14
ImGuiStyleVar_ItemInnerSpacing = 15 # 15
ImGuiStyleVar_IndentSpacing = 16 # 16
ImGuiStyleVar_CellPadding = 17 # 17
ImGuiStyleVar_ScrollbarSize = 18 # 18
ImGuiStyleVar_ScrollbarRounding = 19 # 19
ImGuiStyleVar_GrabMinSize = 20 # 20
ImGuiStyleVar_GrabRounding = 21 # 21
ImGuiStyleVar_TabRounding = 22 # 22
ImGuiStyleVar_ButtonTextAlign = 23 # 23
ImGuiStyleVar_SelectableTextAlign = 24 # 24
ImGuiStyleVar_COUNT = 25 # 25

# ImGuiTabBarFlagsPrivate_
ImGuiTabBarFlags_DockNode = 1048576 # 1 << 20
ImGuiTabBarFlags_IsFocused = 2097152 # 1 << 21
ImGuiTabBarFlags_SaveSettings = 4194304 # 1 << 22

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

# ImGuiTabItemFlagsPrivate_
ImGuiTabItemFlags_SectionMask_ = 192 # ImGuiTabItemFlags_Leading | ImGuiTabItemFlags_Trailing
ImGuiTabItemFlags_NoCloseButton = 1048576 # 1 << 20
ImGuiTabItemFlags_Button = 2097152 # 1 << 21

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
ImGuiTableColumnFlags_Disabled = 1 # 1 << 0
ImGuiTableColumnFlags_DefaultHide = 2 # 1 << 1
ImGuiTableColumnFlags_DefaultSort = 4 # 1 << 2
ImGuiTableColumnFlags_WidthStretch = 8 # 1 << 3
ImGuiTableColumnFlags_WidthFixed = 16 # 1 << 4
ImGuiTableColumnFlags_NoResize = 32 # 1 << 5
ImGuiTableColumnFlags_NoReorder = 64 # 1 << 6
ImGuiTableColumnFlags_NoHide = 128 # 1 << 7
ImGuiTableColumnFlags_NoClip = 256 # 1 << 8
ImGuiTableColumnFlags_NoSort = 512 # 1 << 9
ImGuiTableColumnFlags_NoSortAscending = 1024 # 1 << 10
ImGuiTableColumnFlags_NoSortDescending = 2048 # 1 << 11
ImGuiTableColumnFlags_NoHeaderLabel = 4096 # 1 << 12
ImGuiTableColumnFlags_NoHeaderWidth = 8192 # 1 << 13
ImGuiTableColumnFlags_PreferSortAscending = 16384 # 1 << 14
ImGuiTableColumnFlags_PreferSortDescending = 32768 # 1 << 15
ImGuiTableColumnFlags_IndentEnable = 65536 # 1 << 16
ImGuiTableColumnFlags_IndentDisable = 131072 # 1 << 17
ImGuiTableColumnFlags_IsEnabled = 16777216 # 1 << 24
ImGuiTableColumnFlags_IsVisible = 33554432 # 1 << 25
ImGuiTableColumnFlags_IsSorted = 67108864 # 1 << 26
ImGuiTableColumnFlags_IsHovered = 134217728 # 1 << 27
ImGuiTableColumnFlags_WidthMask_ = 24 # ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed
ImGuiTableColumnFlags_IndentMask_ = 196608 # ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable
ImGuiTableColumnFlags_StatusMask_ = 251658240 # ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered
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

# ImGuiTextFlags_
ImGuiTextFlags_None = 0 # 0
ImGuiTextFlags_NoWidthForLargeClippedText = 1 # 1 << 0

# ImGuiTooltipFlags_
ImGuiTooltipFlags_None = 0 # 0
ImGuiTooltipFlags_OverridePreviousTooltip = 1 # 1 << 0

# ImGuiTreeNodeFlagsPrivate_
ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1048576 # 1 << 20

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


class ImVec1 < FFI::Struct
  layout(
    :x, :float
  )
end

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

class ImRect < FFI::Struct
  layout(
    :Min, ImVec2.by_value,
    :Max, ImVec2.by_value
  )
end

class ImVec2ih < FFI::Struct
  layout(
    :x, :short,
    :y, :short
  )
end

class ImVector < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImChunkStream < FFI::Struct
  layout(
    :Buf, ImVector.by_value
  )
end

class ImSpan < FFI::Struct
  layout(
    :Data, :pointer,
    :DataEnd, :pointer
  )
end

class ImDrawVert < FFI::Struct
  layout(
    :pos, ImVec2.by_value,
    :uv, ImVec2.by_value,
    :col, :uint
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

  def _TryMergeDrawCmds()
    ImGui::ImDrawList__TryMergeDrawCmds(self)
  end

  def destroy()
    ImGui::ImDrawList_destroy(self)
  end

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

class ImFontAtlas < FFI::Struct
  layout(
    :Flags, :int,
    :TexID, :pointer,
    :TexDesiredWidth, :int,
    :TexGlyphPadding, :int,
    :Locked, :bool,
    :TexReady, :bool,
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

class ImGuiKeyData < FFI::Struct
  layout(
    :Down, :bool,
    :DownDuration, :float,
    :DownDurationPrev, :float,
    :AnalogValue, :float
  )
end

class ImGuiPayload < FFI::Struct
  layout(
    :Data, :pointer,
    :DataSize, :int,
    :SourceId, :uint,
    :SourceParentId, :uint,
    :DataFrameCount, :int,
    :DataType, [:char, 33],
    :Preview, :bool,
    :Delivery, :bool
  )
end

class ImGuiStorage < FFI::Struct
  layout(
    :Data, ImVector.by_value
  )
end

class ImPool < FFI::Struct
  layout(
    :Buf, ImVector.by_value,
    :Map, ImGuiStorage.by_value,
    :FreeIdx, :int,
    :AliveCount, :int
  )
end

class ImDrawDataBuilder < FFI::Struct
  layout(
    :Layers, [ImVector.by_value, 2]
  )
end

class ImGuiOldColumns < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :IsFirstFrame, :bool,
    :IsBeingResized, :bool,
    :Current, :int,
    :Count, :int,
    :OffMinX, :float,
    :OffMaxX, :float,
    :LineMinY, :float,
    :LineMaxY, :float,
    :HostCursorPosY, :float,
    :HostCursorMaxPosX, :float,
    :HostInitialClipRect, ImRect.by_value,
    :HostBackupClipRect, ImRect.by_value,
    :HostBackupParentWorkRect, ImRect.by_value,
    :Columns, ImVector.by_value,
    :Splitter, ImDrawListSplitter.by_value
  )
end

class ImGuiMenuColumns < FFI::Struct
  layout(
    :TotalWidth, :uint,
    :NextTotalWidth, :uint,
    :Spacing, :ushort,
    :OffsetIcon, :ushort,
    :OffsetLabel, :ushort,
    :OffsetShortcut, :ushort,
    :OffsetMark, :ushort,
    :Widths, [:ushort, 4]
  )
end

class ImGuiWindowTempData < FFI::Struct
  layout(
    :CursorPos, ImVec2.by_value,
    :CursorPosPrevLine, ImVec2.by_value,
    :CursorStartPos, ImVec2.by_value,
    :CursorMaxPos, ImVec2.by_value,
    :IdealMaxPos, ImVec2.by_value,
    :CurrLineSize, ImVec2.by_value,
    :PrevLineSize, ImVec2.by_value,
    :CurrLineTextBaseOffset, :float,
    :PrevLineTextBaseOffset, :float,
    :IsSameLine, :bool,
    :Indent, ImVec1.by_value,
    :ColumnsOffset, ImVec1.by_value,
    :GroupOffset, ImVec1.by_value,
    :CursorStartPosLossyness, ImVec2.by_value,
    :NavLayerCurrent, :int,
    :NavLayersActiveMask, :short,
    :NavLayersActiveMaskNext, :short,
    :NavFocusScopeIdCurrent, :uint,
    :NavHideHighlightOneFrame, :bool,
    :NavHasScroll, :bool,
    :MenuBarAppending, :bool,
    :MenuBarOffset, ImVec2.by_value,
    :MenuColumns, ImGuiMenuColumns.by_value,
    :TreeDepth, :int,
    :TreeJumpToParentOnPopMask, :uint,
    :ChildWindows, ImVector.by_value,
    :StateStorage, ImGuiStorage.ptr,
    :CurrentColumns, ImGuiOldColumns.ptr,
    :CurrentTableIdx, :int,
    :LayoutType, :int,
    :ParentLayoutType, :int,
    :ItemWidth, :float,
    :TextWrapPos, :float,
    :ItemWidthStack, ImVector.by_value,
    :TextWrapPosStack, ImVector.by_value
  )
end

class ImGuiViewport < FFI::Struct
  layout(
    :Flags, :int,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :WorkPos, ImVec2.by_value,
    :WorkSize, ImVec2.by_value,
    :PlatformHandleRaw, :pointer
  )
end

class ImGuiViewportP < FFI::Struct
  layout(
    :_ImGuiViewport, ImGuiViewport.by_value,
    :DrawListsLastFrame, [:int, 2],
    :DrawLists, [:pointer, 2],
    :DrawDataP, ImDrawData.by_value,
    :DrawDataBuilder, ImDrawDataBuilder.by_value,
    :WorkOffsetMin, ImVec2.by_value,
    :WorkOffsetMax, ImVec2.by_value,
    :BuildWorkOffsetMin, ImVec2.by_value,
    :BuildWorkOffsetMax, ImVec2.by_value
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
    :DotChar, :ushort,
    :DirtyLookupTables, :bool,
    :Scale, :float,
    :Ascent, :float,
    :Descent, :float,
    :MetricsTotalSurface, :int,
    :Used4kPagesMap, [:uchar, 2]
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
    :ConfigInputTrickleEventQueue, :bool,
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
    :SetPlatformImeDataFn, :pointer,
    :_UnusedPadding, :pointer,
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
    :KeyMap, [:int, 645],
    :KeysDown, [:bool, 645],
    :MousePos, ImVec2.by_value,
    :MouseDown, [:bool, 5],
    :MouseWheel, :float,
    :MouseWheelH, :float,
    :KeyCtrl, :bool,
    :KeyShift, :bool,
    :KeyAlt, :bool,
    :KeySuper, :bool,
    :NavInputs, [:float, 20],
    :KeyMods, :int,
    :KeysData, [ImGuiKeyData.by_value, 645],
    :WantCaptureMouseUnlessPopupClose, :bool,
    :MousePosPrev, ImVec2.by_value,
    :MouseClickedPos, [ImVec2.by_value, 5],
    :MouseClickedTime, [:double, 5],
    :MouseClicked, [:bool, 5],
    :MouseDoubleClicked, [:bool, 5],
    :MouseClickedCount, [:ushort, 5],
    :MouseClickedLastCount, [:ushort, 5],
    :MouseReleased, [:bool, 5],
    :MouseDownOwned, [:bool, 5],
    :MouseDownOwnedUnlessPopupClose, [:bool, 5],
    :MouseDownDuration, [:float, 5],
    :MouseDownDurationPrev, [:float, 5],
    :MouseDragMaxDistanceSqr, [:float, 5],
    :NavInputsDownDuration, [:float, 20],
    :NavInputsDownDurationPrev, [:float, 20],
    :PenPressure, :float,
    :AppFocusLost, :bool,
    :AppAcceptingEvents, :bool,
    :BackendUsingLegacyKeyArrays, :char,
    :BackendUsingLegacyNavInputArray, :bool,
    :InputQueueSurrogate, :ushort,
    :InputQueueCharacters, ImVector.by_value
  )

  def AddFocusEvent(focused)
    ImGui::ImGuiIO_AddFocusEvent(self, focused)
  end

  def AddInputCharacter(c)
    ImGui::ImGuiIO_AddInputCharacter(self, c)
  end

  def AddInputCharacterUTF16(c)
    ImGui::ImGuiIO_AddInputCharacterUTF16(self, c)
  end

  def AddInputCharactersUTF8(str)
    ImGui::ImGuiIO_AddInputCharactersUTF8(self, str)
  end

  def AddKeyAnalogEvent(key, down, v)
    ImGui::ImGuiIO_AddKeyAnalogEvent(self, key, down, v)
  end

  def AddKeyEvent(key, down)
    ImGui::ImGuiIO_AddKeyEvent(self, key, down)
  end

  def AddMouseButtonEvent(button, down)
    ImGui::ImGuiIO_AddMouseButtonEvent(self, button, down)
  end

  def AddMousePosEvent(x, y)
    ImGui::ImGuiIO_AddMousePosEvent(self, x, y)
  end

  def AddMouseWheelEvent(wh_x, wh_y)
    ImGui::ImGuiIO_AddMouseWheelEvent(self, wh_x, wh_y)
  end

  def ClearInputCharacters()
    ImGui::ImGuiIO_ClearInputCharacters(self)
  end

  def ClearInputKeys()
    ImGui::ImGuiIO_ClearInputKeys(self)
  end

  def self.create()
    return ImGuiIO.new(ImGui::ImGuiIO_ImGuiIO())
  end

  def SetAppAcceptingEvents(accepting_events)
    ImGui::ImGuiIO_SetAppAcceptingEvents(self, accepting_events)
  end

  def SetKeyEventNativeData(key, native_keycode, native_scancode, native_legacy_index = -1)
    ImGui::ImGuiIO_SetKeyEventNativeData(self, key, native_keycode, native_scancode, native_legacy_index)
  end

  def destroy()
    ImGui::ImGuiIO_destroy(self)
  end

end

class ImGuiStyle < FFI::Struct
  layout(
    :Alpha, :float,
    :DisabledAlpha, :float,
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

class ImGuiWindow < FFI::Struct
  layout(
    :Name, :pointer,
    :ID, :uint,
    :Flags, :int,
    :Viewport, ImGuiViewportP.ptr,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :SizeFull, ImVec2.by_value,
    :ContentSize, ImVec2.by_value,
    :ContentSizeIdeal, ImVec2.by_value,
    :ContentSizeExplicit, ImVec2.by_value,
    :WindowPadding, ImVec2.by_value,
    :WindowRounding, :float,
    :WindowBorderSize, :float,
    :NameBufLen, :int,
    :MoveId, :uint,
    :ChildId, :uint,
    :Scroll, ImVec2.by_value,
    :ScrollMax, ImVec2.by_value,
    :ScrollTarget, ImVec2.by_value,
    :ScrollTargetCenterRatio, ImVec2.by_value,
    :ScrollTargetEdgeSnapDist, ImVec2.by_value,
    :ScrollbarSizes, ImVec2.by_value,
    :ScrollbarX, :bool,
    :ScrollbarY, :bool,
    :Active, :bool,
    :WasActive, :bool,
    :WriteAccessed, :bool,
    :Collapsed, :bool,
    :WantCollapseToggle, :bool,
    :SkipItems, :bool,
    :Appearing, :bool,
    :Hidden, :bool,
    :IsFallbackWindow, :bool,
    :IsExplicitChild, :bool,
    :HasCloseButton, :bool,
    :ResizeBorderHeld, :char,
    :BeginCount, :short,
    :BeginOrderWithinParent, :short,
    :BeginOrderWithinContext, :short,
    :FocusOrder, :short,
    :PopupId, :uint,
    :AutoFitFramesX, :char,
    :AutoFitFramesY, :char,
    :AutoFitChildAxises, :char,
    :AutoFitOnlyGrows, :bool,
    :AutoPosLastDirection, :int,
    :HiddenFramesCanSkipItems, :char,
    :HiddenFramesCannotSkipItems, :char,
    :HiddenFramesForRenderOnly, :char,
    :DisableInputsFrames, :char,
    :SetWindowPosAllowFlags, :int,
    :SetWindowSizeAllowFlags, :int,
    :SetWindowCollapsedAllowFlags, :int,
    :SetWindowPosVal, ImVec2.by_value,
    :SetWindowPosPivot, ImVec2.by_value,
    :IDStack, ImVector.by_value,
    :DC, ImGuiWindowTempData.by_value,
    :OuterRectClipped, ImRect.by_value,
    :InnerRect, ImRect.by_value,
    :InnerClipRect, ImRect.by_value,
    :WorkRect, ImRect.by_value,
    :ParentWorkRect, ImRect.by_value,
    :ClipRect, ImRect.by_value,
    :ContentRegionRect, ImRect.by_value,
    :HitTestHoleSize, ImVec2ih.by_value,
    :HitTestHoleOffset, ImVec2ih.by_value,
    :LastFrameActive, :int,
    :LastTimeActive, :float,
    :ItemWidthDefault, :float,
    :StateStorage, ImGuiStorage.by_value,
    :ColumnsStorage, ImVector.by_value,
    :FontWindowScale, :float,
    :SettingsOffset, :int,
    :DrawList, ImDrawList.ptr,
    :DrawListInst, ImDrawList.by_value,
    :ParentWindow, ImGuiWindow.ptr,
    :ParentWindowInBeginStack, ImGuiWindow.ptr,
    :RootWindow, ImGuiWindow.ptr,
    :RootWindowPopupTree, ImGuiWindow.ptr,
    :RootWindowForTitleBarHighlight, ImGuiWindow.ptr,
    :RootWindowForNav, ImGuiWindow.ptr,
    :NavLastChildNavWindow, ImGuiWindow.ptr,
    :NavLastIds, [:uint, 2],
    :NavRectRel, [ImRect.by_value, 2],
    :MemoryDrawListIdxCapacity, :int,
    :MemoryDrawListVtxCapacity, :int,
    :MemoryCompacted, :bool
  )
end

class ImGuiPlatformImeData < FFI::Struct
  layout(
    :WantVisible, :bool,
    :InputPos, ImVec2.by_value,
    :InputLineHeight, :float
  )
end

class ImGuiMetricsConfig < FFI::Struct
  layout(
    :ShowDebugLog, :bool,
    :ShowStackTool, :bool,
    :ShowWindowsRects, :bool,
    :ShowWindowsBeginOrder, :bool,
    :ShowTablesRects, :bool,
    :ShowDrawCmdMesh, :bool,
    :ShowDrawCmdBoundingBoxes, :bool,
    :ShowWindowsRectsType, :int,
    :ShowTablesRectsType, :int
  )
end

class ImGuiStackTool < FFI::Struct
  layout(
    :LastActiveFrame, :int,
    :StackLevel, :int,
    :QueryId, :uint,
    :Results, ImVector.by_value,
    :CopyToClipboardOnCtrlC, :bool,
    :CopyToClipboardLastTime, :float
  )
end

class ImGuiNextItemData < FFI::Struct
  layout(
    :Flags, :int,
    :Width, :float,
    :FocusScopeId, :uint,
    :OpenCond, :int,
    :OpenVal, :bool
  )
end

class ImGuiLastItemData < FFI::Struct
  layout(
    :ID, :uint,
    :InFlags, :int,
    :StatusFlags, :int,
    :Rect, ImRect.by_value,
    :NavRect, ImRect.by_value,
    :DisplayRect, ImRect.by_value
  )
end

class ImGuiNextWindowData < FFI::Struct
  layout(
    :Flags, :int,
    :PosCond, :int,
    :SizeCond, :int,
    :CollapsedCond, :int,
    :PosVal, ImVec2.by_value,
    :PosPivotVal, ImVec2.by_value,
    :SizeVal, ImVec2.by_value,
    :ContentSizeVal, ImVec2.by_value,
    :ScrollVal, ImVec2.by_value,
    :CollapsedVal, :bool,
    :SizeConstraintRect, ImRect.by_value,
    :SizeCallback, :pointer,
    :SizeCallbackUserData, :pointer,
    :BgAlphaVal, :float,
    :MenuBarOffsetMinVal, ImVec2.by_value
  )
end

class ImGuiNavItemData < FFI::Struct
  layout(
    :Window, ImGuiWindow.ptr,
    :ID, :uint,
    :FocusScopeId, :uint,
    :RectRel, ImRect.by_value,
    :InFlags, :int,
    :DistBox, :float,
    :DistCenter, :float,
    :DistAxial, :float
  )
end

class ImGuiTextBuffer < FFI::Struct
  layout(
    :Buf, ImVector.by_value
  )
end

class ImGuiTabBar < FFI::Struct
  layout(
    :Tabs, ImVector.by_value,
    :Flags, :int,
    :ID, :uint,
    :SelectedTabId, :uint,
    :NextSelectedTabId, :uint,
    :VisibleTabId, :uint,
    :CurrFrameVisible, :int,
    :PrevFrameVisible, :int,
    :BarRect, ImRect.by_value,
    :CurrTabsContentsHeight, :float,
    :PrevTabsContentsHeight, :float,
    :WidthAllTabs, :float,
    :WidthAllTabsIdeal, :float,
    :ScrollingAnim, :float,
    :ScrollingTarget, :float,
    :ScrollingTargetDistToVisibility, :float,
    :ScrollingSpeed, :float,
    :ScrollingRectMinX, :float,
    :ScrollingRectMaxX, :float,
    :ReorderRequestTabId, :uint,
    :ReorderRequestOffset, :short,
    :BeginCount, :char,
    :WantLayout, :bool,
    :VisibleTabWasSubmitted, :bool,
    :TabsAddedNew, :bool,
    :TabsActiveCount, :short,
    :LastTabItemIdx, :short,
    :ItemSpacingY, :float,
    :FramePadding, ImVec2.by_value,
    :BackupCursorPos, ImVec2.by_value,
    :TabsNames, ImGuiTextBuffer.by_value
  )
end

class ImGuiTableTempData < FFI::Struct
  layout(
    :TableIndex, :int,
    :LastTimeActive, :float,
    :UserOuterSize, ImVec2.by_value,
    :DrawSplitter, ImDrawListSplitter.by_value,
    :HostBackupWorkRect, ImRect.by_value,
    :HostBackupParentWorkRect, ImRect.by_value,
    :HostBackupPrevLineSize, ImVec2.by_value,
    :HostBackupCurrLineSize, ImVec2.by_value,
    :HostBackupCursorMaxPos, ImVec2.by_value,
    :HostBackupColumnsOffset, ImVec1.by_value,
    :HostBackupItemWidth, :float,
    :HostBackupItemWidthStackSize, :int
  )
end

class ImGuiTableInstanceData < FFI::Struct
  layout(
    :LastOuterHeight, :float,
    :LastFirstRowHeight, :float
  )
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

class ImGuiTable < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :RawData, :pointer,
    :TempData, ImGuiTableTempData.ptr,
    :Columns, ImSpan.by_value,
    :DisplayOrderToIndex, ImSpan.by_value,
    :RowCellData, ImSpan.by_value,
    :EnabledMaskByDisplayOrder, :uint64,
    :EnabledMaskByIndex, :uint64,
    :VisibleMaskByIndex, :uint64,
    :RequestOutputMaskByIndex, :uint64,
    :SettingsLoadedFlags, :int,
    :SettingsOffset, :int,
    :LastFrameActive, :int,
    :ColumnsCount, :int,
    :CurrentRow, :int,
    :CurrentColumn, :int,
    :InstanceCurrent, :short,
    :InstanceInteracted, :short,
    :RowPosY1, :float,
    :RowPosY2, :float,
    :RowMinHeight, :float,
    :RowTextBaseline, :float,
    :RowIndentOffsetX, :float,
    :RowFlags, :int,
    :LastRowFlags, :int,
    :RowBgColorCounter, :int,
    :RowBgColor, [:uint, 2],
    :BorderColorStrong, :uint,
    :BorderColorLight, :uint,
    :BorderX1, :float,
    :BorderX2, :float,
    :HostIndentX, :float,
    :MinColumnWidth, :float,
    :OuterPaddingX, :float,
    :CellPaddingX, :float,
    :CellPaddingY, :float,
    :CellSpacingX1, :float,
    :CellSpacingX2, :float,
    :InnerWidth, :float,
    :ColumnsGivenWidth, :float,
    :ColumnsAutoFitWidth, :float,
    :ColumnsStretchSumWeights, :float,
    :ResizedColumnNextWidth, :float,
    :ResizeLockMinContentsX2, :float,
    :RefScale, :float,
    :OuterRect, ImRect.by_value,
    :InnerRect, ImRect.by_value,
    :WorkRect, ImRect.by_value,
    :InnerClipRect, ImRect.by_value,
    :BgClipRect, ImRect.by_value,
    :Bg0ClipRectForDrawCmd, ImRect.by_value,
    :Bg2ClipRectForDrawCmd, ImRect.by_value,
    :HostClipRect, ImRect.by_value,
    :HostBackupInnerClipRect, ImRect.by_value,
    :OuterWindow, ImGuiWindow.ptr,
    :InnerWindow, ImGuiWindow.ptr,
    :ColumnsNames, ImGuiTextBuffer.by_value,
    :DrawSplitter, ImDrawListSplitter.ptr,
    :InstanceDataFirst, ImGuiTableInstanceData.by_value,
    :InstanceDataExtra, ImVector.by_value,
    :SortSpecsSingle, ImGuiTableColumnSortSpecs.by_value,
    :SortSpecsMulti, ImVector.by_value,
    :SortSpecs, ImGuiTableSortSpecs.by_value,
    :SortSpecsCount, :char,
    :ColumnsEnabledCount, :char,
    :ColumnsEnabledFixedCount, :char,
    :DeclColumnsCount, :char,
    :HoveredColumnBody, :char,
    :HoveredColumnBorder, :char,
    :AutoFitSingleColumn, :char,
    :ResizedColumn, :char,
    :LastResizedColumn, :char,
    :HeldHeaderColumn, :char,
    :ReorderColumn, :char,
    :ReorderColumnDir, :char,
    :LeftMostEnabledColumn, :char,
    :RightMostEnabledColumn, :char,
    :LeftMostStretchedColumn, :char,
    :RightMostStretchedColumn, :char,
    :ContextPopupColumn, :char,
    :FreezeRowsRequest, :char,
    :FreezeRowsCount, :char,
    :FreezeColumnsRequest, :char,
    :FreezeColumnsCount, :char,
    :RowCellDataCurrent, :char,
    :DummyDrawChannel, :uchar,
    :Bg2DrawChannelCurrent, :uchar,
    :Bg2DrawChannelUnfrozen, :uchar,
    :IsLayoutLocked, :bool,
    :IsInsideRow, :bool,
    :IsInitializing, :bool,
    :IsSortSpecsDirty, :bool,
    :IsUsingHeaders, :bool,
    :IsContextPopupOpen, :bool,
    :IsSettingsRequestLoad, :bool,
    :IsSettingsDirty, :bool,
    :IsDefaultDisplayOrder, :bool,
    :IsResetAllRequest, :bool,
    :IsResetDisplayOrderRequest, :bool,
    :IsUnfrozenRows, :bool,
    :IsDefaultSizingPolicy, :bool,
    :MemoryCompacted, :bool,
    :HostSkipItems, :bool
  )
end

class StbUndoRecord < FFI::Struct
  layout(
    :where, :int,
    :insert_length, :int,
    :delete_length, :int,
    :char_storage, :int
  )
end

class StbUndoState < FFI::Struct
  layout(
    :undo_rec, [StbUndoRecord.by_value, 99],
    :undo_char, [:ushort, 999],
    :undo_point, :short,
    :redo_point, :short,
    :undo_char_point, :int,
    :redo_char_point, :int
  )
end

class STB_TexteditState < FFI::Struct
  layout(
    :cursor, :int,
    :select_start, :int,
    :select_end, :int,
    :insert_mode, :uchar,
    :row_count_per_page, :int,
    :cursor_at_end_of_line, :uchar,
    :initialized, :uchar,
    :has_preferred_x, :uchar,
    :single_line, :uchar,
    :padding1, :uchar,
    :padding2, :uchar,
    :padding3, :uchar,
    :preferred_x, :float,
    :undostate, StbUndoState.by_value
  )
end

class ImGuiInputTextState < FFI::Struct
  layout(
    :ID, :uint,
    :CurLenW, :int,
    :CurLenA, :int,
    :TextW, ImVector.by_value,
    :TextA, ImVector.by_value,
    :InitialTextA, ImVector.by_value,
    :TextAIsValid, :bool,
    :BufCapacityA, :int,
    :ScrollX, :float,
    :Stb, STB_TexteditState.by_value,
    :CursorAnim, :float,
    :CursorFollow, :bool,
    :SelectedAllMouseLock, :bool,
    :Edited, :bool,
    :Flags, :int
  )
end

class ImBitArrayForNamedKeys < FFI::Struct
  layout(
    :Storage, [:uint, (ImGuiKey_NamedKey_COUNT + 31) >> 5]
  )
end

class ImBitVector < FFI::Struct
  layout(
    :Storage, ImVector.by_value
  )
end

class ImColor < FFI::Struct
  layout(
    :Value, ImVec4.by_value
  )
end

class ImDrawListSharedData < FFI::Struct
  layout(
    :TexUvWhitePixel, ImVec2.by_value,
    :Font, ImFont.ptr,
    :FontSize, :float,
    :CurveTessellationTol, :float,
    :CircleSegmentMaxError, :float,
    :ClipRectFullscreen, ImVec4.by_value,
    :InitialFlags, :int,
    :ArcFastVtx, [ImVec2.by_value, 48],
    :ArcFastRadiusCutoff, :float,
    :CircleSegmentCounts, [:uchar, 64],
    :TexUvLines, :pointer
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

class ImFontBuilderIO < FFI::Struct
  layout(
    :FontBuilder_Build, :pointer
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

class ImGuiColorMod < FFI::Struct
  layout(
    :Col, :int,
    :BackupValue, ImVec4.by_value
  )
end

class ImGuiComboPreviewData < FFI::Struct
  layout(
    :PreviewRect, ImRect.by_value,
    :BackupCursorPos, ImVec2.by_value,
    :BackupCursorMaxPos, ImVec2.by_value,
    :BackupCursorPosPrevLine, ImVec2.by_value,
    :BackupPrevLineTextBaseOffset, :float,
    :BackupLayout, :int
  )
end

class ImGuiContext < FFI::Struct
  layout(
    :Initialized, :bool,
    :FontAtlasOwnedByContext, :bool,
    :IO, ImGuiIO.by_value,
    :InputEventsQueue, ImVector.by_value,
    :InputEventsTrail, ImVector.by_value,
    :Style, ImGuiStyle.by_value,
    :Font, ImFont.ptr,
    :FontSize, :float,
    :FontBaseSize, :float,
    :DrawListSharedData, ImDrawListSharedData.by_value,
    :Time, :double,
    :FrameCount, :int,
    :FrameCountEnded, :int,
    :FrameCountRendered, :int,
    :WithinFrameScope, :bool,
    :WithinFrameScopeWithImplicitWindow, :bool,
    :WithinEndChild, :bool,
    :GcCompactAll, :bool,
    :TestEngineHookItems, :bool,
    :TestEngine, :pointer,
    :Windows, ImVector.by_value,
    :WindowsFocusOrder, ImVector.by_value,
    :WindowsTempSortBuffer, ImVector.by_value,
    :CurrentWindowStack, ImVector.by_value,
    :WindowsById, ImGuiStorage.by_value,
    :WindowsActiveCount, :int,
    :WindowsHoverPadding, ImVec2.by_value,
    :CurrentWindow, ImGuiWindow.ptr,
    :HoveredWindow, ImGuiWindow.ptr,
    :HoveredWindowUnderMovingWindow, ImGuiWindow.ptr,
    :MovingWindow, ImGuiWindow.ptr,
    :WheelingWindow, ImGuiWindow.ptr,
    :WheelingWindowRefMousePos, ImVec2.by_value,
    :WheelingWindowTimer, :float,
    :DebugHookIdInfo, :uint,
    :HoveredId, :uint,
    :HoveredIdPreviousFrame, :uint,
    :HoveredIdAllowOverlap, :bool,
    :HoveredIdUsingMouseWheel, :bool,
    :HoveredIdPreviousFrameUsingMouseWheel, :bool,
    :HoveredIdDisabled, :bool,
    :HoveredIdTimer, :float,
    :HoveredIdNotActiveTimer, :float,
    :ActiveId, :uint,
    :ActiveIdIsAlive, :uint,
    :ActiveIdTimer, :float,
    :ActiveIdIsJustActivated, :bool,
    :ActiveIdAllowOverlap, :bool,
    :ActiveIdNoClearOnFocusLoss, :bool,
    :ActiveIdHasBeenPressedBefore, :bool,
    :ActiveIdHasBeenEditedBefore, :bool,
    :ActiveIdHasBeenEditedThisFrame, :bool,
    :ActiveIdClickOffset, ImVec2.by_value,
    :ActiveIdWindow, ImGuiWindow.ptr,
    :ActiveIdSource, :int,
    :ActiveIdMouseButton, :int,
    :ActiveIdPreviousFrame, :uint,
    :ActiveIdPreviousFrameIsAlive, :bool,
    :ActiveIdPreviousFrameHasBeenEditedBefore, :bool,
    :ActiveIdPreviousFrameWindow, ImGuiWindow.ptr,
    :LastActiveId, :uint,
    :LastActiveIdTimer, :float,
    :ActiveIdUsingMouseWheel, :bool,
    :ActiveIdUsingNavDirMask, :uint,
    :ActiveIdUsingNavInputMask, :uint,
    :ActiveIdUsingKeyInputMask, ImBitArrayForNamedKeys.by_value,
    :CurrentItemFlags, :int,
    :NextItemData, ImGuiNextItemData.by_value,
    :LastItemData, ImGuiLastItemData.by_value,
    :NextWindowData, ImGuiNextWindowData.by_value,
    :ColorStack, ImVector.by_value,
    :StyleVarStack, ImVector.by_value,
    :FontStack, ImVector.by_value,
    :FocusScopeStack, ImVector.by_value,
    :ItemFlagsStack, ImVector.by_value,
    :GroupStack, ImVector.by_value,
    :OpenPopupStack, ImVector.by_value,
    :BeginPopupStack, ImVector.by_value,
    :BeginMenuCount, :int,
    :Viewports, ImVector.by_value,
    :NavWindow, ImGuiWindow.ptr,
    :NavId, :uint,
    :NavFocusScopeId, :uint,
    :NavActivateId, :uint,
    :NavActivateDownId, :uint,
    :NavActivatePressedId, :uint,
    :NavActivateInputId, :uint,
    :NavActivateFlags, :int,
    :NavJustMovedToId, :uint,
    :NavJustMovedToFocusScopeId, :uint,
    :NavJustMovedToKeyMods, :int,
    :NavNextActivateId, :uint,
    :NavNextActivateFlags, :int,
    :NavInputSource, :int,
    :NavLayer, :int,
    :NavIdIsAlive, :bool,
    :NavMousePosDirty, :bool,
    :NavDisableHighlight, :bool,
    :NavDisableMouseHover, :bool,
    :NavAnyRequest, :bool,
    :NavInitRequest, :bool,
    :NavInitRequestFromMove, :bool,
    :NavInitResultId, :uint,
    :NavInitResultRectRel, ImRect.by_value,
    :NavMoveSubmitted, :bool,
    :NavMoveScoringItems, :bool,
    :NavMoveForwardToNextFrame, :bool,
    :NavMoveFlags, :int,
    :NavMoveScrollFlags, :int,
    :NavMoveKeyMods, :int,
    :NavMoveDir, :int,
    :NavMoveDirForDebug, :int,
    :NavMoveClipDir, :int,
    :NavScoringRect, ImRect.by_value,
    :NavScoringNoClipRect, ImRect.by_value,
    :NavScoringDebugCount, :int,
    :NavTabbingDir, :int,
    :NavTabbingCounter, :int,
    :NavMoveResultLocal, ImGuiNavItemData.by_value,
    :NavMoveResultLocalVisible, ImGuiNavItemData.by_value,
    :NavMoveResultOther, ImGuiNavItemData.by_value,
    :NavTabbingResultFirst, ImGuiNavItemData.by_value,
    :NavWindowingTarget, ImGuiWindow.ptr,
    :NavWindowingTargetAnim, ImGuiWindow.ptr,
    :NavWindowingListWindow, ImGuiWindow.ptr,
    :NavWindowingTimer, :float,
    :NavWindowingHighlightAlpha, :float,
    :NavWindowingToggleLayer, :bool,
    :DimBgRatio, :float,
    :MouseCursor, :int,
    :DragDropActive, :bool,
    :DragDropWithinSource, :bool,
    :DragDropWithinTarget, :bool,
    :DragDropSourceFlags, :int,
    :DragDropSourceFrameCount, :int,
    :DragDropMouseButton, :int,
    :DragDropPayload, ImGuiPayload.by_value,
    :DragDropTargetRect, ImRect.by_value,
    :DragDropTargetId, :uint,
    :DragDropAcceptFlags, :int,
    :DragDropAcceptIdCurrRectSurface, :float,
    :DragDropAcceptIdCurr, :uint,
    :DragDropAcceptIdPrev, :uint,
    :DragDropAcceptFrameCount, :int,
    :DragDropHoldJustPressedId, :uint,
    :DragDropPayloadBufHeap, ImVector.by_value,
    :DragDropPayloadBufLocal, [:uchar, 16],
    :ClipperTempDataStacked, :int,
    :ClipperTempData, ImVector.by_value,
    :CurrentTable, ImGuiTable.ptr,
    :TablesTempDataStacked, :int,
    :TablesTempData, ImVector.by_value,
    :Tables, ImPool.by_value,
    :TablesLastTimeActive, ImVector.by_value,
    :DrawChannelsTempMergeBuffer, ImVector.by_value,
    :CurrentTabBar, ImGuiTabBar.ptr,
    :TabBars, ImPool.by_value,
    :CurrentTabBarStack, ImVector.by_value,
    :ShrinkWidthBuffer, ImVector.by_value,
    :MouseLastValidPos, ImVec2.by_value,
    :InputTextState, ImGuiInputTextState.by_value,
    :InputTextPasswordFont, ImFont.by_value,
    :TempInputId, :uint,
    :ColorEditOptions, :int,
    :ColorEditLastHue, :float,
    :ColorEditLastSat, :float,
    :ColorEditLastColor, :uint,
    :ColorPickerRef, ImVec4.by_value,
    :ComboPreviewData, ImGuiComboPreviewData.by_value,
    :SliderGrabClickOffset, :float,
    :SliderCurrentAccum, :float,
    :SliderCurrentAccumDirty, :bool,
    :DragCurrentAccumDirty, :bool,
    :DragCurrentAccum, :float,
    :DragSpeedDefaultRatio, :float,
    :ScrollbarClickDeltaToGrabCenter, :float,
    :DisabledAlphaBackup, :float,
    :DisabledStackSize, :short,
    :TooltipOverrideCount, :short,
    :TooltipSlowDelay, :float,
    :ClipboardHandlerData, ImVector.by_value,
    :MenusIdSubmittedThisFrame, ImVector.by_value,
    :PlatformImeData, ImGuiPlatformImeData.by_value,
    :PlatformImeDataPrev, ImGuiPlatformImeData.by_value,
    :PlatformLocaleDecimalPoint, :char,
    :SettingsLoaded, :bool,
    :SettingsDirtyTimer, :float,
    :SettingsIniData, ImGuiTextBuffer.by_value,
    :SettingsHandlers, ImVector.by_value,
    :SettingsWindows, ImChunkStream.by_value,
    :SettingsTables, ImChunkStream.by_value,
    :Hooks, ImVector.by_value,
    :HookIdNext, :uint,
    :LogEnabled, :bool,
    :LogType, :int,
    :LogFile, :pointer,
    :LogBuffer, ImGuiTextBuffer.by_value,
    :LogNextPrefix, :pointer,
    :LogNextSuffix, :pointer,
    :LogLinePosY, :float,
    :LogLineFirstItem, :bool,
    :LogDepthRef, :int,
    :LogDepthToExpand, :int,
    :LogDepthToExpandDefault, :int,
    :DebugLogFlags, :int,
    :DebugLogBuf, ImGuiTextBuffer.by_value,
    :DebugItemPickerActive, :bool,
    :DebugItemPickerBreakId, :uint,
    :DebugMetricsConfig, ImGuiMetricsConfig.by_value,
    :DebugStackTool, ImGuiStackTool.by_value,
    :FramerateSecPerFrame, [:float, 120],
    :FramerateSecPerFrameIdx, :int,
    :FramerateSecPerFrameCount, :int,
    :FramerateSecPerFrameAccum, :float,
    :WantCaptureMouseNextFrame, :int,
    :WantCaptureKeyboardNextFrame, :int,
    :WantTextInputNextFrame, :int,
    :TempBuffer, ImVector.by_value
  )
end

class ImGuiContextHook < FFI::Struct
  layout(
    :HookId, :uint,
    :Type, :int,
    :Owner, :uint,
    :Callback, :pointer,
    :UserData, :pointer
  )
end

class ImGuiDataTypeInfo < FFI::Struct
  layout(
    :Size, :size_t,
    :Name, :pointer,
    :PrintFmt, :pointer,
    :ScanFmt, :pointer
  )
end

class ImGuiDataTypeTempStorage < FFI::Struct
  layout(
    :Data, [:uchar, 8]
  )
end

class ImGuiGroupData < FFI::Struct
  layout(
    :WindowID, :uint,
    :BackupCursorPos, ImVec2.by_value,
    :BackupCursorMaxPos, ImVec2.by_value,
    :BackupIndent, ImVec1.by_value,
    :BackupGroupOffset, ImVec1.by_value,
    :BackupCurrLineSize, ImVec2.by_value,
    :BackupCurrLineTextBaseOffset, :float,
    :BackupActiveIdIsAlive, :uint,
    :BackupActiveIdPreviousFrameIsAlive, :bool,
    :BackupHoveredIdIsAlive, :bool,
    :EmitItem, :bool
  )
end

class ImGuiInputEventAppFocused < FFI::Struct
  layout(
    :Focused, :bool
  )
end

class ImGuiInputEventKey < FFI::Struct
  layout(
    :Key, :int,
    :Down, :bool,
    :AnalogValue, :float
  )
end

class ImGuiInputEventMouseButton < FFI::Struct
  layout(
    :Button, :int,
    :Down, :bool
  )
end

class ImGuiInputEventMousePos < FFI::Struct
  layout(
    :PosX, :float,
    :PosY, :float
  )
end

class ImGuiInputEventMouseWheel < FFI::Struct
  layout(
    :WheelX, :float,
    :WheelY, :float
  )
end

class ImGuiInputEventText < FFI::Struct
  layout(
    :Char, :uint
  )
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

class ImGuiListClipper < FFI::Struct
  layout(
    :DisplayStart, :int,
    :DisplayEnd, :int,
    :ItemsCount, :int,
    :ItemsHeight, :float,
    :StartPosY, :float,
    :TempData, :pointer
  )
end

class ImGuiListClipperData < FFI::Struct
  layout(
    :ListClipper, ImGuiListClipper.ptr,
    :LossynessOffset, :float,
    :StepNo, :int,
    :ItemsFrozen, :int,
    :Ranges, ImVector.by_value
  )
end

class ImGuiListClipperRange < FFI::Struct
  layout(
    :Min, :int,
    :Max, :int,
    :PosToIndexConvert, :bool,
    :PosToIndexOffsetMin, :char,
    :PosToIndexOffsetMax, :char
  )
end

class ImGuiOldColumnData < FFI::Struct
  layout(
    :OffsetNorm, :float,
    :OffsetNormBeforeResize, :float,
    :Flags, :int,
    :ClipRect, ImRect.by_value
  )
end

class ImGuiPopupData < FFI::Struct
  layout(
    :PopupId, :uint,
    :Window, ImGuiWindow.ptr,
    :SourceWindow, ImGuiWindow.ptr,
    :ParentNavLayer, :int,
    :OpenFrameCount, :int,
    :OpenParentId, :uint,
    :OpenPopupPos, ImVec2.by_value,
    :OpenMousePos, ImVec2.by_value
  )
end

class ImGuiPtrOrIndex < FFI::Struct
  layout(
    :Ptr, :pointer,
    :Index, :int
  )
end

class ImGuiSettingsHandler < FFI::Struct
  layout(
    :TypeName, :pointer,
    :TypeHash, :uint,
    :ClearAllFn, :pointer,
    :ReadInitFn, :pointer,
    :ReadOpenFn, :pointer,
    :ReadLineFn, :pointer,
    :ApplyAllFn, :pointer,
    :WriteAllFn, :pointer,
    :UserData, :pointer
  )
end

class ImGuiShrinkWidthItem < FFI::Struct
  layout(
    :Index, :int,
    :Width, :float,
    :InitialWidth, :float
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

class ImGuiStackLevelInfo < FFI::Struct
  layout(
    :ID, :uint,
    :QueryFrameCount, :char,
    :QuerySuccess, :bool,
    :DataType, :int,
    :Desc, [:char, 57]
  )
end

class ImGuiStackSizes < FFI::Struct
  layout(
    :SizeOfIDStack, :short,
    :SizeOfColorStack, :short,
    :SizeOfStyleVarStack, :short,
    :SizeOfFontStack, :short,
    :SizeOfFocusScopeStack, :short,
    :SizeOfGroupStack, :short,
    :SizeOfItemFlagsStack, :short,
    :SizeOfBeginPopupStack, :short,
    :SizeOfDisabledStack, :short
  )
end

class ImGuiTabItem < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :LastFrameVisible, :int,
    :LastFrameSelected, :int,
    :Offset, :float,
    :Width, :float,
    :ContentWidth, :float,
    :RequestedWidth, :float,
    :NameOffset, :int,
    :BeginOrder, :short,
    :IndexDuringLayout, :short,
    :WantClose, :bool
  )
end

class ImGuiTableCellData < FFI::Struct
  layout(
    :BgColor, :uint,
    :Column, :char
  )
end

class ImGuiTableColumn < FFI::Struct
  layout(
    :Flags, :int,
    :WidthGiven, :float,
    :MinX, :float,
    :MaxX, :float,
    :WidthRequest, :float,
    :WidthAuto, :float,
    :StretchWeight, :float,
    :InitStretchWeightOrWidth, :float,
    :ClipRect, ImRect.by_value,
    :UserID, :uint,
    :WorkMinX, :float,
    :WorkMaxX, :float,
    :ItemWidth, :float,
    :ContentMaxXFrozen, :float,
    :ContentMaxXUnfrozen, :float,
    :ContentMaxXHeadersUsed, :float,
    :ContentMaxXHeadersIdeal, :float,
    :NameOffset, :short,
    :DisplayOrder, :char,
    :IndexWithinEnabledSet, :char,
    :PrevEnabledColumn, :char,
    :NextEnabledColumn, :char,
    :SortOrder, :char,
    :DrawChannelCurrent, :uchar,
    :DrawChannelFrozen, :uchar,
    :DrawChannelUnfrozen, :uchar,
    :IsEnabled, :bool,
    :IsUserEnabled, :bool,
    :IsUserEnabledNextFrame, :bool,
    :IsVisibleX, :bool,
    :IsVisibleY, :bool,
    :IsRequestOutput, :bool,
    :IsSkipItems, :bool,
    :IsPreserveWidthAuto, :bool,
    :NavLayerCurrent, :char,
    :AutoFitQueue, :uchar,
    :CannotSkipItemsQueue, :uchar,
    :SortDirection, :uchar,
    :SortDirectionsAvailCount, :uchar,
    :SortDirectionsAvailMask, :uchar,
    :SortDirectionsAvailList, :uchar
  )
end

class ImGuiTableColumnSettings < FFI::Struct
  layout(
    :WidthOrWeight, :float,
    :UserID, :uint,
    :Index, :char,
    :DisplayOrder, :char,
    :SortOrder, :char,
    :SortDirection, :uchar,
    :IsEnabled, :uchar,
    :IsStretch, :uchar
  )
end

class ImGuiTableSettings < FFI::Struct
  layout(
    :ID, :uint,
    :SaveFlags, :int,
    :RefScale, :float,
    :ColumnsCount, :char,
    :ColumnsCountMax, :char,
    :WantApply, :bool
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

class ImGuiWindowSettings < FFI::Struct
  layout(
    :ID, :uint,
    :Pos, ImVec2ih.by_value,
    :Size, ImVec2ih.by_value,
    :Collapsed, :bool,
    :WantApply, :bool
  )
end

class ImGuiWindowStackData < FFI::Struct
  layout(
    :Window, ImGuiWindow.ptr,
    :ParentLastItemDataBackup, ImGuiLastItemData.by_value,
    :StackSizesOnBegin, ImGuiStackSizes.by_value
  )
end

class StbTexteditRow < FFI::Struct
  layout(
    :x0, :float,
    :x1, :float,
    :baseline_y_delta, :float,
    :ymin, :float,
    :ymax, :float,
    :num_chars, :int
  )
end

class ImGuiStoragePairUnionContent < FFI::Union
  layout(
    :val_i, :int,
    :val_f, :float,
    :val_p, :pointer
  )
end

class ImGuiStoragePair < FFI::Struct
  layout(
    :key, :uint,
    :content, ImGuiStoragePairUnionContent.by_value
  )
end

class ImGuiInputEventUnionContent < FFI::Union
  layout(
    :MousePos, ImGuiInputEventMousePos.by_value,
    :MouseWheel, ImGuiInputEventMouseWheel.by_value,
    :MouseButton, ImGuiInputEventMouseButton.by_value,
    :Key, ImGuiInputEventKey.by_value,
    :Text, ImGuiInputEventText.by_value,
    :AppFocused, ImGuiInputEventAppFocused.by_value
  )
end

class ImGuiInputEvent < FFI::Struct
  layout(
    :Type, :int,
    :Source, :int,
    :content, ImGuiInputEventUnionContent.by_value,
    :AddedByTestEngine, :bool
  )
end

class ImGuiStyleModUnionContent < FFI::Union
  layout(
    :BakcupInt, [:int, 2],
    :BakcupFloat, [:float, 2]
  )
end

class ImGuiStyleMod < FFI::Struct
  layout(
    :VarIdx, :int,
    :content, ImGuiStyleModUnionContent.by_value
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
    callback :ImGuiContextHookCallback, [ImGuiContext, ImGuiContextHook], :void
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
      :ImDrawList__TryMergeDrawCmds,
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
      :ImGuiIO_AddFocusEvent,
      :ImGuiIO_AddInputCharacter,
      :ImGuiIO_AddInputCharacterUTF16,
      :ImGuiIO_AddInputCharactersUTF8,
      :ImGuiIO_AddKeyAnalogEvent,
      :ImGuiIO_AddKeyEvent,
      :ImGuiIO_AddMouseButtonEvent,
      :ImGuiIO_AddMousePosEvent,
      :ImGuiIO_AddMouseWheelEvent,
      :ImGuiIO_ClearInputCharacters,
      :ImGuiIO_ClearInputKeys,
      :ImGuiIO_ImGuiIO,
      :ImGuiIO_SetAppAcceptingEvents,
      :ImGuiIO_SetKeyEventNativeData,
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
      :igActivateItem,
      :igAddContextHook,
      :igAddSettingsHandler,
      :igAlignTextToFramePadding,
      :igArrowButton,
      :igArrowButtonEx,
      :igBegin,
      :igBeginChild_Str,
      :igBeginChild_ID,
      :igBeginChildEx,
      :igBeginChildFrame,
      :igBeginColumns,
      :igBeginCombo,
      :igBeginComboPopup,
      :igBeginComboPreview,
      :igBeginDisabled,
      :igBeginDragDropSource,
      :igBeginDragDropTarget,
      :igBeginDragDropTargetCustom,
      :igBeginGroup,
      :igBeginListBox,
      :igBeginMainMenuBar,
      :igBeginMenu,
      :igBeginMenuBar,
      :igBeginMenuEx,
      :igBeginPopup,
      :igBeginPopupContextItem,
      :igBeginPopupContextVoid,
      :igBeginPopupContextWindow,
      :igBeginPopupEx,
      :igBeginPopupModal,
      :igBeginTabBar,
      :igBeginTabBarEx,
      :igBeginTabItem,
      :igBeginTable,
      :igBeginTableEx,
      :igBeginTooltip,
      :igBeginTooltipEx,
      :igBeginViewportSideBar,
      :igBringWindowToDisplayBack,
      :igBringWindowToDisplayBehind,
      :igBringWindowToDisplayFront,
      :igBringWindowToFocusFront,
      :igBullet,
      :igBulletText,
      :igButton,
      :igButtonBehavior,
      :igButtonEx,
      :igCalcItemSize,
      :igCalcItemWidth,
      :igCalcTextSize,
      :igCalcTypematicRepeatAmount,
      :igCalcWindowNextAutoFitSize,
      :igCalcWrapWidthForPos,
      :igCallContextHooks,
      :igCheckbox,
      :igCheckboxFlags_IntPtr,
      :igCheckboxFlags_UintPtr,
      :igCheckboxFlags_S64Ptr,
      :igCheckboxFlags_U64Ptr,
      :igClearActiveID,
      :igClearDragDrop,
      :igClearIniSettings,
      :igCloseButton,
      :igCloseCurrentPopup,
      :igClosePopupToLevel,
      :igClosePopupsExceptModals,
      :igClosePopupsOverWindow,
      :igCollapseButton,
      :igCollapsingHeader_TreeNodeFlags,
      :igCollapsingHeader_BoolPtr,
      :igColorButton,
      :igColorConvertFloat4ToU32,
      :igColorConvertHSVtoRGB,
      :igColorConvertRGBtoHSV,
      :igColorConvertU32ToFloat4,
      :igColorEdit3,
      :igColorEdit4,
      :igColorEditOptionsPopup,
      :igColorPicker3,
      :igColorPicker4,
      :igColorPickerOptionsPopup,
      :igColorTooltip,
      :igColumns,
      :igCombo_Str_arr,
      :igCombo_Str,
      :igCombo_FnBoolPtr,
      :igCreateContext,
      :igCreateNewWindowSettings,
      :igDataTypeApplyFromText,
      :igDataTypeApplyOp,
      :igDataTypeClamp,
      :igDataTypeCompare,
      :igDataTypeFormatString,
      :igDataTypeGetInfo,
      :igDebugCheckVersionAndDataLayout,
      :igDebugDrawItemRect,
      :igDebugHookIdInfo,
      :igDebugLog,
      :igDebugNodeColumns,
      :igDebugNodeDrawCmdShowMeshAndBoundingBox,
      :igDebugNodeDrawList,
      :igDebugNodeFont,
      :igDebugNodeFontGlyph,
      :igDebugNodeInputTextState,
      :igDebugNodeStorage,
      :igDebugNodeTabBar,
      :igDebugNodeTable,
      :igDebugNodeTableSettings,
      :igDebugNodeViewport,
      :igDebugNodeWindow,
      :igDebugNodeWindowSettings,
      :igDebugNodeWindowsList,
      :igDebugNodeWindowsListByBeginStackParent,
      :igDebugRenderViewportThumbnail,
      :igDebugStartItemPicker,
      :igDebugTextEncoding,
      :igDestroyContext,
      :igDragBehavior,
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
      :igEndColumns,
      :igEndCombo,
      :igEndComboPreview,
      :igEndDisabled,
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
      :igErrorCheckEndFrameRecover,
      :igErrorCheckEndWindowRecover,
      :igFindBestWindowPosForPopup,
      :igFindBestWindowPosForPopupEx,
      :igFindBottomMostVisibleWindowWithinBeginStack,
      :igFindOrCreateColumns,
      :igFindOrCreateWindowSettings,
      :igFindRenderedTextEnd,
      :igFindSettingsHandler,
      :igFindWindowByID,
      :igFindWindowByName,
      :igFindWindowDisplayIndex,
      :igFindWindowSettings,
      :igFocusTopMostWindowUnderOne,
      :igFocusWindow,
      :igGcAwakeTransientWindowBuffers,
      :igGcCompactTransientMiscBuffers,
      :igGcCompactTransientWindowBuffers,
      :igGetActiveID,
      :igGetAllocatorFunctions,
      :igGetBackgroundDrawList_Nil,
      :igGetBackgroundDrawList_ViewportPtr,
      :igGetClipboardText,
      :igGetColorU32_Col,
      :igGetColorU32_Vec4,
      :igGetColorU32_U32,
      :igGetColumnIndex,
      :igGetColumnNormFromOffset,
      :igGetColumnOffset,
      :igGetColumnOffsetFromNorm,
      :igGetColumnWidth,
      :igGetColumnsCount,
      :igGetColumnsID,
      :igGetContentRegionAvail,
      :igGetContentRegionMax,
      :igGetContentRegionMaxAbs,
      :igGetCurrentContext,
      :igGetCurrentTable,
      :igGetCurrentWindow,
      :igGetCurrentWindowRead,
      :igGetCursorPos,
      :igGetCursorPosX,
      :igGetCursorPosY,
      :igGetCursorScreenPos,
      :igGetCursorStartPos,
      :igGetDefaultFont,
      :igGetDragDropPayload,
      :igGetDrawData,
      :igGetDrawListSharedData,
      :igGetFocusID,
      :igGetFocusScope,
      :igGetFocusedFocusScope,
      :igGetFont,
      :igGetFontSize,
      :igGetFontTexUvWhitePixel,
      :igGetForegroundDrawList_Nil,
      :igGetForegroundDrawList_WindowPtr,
      :igGetForegroundDrawList_ViewportPtr,
      :igGetFrameCount,
      :igGetFrameHeight,
      :igGetFrameHeightWithSpacing,
      :igGetHoveredID,
      :igGetID_Str,
      :igGetID_StrStr,
      :igGetID_Ptr,
      :igGetIDWithSeed,
      :igGetIO,
      :igGetInputTextState,
      :igGetItemFlags,
      :igGetItemID,
      :igGetItemRectMax,
      :igGetItemRectMin,
      :igGetItemRectSize,
      :igGetItemStatusFlags,
      :igGetKeyData,
      :igGetKeyIndex,
      :igGetKeyName,
      :igGetKeyPressedAmount,
      :igGetMainViewport,
      :igGetMergedModFlags,
      :igGetMouseClickedCount,
      :igGetMouseCursor,
      :igGetMouseDragDelta,
      :igGetMousePos,
      :igGetMousePosOnOpeningCurrentPopup,
      :igGetNavInputAmount,
      :igGetNavInputAmount2d,
      :igGetNavInputName,
      :igGetPopupAllowedExtentRect,
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
      :igGetTopMostAndVisiblePopupModal,
      :igGetTopMostPopupModal,
      :igGetTreeNodeToLabelSpacing,
      :igGetVersion,
      :igGetWindowContentRegionMax,
      :igGetWindowContentRegionMin,
      :igGetWindowDrawList,
      :igGetWindowHeight,
      :igGetWindowPos,
      :igGetWindowResizeBorderID,
      :igGetWindowResizeCornerID,
      :igGetWindowScrollbarID,
      :igGetWindowScrollbarRect,
      :igGetWindowSize,
      :igGetWindowWidth,
      :igImAbs_Int,
      :igImAbs_Float,
      :igImAbs_double,
      :igImAlphaBlendColors,
      :igImBezierCubicCalc,
      :igImBezierCubicClosestPoint,
      :igImBezierCubicClosestPointCasteljau,
      :igImBezierQuadraticCalc,
      :igImBitArrayClearBit,
      :igImBitArraySetBit,
      :igImBitArraySetBitRange,
      :igImBitArrayTestBit,
      :igImCharIsBlankA,
      :igImCharIsBlankW,
      :igImClamp,
      :igImDot,
      :igImFileClose,
      :igImFileGetSize,
      :igImFileLoadToMemory,
      :igImFileOpen,
      :igImFileRead,
      :igImFileWrite,
      :igImFloor_Float,
      :igImFloor_Vec2,
      :igImFloorSigned_Float,
      :igImFloorSigned_Vec2,
      :igImFontAtlasBuildFinish,
      :igImFontAtlasBuildInit,
      :igImFontAtlasBuildMultiplyCalcLookupTable,
      :igImFontAtlasBuildMultiplyRectAlpha8,
      :igImFontAtlasBuildPackCustomRects,
      :igImFontAtlasBuildRender32bppRectFromString,
      :igImFontAtlasBuildRender8bppRectFromString,
      :igImFontAtlasBuildSetupFont,
      :igImFontAtlasGetBuilderForStbTruetype,
      :igImFormatString,
      :igImFormatStringToTempBuffer,
      :igImGetDirQuadrantFromDelta,
      :igImHashData,
      :igImHashStr,
      :igImInvLength,
      :igImIsFloatAboveGuaranteedIntegerPrecision,
      :igImIsPowerOfTwo_Int,
      :igImIsPowerOfTwo_U64,
      :igImLengthSqr_Vec2,
      :igImLengthSqr_Vec4,
      :igImLerp_Vec2Float,
      :igImLerp_Vec2Vec2,
      :igImLerp_Vec4,
      :igImLineClosestPoint,
      :igImLinearSweep,
      :igImLog_Float,
      :igImLog_double,
      :igImMax,
      :igImMin,
      :igImModPositive,
      :igImMul,
      :igImParseFormatFindEnd,
      :igImParseFormatFindStart,
      :igImParseFormatPrecision,
      :igImParseFormatSanitizeForPrinting,
      :igImParseFormatSanitizeForScanning,
      :igImParseFormatTrimDecorations,
      :igImPow_Float,
      :igImPow_double,
      :igImQsort,
      :igImRotate,
      :igImRsqrt_Float,
      :igImRsqrt_double,
      :igImSaturate,
      :igImSign_Float,
      :igImSign_double,
      :igImStrSkipBlank,
      :igImStrTrimBlanks,
      :igImStrbolW,
      :igImStrchrRange,
      :igImStrdup,
      :igImStrdupcpy,
      :igImStreolRange,
      :igImStricmp,
      :igImStristr,
      :igImStrlenW,
      :igImStrncpy,
      :igImStrnicmp,
      :igImTextCharFromUtf8,
      :igImTextCharToUtf8,
      :igImTextCountCharsFromUtf8,
      :igImTextCountUtf8BytesFromChar,
      :igImTextCountUtf8BytesFromStr,
      :igImTextStrFromUtf8,
      :igImTextStrToUtf8,
      :igImTriangleArea,
      :igImTriangleBarycentricCoords,
      :igImTriangleClosestPoint,
      :igImTriangleContainsPoint,
      :igImUpperPowerOfTwo,
      :igImage,
      :igImageButton,
      :igImageButtonEx,
      :igIndent,
      :igInitialize,
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
      :igInputTextEx,
      :igInputTextMultiline,
      :igInputTextWithHint,
      :igInvisibleButton,
      :igIsActiveIdUsingKey,
      :igIsActiveIdUsingNavDir,
      :igIsActiveIdUsingNavInput,
      :igIsAnyItemActive,
      :igIsAnyItemFocused,
      :igIsAnyItemHovered,
      :igIsAnyMouseDown,
      :igIsClippedEx,
      :igIsDragDropActive,
      :igIsDragDropPayloadBeingAccepted,
      :igIsGamepadKey,
      :igIsItemActivated,
      :igIsItemActive,
      :igIsItemClicked,
      :igIsItemDeactivated,
      :igIsItemDeactivatedAfterEdit,
      :igIsItemEdited,
      :igIsItemFocused,
      :igIsItemHovered,
      :igIsItemToggledOpen,
      :igIsItemToggledSelection,
      :igIsItemVisible,
      :igIsKeyDown,
      :igIsKeyPressed,
      :igIsKeyPressedMap,
      :igIsKeyReleased,
      :igIsLegacyKey,
      :igIsMouseClicked,
      :igIsMouseDoubleClicked,
      :igIsMouseDown,
      :igIsMouseDragPastThreshold,
      :igIsMouseDragging,
      :igIsMouseHoveringRect,
      :igIsMousePosValid,
      :igIsMouseReleased,
      :igIsNamedKey,
      :igIsNavInputDown,
      :igIsNavInputTest,
      :igIsPopupOpen_Str,
      :igIsPopupOpen_ID,
      :igIsRectVisible_Nil,
      :igIsRectVisible_Vec2,
      :igIsWindowAbove,
      :igIsWindowAppearing,
      :igIsWindowChildOf,
      :igIsWindowCollapsed,
      :igIsWindowFocused,
      :igIsWindowHovered,
      :igIsWindowNavFocusable,
      :igIsWindowWithinBeginStackOf,
      :igItemAdd,
      :igItemHoverable,
      :igItemSize_Vec2,
      :igItemSize_Rect,
      :igKeepAliveID,
      :igLabelText,
      :igListBox_Str_arr,
      :igListBox_FnBoolPtr,
      :igLoadIniSettingsFromDisk,
      :igLoadIniSettingsFromMemory,
      :igLogBegin,
      :igLogButtons,
      :igLogFinish,
      :igLogRenderedText,
      :igLogSetNextTextDecoration,
      :igLogText,
      :igLogToBuffer,
      :igLogToClipboard,
      :igLogToFile,
      :igLogToTTY,
      :igMarkIniSettingsDirty_Nil,
      :igMarkIniSettingsDirty_WindowPtr,
      :igMarkItemEdited,
      :igMemAlloc,
      :igMemFree,
      :igMenuItem_Bool,
      :igMenuItem_BoolPtr,
      :igMenuItemEx,
      :igNavInitRequestApplyResult,
      :igNavInitWindow,
      :igNavMoveRequestApplyResult,
      :igNavMoveRequestButNoResultYet,
      :igNavMoveRequestCancel,
      :igNavMoveRequestForward,
      :igNavMoveRequestResolveWithLastItem,
      :igNavMoveRequestSubmit,
      :igNavMoveRequestTryWrapping,
      :igNewFrame,
      :igNewLine,
      :igNextColumn,
      :igOpenPopup_Str,
      :igOpenPopup_ID,
      :igOpenPopupEx,
      :igOpenPopupOnItemClick,
      :igPlotEx,
      :igPlotHistogram_FloatPtr,
      :igPlotHistogram_FnFloatPtr,
      :igPlotLines_FloatPtr,
      :igPlotLines_FnFloatPtr,
      :igPopAllowKeyboardFocus,
      :igPopButtonRepeat,
      :igPopClipRect,
      :igPopColumnsBackground,
      :igPopFocusScope,
      :igPopFont,
      :igPopID,
      :igPopItemFlag,
      :igPopItemWidth,
      :igPopStyleColor,
      :igPopStyleVar,
      :igPopTextWrapPos,
      :igProgressBar,
      :igPushAllowKeyboardFocus,
      :igPushButtonRepeat,
      :igPushClipRect,
      :igPushColumnClipRect,
      :igPushColumnsBackground,
      :igPushFocusScope,
      :igPushFont,
      :igPushID_Str,
      :igPushID_StrStr,
      :igPushID_Ptr,
      :igPushID_Int,
      :igPushItemFlag,
      :igPushItemWidth,
      :igPushMultiItemsWidths,
      :igPushOverrideID,
      :igPushStyleColor_U32,
      :igPushStyleColor_Vec4,
      :igPushStyleVar_Float,
      :igPushStyleVar_Vec2,
      :igPushTextWrapPos,
      :igRadioButton_Bool,
      :igRadioButton_IntPtr,
      :igRemoveContextHook,
      :igRemoveSettingsHandler,
      :igRender,
      :igRenderArrow,
      :igRenderArrowPointingAt,
      :igRenderBullet,
      :igRenderCheckMark,
      :igRenderColorRectWithAlphaCheckerboard,
      :igRenderFrame,
      :igRenderFrameBorder,
      :igRenderMouseCursor,
      :igRenderNavHighlight,
      :igRenderRectFilledRangeH,
      :igRenderRectFilledWithHole,
      :igRenderText,
      :igRenderTextClipped,
      :igRenderTextClippedEx,
      :igRenderTextEllipsis,
      :igRenderTextWrapped,
      :igResetMouseDragDelta,
      :igSameLine,
      :igSaveIniSettingsToDisk,
      :igSaveIniSettingsToMemory,
      :igScrollToBringRectIntoView,
      :igScrollToItem,
      :igScrollToRect,
      :igScrollToRectEx,
      :igScrollbar,
      :igScrollbarEx,
      :igSelectable_Bool,
      :igSelectable_BoolPtr,
      :igSeparator,
      :igSeparatorEx,
      :igSetActiveID,
      :igSetActiveIdUsingKey,
      :igSetActiveIdUsingNavAndKeys,
      :igSetAllocatorFunctions,
      :igSetClipboardText,
      :igSetColorEditOptions,
      :igSetColumnOffset,
      :igSetColumnWidth,
      :igSetCurrentContext,
      :igSetCurrentFont,
      :igSetCursorPos,
      :igSetCursorPosX,
      :igSetCursorPosY,
      :igSetCursorScreenPos,
      :igSetDragDropPayload,
      :igSetFocusID,
      :igSetHoveredID,
      :igSetItemAllowOverlap,
      :igSetItemDefaultFocus,
      :igSetItemUsingMouseWheel,
      :igSetKeyboardFocusHere,
      :igSetLastItemData,
      :igSetMouseCursor,
      :igSetNavID,
      :igSetNavWindow,
      :igSetNextFrameWantCaptureKeyboard,
      :igSetNextFrameWantCaptureMouse,
      :igSetNextItemOpen,
      :igSetNextItemWidth,
      :igSetNextWindowBgAlpha,
      :igSetNextWindowCollapsed,
      :igSetNextWindowContentSize,
      :igSetNextWindowFocus,
      :igSetNextWindowPos,
      :igSetNextWindowScroll,
      :igSetNextWindowSize,
      :igSetNextWindowSizeConstraints,
      :igSetScrollFromPosX_Float,
      :igSetScrollFromPosX_WindowPtr,
      :igSetScrollFromPosY_Float,
      :igSetScrollFromPosY_WindowPtr,
      :igSetScrollHereX,
      :igSetScrollHereY,
      :igSetScrollX_Float,
      :igSetScrollX_WindowPtr,
      :igSetScrollY_Float,
      :igSetScrollY_WindowPtr,
      :igSetStateStorage,
      :igSetTabItemClosed,
      :igSetTooltip,
      :igSetWindowClipRectBeforeSetChannel,
      :igSetWindowCollapsed_Bool,
      :igSetWindowCollapsed_Str,
      :igSetWindowCollapsed_WindowPtr,
      :igSetWindowFocus_Nil,
      :igSetWindowFocus_Str,
      :igSetWindowFontScale,
      :igSetWindowHitTestHole,
      :igSetWindowPos_Vec2,
      :igSetWindowPos_Str,
      :igSetWindowPos_WindowPtr,
      :igSetWindowSize_Vec2,
      :igSetWindowSize_Str,
      :igSetWindowSize_WindowPtr,
      :igSetWindowViewport,
      :igShadeVertsLinearColorGradientKeepAlpha,
      :igShadeVertsLinearUV,
      :igShowAboutWindow,
      :igShowDebugLogWindow,
      :igShowDemoWindow,
      :igShowFontAtlas,
      :igShowFontSelector,
      :igShowMetricsWindow,
      :igShowStackToolWindow,
      :igShowStyleEditor,
      :igShowStyleSelector,
      :igShowUserGuide,
      :igShrinkWidths,
      :igShutdown,
      :igSliderAngle,
      :igSliderBehavior,
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
      :igSplitterBehavior,
      :igStartMouseMovingWindow,
      :igStyleColorsClassic,
      :igStyleColorsDark,
      :igStyleColorsLight,
      :igTabBarCloseTab,
      :igTabBarFindTabByID,
      :igTabBarProcessReorder,
      :igTabBarQueueReorder,
      :igTabBarQueueReorderFromMousePos,
      :igTabBarRemoveTab,
      :igTabItemBackground,
      :igTabItemButton,
      :igTabItemCalcSize,
      :igTabItemEx,
      :igTabItemLabelAndCloseButton,
      :igTableBeginApplyRequests,
      :igTableBeginCell,
      :igTableBeginInitMemory,
      :igTableBeginRow,
      :igTableDrawBorders,
      :igTableDrawContextMenu,
      :igTableEndCell,
      :igTableEndRow,
      :igTableFindByID,
      :igTableFixColumnSortDirection,
      :igTableGcCompactSettings,
      :igTableGcCompactTransientBuffers_TablePtr,
      :igTableGcCompactTransientBuffers_TableTempDataPtr,
      :igTableGetBoundSettings,
      :igTableGetCellBgRect,
      :igTableGetColumnCount,
      :igTableGetColumnFlags,
      :igTableGetColumnIndex,
      :igTableGetColumnName_Int,
      :igTableGetColumnName_TablePtr,
      :igTableGetColumnNextSortDirection,
      :igTableGetColumnResizeID,
      :igTableGetColumnWidthAuto,
      :igTableGetHeaderRowHeight,
      :igTableGetHoveredColumn,
      :igTableGetInstanceData,
      :igTableGetMaxColumnWidth,
      :igTableGetRowIndex,
      :igTableGetSortSpecs,
      :igTableHeader,
      :igTableHeadersRow,
      :igTableLoadSettings,
      :igTableMergeDrawChannels,
      :igTableNextColumn,
      :igTableNextRow,
      :igTableOpenContextMenu,
      :igTablePopBackgroundChannel,
      :igTablePushBackgroundChannel,
      :igTableRemove,
      :igTableResetSettings,
      :igTableSaveSettings,
      :igTableSetBgColor,
      :igTableSetColumnEnabled,
      :igTableSetColumnIndex,
      :igTableSetColumnSortDirection,
      :igTableSetColumnWidth,
      :igTableSetColumnWidthAutoAll,
      :igTableSetColumnWidthAutoSingle,
      :igTableSettingsAddSettingsHandler,
      :igTableSettingsCreate,
      :igTableSettingsFindByID,
      :igTableSetupColumn,
      :igTableSetupDrawChannels,
      :igTableSetupScrollFreeze,
      :igTableSortSpecsBuild,
      :igTableSortSpecsSanitize,
      :igTableUpdateBorders,
      :igTableUpdateColumnsWeightFromWidth,
      :igTableUpdateLayout,
      :igTempInputIsActive,
      :igTempInputScalar,
      :igTempInputText,
      :igText,
      :igTextColored,
      :igTextDisabled,
      :igTextEx,
      :igTextUnformatted,
      :igTextWrapped,
      :igTreeNode_Str,
      :igTreeNode_StrStr,
      :igTreeNode_Ptr,
      :igTreeNodeBehavior,
      :igTreeNodeBehaviorIsOpen,
      :igTreeNodeEx_Str,
      :igTreeNodeEx_StrStr,
      :igTreeNodeEx_Ptr,
      :igTreePop,
      :igTreePush_Str,
      :igTreePush_Ptr,
      :igTreePushOverrideID,
      :igUnindent,
      :igUpdateHoveredWindowAndCaptureFlags,
      :igUpdateInputEvents,
      :igUpdateMouseMovingWindowEndFrame,
      :igUpdateMouseMovingWindowNewFrame,
      :igUpdateWindowParentAndRootLinks,
      :igVSliderFloat,
      :igVSliderInt,
      :igVSliderScalar,
      :igValue_Bool,
      :igValue_Int,
      :igValue_Uint,
      :igValue_Float,
      :igWindowRectAbsToRel,
      :igWindowRectRelToAbs,
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
      :ImDrawList__TryMergeDrawCmds => [:pointer],
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
      :ImGuiIO_AddFocusEvent => [:pointer, :bool],
      :ImGuiIO_AddInputCharacter => [:pointer, :uint],
      :ImGuiIO_AddInputCharacterUTF16 => [:pointer, :ushort],
      :ImGuiIO_AddInputCharactersUTF8 => [:pointer, :pointer],
      :ImGuiIO_AddKeyAnalogEvent => [:pointer, :int, :bool, :float],
      :ImGuiIO_AddKeyEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddMouseButtonEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddMousePosEvent => [:pointer, :float, :float],
      :ImGuiIO_AddMouseWheelEvent => [:pointer, :float, :float],
      :ImGuiIO_ClearInputCharacters => [:pointer],
      :ImGuiIO_ClearInputKeys => [:pointer],
      :ImGuiIO_ImGuiIO => [],
      :ImGuiIO_SetAppAcceptingEvents => [:pointer, :bool],
      :ImGuiIO_SetKeyEventNativeData => [:pointer, :int, :int, :int, :int],
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
      :igActivateItem => [:uint],
      :igAddContextHook => [:pointer, :pointer],
      :igAddSettingsHandler => [:pointer],
      :igAlignTextToFramePadding => [],
      :igArrowButton => [:pointer, :int],
      :igArrowButtonEx => [:pointer, :int, ImVec2.by_value, :int],
      :igBegin => [:pointer, :pointer, :int],
      :igBeginChild_Str => [:pointer, ImVec2.by_value, :bool, :int],
      :igBeginChild_ID => [:uint, ImVec2.by_value, :bool, :int],
      :igBeginChildEx => [:pointer, :uint, ImVec2.by_value, :bool, :int],
      :igBeginChildFrame => [:uint, ImVec2.by_value, :int],
      :igBeginColumns => [:pointer, :int, :int],
      :igBeginCombo => [:pointer, :pointer, :int],
      :igBeginComboPopup => [:uint, ImRect.by_value, :int],
      :igBeginComboPreview => [],
      :igBeginDisabled => [:bool],
      :igBeginDragDropSource => [:int],
      :igBeginDragDropTarget => [],
      :igBeginDragDropTargetCustom => [ImRect.by_value, :uint],
      :igBeginGroup => [],
      :igBeginListBox => [:pointer, ImVec2.by_value],
      :igBeginMainMenuBar => [],
      :igBeginMenu => [:pointer, :bool],
      :igBeginMenuBar => [],
      :igBeginMenuEx => [:pointer, :pointer, :bool],
      :igBeginPopup => [:pointer, :int],
      :igBeginPopupContextItem => [:pointer, :int],
      :igBeginPopupContextVoid => [:pointer, :int],
      :igBeginPopupContextWindow => [:pointer, :int],
      :igBeginPopupEx => [:uint, :int],
      :igBeginPopupModal => [:pointer, :pointer, :int],
      :igBeginTabBar => [:pointer, :int],
      :igBeginTabBarEx => [:pointer, ImRect.by_value, :int],
      :igBeginTabItem => [:pointer, :pointer, :int],
      :igBeginTable => [:pointer, :int, :int, ImVec2.by_value, :float],
      :igBeginTableEx => [:pointer, :uint, :int, :int, ImVec2.by_value, :float],
      :igBeginTooltip => [],
      :igBeginTooltipEx => [:int, :int],
      :igBeginViewportSideBar => [:pointer, :pointer, :int, :float, :int],
      :igBringWindowToDisplayBack => [:pointer],
      :igBringWindowToDisplayBehind => [:pointer, :pointer],
      :igBringWindowToDisplayFront => [:pointer],
      :igBringWindowToFocusFront => [:pointer],
      :igBullet => [],
      :igBulletText => [:pointer, :varargs],
      :igButton => [:pointer, ImVec2.by_value],
      :igButtonBehavior => [ImRect.by_value, :uint, :pointer, :pointer, :int],
      :igButtonEx => [:pointer, ImVec2.by_value, :int],
      :igCalcItemSize => [:pointer, ImVec2.by_value, :float, :float],
      :igCalcItemWidth => [],
      :igCalcTextSize => [:pointer, :pointer, :pointer, :bool, :float],
      :igCalcTypematicRepeatAmount => [:float, :float, :float, :float],
      :igCalcWindowNextAutoFitSize => [:pointer, :pointer],
      :igCalcWrapWidthForPos => [ImVec2.by_value, :float],
      :igCallContextHooks => [:pointer, :int],
      :igCheckbox => [:pointer, :pointer],
      :igCheckboxFlags_IntPtr => [:pointer, :pointer, :int],
      :igCheckboxFlags_UintPtr => [:pointer, :pointer, :uint],
      :igCheckboxFlags_S64Ptr => [:pointer, :pointer, :int64],
      :igCheckboxFlags_U64Ptr => [:pointer, :pointer, :uint64],
      :igClearActiveID => [],
      :igClearDragDrop => [],
      :igClearIniSettings => [],
      :igCloseButton => [:uint, ImVec2.by_value],
      :igCloseCurrentPopup => [],
      :igClosePopupToLevel => [:int, :bool],
      :igClosePopupsExceptModals => [],
      :igClosePopupsOverWindow => [:pointer, :bool],
      :igCollapseButton => [:uint, ImVec2.by_value],
      :igCollapsingHeader_TreeNodeFlags => [:pointer, :int],
      :igCollapsingHeader_BoolPtr => [:pointer, :pointer, :int],
      :igColorButton => [:pointer, ImVec4.by_value, :int, ImVec2.by_value],
      :igColorConvertFloat4ToU32 => [ImVec4.by_value],
      :igColorConvertHSVtoRGB => [:float, :float, :float, :pointer, :pointer, :pointer],
      :igColorConvertRGBtoHSV => [:float, :float, :float, :pointer, :pointer, :pointer],
      :igColorConvertU32ToFloat4 => [:pointer, :uint],
      :igColorEdit3 => [:pointer, :pointer, :int],
      :igColorEdit4 => [:pointer, :pointer, :int],
      :igColorEditOptionsPopup => [:pointer, :int],
      :igColorPicker3 => [:pointer, :pointer, :int],
      :igColorPicker4 => [:pointer, :pointer, :int, :pointer],
      :igColorPickerOptionsPopup => [:pointer, :int],
      :igColorTooltip => [:pointer, :pointer, :int],
      :igColumns => [:int, :pointer, :bool],
      :igCombo_Str_arr => [:pointer, :pointer, :pointer, :int, :int],
      :igCombo_Str => [:pointer, :pointer, :pointer, :int],
      :igCombo_FnBoolPtr => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :igCreateContext => [:pointer],
      :igCreateNewWindowSettings => [:pointer],
      :igDataTypeApplyFromText => [:pointer, :int, :pointer, :pointer],
      :igDataTypeApplyOp => [:int, :int, :pointer, :pointer, :pointer],
      :igDataTypeClamp => [:int, :pointer, :pointer, :pointer],
      :igDataTypeCompare => [:int, :pointer, :pointer],
      :igDataTypeFormatString => [:pointer, :int, :int, :pointer, :pointer],
      :igDataTypeGetInfo => [:int],
      :igDebugCheckVersionAndDataLayout => [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t],
      :igDebugDrawItemRect => [:uint],
      :igDebugHookIdInfo => [:uint, :int, :pointer, :pointer],
      :igDebugLog => [:pointer, :varargs],
      :igDebugNodeColumns => [:pointer],
      :igDebugNodeDrawCmdShowMeshAndBoundingBox => [:pointer, :pointer, :pointer, :bool, :bool],
      :igDebugNodeDrawList => [:pointer, :pointer, :pointer],
      :igDebugNodeFont => [:pointer],
      :igDebugNodeFontGlyph => [:pointer, :pointer],
      :igDebugNodeInputTextState => [:pointer],
      :igDebugNodeStorage => [:pointer, :pointer],
      :igDebugNodeTabBar => [:pointer, :pointer],
      :igDebugNodeTable => [:pointer],
      :igDebugNodeTableSettings => [:pointer],
      :igDebugNodeViewport => [:pointer],
      :igDebugNodeWindow => [:pointer, :pointer],
      :igDebugNodeWindowSettings => [:pointer],
      :igDebugNodeWindowsList => [:pointer, :pointer],
      :igDebugNodeWindowsListByBeginStackParent => [:pointer, :int, :pointer],
      :igDebugRenderViewportThumbnail => [:pointer, :pointer, ImRect.by_value],
      :igDebugStartItemPicker => [],
      :igDebugTextEncoding => [:pointer],
      :igDestroyContext => [:pointer],
      :igDragBehavior => [:uint, :int, :pointer, :float, :pointer, :pointer, :pointer, :int],
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
      :igEndColumns => [],
      :igEndCombo => [],
      :igEndComboPreview => [],
      :igEndDisabled => [],
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
      :igErrorCheckEndFrameRecover => [:ImGuiErrorLogCallback, :pointer],
      :igErrorCheckEndWindowRecover => [:ImGuiErrorLogCallback, :pointer],
      :igFindBestWindowPosForPopup => [:pointer, :pointer],
      :igFindBestWindowPosForPopupEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :pointer, ImRect.by_value, ImRect.by_value, :int],
      :igFindBottomMostVisibleWindowWithinBeginStack => [:pointer],
      :igFindOrCreateColumns => [:pointer, :uint],
      :igFindOrCreateWindowSettings => [:pointer],
      :igFindRenderedTextEnd => [:pointer, :pointer],
      :igFindSettingsHandler => [:pointer],
      :igFindWindowByID => [:uint],
      :igFindWindowByName => [:pointer],
      :igFindWindowDisplayIndex => [:pointer],
      :igFindWindowSettings => [:uint],
      :igFocusTopMostWindowUnderOne => [:pointer, :pointer],
      :igFocusWindow => [:pointer],
      :igGcAwakeTransientWindowBuffers => [:pointer],
      :igGcCompactTransientMiscBuffers => [],
      :igGcCompactTransientWindowBuffers => [:pointer],
      :igGetActiveID => [],
      :igGetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :igGetBackgroundDrawList_Nil => [],
      :igGetBackgroundDrawList_ViewportPtr => [:pointer],
      :igGetClipboardText => [],
      :igGetColorU32_Col => [:int, :float],
      :igGetColorU32_Vec4 => [ImVec4.by_value],
      :igGetColorU32_U32 => [:uint],
      :igGetColumnIndex => [],
      :igGetColumnNormFromOffset => [:pointer, :float],
      :igGetColumnOffset => [:int],
      :igGetColumnOffsetFromNorm => [:pointer, :float],
      :igGetColumnWidth => [:int],
      :igGetColumnsCount => [],
      :igGetColumnsID => [:pointer, :int],
      :igGetContentRegionAvail => [:pointer],
      :igGetContentRegionMax => [:pointer],
      :igGetContentRegionMaxAbs => [:pointer],
      :igGetCurrentContext => [],
      :igGetCurrentTable => [],
      :igGetCurrentWindow => [],
      :igGetCurrentWindowRead => [],
      :igGetCursorPos => [:pointer],
      :igGetCursorPosX => [],
      :igGetCursorPosY => [],
      :igGetCursorScreenPos => [:pointer],
      :igGetCursorStartPos => [:pointer],
      :igGetDefaultFont => [],
      :igGetDragDropPayload => [],
      :igGetDrawData => [],
      :igGetDrawListSharedData => [],
      :igGetFocusID => [],
      :igGetFocusScope => [],
      :igGetFocusedFocusScope => [],
      :igGetFont => [],
      :igGetFontSize => [],
      :igGetFontTexUvWhitePixel => [:pointer],
      :igGetForegroundDrawList_Nil => [],
      :igGetForegroundDrawList_WindowPtr => [:pointer],
      :igGetForegroundDrawList_ViewportPtr => [:pointer],
      :igGetFrameCount => [],
      :igGetFrameHeight => [],
      :igGetFrameHeightWithSpacing => [],
      :igGetHoveredID => [],
      :igGetID_Str => [:pointer],
      :igGetID_StrStr => [:pointer, :pointer],
      :igGetID_Ptr => [:pointer],
      :igGetIDWithSeed => [:pointer, :pointer, :uint],
      :igGetIO => [],
      :igGetInputTextState => [:uint],
      :igGetItemFlags => [],
      :igGetItemID => [],
      :igGetItemRectMax => [:pointer],
      :igGetItemRectMin => [:pointer],
      :igGetItemRectSize => [:pointer],
      :igGetItemStatusFlags => [],
      :igGetKeyData => [:int],
      :igGetKeyIndex => [:int],
      :igGetKeyName => [:int],
      :igGetKeyPressedAmount => [:int, :float, :float],
      :igGetMainViewport => [],
      :igGetMergedModFlags => [],
      :igGetMouseClickedCount => [:int],
      :igGetMouseCursor => [],
      :igGetMouseDragDelta => [:pointer, :int, :float],
      :igGetMousePos => [:pointer],
      :igGetMousePosOnOpeningCurrentPopup => [:pointer],
      :igGetNavInputAmount => [:int, :int],
      :igGetNavInputAmount2d => [:pointer, :int, :int, :float, :float],
      :igGetNavInputName => [:int],
      :igGetPopupAllowedExtentRect => [:pointer, :pointer],
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
      :igGetTopMostAndVisiblePopupModal => [],
      :igGetTopMostPopupModal => [],
      :igGetTreeNodeToLabelSpacing => [],
      :igGetVersion => [],
      :igGetWindowContentRegionMax => [:pointer],
      :igGetWindowContentRegionMin => [:pointer],
      :igGetWindowDrawList => [],
      :igGetWindowHeight => [],
      :igGetWindowPos => [:pointer],
      :igGetWindowResizeBorderID => [:pointer, :int],
      :igGetWindowResizeCornerID => [:pointer, :int],
      :igGetWindowScrollbarID => [:pointer, :int],
      :igGetWindowScrollbarRect => [:pointer, :pointer, :int],
      :igGetWindowSize => [:pointer],
      :igGetWindowWidth => [],
      :igImAbs_Int => [:int],
      :igImAbs_Float => [:float],
      :igImAbs_double => [:double],
      :igImAlphaBlendColors => [:uint, :uint],
      :igImBezierCubicCalc => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float],
      :igImBezierCubicClosestPoint => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int],
      :igImBezierCubicClosestPointCasteljau => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float],
      :igImBezierQuadraticCalc => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float],
      :igImBitArrayClearBit => [:pointer, :int],
      :igImBitArraySetBit => [:pointer, :int],
      :igImBitArraySetBitRange => [:pointer, :int, :int],
      :igImBitArrayTestBit => [:pointer, :int],
      :igImCharIsBlankA => [:char],
      :igImCharIsBlankW => [:uint],
      :igImClamp => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImDot => [ImVec2.by_value, ImVec2.by_value],
      :igImFileClose => [:pointer],
      :igImFileGetSize => [:pointer],
      :igImFileLoadToMemory => [:pointer, :pointer, :pointer, :int],
      :igImFileOpen => [:pointer, :pointer],
      :igImFileRead => [:pointer, :uint64, :uint64, :pointer],
      :igImFileWrite => [:pointer, :uint64, :uint64, :pointer],
      :igImFloor_Float => [:float],
      :igImFloor_Vec2 => [:pointer, ImVec2.by_value],
      :igImFloorSigned_Float => [:float],
      :igImFloorSigned_Vec2 => [:pointer, ImVec2.by_value],
      :igImFontAtlasBuildFinish => [:pointer],
      :igImFontAtlasBuildInit => [:pointer],
      :igImFontAtlasBuildMultiplyCalcLookupTable => [:pointer, :float],
      :igImFontAtlasBuildMultiplyRectAlpha8 => [:pointer, :pointer, :int, :int, :int, :int, :int],
      :igImFontAtlasBuildPackCustomRects => [:pointer, :pointer],
      :igImFontAtlasBuildRender32bppRectFromString => [:pointer, :int, :int, :int, :int, :pointer, :char, :uint],
      :igImFontAtlasBuildRender8bppRectFromString => [:pointer, :int, :int, :int, :int, :pointer, :char, :uchar],
      :igImFontAtlasBuildSetupFont => [:pointer, :pointer, :pointer, :float, :float],
      :igImFontAtlasGetBuilderForStbTruetype => [],
      :igImFormatString => [:pointer, :size_t, :pointer, :varargs],
      :igImFormatStringToTempBuffer => [:pointer, :pointer, :pointer, :varargs],
      :igImGetDirQuadrantFromDelta => [:float, :float],
      :igImHashData => [:pointer, :size_t, :uint],
      :igImHashStr => [:pointer, :size_t, :uint],
      :igImInvLength => [ImVec2.by_value, :float],
      :igImIsFloatAboveGuaranteedIntegerPrecision => [:float],
      :igImIsPowerOfTwo_Int => [:int],
      :igImIsPowerOfTwo_U64 => [:uint64],
      :igImLengthSqr_Vec2 => [ImVec2.by_value],
      :igImLengthSqr_Vec4 => [ImVec4.by_value],
      :igImLerp_Vec2Float => [:pointer, ImVec2.by_value, ImVec2.by_value, :float],
      :igImLerp_Vec2Vec2 => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImLerp_Vec4 => [:pointer, ImVec4.by_value, ImVec4.by_value, :float],
      :igImLineClosestPoint => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImLinearSweep => [:float, :float, :float],
      :igImLog_Float => [:float],
      :igImLog_double => [:double],
      :igImMax => [:pointer, ImVec2.by_value, ImVec2.by_value],
      :igImMin => [:pointer, ImVec2.by_value, ImVec2.by_value],
      :igImModPositive => [:int, :int],
      :igImMul => [:pointer, ImVec2.by_value, ImVec2.by_value],
      :igImParseFormatFindEnd => [:pointer],
      :igImParseFormatFindStart => [:pointer],
      :igImParseFormatPrecision => [:pointer, :int],
      :igImParseFormatSanitizeForPrinting => [:pointer, :pointer, :size_t],
      :igImParseFormatSanitizeForScanning => [:pointer, :pointer, :size_t],
      :igImParseFormatTrimDecorations => [:pointer, :pointer, :size_t],
      :igImPow_Float => [:float, :float],
      :igImPow_double => [:double, :double],
      :igImQsort => [:pointer, :size_t, :size_t, :pointer],
      :igImRotate => [:pointer, ImVec2.by_value, :float, :float],
      :igImRsqrt_Float => [:float],
      :igImRsqrt_double => [:double],
      :igImSaturate => [:float],
      :igImSign_Float => [:float],
      :igImSign_double => [:double],
      :igImStrSkipBlank => [:pointer],
      :igImStrTrimBlanks => [:pointer],
      :igImStrbolW => [:pointer, :pointer],
      :igImStrchrRange => [:pointer, :pointer, :char],
      :igImStrdup => [:pointer],
      :igImStrdupcpy => [:pointer, :pointer, :pointer],
      :igImStreolRange => [:pointer, :pointer],
      :igImStricmp => [:pointer, :pointer],
      :igImStristr => [:pointer, :pointer, :pointer, :pointer],
      :igImStrlenW => [:pointer],
      :igImStrncpy => [:pointer, :pointer, :size_t],
      :igImStrnicmp => [:pointer, :pointer, :size_t],
      :igImTextCharFromUtf8 => [:pointer, :pointer, :pointer],
      :igImTextCharToUtf8 => [:pointer, :uint],
      :igImTextCountCharsFromUtf8 => [:pointer, :pointer],
      :igImTextCountUtf8BytesFromChar => [:pointer, :pointer],
      :igImTextCountUtf8BytesFromStr => [:pointer, :pointer],
      :igImTextStrFromUtf8 => [:pointer, :int, :pointer, :pointer, :pointer],
      :igImTextStrToUtf8 => [:pointer, :int, :pointer, :pointer],
      :igImTriangleArea => [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImTriangleBarycentricCoords => [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer],
      :igImTriangleClosestPoint => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImTriangleContainsPoint => [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :igImUpperPowerOfTwo => [:int],
      :igImage => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :igImageButton => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int, ImVec4.by_value, ImVec4.by_value],
      :igImageButtonEx => [:uint, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :igIndent => [:float],
      :igInitialize => [],
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
      :igInputTextEx => [:pointer, :pointer, :pointer, :int, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer],
      :igInputTextMultiline => [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer],
      :igInputTextWithHint => [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :igInvisibleButton => [:pointer, ImVec2.by_value, :int],
      :igIsActiveIdUsingKey => [:int],
      :igIsActiveIdUsingNavDir => [:int],
      :igIsActiveIdUsingNavInput => [:int],
      :igIsAnyItemActive => [],
      :igIsAnyItemFocused => [],
      :igIsAnyItemHovered => [],
      :igIsAnyMouseDown => [],
      :igIsClippedEx => [ImRect.by_value, :uint],
      :igIsDragDropActive => [],
      :igIsDragDropPayloadBeingAccepted => [],
      :igIsGamepadKey => [:int],
      :igIsItemActivated => [],
      :igIsItemActive => [],
      :igIsItemClicked => [:int],
      :igIsItemDeactivated => [],
      :igIsItemDeactivatedAfterEdit => [],
      :igIsItemEdited => [],
      :igIsItemFocused => [],
      :igIsItemHovered => [:int],
      :igIsItemToggledOpen => [],
      :igIsItemToggledSelection => [],
      :igIsItemVisible => [],
      :igIsKeyDown => [:int],
      :igIsKeyPressed => [:int, :bool],
      :igIsKeyPressedMap => [:int, :bool],
      :igIsKeyReleased => [:int],
      :igIsLegacyKey => [:int],
      :igIsMouseClicked => [:int, :bool],
      :igIsMouseDoubleClicked => [:int],
      :igIsMouseDown => [:int],
      :igIsMouseDragPastThreshold => [:int, :float],
      :igIsMouseDragging => [:int, :float],
      :igIsMouseHoveringRect => [ImVec2.by_value, ImVec2.by_value, :bool],
      :igIsMousePosValid => [:pointer],
      :igIsMouseReleased => [:int],
      :igIsNamedKey => [:int],
      :igIsNavInputDown => [:int],
      :igIsNavInputTest => [:int, :int],
      :igIsPopupOpen_Str => [:pointer, :int],
      :igIsPopupOpen_ID => [:uint, :int],
      :igIsRectVisible_Nil => [ImVec2.by_value],
      :igIsRectVisible_Vec2 => [ImVec2.by_value, ImVec2.by_value],
      :igIsWindowAbove => [:pointer, :pointer],
      :igIsWindowAppearing => [],
      :igIsWindowChildOf => [:pointer, :pointer, :bool],
      :igIsWindowCollapsed => [],
      :igIsWindowFocused => [:int],
      :igIsWindowHovered => [:int],
      :igIsWindowNavFocusable => [:pointer],
      :igIsWindowWithinBeginStackOf => [:pointer, :pointer],
      :igItemAdd => [ImRect.by_value, :uint, :pointer, :int],
      :igItemHoverable => [ImRect.by_value, :uint],
      :igItemSize_Vec2 => [ImVec2.by_value, :float],
      :igItemSize_Rect => [ImRect.by_value, :float],
      :igKeepAliveID => [:uint],
      :igLabelText => [:pointer, :pointer, :varargs],
      :igListBox_Str_arr => [:pointer, :pointer, :pointer, :int, :int],
      :igListBox_FnBoolPtr => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :igLoadIniSettingsFromDisk => [:pointer],
      :igLoadIniSettingsFromMemory => [:pointer, :size_t],
      :igLogBegin => [:int, :int],
      :igLogButtons => [],
      :igLogFinish => [],
      :igLogRenderedText => [:pointer, :pointer, :pointer],
      :igLogSetNextTextDecoration => [:pointer, :pointer],
      :igLogText => [:pointer, :varargs],
      :igLogToBuffer => [:int],
      :igLogToClipboard => [:int],
      :igLogToFile => [:int, :pointer],
      :igLogToTTY => [:int],
      :igMarkIniSettingsDirty_Nil => [],
      :igMarkIniSettingsDirty_WindowPtr => [:pointer],
      :igMarkItemEdited => [:uint],
      :igMemAlloc => [:size_t],
      :igMemFree => [:pointer],
      :igMenuItem_Bool => [:pointer, :pointer, :bool, :bool],
      :igMenuItem_BoolPtr => [:pointer, :pointer, :pointer, :bool],
      :igMenuItemEx => [:pointer, :pointer, :pointer, :bool, :bool],
      :igNavInitRequestApplyResult => [],
      :igNavInitWindow => [:pointer, :bool],
      :igNavMoveRequestApplyResult => [],
      :igNavMoveRequestButNoResultYet => [],
      :igNavMoveRequestCancel => [],
      :igNavMoveRequestForward => [:int, :int, :int, :int],
      :igNavMoveRequestResolveWithLastItem => [:pointer],
      :igNavMoveRequestSubmit => [:int, :int, :int, :int],
      :igNavMoveRequestTryWrapping => [:pointer, :int],
      :igNewFrame => [],
      :igNewLine => [],
      :igNextColumn => [],
      :igOpenPopup_Str => [:pointer, :int],
      :igOpenPopup_ID => [:uint, :int],
      :igOpenPopupEx => [:uint, :int],
      :igOpenPopupOnItemClick => [:pointer, :int],
      :igPlotEx => [:int, :pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :igPlotHistogram_FloatPtr => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :igPlotHistogram_FnFloatPtr => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :igPlotLines_FloatPtr => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :igPlotLines_FnFloatPtr => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :igPopAllowKeyboardFocus => [],
      :igPopButtonRepeat => [],
      :igPopClipRect => [],
      :igPopColumnsBackground => [],
      :igPopFocusScope => [],
      :igPopFont => [],
      :igPopID => [],
      :igPopItemFlag => [],
      :igPopItemWidth => [],
      :igPopStyleColor => [:int],
      :igPopStyleVar => [:int],
      :igPopTextWrapPos => [],
      :igProgressBar => [:float, ImVec2.by_value, :pointer],
      :igPushAllowKeyboardFocus => [:bool],
      :igPushButtonRepeat => [:bool],
      :igPushClipRect => [ImVec2.by_value, ImVec2.by_value, :bool],
      :igPushColumnClipRect => [:int],
      :igPushColumnsBackground => [],
      :igPushFocusScope => [:uint],
      :igPushFont => [:pointer],
      :igPushID_Str => [:pointer],
      :igPushID_StrStr => [:pointer, :pointer],
      :igPushID_Ptr => [:pointer],
      :igPushID_Int => [:int],
      :igPushItemFlag => [:int, :bool],
      :igPushItemWidth => [:float],
      :igPushMultiItemsWidths => [:int, :float],
      :igPushOverrideID => [:uint],
      :igPushStyleColor_U32 => [:int, :uint],
      :igPushStyleColor_Vec4 => [:int, ImVec4.by_value],
      :igPushStyleVar_Float => [:int, :float],
      :igPushStyleVar_Vec2 => [:int, ImVec2.by_value],
      :igPushTextWrapPos => [:float],
      :igRadioButton_Bool => [:pointer, :bool],
      :igRadioButton_IntPtr => [:pointer, :pointer, :int],
      :igRemoveContextHook => [:pointer, :uint],
      :igRemoveSettingsHandler => [:pointer],
      :igRender => [],
      :igRenderArrow => [:pointer, ImVec2.by_value, :uint, :int, :float],
      :igRenderArrowPointingAt => [:pointer, ImVec2.by_value, ImVec2.by_value, :int, :uint],
      :igRenderBullet => [:pointer, ImVec2.by_value, :uint],
      :igRenderCheckMark => [:pointer, ImVec2.by_value, :uint, :float],
      :igRenderColorRectWithAlphaCheckerboard => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, ImVec2.by_value, :float, :int],
      :igRenderFrame => [ImVec2.by_value, ImVec2.by_value, :uint, :bool, :float],
      :igRenderFrameBorder => [ImVec2.by_value, ImVec2.by_value, :float],
      :igRenderMouseCursor => [ImVec2.by_value, :float, :int, :uint, :uint, :uint],
      :igRenderNavHighlight => [ImRect.by_value, :uint, :int],
      :igRenderRectFilledRangeH => [:pointer, ImRect.by_value, :uint, :float, :float, :float],
      :igRenderRectFilledWithHole => [:pointer, ImRect.by_value, ImRect.by_value, :uint, :float],
      :igRenderText => [ImVec2.by_value, :pointer, :pointer, :bool],
      :igRenderTextClipped => [ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer, ImVec2.by_value, :pointer],
      :igRenderTextClippedEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer, ImVec2.by_value, :pointer],
      :igRenderTextEllipsis => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :pointer, :pointer, :pointer],
      :igRenderTextWrapped => [ImVec2.by_value, :pointer, :pointer, :float],
      :igResetMouseDragDelta => [:int],
      :igSameLine => [:float, :float],
      :igSaveIniSettingsToDisk => [:pointer],
      :igSaveIniSettingsToMemory => [:pointer],
      :igScrollToBringRectIntoView => [:pointer, ImRect.by_value],
      :igScrollToItem => [:int],
      :igScrollToRect => [:pointer, ImRect.by_value, :int],
      :igScrollToRectEx => [:pointer, :pointer, ImRect.by_value, :int],
      :igScrollbar => [:int],
      :igScrollbarEx => [ImRect.by_value, :uint, :int, :pointer, :int64, :int64, :int],
      :igSelectable_Bool => [:pointer, :bool, :int, ImVec2.by_value],
      :igSelectable_BoolPtr => [:pointer, :pointer, :int, ImVec2.by_value],
      :igSeparator => [],
      :igSeparatorEx => [:int],
      :igSetActiveID => [:uint, :pointer],
      :igSetActiveIdUsingKey => [:int],
      :igSetActiveIdUsingNavAndKeys => [],
      :igSetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :igSetClipboardText => [:pointer],
      :igSetColorEditOptions => [:int],
      :igSetColumnOffset => [:int, :float],
      :igSetColumnWidth => [:int, :float],
      :igSetCurrentContext => [:pointer],
      :igSetCurrentFont => [:pointer],
      :igSetCursorPos => [ImVec2.by_value],
      :igSetCursorPosX => [:float],
      :igSetCursorPosY => [:float],
      :igSetCursorScreenPos => [ImVec2.by_value],
      :igSetDragDropPayload => [:pointer, :pointer, :size_t, :int],
      :igSetFocusID => [:uint, :pointer],
      :igSetHoveredID => [:uint],
      :igSetItemAllowOverlap => [],
      :igSetItemDefaultFocus => [],
      :igSetItemUsingMouseWheel => [],
      :igSetKeyboardFocusHere => [:int],
      :igSetLastItemData => [:uint, :int, :int, ImRect.by_value],
      :igSetMouseCursor => [:int],
      :igSetNavID => [:uint, :int, :uint, ImRect.by_value],
      :igSetNavWindow => [:pointer],
      :igSetNextFrameWantCaptureKeyboard => [:bool],
      :igSetNextFrameWantCaptureMouse => [:bool],
      :igSetNextItemOpen => [:bool, :int],
      :igSetNextItemWidth => [:float],
      :igSetNextWindowBgAlpha => [:float],
      :igSetNextWindowCollapsed => [:bool, :int],
      :igSetNextWindowContentSize => [ImVec2.by_value],
      :igSetNextWindowFocus => [],
      :igSetNextWindowPos => [ImVec2.by_value, :int, ImVec2.by_value],
      :igSetNextWindowScroll => [ImVec2.by_value],
      :igSetNextWindowSize => [ImVec2.by_value, :int],
      :igSetNextWindowSizeConstraints => [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer],
      :igSetScrollFromPosX_Float => [:float, :float],
      :igSetScrollFromPosX_WindowPtr => [:pointer, :float, :float],
      :igSetScrollFromPosY_Float => [:float, :float],
      :igSetScrollFromPosY_WindowPtr => [:pointer, :float, :float],
      :igSetScrollHereX => [:float],
      :igSetScrollHereY => [:float],
      :igSetScrollX_Float => [:float],
      :igSetScrollX_WindowPtr => [:pointer, :float],
      :igSetScrollY_Float => [:float],
      :igSetScrollY_WindowPtr => [:pointer, :float],
      :igSetStateStorage => [:pointer],
      :igSetTabItemClosed => [:pointer],
      :igSetTooltip => [:pointer, :varargs],
      :igSetWindowClipRectBeforeSetChannel => [:pointer, ImRect.by_value],
      :igSetWindowCollapsed_Bool => [:bool, :int],
      :igSetWindowCollapsed_Str => [:pointer, :bool, :int],
      :igSetWindowCollapsed_WindowPtr => [:pointer, :bool, :int],
      :igSetWindowFocus_Nil => [],
      :igSetWindowFocus_Str => [:pointer],
      :igSetWindowFontScale => [:float],
      :igSetWindowHitTestHole => [:pointer, ImVec2.by_value, ImVec2.by_value],
      :igSetWindowPos_Vec2 => [ImVec2.by_value, :int],
      :igSetWindowPos_Str => [:pointer, ImVec2.by_value, :int],
      :igSetWindowPos_WindowPtr => [:pointer, ImVec2.by_value, :int],
      :igSetWindowSize_Vec2 => [ImVec2.by_value, :int],
      :igSetWindowSize_Str => [:pointer, ImVec2.by_value, :int],
      :igSetWindowSize_WindowPtr => [:pointer, ImVec2.by_value, :int],
      :igSetWindowViewport => [:pointer, :pointer],
      :igShadeVertsLinearColorGradientKeepAlpha => [:pointer, :int, :int, ImVec2.by_value, ImVec2.by_value, :uint, :uint],
      :igShadeVertsLinearUV => [:pointer, :int, :int, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :bool],
      :igShowAboutWindow => [:pointer],
      :igShowDebugLogWindow => [:pointer],
      :igShowDemoWindow => [:pointer],
      :igShowFontAtlas => [:pointer],
      :igShowFontSelector => [:pointer],
      :igShowMetricsWindow => [:pointer],
      :igShowStackToolWindow => [:pointer],
      :igShowStyleEditor => [:pointer],
      :igShowStyleSelector => [:pointer],
      :igShowUserGuide => [],
      :igShrinkWidths => [:pointer, :int, :float],
      :igShutdown => [],
      :igSliderAngle => [:pointer, :pointer, :float, :float, :pointer, :int],
      :igSliderBehavior => [ImRect.by_value, :uint, :int, :pointer, :pointer, :pointer, :pointer, :int, :pointer],
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
      :igSplitterBehavior => [ImRect.by_value, :uint, :int, :pointer, :pointer, :float, :float, :float, :float],
      :igStartMouseMovingWindow => [:pointer],
      :igStyleColorsClassic => [:pointer],
      :igStyleColorsDark => [:pointer],
      :igStyleColorsLight => [:pointer],
      :igTabBarCloseTab => [:pointer, :pointer],
      :igTabBarFindTabByID => [:pointer, :uint],
      :igTabBarProcessReorder => [:pointer],
      :igTabBarQueueReorder => [:pointer, :pointer, :int],
      :igTabBarQueueReorderFromMousePos => [:pointer, :pointer, ImVec2.by_value],
      :igTabBarRemoveTab => [:pointer, :uint],
      :igTabItemBackground => [:pointer, ImRect.by_value, :int, :uint],
      :igTabItemButton => [:pointer, :int],
      :igTabItemCalcSize => [:pointer, :pointer, :bool],
      :igTabItemEx => [:pointer, :pointer, :pointer, :int],
      :igTabItemLabelAndCloseButton => [:pointer, ImRect.by_value, :int, ImVec2.by_value, :pointer, :uint, :uint, :bool, :pointer, :pointer],
      :igTableBeginApplyRequests => [:pointer],
      :igTableBeginCell => [:pointer, :int],
      :igTableBeginInitMemory => [:pointer, :int],
      :igTableBeginRow => [:pointer],
      :igTableDrawBorders => [:pointer],
      :igTableDrawContextMenu => [:pointer],
      :igTableEndCell => [:pointer],
      :igTableEndRow => [:pointer],
      :igTableFindByID => [:uint],
      :igTableFixColumnSortDirection => [:pointer, :pointer],
      :igTableGcCompactSettings => [],
      :igTableGcCompactTransientBuffers_TablePtr => [:pointer],
      :igTableGcCompactTransientBuffers_TableTempDataPtr => [:pointer],
      :igTableGetBoundSettings => [:pointer],
      :igTableGetCellBgRect => [:pointer, :pointer, :int],
      :igTableGetColumnCount => [],
      :igTableGetColumnFlags => [:int],
      :igTableGetColumnIndex => [],
      :igTableGetColumnName_Int => [:int],
      :igTableGetColumnName_TablePtr => [:pointer, :int],
      :igTableGetColumnNextSortDirection => [:pointer],
      :igTableGetColumnResizeID => [:pointer, :int, :int],
      :igTableGetColumnWidthAuto => [:pointer, :pointer],
      :igTableGetHeaderRowHeight => [],
      :igTableGetHoveredColumn => [],
      :igTableGetInstanceData => [:pointer, :int],
      :igTableGetMaxColumnWidth => [:pointer, :int],
      :igTableGetRowIndex => [],
      :igTableGetSortSpecs => [],
      :igTableHeader => [:pointer],
      :igTableHeadersRow => [],
      :igTableLoadSettings => [:pointer],
      :igTableMergeDrawChannels => [:pointer],
      :igTableNextColumn => [],
      :igTableNextRow => [:int, :float],
      :igTableOpenContextMenu => [:int],
      :igTablePopBackgroundChannel => [],
      :igTablePushBackgroundChannel => [],
      :igTableRemove => [:pointer],
      :igTableResetSettings => [:pointer],
      :igTableSaveSettings => [:pointer],
      :igTableSetBgColor => [:int, :uint, :int],
      :igTableSetColumnEnabled => [:int, :bool],
      :igTableSetColumnIndex => [:int],
      :igTableSetColumnSortDirection => [:int, :int, :bool],
      :igTableSetColumnWidth => [:int, :float],
      :igTableSetColumnWidthAutoAll => [:pointer],
      :igTableSetColumnWidthAutoSingle => [:pointer, :int],
      :igTableSettingsAddSettingsHandler => [],
      :igTableSettingsCreate => [:uint, :int],
      :igTableSettingsFindByID => [:uint],
      :igTableSetupColumn => [:pointer, :int, :float, :uint],
      :igTableSetupDrawChannels => [:pointer],
      :igTableSetupScrollFreeze => [:int, :int],
      :igTableSortSpecsBuild => [:pointer],
      :igTableSortSpecsSanitize => [:pointer],
      :igTableUpdateBorders => [:pointer],
      :igTableUpdateColumnsWeightFromWidth => [:pointer],
      :igTableUpdateLayout => [:pointer],
      :igTempInputIsActive => [:uint],
      :igTempInputScalar => [ImRect.by_value, :uint, :pointer, :int, :pointer, :pointer, :pointer, :pointer],
      :igTempInputText => [ImRect.by_value, :uint, :pointer, :pointer, :int, :int],
      :igText => [:pointer, :varargs],
      :igTextColored => [ImVec4.by_value, :pointer, :varargs],
      :igTextDisabled => [:pointer, :varargs],
      :igTextEx => [:pointer, :pointer, :int],
      :igTextUnformatted => [:pointer, :pointer],
      :igTextWrapped => [:pointer, :varargs],
      :igTreeNode_Str => [:pointer],
      :igTreeNode_StrStr => [:pointer, :pointer, :varargs],
      :igTreeNode_Ptr => [:pointer, :pointer, :varargs],
      :igTreeNodeBehavior => [:uint, :int, :pointer, :pointer],
      :igTreeNodeBehaviorIsOpen => [:uint, :int],
      :igTreeNodeEx_Str => [:pointer, :int],
      :igTreeNodeEx_StrStr => [:pointer, :int, :pointer, :varargs],
      :igTreeNodeEx_Ptr => [:pointer, :int, :pointer, :varargs],
      :igTreePop => [],
      :igTreePush_Str => [:pointer],
      :igTreePush_Ptr => [:pointer],
      :igTreePushOverrideID => [:uint],
      :igUnindent => [:float],
      :igUpdateHoveredWindowAndCaptureFlags => [],
      :igUpdateInputEvents => [:bool],
      :igUpdateMouseMovingWindowEndFrame => [],
      :igUpdateMouseMovingWindowNewFrame => [],
      :igUpdateWindowParentAndRootLinks => [:pointer, :int, :pointer],
      :igVSliderFloat => [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int],
      :igVSliderInt => [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int],
      :igVSliderScalar => [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :igValue_Bool => [:pointer, :bool],
      :igValue_Int => [:pointer, :int],
      :igValue_Uint => [:pointer, :uint],
      :igValue_Float => [:pointer, :float, :pointer],
      :igWindowRectAbsToRel => [:pointer, :pointer, ImRect.by_value],
      :igWindowRectRelToAbs => [:pointer, :pointer, ImRect.by_value],
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
      :ImDrawList__TryMergeDrawCmds => :void,
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
      :ImGuiIO_AddFocusEvent => :void,
      :ImGuiIO_AddInputCharacter => :void,
      :ImGuiIO_AddInputCharacterUTF16 => :void,
      :ImGuiIO_AddInputCharactersUTF8 => :void,
      :ImGuiIO_AddKeyAnalogEvent => :void,
      :ImGuiIO_AddKeyEvent => :void,
      :ImGuiIO_AddMouseButtonEvent => :void,
      :ImGuiIO_AddMousePosEvent => :void,
      :ImGuiIO_AddMouseWheelEvent => :void,
      :ImGuiIO_ClearInputCharacters => :void,
      :ImGuiIO_ClearInputKeys => :void,
      :ImGuiIO_ImGuiIO => :pointer,
      :ImGuiIO_SetAppAcceptingEvents => :void,
      :ImGuiIO_SetKeyEventNativeData => :void,
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
      :igActivateItem => :void,
      :igAddContextHook => :uint,
      :igAddSettingsHandler => :void,
      :igAlignTextToFramePadding => :void,
      :igArrowButton => :bool,
      :igArrowButtonEx => :bool,
      :igBegin => :bool,
      :igBeginChild_Str => :bool,
      :igBeginChild_ID => :bool,
      :igBeginChildEx => :bool,
      :igBeginChildFrame => :bool,
      :igBeginColumns => :void,
      :igBeginCombo => :bool,
      :igBeginComboPopup => :bool,
      :igBeginComboPreview => :bool,
      :igBeginDisabled => :void,
      :igBeginDragDropSource => :bool,
      :igBeginDragDropTarget => :bool,
      :igBeginDragDropTargetCustom => :bool,
      :igBeginGroup => :void,
      :igBeginListBox => :bool,
      :igBeginMainMenuBar => :bool,
      :igBeginMenu => :bool,
      :igBeginMenuBar => :bool,
      :igBeginMenuEx => :bool,
      :igBeginPopup => :bool,
      :igBeginPopupContextItem => :bool,
      :igBeginPopupContextVoid => :bool,
      :igBeginPopupContextWindow => :bool,
      :igBeginPopupEx => :bool,
      :igBeginPopupModal => :bool,
      :igBeginTabBar => :bool,
      :igBeginTabBarEx => :bool,
      :igBeginTabItem => :bool,
      :igBeginTable => :bool,
      :igBeginTableEx => :bool,
      :igBeginTooltip => :void,
      :igBeginTooltipEx => :void,
      :igBeginViewportSideBar => :bool,
      :igBringWindowToDisplayBack => :void,
      :igBringWindowToDisplayBehind => :void,
      :igBringWindowToDisplayFront => :void,
      :igBringWindowToFocusFront => :void,
      :igBullet => :void,
      :igBulletText => :void,
      :igButton => :bool,
      :igButtonBehavior => :bool,
      :igButtonEx => :bool,
      :igCalcItemSize => :void,
      :igCalcItemWidth => :float,
      :igCalcTextSize => :void,
      :igCalcTypematicRepeatAmount => :int,
      :igCalcWindowNextAutoFitSize => :void,
      :igCalcWrapWidthForPos => :float,
      :igCallContextHooks => :void,
      :igCheckbox => :bool,
      :igCheckboxFlags_IntPtr => :bool,
      :igCheckboxFlags_UintPtr => :bool,
      :igCheckboxFlags_S64Ptr => :bool,
      :igCheckboxFlags_U64Ptr => :bool,
      :igClearActiveID => :void,
      :igClearDragDrop => :void,
      :igClearIniSettings => :void,
      :igCloseButton => :bool,
      :igCloseCurrentPopup => :void,
      :igClosePopupToLevel => :void,
      :igClosePopupsExceptModals => :void,
      :igClosePopupsOverWindow => :void,
      :igCollapseButton => :bool,
      :igCollapsingHeader_TreeNodeFlags => :bool,
      :igCollapsingHeader_BoolPtr => :bool,
      :igColorButton => :bool,
      :igColorConvertFloat4ToU32 => :uint,
      :igColorConvertHSVtoRGB => :void,
      :igColorConvertRGBtoHSV => :void,
      :igColorConvertU32ToFloat4 => :void,
      :igColorEdit3 => :bool,
      :igColorEdit4 => :bool,
      :igColorEditOptionsPopup => :void,
      :igColorPicker3 => :bool,
      :igColorPicker4 => :bool,
      :igColorPickerOptionsPopup => :void,
      :igColorTooltip => :void,
      :igColumns => :void,
      :igCombo_Str_arr => :bool,
      :igCombo_Str => :bool,
      :igCombo_FnBoolPtr => :bool,
      :igCreateContext => :pointer,
      :igCreateNewWindowSettings => :pointer,
      :igDataTypeApplyFromText => :bool,
      :igDataTypeApplyOp => :void,
      :igDataTypeClamp => :bool,
      :igDataTypeCompare => :int,
      :igDataTypeFormatString => :int,
      :igDataTypeGetInfo => :pointer,
      :igDebugCheckVersionAndDataLayout => :bool,
      :igDebugDrawItemRect => :void,
      :igDebugHookIdInfo => :void,
      :igDebugLog => :void,
      :igDebugNodeColumns => :void,
      :igDebugNodeDrawCmdShowMeshAndBoundingBox => :void,
      :igDebugNodeDrawList => :void,
      :igDebugNodeFont => :void,
      :igDebugNodeFontGlyph => :void,
      :igDebugNodeInputTextState => :void,
      :igDebugNodeStorage => :void,
      :igDebugNodeTabBar => :void,
      :igDebugNodeTable => :void,
      :igDebugNodeTableSettings => :void,
      :igDebugNodeViewport => :void,
      :igDebugNodeWindow => :void,
      :igDebugNodeWindowSettings => :void,
      :igDebugNodeWindowsList => :void,
      :igDebugNodeWindowsListByBeginStackParent => :void,
      :igDebugRenderViewportThumbnail => :void,
      :igDebugStartItemPicker => :void,
      :igDebugTextEncoding => :void,
      :igDestroyContext => :void,
      :igDragBehavior => :bool,
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
      :igEndColumns => :void,
      :igEndCombo => :void,
      :igEndComboPreview => :void,
      :igEndDisabled => :void,
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
      :igErrorCheckEndFrameRecover => :void,
      :igErrorCheckEndWindowRecover => :void,
      :igFindBestWindowPosForPopup => :void,
      :igFindBestWindowPosForPopupEx => :void,
      :igFindBottomMostVisibleWindowWithinBeginStack => :pointer,
      :igFindOrCreateColumns => :pointer,
      :igFindOrCreateWindowSettings => :pointer,
      :igFindRenderedTextEnd => :pointer,
      :igFindSettingsHandler => :pointer,
      :igFindWindowByID => :pointer,
      :igFindWindowByName => :pointer,
      :igFindWindowDisplayIndex => :int,
      :igFindWindowSettings => :pointer,
      :igFocusTopMostWindowUnderOne => :void,
      :igFocusWindow => :void,
      :igGcAwakeTransientWindowBuffers => :void,
      :igGcCompactTransientMiscBuffers => :void,
      :igGcCompactTransientWindowBuffers => :void,
      :igGetActiveID => :uint,
      :igGetAllocatorFunctions => :void,
      :igGetBackgroundDrawList_Nil => :pointer,
      :igGetBackgroundDrawList_ViewportPtr => :pointer,
      :igGetClipboardText => :pointer,
      :igGetColorU32_Col => :uint,
      :igGetColorU32_Vec4 => :uint,
      :igGetColorU32_U32 => :uint,
      :igGetColumnIndex => :int,
      :igGetColumnNormFromOffset => :float,
      :igGetColumnOffset => :float,
      :igGetColumnOffsetFromNorm => :float,
      :igGetColumnWidth => :float,
      :igGetColumnsCount => :int,
      :igGetColumnsID => :uint,
      :igGetContentRegionAvail => :void,
      :igGetContentRegionMax => :void,
      :igGetContentRegionMaxAbs => :void,
      :igGetCurrentContext => :pointer,
      :igGetCurrentTable => :pointer,
      :igGetCurrentWindow => :pointer,
      :igGetCurrentWindowRead => :pointer,
      :igGetCursorPos => :void,
      :igGetCursorPosX => :float,
      :igGetCursorPosY => :float,
      :igGetCursorScreenPos => :void,
      :igGetCursorStartPos => :void,
      :igGetDefaultFont => :pointer,
      :igGetDragDropPayload => :pointer,
      :igGetDrawData => :pointer,
      :igGetDrawListSharedData => :pointer,
      :igGetFocusID => :uint,
      :igGetFocusScope => :uint,
      :igGetFocusedFocusScope => :uint,
      :igGetFont => :pointer,
      :igGetFontSize => :float,
      :igGetFontTexUvWhitePixel => :void,
      :igGetForegroundDrawList_Nil => :pointer,
      :igGetForegroundDrawList_WindowPtr => :pointer,
      :igGetForegroundDrawList_ViewportPtr => :pointer,
      :igGetFrameCount => :int,
      :igGetFrameHeight => :float,
      :igGetFrameHeightWithSpacing => :float,
      :igGetHoveredID => :uint,
      :igGetID_Str => :uint,
      :igGetID_StrStr => :uint,
      :igGetID_Ptr => :uint,
      :igGetIDWithSeed => :uint,
      :igGetIO => :pointer,
      :igGetInputTextState => :pointer,
      :igGetItemFlags => :int,
      :igGetItemID => :uint,
      :igGetItemRectMax => :void,
      :igGetItemRectMin => :void,
      :igGetItemRectSize => :void,
      :igGetItemStatusFlags => :int,
      :igGetKeyData => :pointer,
      :igGetKeyIndex => :int,
      :igGetKeyName => :pointer,
      :igGetKeyPressedAmount => :int,
      :igGetMainViewport => :pointer,
      :igGetMergedModFlags => :int,
      :igGetMouseClickedCount => :int,
      :igGetMouseCursor => :int,
      :igGetMouseDragDelta => :void,
      :igGetMousePos => :void,
      :igGetMousePosOnOpeningCurrentPopup => :void,
      :igGetNavInputAmount => :float,
      :igGetNavInputAmount2d => :void,
      :igGetNavInputName => :pointer,
      :igGetPopupAllowedExtentRect => :void,
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
      :igGetTopMostAndVisiblePopupModal => :pointer,
      :igGetTopMostPopupModal => :pointer,
      :igGetTreeNodeToLabelSpacing => :float,
      :igGetVersion => :pointer,
      :igGetWindowContentRegionMax => :void,
      :igGetWindowContentRegionMin => :void,
      :igGetWindowDrawList => :pointer,
      :igGetWindowHeight => :float,
      :igGetWindowPos => :void,
      :igGetWindowResizeBorderID => :uint,
      :igGetWindowResizeCornerID => :uint,
      :igGetWindowScrollbarID => :uint,
      :igGetWindowScrollbarRect => :void,
      :igGetWindowSize => :void,
      :igGetWindowWidth => :float,
      :igImAbs_Int => :int,
      :igImAbs_Float => :float,
      :igImAbs_double => :double,
      :igImAlphaBlendColors => :uint,
      :igImBezierCubicCalc => :void,
      :igImBezierCubicClosestPoint => :void,
      :igImBezierCubicClosestPointCasteljau => :void,
      :igImBezierQuadraticCalc => :void,
      :igImBitArrayClearBit => :void,
      :igImBitArraySetBit => :void,
      :igImBitArraySetBitRange => :void,
      :igImBitArrayTestBit => :bool,
      :igImCharIsBlankA => :bool,
      :igImCharIsBlankW => :bool,
      :igImClamp => :void,
      :igImDot => :float,
      :igImFileClose => :bool,
      :igImFileGetSize => :uint64,
      :igImFileLoadToMemory => :pointer,
      :igImFileOpen => :pointer,
      :igImFileRead => :uint64,
      :igImFileWrite => :uint64,
      :igImFloor_Float => :float,
      :igImFloor_Vec2 => :void,
      :igImFloorSigned_Float => :float,
      :igImFloorSigned_Vec2 => :void,
      :igImFontAtlasBuildFinish => :void,
      :igImFontAtlasBuildInit => :void,
      :igImFontAtlasBuildMultiplyCalcLookupTable => :void,
      :igImFontAtlasBuildMultiplyRectAlpha8 => :void,
      :igImFontAtlasBuildPackCustomRects => :void,
      :igImFontAtlasBuildRender32bppRectFromString => :void,
      :igImFontAtlasBuildRender8bppRectFromString => :void,
      :igImFontAtlasBuildSetupFont => :void,
      :igImFontAtlasGetBuilderForStbTruetype => :pointer,
      :igImFormatString => :int,
      :igImFormatStringToTempBuffer => :void,
      :igImGetDirQuadrantFromDelta => :int,
      :igImHashData => :uint,
      :igImHashStr => :uint,
      :igImInvLength => :float,
      :igImIsFloatAboveGuaranteedIntegerPrecision => :bool,
      :igImIsPowerOfTwo_Int => :bool,
      :igImIsPowerOfTwo_U64 => :bool,
      :igImLengthSqr_Vec2 => :float,
      :igImLengthSqr_Vec4 => :float,
      :igImLerp_Vec2Float => :void,
      :igImLerp_Vec2Vec2 => :void,
      :igImLerp_Vec4 => :void,
      :igImLineClosestPoint => :void,
      :igImLinearSweep => :float,
      :igImLog_Float => :float,
      :igImLog_double => :double,
      :igImMax => :void,
      :igImMin => :void,
      :igImModPositive => :int,
      :igImMul => :void,
      :igImParseFormatFindEnd => :pointer,
      :igImParseFormatFindStart => :pointer,
      :igImParseFormatPrecision => :int,
      :igImParseFormatSanitizeForPrinting => :void,
      :igImParseFormatSanitizeForScanning => :pointer,
      :igImParseFormatTrimDecorations => :pointer,
      :igImPow_Float => :float,
      :igImPow_double => :double,
      :igImQsort => :void,
      :igImRotate => :void,
      :igImRsqrt_Float => :float,
      :igImRsqrt_double => :double,
      :igImSaturate => :float,
      :igImSign_Float => :float,
      :igImSign_double => :double,
      :igImStrSkipBlank => :pointer,
      :igImStrTrimBlanks => :void,
      :igImStrbolW => :pointer,
      :igImStrchrRange => :pointer,
      :igImStrdup => :pointer,
      :igImStrdupcpy => :pointer,
      :igImStreolRange => :pointer,
      :igImStricmp => :int,
      :igImStristr => :pointer,
      :igImStrlenW => :int,
      :igImStrncpy => :void,
      :igImStrnicmp => :int,
      :igImTextCharFromUtf8 => :int,
      :igImTextCharToUtf8 => :pointer,
      :igImTextCountCharsFromUtf8 => :int,
      :igImTextCountUtf8BytesFromChar => :int,
      :igImTextCountUtf8BytesFromStr => :int,
      :igImTextStrFromUtf8 => :int,
      :igImTextStrToUtf8 => :int,
      :igImTriangleArea => :float,
      :igImTriangleBarycentricCoords => :void,
      :igImTriangleClosestPoint => :void,
      :igImTriangleContainsPoint => :bool,
      :igImUpperPowerOfTwo => :int,
      :igImage => :void,
      :igImageButton => :bool,
      :igImageButtonEx => :bool,
      :igIndent => :void,
      :igInitialize => :void,
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
      :igInputTextEx => :bool,
      :igInputTextMultiline => :bool,
      :igInputTextWithHint => :bool,
      :igInvisibleButton => :bool,
      :igIsActiveIdUsingKey => :bool,
      :igIsActiveIdUsingNavDir => :bool,
      :igIsActiveIdUsingNavInput => :bool,
      :igIsAnyItemActive => :bool,
      :igIsAnyItemFocused => :bool,
      :igIsAnyItemHovered => :bool,
      :igIsAnyMouseDown => :bool,
      :igIsClippedEx => :bool,
      :igIsDragDropActive => :bool,
      :igIsDragDropPayloadBeingAccepted => :bool,
      :igIsGamepadKey => :bool,
      :igIsItemActivated => :bool,
      :igIsItemActive => :bool,
      :igIsItemClicked => :bool,
      :igIsItemDeactivated => :bool,
      :igIsItemDeactivatedAfterEdit => :bool,
      :igIsItemEdited => :bool,
      :igIsItemFocused => :bool,
      :igIsItemHovered => :bool,
      :igIsItemToggledOpen => :bool,
      :igIsItemToggledSelection => :bool,
      :igIsItemVisible => :bool,
      :igIsKeyDown => :bool,
      :igIsKeyPressed => :bool,
      :igIsKeyPressedMap => :bool,
      :igIsKeyReleased => :bool,
      :igIsLegacyKey => :bool,
      :igIsMouseClicked => :bool,
      :igIsMouseDoubleClicked => :bool,
      :igIsMouseDown => :bool,
      :igIsMouseDragPastThreshold => :bool,
      :igIsMouseDragging => :bool,
      :igIsMouseHoveringRect => :bool,
      :igIsMousePosValid => :bool,
      :igIsMouseReleased => :bool,
      :igIsNamedKey => :bool,
      :igIsNavInputDown => :bool,
      :igIsNavInputTest => :bool,
      :igIsPopupOpen_Str => :bool,
      :igIsPopupOpen_ID => :bool,
      :igIsRectVisible_Nil => :bool,
      :igIsRectVisible_Vec2 => :bool,
      :igIsWindowAbove => :bool,
      :igIsWindowAppearing => :bool,
      :igIsWindowChildOf => :bool,
      :igIsWindowCollapsed => :bool,
      :igIsWindowFocused => :bool,
      :igIsWindowHovered => :bool,
      :igIsWindowNavFocusable => :bool,
      :igIsWindowWithinBeginStackOf => :bool,
      :igItemAdd => :bool,
      :igItemHoverable => :bool,
      :igItemSize_Vec2 => :void,
      :igItemSize_Rect => :void,
      :igKeepAliveID => :void,
      :igLabelText => :void,
      :igListBox_Str_arr => :bool,
      :igListBox_FnBoolPtr => :bool,
      :igLoadIniSettingsFromDisk => :void,
      :igLoadIniSettingsFromMemory => :void,
      :igLogBegin => :void,
      :igLogButtons => :void,
      :igLogFinish => :void,
      :igLogRenderedText => :void,
      :igLogSetNextTextDecoration => :void,
      :igLogText => :void,
      :igLogToBuffer => :void,
      :igLogToClipboard => :void,
      :igLogToFile => :void,
      :igLogToTTY => :void,
      :igMarkIniSettingsDirty_Nil => :void,
      :igMarkIniSettingsDirty_WindowPtr => :void,
      :igMarkItemEdited => :void,
      :igMemAlloc => :pointer,
      :igMemFree => :void,
      :igMenuItem_Bool => :bool,
      :igMenuItem_BoolPtr => :bool,
      :igMenuItemEx => :bool,
      :igNavInitRequestApplyResult => :void,
      :igNavInitWindow => :void,
      :igNavMoveRequestApplyResult => :void,
      :igNavMoveRequestButNoResultYet => :bool,
      :igNavMoveRequestCancel => :void,
      :igNavMoveRequestForward => :void,
      :igNavMoveRequestResolveWithLastItem => :void,
      :igNavMoveRequestSubmit => :void,
      :igNavMoveRequestTryWrapping => :void,
      :igNewFrame => :void,
      :igNewLine => :void,
      :igNextColumn => :void,
      :igOpenPopup_Str => :void,
      :igOpenPopup_ID => :void,
      :igOpenPopupEx => :void,
      :igOpenPopupOnItemClick => :void,
      :igPlotEx => :int,
      :igPlotHistogram_FloatPtr => :void,
      :igPlotHistogram_FnFloatPtr => :void,
      :igPlotLines_FloatPtr => :void,
      :igPlotLines_FnFloatPtr => :void,
      :igPopAllowKeyboardFocus => :void,
      :igPopButtonRepeat => :void,
      :igPopClipRect => :void,
      :igPopColumnsBackground => :void,
      :igPopFocusScope => :void,
      :igPopFont => :void,
      :igPopID => :void,
      :igPopItemFlag => :void,
      :igPopItemWidth => :void,
      :igPopStyleColor => :void,
      :igPopStyleVar => :void,
      :igPopTextWrapPos => :void,
      :igProgressBar => :void,
      :igPushAllowKeyboardFocus => :void,
      :igPushButtonRepeat => :void,
      :igPushClipRect => :void,
      :igPushColumnClipRect => :void,
      :igPushColumnsBackground => :void,
      :igPushFocusScope => :void,
      :igPushFont => :void,
      :igPushID_Str => :void,
      :igPushID_StrStr => :void,
      :igPushID_Ptr => :void,
      :igPushID_Int => :void,
      :igPushItemFlag => :void,
      :igPushItemWidth => :void,
      :igPushMultiItemsWidths => :void,
      :igPushOverrideID => :void,
      :igPushStyleColor_U32 => :void,
      :igPushStyleColor_Vec4 => :void,
      :igPushStyleVar_Float => :void,
      :igPushStyleVar_Vec2 => :void,
      :igPushTextWrapPos => :void,
      :igRadioButton_Bool => :bool,
      :igRadioButton_IntPtr => :bool,
      :igRemoveContextHook => :void,
      :igRemoveSettingsHandler => :void,
      :igRender => :void,
      :igRenderArrow => :void,
      :igRenderArrowPointingAt => :void,
      :igRenderBullet => :void,
      :igRenderCheckMark => :void,
      :igRenderColorRectWithAlphaCheckerboard => :void,
      :igRenderFrame => :void,
      :igRenderFrameBorder => :void,
      :igRenderMouseCursor => :void,
      :igRenderNavHighlight => :void,
      :igRenderRectFilledRangeH => :void,
      :igRenderRectFilledWithHole => :void,
      :igRenderText => :void,
      :igRenderTextClipped => :void,
      :igRenderTextClippedEx => :void,
      :igRenderTextEllipsis => :void,
      :igRenderTextWrapped => :void,
      :igResetMouseDragDelta => :void,
      :igSameLine => :void,
      :igSaveIniSettingsToDisk => :void,
      :igSaveIniSettingsToMemory => :pointer,
      :igScrollToBringRectIntoView => :void,
      :igScrollToItem => :void,
      :igScrollToRect => :void,
      :igScrollToRectEx => :void,
      :igScrollbar => :void,
      :igScrollbarEx => :bool,
      :igSelectable_Bool => :bool,
      :igSelectable_BoolPtr => :bool,
      :igSeparator => :void,
      :igSeparatorEx => :void,
      :igSetActiveID => :void,
      :igSetActiveIdUsingKey => :void,
      :igSetActiveIdUsingNavAndKeys => :void,
      :igSetAllocatorFunctions => :void,
      :igSetClipboardText => :void,
      :igSetColorEditOptions => :void,
      :igSetColumnOffset => :void,
      :igSetColumnWidth => :void,
      :igSetCurrentContext => :void,
      :igSetCurrentFont => :void,
      :igSetCursorPos => :void,
      :igSetCursorPosX => :void,
      :igSetCursorPosY => :void,
      :igSetCursorScreenPos => :void,
      :igSetDragDropPayload => :bool,
      :igSetFocusID => :void,
      :igSetHoveredID => :void,
      :igSetItemAllowOverlap => :void,
      :igSetItemDefaultFocus => :void,
      :igSetItemUsingMouseWheel => :void,
      :igSetKeyboardFocusHere => :void,
      :igSetLastItemData => :void,
      :igSetMouseCursor => :void,
      :igSetNavID => :void,
      :igSetNavWindow => :void,
      :igSetNextFrameWantCaptureKeyboard => :void,
      :igSetNextFrameWantCaptureMouse => :void,
      :igSetNextItemOpen => :void,
      :igSetNextItemWidth => :void,
      :igSetNextWindowBgAlpha => :void,
      :igSetNextWindowCollapsed => :void,
      :igSetNextWindowContentSize => :void,
      :igSetNextWindowFocus => :void,
      :igSetNextWindowPos => :void,
      :igSetNextWindowScroll => :void,
      :igSetNextWindowSize => :void,
      :igSetNextWindowSizeConstraints => :void,
      :igSetScrollFromPosX_Float => :void,
      :igSetScrollFromPosX_WindowPtr => :void,
      :igSetScrollFromPosY_Float => :void,
      :igSetScrollFromPosY_WindowPtr => :void,
      :igSetScrollHereX => :void,
      :igSetScrollHereY => :void,
      :igSetScrollX_Float => :void,
      :igSetScrollX_WindowPtr => :void,
      :igSetScrollY_Float => :void,
      :igSetScrollY_WindowPtr => :void,
      :igSetStateStorage => :void,
      :igSetTabItemClosed => :void,
      :igSetTooltip => :void,
      :igSetWindowClipRectBeforeSetChannel => :void,
      :igSetWindowCollapsed_Bool => :void,
      :igSetWindowCollapsed_Str => :void,
      :igSetWindowCollapsed_WindowPtr => :void,
      :igSetWindowFocus_Nil => :void,
      :igSetWindowFocus_Str => :void,
      :igSetWindowFontScale => :void,
      :igSetWindowHitTestHole => :void,
      :igSetWindowPos_Vec2 => :void,
      :igSetWindowPos_Str => :void,
      :igSetWindowPos_WindowPtr => :void,
      :igSetWindowSize_Vec2 => :void,
      :igSetWindowSize_Str => :void,
      :igSetWindowSize_WindowPtr => :void,
      :igSetWindowViewport => :void,
      :igShadeVertsLinearColorGradientKeepAlpha => :void,
      :igShadeVertsLinearUV => :void,
      :igShowAboutWindow => :void,
      :igShowDebugLogWindow => :void,
      :igShowDemoWindow => :void,
      :igShowFontAtlas => :void,
      :igShowFontSelector => :void,
      :igShowMetricsWindow => :void,
      :igShowStackToolWindow => :void,
      :igShowStyleEditor => :void,
      :igShowStyleSelector => :bool,
      :igShowUserGuide => :void,
      :igShrinkWidths => :void,
      :igShutdown => :void,
      :igSliderAngle => :bool,
      :igSliderBehavior => :bool,
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
      :igSplitterBehavior => :bool,
      :igStartMouseMovingWindow => :void,
      :igStyleColorsClassic => :void,
      :igStyleColorsDark => :void,
      :igStyleColorsLight => :void,
      :igTabBarCloseTab => :void,
      :igTabBarFindTabByID => :pointer,
      :igTabBarProcessReorder => :bool,
      :igTabBarQueueReorder => :void,
      :igTabBarQueueReorderFromMousePos => :void,
      :igTabBarRemoveTab => :void,
      :igTabItemBackground => :void,
      :igTabItemButton => :bool,
      :igTabItemCalcSize => :void,
      :igTabItemEx => :bool,
      :igTabItemLabelAndCloseButton => :void,
      :igTableBeginApplyRequests => :void,
      :igTableBeginCell => :void,
      :igTableBeginInitMemory => :void,
      :igTableBeginRow => :void,
      :igTableDrawBorders => :void,
      :igTableDrawContextMenu => :void,
      :igTableEndCell => :void,
      :igTableEndRow => :void,
      :igTableFindByID => :pointer,
      :igTableFixColumnSortDirection => :void,
      :igTableGcCompactSettings => :void,
      :igTableGcCompactTransientBuffers_TablePtr => :void,
      :igTableGcCompactTransientBuffers_TableTempDataPtr => :void,
      :igTableGetBoundSettings => :pointer,
      :igTableGetCellBgRect => :void,
      :igTableGetColumnCount => :int,
      :igTableGetColumnFlags => :int,
      :igTableGetColumnIndex => :int,
      :igTableGetColumnName_Int => :pointer,
      :igTableGetColumnName_TablePtr => :pointer,
      :igTableGetColumnNextSortDirection => :int,
      :igTableGetColumnResizeID => :uint,
      :igTableGetColumnWidthAuto => :float,
      :igTableGetHeaderRowHeight => :float,
      :igTableGetHoveredColumn => :int,
      :igTableGetInstanceData => :pointer,
      :igTableGetMaxColumnWidth => :float,
      :igTableGetRowIndex => :int,
      :igTableGetSortSpecs => :pointer,
      :igTableHeader => :void,
      :igTableHeadersRow => :void,
      :igTableLoadSettings => :void,
      :igTableMergeDrawChannels => :void,
      :igTableNextColumn => :bool,
      :igTableNextRow => :void,
      :igTableOpenContextMenu => :void,
      :igTablePopBackgroundChannel => :void,
      :igTablePushBackgroundChannel => :void,
      :igTableRemove => :void,
      :igTableResetSettings => :void,
      :igTableSaveSettings => :void,
      :igTableSetBgColor => :void,
      :igTableSetColumnEnabled => :void,
      :igTableSetColumnIndex => :bool,
      :igTableSetColumnSortDirection => :void,
      :igTableSetColumnWidth => :void,
      :igTableSetColumnWidthAutoAll => :void,
      :igTableSetColumnWidthAutoSingle => :void,
      :igTableSettingsAddSettingsHandler => :void,
      :igTableSettingsCreate => :pointer,
      :igTableSettingsFindByID => :pointer,
      :igTableSetupColumn => :void,
      :igTableSetupDrawChannels => :void,
      :igTableSetupScrollFreeze => :void,
      :igTableSortSpecsBuild => :void,
      :igTableSortSpecsSanitize => :void,
      :igTableUpdateBorders => :void,
      :igTableUpdateColumnsWeightFromWidth => :void,
      :igTableUpdateLayout => :void,
      :igTempInputIsActive => :bool,
      :igTempInputScalar => :bool,
      :igTempInputText => :bool,
      :igText => :void,
      :igTextColored => :void,
      :igTextDisabled => :void,
      :igTextEx => :void,
      :igTextUnformatted => :void,
      :igTextWrapped => :void,
      :igTreeNode_Str => :bool,
      :igTreeNode_StrStr => :bool,
      :igTreeNode_Ptr => :bool,
      :igTreeNodeBehavior => :bool,
      :igTreeNodeBehaviorIsOpen => :bool,
      :igTreeNodeEx_Str => :bool,
      :igTreeNodeEx_StrStr => :bool,
      :igTreeNodeEx_Ptr => :bool,
      :igTreePop => :void,
      :igTreePush_Str => :void,
      :igTreePush_Ptr => :void,
      :igTreePushOverrideID => :void,
      :igUnindent => :void,
      :igUpdateHoveredWindowAndCaptureFlags => :void,
      :igUpdateInputEvents => :void,
      :igUpdateMouseMovingWindowEndFrame => :void,
      :igUpdateMouseMovingWindowNewFrame => :void,
      :igUpdateWindowParentAndRootLinks => :void,
      :igVSliderFloat => :bool,
      :igVSliderInt => :bool,
      :igVSliderScalar => :bool,
      :igValue_Bool => :void,
      :igValue_Int => :void,
      :igValue_Uint => :void,
      :igValue_Float => :void,
      :igWindowRectAbsToRel => :void,
      :igWindowRectRelToAbs => :void,
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

  # arg: id(ImGuiID)
  # ret: void
  def self.ActivateItem(id)
    igActivateItem(id)
  end

  # arg: context(ImGuiContext*), hook(const ImGuiContextHook*)
  # ret: uint
  def self.AddContextHook(context, hook)
    igAddContextHook(context, hook)
  end

  # arg: handler(const ImGuiSettingsHandler*)
  # ret: void
  def self.AddSettingsHandler(handler)
    igAddSettingsHandler(handler)
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

  # arg: str_id(const char*), dir(ImGuiDir), size_arg(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ArrowButtonEx(str_id, dir, size_arg, flags = 0)
    igArrowButtonEx(str_id, dir, size_arg, flags)
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

  # arg: name(const char*), id(ImGuiID), size_arg(ImVec2), border(bool), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildEx(name, id, size_arg, border, flags)
    igBeginChildEx(name, id, size_arg, border, flags)
  end

  # arg: id(ImGuiID), size(ImVec2), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildFrame(id, size, flags = 0)
    igBeginChildFrame(id, size, flags)
  end

  # arg: str_id(const char*), count(int), flags(ImGuiOldColumnFlags)
  # ret: void
  def self.BeginColumns(str_id, count, flags = 0)
    igBeginColumns(str_id, count, flags)
  end

  # arg: label(const char*), preview_value(const char*), flags(ImGuiComboFlags)
  # ret: bool
  def self.BeginCombo(label, preview_value, flags = 0)
    igBeginCombo(label, preview_value, flags)
  end

  # arg: popup_id(ImGuiID), bb(ImRect), flags(ImGuiComboFlags)
  # ret: bool
  def self.BeginComboPopup(popup_id, bb, flags)
    igBeginComboPopup(popup_id, bb, flags)
  end

  # ret: bool
  def self.BeginComboPreview()
    igBeginComboPreview()
  end

  # arg: disabled(bool)
  # ret: void
  def self.BeginDisabled(disabled = true)
    igBeginDisabled(disabled)
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

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.BeginDragDropTargetCustom(bb, id)
    igBeginDragDropTargetCustom(bb, id)
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

  # arg: label(const char*), icon(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenuEx(label, icon, enabled = true)
    igBeginMenuEx(label, icon, enabled)
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

  # arg: id(ImGuiID), extra_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupEx(id, extra_flags)
    igBeginPopupEx(id, extra_flags)
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

  # arg: tab_bar(ImGuiTabBar*), bb(ImRect), flags(ImGuiTabBarFlags)
  # ret: bool
  def self.BeginTabBarEx(tab_bar, bb, flags)
    igBeginTabBarEx(tab_bar, bb, flags)
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

  # arg: name(const char*), id(ImGuiID), columns_count(int), flags(ImGuiTableFlags), outer_size(ImVec2), inner_width(float)
  # ret: bool
  def self.BeginTableEx(name, id, columns_count, flags = 0, outer_size = ImVec2.create(0,0), inner_width = 0.0)
    igBeginTableEx(name, id, columns_count, flags, outer_size, inner_width)
  end

  # ret: void
  def self.BeginTooltip()
    igBeginTooltip()
  end

  # arg: tooltip_flags(ImGuiTooltipFlags), extra_window_flags(ImGuiWindowFlags)
  # ret: void
  def self.BeginTooltipEx(tooltip_flags, extra_window_flags)
    igBeginTooltipEx(tooltip_flags, extra_window_flags)
  end

  # arg: name(const char*), viewport(ImGuiViewport*), dir(ImGuiDir), size(float), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginViewportSideBar(name, viewport, dir, size, window_flags)
    igBeginViewportSideBar(name, viewport, dir, size, window_flags)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayBack(window)
    igBringWindowToDisplayBack(window)
  end

  # arg: window(ImGuiWindow*), above_window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayBehind(window, above_window)
    igBringWindowToDisplayBehind(window, above_window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayFront(window)
    igBringWindowToDisplayFront(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToFocusFront(window)
    igBringWindowToFocusFront(window)
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

  # arg: bb(ImRect), id(ImGuiID), out_hovered(bool*), out_held(bool*), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ButtonBehavior(bb, id, out_hovered, out_held, flags = 0)
    igButtonBehavior(bb, id, out_hovered, out_held, flags)
  end

  # arg: label(const char*), size_arg(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ButtonEx(label, size_arg = ImVec2.create(0,0), flags = 0)
    igButtonEx(label, size_arg, flags)
  end

  # arg: size(ImVec2), default_w(float), default_h(float)
  # ret: void
  def self.CalcItemSize(size, default_w, default_h)
    pOut = ImVec2.new
    igCalcItemSize(pOut, size, default_w, default_h)
    return pOut
  end

  # ret: float
  def self.CalcItemWidth()
    igCalcItemWidth()
  end

  # arg: text(const char*), text_end(const char*), hide_text_after_double_hash(bool), wrap_width(float)
  # ret: void
  def self.CalcTextSize(text, text_end = nil, hide_text_after_double_hash = false, wrap_width = -1.0)
    pOut = ImVec2.new
    igCalcTextSize(pOut, text, text_end, hide_text_after_double_hash, wrap_width)
    return pOut
  end

  # arg: t0(float), t1(float), repeat_delay(float), repeat_rate(float)
  # ret: int
  def self.CalcTypematicRepeatAmount(t0, t1, repeat_delay, repeat_rate)
    igCalcTypematicRepeatAmount(t0, t1, repeat_delay, repeat_rate)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.CalcWindowNextAutoFitSize(window)
    pOut = ImVec2.new
    igCalcWindowNextAutoFitSize(pOut, window)
    return pOut
  end

  # arg: pos(ImVec2), wrap_pos_x(float)
  # ret: float
  def self.CalcWrapWidthForPos(pos, wrap_pos_x)
    igCalcWrapWidthForPos(pos, wrap_pos_x)
  end

  # arg: context(ImGuiContext*), type(ImGuiContextHookType)
  # ret: void
  def self.CallContextHooks(context, type)
    igCallContextHooks(context, type)
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

  # arg: label(const char*), flags(ImS64*), flags_value(ImS64)
  # ret: bool
  def self.CheckboxFlags_S64Ptr(label, flags, flags_value)
    igCheckboxFlags_S64Ptr(label, flags, flags_value)
  end

  # arg: label(const char*), flags(ImU64*), flags_value(ImU64)
  # ret: bool
  def self.CheckboxFlags_U64Ptr(label, flags, flags_value)
    igCheckboxFlags_U64Ptr(label, flags, flags_value)
  end

  # ret: void
  def self.ClearActiveID()
    igClearActiveID()
  end

  # ret: void
  def self.ClearDragDrop()
    igClearDragDrop()
  end

  # ret: void
  def self.ClearIniSettings()
    igClearIniSettings()
  end

  # arg: id(ImGuiID), pos(ImVec2)
  # ret: bool
  def self.CloseButton(id, pos)
    igCloseButton(id, pos)
  end

  # ret: void
  def self.CloseCurrentPopup()
    igCloseCurrentPopup()
  end

  # arg: remaining(int), restore_focus_to_window_under_popup(bool)
  # ret: void
  def self.ClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
    igClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
  end

  # ret: void
  def self.ClosePopupsExceptModals()
    igClosePopupsExceptModals()
  end

  # arg: ref_window(ImGuiWindow*), restore_focus_to_window_under_popup(bool)
  # ret: void
  def self.ClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
    igClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
  end

  # arg: id(ImGuiID), pos(ImVec2)
  # ret: bool
  def self.CollapseButton(id, pos)
    igCollapseButton(id, pos)
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

  # arg: col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorEditOptionsPopup(col, flags)
    igColorEditOptionsPopup(col, flags)
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

  # arg: ref_col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorPickerOptionsPopup(ref_col, flags)
    igColorPickerOptionsPopup(ref_col, flags)
  end

  # arg: text(const char*), col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorTooltip(text, col, flags)
    igColorTooltip(text, col, flags)
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

  # arg: name(const char*)
  # ret: pointer
  def self.CreateNewWindowSettings(name)
    igCreateNewWindowSettings(name)
  end

  # arg: buf(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*)
  # ret: bool
  def self.DataTypeApplyFromText(buf, data_type, p_data, format)
    igDataTypeApplyFromText(buf, data_type, p_data, format)
  end

  # arg: data_type(ImGuiDataType), op(int), output(void*), arg_1(const void*), arg_2(const void*)
  # ret: void
  def self.DataTypeApplyOp(data_type, op, output, arg_1, arg_2)
    igDataTypeApplyOp(data_type, op, output, arg_1, arg_2)
  end

  # arg: data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*)
  # ret: bool
  def self.DataTypeClamp(data_type, p_data, p_min, p_max)
    igDataTypeClamp(data_type, p_data, p_min, p_max)
  end

  # arg: data_type(ImGuiDataType), arg_1(const void*), arg_2(const void*)
  # ret: int
  def self.DataTypeCompare(data_type, arg_1, arg_2)
    igDataTypeCompare(data_type, arg_1, arg_2)
  end

  # arg: buf(char*), buf_size(int), data_type(ImGuiDataType), p_data(const void*), format(const char*)
  # ret: int
  def self.DataTypeFormatString(buf, buf_size, data_type, p_data, format)
    igDataTypeFormatString(buf, buf_size, data_type, p_data, format)
  end

  # arg: data_type(ImGuiDataType)
  # ret: pointer
  def self.DataTypeGetInfo(data_type)
    igDataTypeGetInfo(data_type)
  end

  # arg: version_str(const char*), sz_io(size_t), sz_style(size_t), sz_vec2(size_t), sz_vec4(size_t), sz_drawvert(size_t), sz_drawidx(size_t)
  # ret: bool
  def self.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
    igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
  end

  # arg: col(ImU32)
  # ret: void
  def self.DebugDrawItemRect(col = 4278190335)
    igDebugDrawItemRect(col)
  end

  # arg: id(ImGuiID), data_type(ImGuiDataType), data_id(const void*), data_id_end(const void*)
  # ret: void
  def self.DebugHookIdInfo(id, data_type, data_id, data_id_end)
    igDebugHookIdInfo(id, data_type, data_id, data_id_end)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.DebugLog(fmt, *varargs)
    igDebugLog(fmt, *varargs)
  end

  # arg: columns(ImGuiOldColumns*)
  # ret: void
  def self.DebugNodeColumns(columns)
    igDebugNodeColumns(columns)
  end

  # arg: out_draw_list(ImDrawList*), draw_list(const ImDrawList*), draw_cmd(const ImDrawCmd*), show_mesh(bool), show_aabb(bool)
  # ret: void
  def self.DebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list, draw_list, draw_cmd, show_mesh, show_aabb)
    igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list, draw_list, draw_cmd, show_mesh, show_aabb)
  end

  # arg: window(ImGuiWindow*), draw_list(const ImDrawList*), label(const char*)
  # ret: void
  def self.DebugNodeDrawList(window, draw_list, label)
    igDebugNodeDrawList(window, draw_list, label)
  end

  # arg: font(ImFont*)
  # ret: void
  def self.DebugNodeFont(font)
    igDebugNodeFont(font)
  end

  # arg: font(ImFont*), glyph(const ImFontGlyph*)
  # ret: void
  def self.DebugNodeFontGlyph(font, glyph)
    igDebugNodeFontGlyph(font, glyph)
  end

  # arg: state(ImGuiInputTextState*)
  # ret: void
  def self.DebugNodeInputTextState(state)
    igDebugNodeInputTextState(state)
  end

  # arg: storage(ImGuiStorage*), label(const char*)
  # ret: void
  def self.DebugNodeStorage(storage, label)
    igDebugNodeStorage(storage, label)
  end

  # arg: tab_bar(ImGuiTabBar*), label(const char*)
  # ret: void
  def self.DebugNodeTabBar(tab_bar, label)
    igDebugNodeTabBar(tab_bar, label)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.DebugNodeTable(table)
    igDebugNodeTable(table)
  end

  # arg: settings(ImGuiTableSettings*)
  # ret: void
  def self.DebugNodeTableSettings(settings)
    igDebugNodeTableSettings(settings)
  end

  # arg: viewport(ImGuiViewportP*)
  # ret: void
  def self.DebugNodeViewport(viewport)
    igDebugNodeViewport(viewport)
  end

  # arg: window(ImGuiWindow*), label(const char*)
  # ret: void
  def self.DebugNodeWindow(window, label)
    igDebugNodeWindow(window, label)
  end

  # arg: settings(ImGuiWindowSettings*)
  # ret: void
  def self.DebugNodeWindowSettings(settings)
    igDebugNodeWindowSettings(settings)
  end

  # arg: windows(ImVector_ImGuiWindowPtr*), label(const char*)
  # ret: void
  def self.DebugNodeWindowsList(windows, label)
    igDebugNodeWindowsList(windows, label)
  end

  # arg: windows(ImGuiWindow**), windows_size(int), parent_in_begin_stack(ImGuiWindow*)
  # ret: void
  def self.DebugNodeWindowsListByBeginStackParent(windows, windows_size, parent_in_begin_stack)
    igDebugNodeWindowsListByBeginStackParent(windows, windows_size, parent_in_begin_stack)
  end

  # arg: draw_list(ImDrawList*), viewport(ImGuiViewportP*), bb(ImRect)
  # ret: void
  def self.DebugRenderViewportThumbnail(draw_list, viewport, bb)
    igDebugRenderViewportThumbnail(draw_list, viewport, bb)
  end

  # ret: void
  def self.DebugStartItemPicker()
    igDebugStartItemPicker()
  end

  # arg: text(const char*)
  # ret: void
  def self.DebugTextEncoding(text)
    igDebugTextEncoding(text)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.DestroyContext(ctx = nil)
    igDestroyContext(ctx)
  end

  # arg: id(ImGuiID), data_type(ImGuiDataType), p_v(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragBehavior(id, data_type, p_v, v_speed, p_min, p_max, format, flags)
    igDragBehavior(id, data_type, p_v, v_speed, p_min, p_max, format, flags)
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
  def self.EndColumns()
    igEndColumns()
  end

  # ret: void
  def self.EndCombo()
    igEndCombo()
  end

  # ret: void
  def self.EndComboPreview()
    igEndComboPreview()
  end

  # ret: void
  def self.EndDisabled()
    igEndDisabled()
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

  # arg: log_callback(ImGuiErrorLogCallback), user_data(void*)
  # ret: void
  def self.ErrorCheckEndFrameRecover(log_callback, user_data = nil)
    igErrorCheckEndFrameRecover(log_callback, user_data)
  end

  # arg: log_callback(ImGuiErrorLogCallback), user_data(void*)
  # ret: void
  def self.ErrorCheckEndWindowRecover(log_callback, user_data = nil)
    igErrorCheckEndWindowRecover(log_callback, user_data)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.FindBestWindowPosForPopup(window)
    pOut = ImVec2.new
    igFindBestWindowPosForPopup(pOut, window)
    return pOut
  end

  # arg: ref_pos(ImVec2), size(ImVec2), last_dir(ImGuiDir*), r_outer(ImRect), r_avoid(ImRect), policy(ImGuiPopupPositionPolicy)
  # ret: void
  def self.FindBestWindowPosForPopupEx(ref_pos, size, last_dir, r_outer, r_avoid, policy)
    pOut = ImVec2.new
    igFindBestWindowPosForPopupEx(pOut, ref_pos, size, last_dir, r_outer, r_avoid, policy)
    return pOut
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.FindBottomMostVisibleWindowWithinBeginStack(window)
    igFindBottomMostVisibleWindowWithinBeginStack(window)
  end

  # arg: window(ImGuiWindow*), id(ImGuiID)
  # ret: pointer
  def self.FindOrCreateColumns(window, id)
    igFindOrCreateColumns(window, id)
  end

  # arg: name(const char*)
  # ret: pointer
  def self.FindOrCreateWindowSettings(name)
    igFindOrCreateWindowSettings(name)
  end

  # arg: text(const char*), text_end(const char*)
  # ret: pointer
  def self.FindRenderedTextEnd(text, text_end = nil)
    igFindRenderedTextEnd(text, text_end)
  end

  # arg: type_name(const char*)
  # ret: pointer
  def self.FindSettingsHandler(type_name)
    igFindSettingsHandler(type_name)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.FindWindowByID(id)
    igFindWindowByID(id)
  end

  # arg: name(const char*)
  # ret: pointer
  def self.FindWindowByName(name)
    igFindWindowByName(name)
  end

  # arg: window(ImGuiWindow*)
  # ret: int
  def self.FindWindowDisplayIndex(window)
    igFindWindowDisplayIndex(window)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.FindWindowSettings(id)
    igFindWindowSettings(id)
  end

  # arg: under_this_window(ImGuiWindow*), ignore_window(ImGuiWindow*)
  # ret: void
  def self.FocusTopMostWindowUnderOne(under_this_window, ignore_window)
    igFocusTopMostWindowUnderOne(under_this_window, ignore_window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.FocusWindow(window)
    igFocusWindow(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.GcAwakeTransientWindowBuffers(window)
    igGcAwakeTransientWindowBuffers(window)
  end

  # ret: void
  def self.GcCompactTransientMiscBuffers()
    igGcCompactTransientMiscBuffers()
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.GcCompactTransientWindowBuffers(window)
    igGcCompactTransientWindowBuffers(window)
  end

  # ret: uint
  def self.GetActiveID()
    igGetActiveID()
  end

  # arg: p_alloc_func(ImGuiMemAllocFunc*), p_free_func(ImGuiMemFreeFunc*), p_user_data(void**)
  # ret: void
  def self.GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
    igGetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
  end

  # ret: pointer
  def self.GetBackgroundDrawList_Nil()
    igGetBackgroundDrawList_Nil()
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetBackgroundDrawList_ViewportPtr(viewport)
    igGetBackgroundDrawList_ViewportPtr(viewport)
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

  # arg: columns(const ImGuiOldColumns*), offset(float)
  # ret: float
  def self.GetColumnNormFromOffset(columns, offset)
    igGetColumnNormFromOffset(columns, offset)
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnOffset(column_index = -1)
    igGetColumnOffset(column_index)
  end

  # arg: columns(const ImGuiOldColumns*), offset_norm(float)
  # ret: float
  def self.GetColumnOffsetFromNorm(columns, offset_norm)
    igGetColumnOffsetFromNorm(columns, offset_norm)
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

  # arg: str_id(const char*), count(int)
  # ret: uint
  def self.GetColumnsID(str_id, count)
    igGetColumnsID(str_id, count)
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

  # ret: void
  def self.GetContentRegionMaxAbs()
    pOut = ImVec2.new
    igGetContentRegionMaxAbs(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetCurrentContext()
    igGetCurrentContext()
  end

  # ret: pointer
  def self.GetCurrentTable()
    igGetCurrentTable()
  end

  # ret: pointer
  def self.GetCurrentWindow()
    igGetCurrentWindow()
  end

  # ret: pointer
  def self.GetCurrentWindowRead()
    igGetCurrentWindowRead()
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
  def self.GetDefaultFont()
    igGetDefaultFont()
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

  # ret: uint
  def self.GetFocusID()
    igGetFocusID()
  end

  # ret: uint
  def self.GetFocusScope()
    igGetFocusScope()
  end

  # ret: uint
  def self.GetFocusedFocusScope()
    igGetFocusedFocusScope()
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
  def self.GetForegroundDrawList_Nil()
    igGetForegroundDrawList_Nil()
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.GetForegroundDrawList_WindowPtr(window)
    igGetForegroundDrawList_WindowPtr(window)
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetForegroundDrawList_ViewportPtr(viewport)
    igGetForegroundDrawList_ViewportPtr(viewport)
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

  # ret: uint
  def self.GetHoveredID()
    igGetHoveredID()
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

  # arg: str_id_begin(const char*), str_id_end(const char*), seed(ImGuiID)
  # ret: uint
  def self.GetIDWithSeed(str_id_begin, str_id_end, seed)
    igGetIDWithSeed(str_id_begin, str_id_end, seed)
  end

  # ret: pointer
  def self.GetIO()
    igGetIO()
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.GetInputTextState(id)
    igGetInputTextState(id)
  end

  # ret: int
  def self.GetItemFlags()
    igGetItemFlags()
  end

  # ret: uint
  def self.GetItemID()
    igGetItemID()
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

  # ret: int
  def self.GetItemStatusFlags()
    igGetItemStatusFlags()
  end

  # arg: key(ImGuiKey)
  # ret: pointer
  def self.GetKeyData(key)
    igGetKeyData(key)
  end

  # arg: key(ImGuiKey)
  # ret: int
  def self.GetKeyIndex(key)
    igGetKeyIndex(key)
  end

  # arg: key(ImGuiKey)
  # ret: pointer
  def self.GetKeyName(key)
    igGetKeyName(key)
  end

  # arg: key(ImGuiKey), repeat_delay(float), rate(float)
  # ret: int
  def self.GetKeyPressedAmount(key, repeat_delay, rate)
    igGetKeyPressedAmount(key, repeat_delay, rate)
  end

  # ret: pointer
  def self.GetMainViewport()
    igGetMainViewport()
  end

  # ret: int
  def self.GetMergedModFlags()
    igGetMergedModFlags()
  end

  # arg: button(ImGuiMouseButton)
  # ret: int
  def self.GetMouseClickedCount(button)
    igGetMouseClickedCount(button)
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

  # arg: n(ImGuiNavInput), mode(ImGuiNavReadMode)
  # ret: float
  def self.GetNavInputAmount(n, mode)
    igGetNavInputAmount(n, mode)
  end

  # arg: dir_sources(ImGuiNavDirSourceFlags), mode(ImGuiNavReadMode), slow_factor(float), fast_factor(float)
  # ret: void
  def self.GetNavInputAmount2d(dir_sources, mode, slow_factor = 0.0, fast_factor = 0.0)
    pOut = ImVec2.new
    igGetNavInputAmount2d(pOut, dir_sources, mode, slow_factor, fast_factor)
    return pOut
  end

  # arg: n(ImGuiNavInput)
  # ret: pointer
  def self.GetNavInputName(n)
    igGetNavInputName(n)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.GetPopupAllowedExtentRect(window)
    pOut = ImRect.new
    igGetPopupAllowedExtentRect(pOut, window)
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

  # ret: pointer
  def self.GetTopMostAndVisiblePopupModal()
    igGetTopMostAndVisiblePopupModal()
  end

  # ret: pointer
  def self.GetTopMostPopupModal()
    igGetTopMostPopupModal()
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

  # arg: window(ImGuiWindow*), dir(ImGuiDir)
  # ret: uint
  def self.GetWindowResizeBorderID(window, dir)
    igGetWindowResizeBorderID(window, dir)
  end

  # arg: window(ImGuiWindow*), n(int)
  # ret: uint
  def self.GetWindowResizeCornerID(window, n)
    igGetWindowResizeCornerID(window, n)
  end

  # arg: window(ImGuiWindow*), axis(ImGuiAxis)
  # ret: uint
  def self.GetWindowScrollbarID(window, axis)
    igGetWindowScrollbarID(window, axis)
  end

  # arg: window(ImGuiWindow*), axis(ImGuiAxis)
  # ret: void
  def self.GetWindowScrollbarRect(window, axis)
    pOut = ImRect.new
    igGetWindowScrollbarRect(pOut, window, axis)
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

  # arg: x(int)
  # ret: int
  def self.ImAbs_Int(x)
    igImAbs_Int(x)
  end

  # arg: x(float)
  # ret: float
  def self.ImAbs_Float(x)
    igImAbs_Float(x)
  end

  # arg: x(double)
  # ret: double
  def self.ImAbs_double(x)
    igImAbs_double(x)
  end

  # arg: col_a(ImU32), col_b(ImU32)
  # ret: uint
  def self.ImAlphaBlendColors(col_a, col_b)
    igImAlphaBlendColors(col_a, col_b)
  end

  # arg: p1(ImVec2), p2(ImVec2), p3(ImVec2), p4(ImVec2), t(float)
  # ret: void
  def self.ImBezierCubicCalc(p1, p2, p3, p4, t)
    pOut = ImVec2.new
    igImBezierCubicCalc(pOut, p1, p2, p3, p4, t)
    return pOut
  end

  # arg: p1(ImVec2), p2(ImVec2), p3(ImVec2), p4(ImVec2), p(ImVec2), num_segments(int)
  # ret: void
  def self.ImBezierCubicClosestPoint(p1, p2, p3, p4, p, num_segments)
    pOut = ImVec2.new
    igImBezierCubicClosestPoint(pOut, p1, p2, p3, p4, p, num_segments)
    return pOut
  end

  # arg: p1(ImVec2), p2(ImVec2), p3(ImVec2), p4(ImVec2), p(ImVec2), tess_tol(float)
  # ret: void
  def self.ImBezierCubicClosestPointCasteljau(p1, p2, p3, p4, p, tess_tol)
    pOut = ImVec2.new
    igImBezierCubicClosestPointCasteljau(pOut, p1, p2, p3, p4, p, tess_tol)
    return pOut
  end

  # arg: p1(ImVec2), p2(ImVec2), p3(ImVec2), t(float)
  # ret: void
  def self.ImBezierQuadraticCalc(p1, p2, p3, t)
    pOut = ImVec2.new
    igImBezierQuadraticCalc(pOut, p1, p2, p3, t)
    return pOut
  end

  # arg: arr(ImU32*), n(int)
  # ret: void
  def self.ImBitArrayClearBit(arr, n)
    igImBitArrayClearBit(arr, n)
  end

  # arg: arr(ImU32*), n(int)
  # ret: void
  def self.ImBitArraySetBit(arr, n)
    igImBitArraySetBit(arr, n)
  end

  # arg: arr(ImU32*), n(int), n2(int)
  # ret: void
  def self.ImBitArraySetBitRange(arr, n, n2)
    igImBitArraySetBitRange(arr, n, n2)
  end

  # arg: arr(const ImU32*), n(int)
  # ret: bool
  def self.ImBitArrayTestBit(arr, n)
    igImBitArrayTestBit(arr, n)
  end

  # arg: c(char)
  # ret: bool
  def self.ImCharIsBlankA(c)
    igImCharIsBlankA(c)
  end

  # arg: c(unsigned int)
  # ret: bool
  def self.ImCharIsBlankW(c)
    igImCharIsBlankW(c)
  end

  # arg: v(ImVec2), mn(ImVec2), mx(ImVec2)
  # ret: void
  def self.ImClamp(v, mn, mx)
    pOut = ImVec2.new
    igImClamp(pOut, v, mn, mx)
    return pOut
  end

  # arg: a(ImVec2), b(ImVec2)
  # ret: float
  def self.ImDot(a, b)
    igImDot(a, b)
  end

  # arg: file(ImFileHandle)
  # ret: bool
  def self.ImFileClose(file)
    igImFileClose(file)
  end

  # arg: file(ImFileHandle)
  # ret: uint64
  def self.ImFileGetSize(file)
    igImFileGetSize(file)
  end

  # arg: filename(const char*), mode(const char*), out_file_size(size_t*), padding_bytes(int)
  # ret: pointer
  def self.ImFileLoadToMemory(filename, mode, out_file_size = nil, padding_bytes = 0)
    igImFileLoadToMemory(filename, mode, out_file_size, padding_bytes)
  end

  # arg: filename(const char*), mode(const char*)
  # ret: pointer
  def self.ImFileOpen(filename, mode)
    igImFileOpen(filename, mode)
  end

  # arg: data(void*), size(ImU64), count(ImU64), file(ImFileHandle)
  # ret: uint64
  def self.ImFileRead(data, size, count, file)
    igImFileRead(data, size, count, file)
  end

  # arg: data(const void*), size(ImU64), count(ImU64), file(ImFileHandle)
  # ret: uint64
  def self.ImFileWrite(data, size, count, file)
    igImFileWrite(data, size, count, file)
  end

  # arg: f(float)
  # ret: float
  def self.ImFloor_Float(f)
    igImFloor_Float(f)
  end

  # arg: v(ImVec2)
  # ret: void
  def self.ImFloor_Vec2(v)
    pOut = ImVec2.new
    igImFloor_Vec2(pOut, v)
    return pOut
  end

  # arg: f(float)
  # ret: float
  def self.ImFloorSigned_Float(f)
    igImFloorSigned_Float(f)
  end

  # arg: v(ImVec2)
  # ret: void
  def self.ImFloorSigned_Vec2(v)
    pOut = ImVec2.new
    igImFloorSigned_Vec2(pOut, v)
    return pOut
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.ImFontAtlasBuildFinish(atlas)
    igImFontAtlasBuildFinish(atlas)
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.ImFontAtlasBuildInit(atlas)
    igImFontAtlasBuildInit(atlas)
  end

  # arg: out_table(unsigned char[256]), in_multiply_factor(float)
  # ret: void
  def self.ImFontAtlasBuildMultiplyCalcLookupTable(out_table, in_multiply_factor)
    igImFontAtlasBuildMultiplyCalcLookupTable(out_table, in_multiply_factor)
  end

  # arg: table(const unsigned char[256]), pixels(unsigned char*), x(int), y(int), w(int), h(int), stride(int)
  # ret: void
  def self.ImFontAtlasBuildMultiplyRectAlpha8(table, pixels, x, y, w, h, stride)
    igImFontAtlasBuildMultiplyRectAlpha8(table, pixels, x, y, w, h, stride)
  end

  # arg: atlas(ImFontAtlas*), stbrp_context_opaque(void*)
  # ret: void
  def self.ImFontAtlasBuildPackCustomRects(atlas, stbrp_context_opaque)
    igImFontAtlasBuildPackCustomRects(atlas, stbrp_context_opaque)
  end

  # arg: atlas(ImFontAtlas*), x(int), y(int), w(int), h(int), in_str(const char*), in_marker_char(char), in_marker_pixel_value(unsigned int)
  # ret: void
  def self.ImFontAtlasBuildRender32bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
    igImFontAtlasBuildRender32bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
  end

  # arg: atlas(ImFontAtlas*), x(int), y(int), w(int), h(int), in_str(const char*), in_marker_char(char), in_marker_pixel_value(unsigned char)
  # ret: void
  def self.ImFontAtlasBuildRender8bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
    igImFontAtlasBuildRender8bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
  end

  # arg: atlas(ImFontAtlas*), font(ImFont*), font_config(ImFontConfig*), ascent(float), descent(float)
  # ret: void
  def self.ImFontAtlasBuildSetupFont(atlas, font, font_config, ascent, descent)
    igImFontAtlasBuildSetupFont(atlas, font, font_config, ascent, descent)
  end

  # ret: pointer
  def self.ImFontAtlasGetBuilderForStbTruetype()
    igImFontAtlasGetBuilderForStbTruetype()
  end

  # arg: buf(char*), buf_size(size_t), fmt(const char*), ...(...)
  # ret: int
  def self.ImFormatString(buf, buf_size, fmt, *varargs)
    igImFormatString(buf, buf_size, fmt, *varargs)
  end

  # arg: out_buf(const char**), out_buf_end(const char**), fmt(const char*), ...(...)
  # ret: void
  def self.ImFormatStringToTempBuffer(out_buf, out_buf_end, fmt, *varargs)
    igImFormatStringToTempBuffer(out_buf, out_buf_end, fmt, *varargs)
  end

  # arg: dx(float), dy(float)
  # ret: int
  def self.ImGetDirQuadrantFromDelta(dx, dy)
    igImGetDirQuadrantFromDelta(dx, dy)
  end

  # arg: data(const void*), data_size(size_t), seed(ImU32)
  # ret: uint
  def self.ImHashData(data, data_size, seed = 0)
    igImHashData(data, data_size, seed)
  end

  # arg: data(const char*), data_size(size_t), seed(ImU32)
  # ret: uint
  def self.ImHashStr(data, data_size = 0, seed = 0)
    igImHashStr(data, data_size, seed)
  end

  # arg: lhs(ImVec2), fail_value(float)
  # ret: float
  def self.ImInvLength(lhs, fail_value)
    igImInvLength(lhs, fail_value)
  end

  # arg: f(float)
  # ret: bool
  def self.ImIsFloatAboveGuaranteedIntegerPrecision(f)
    igImIsFloatAboveGuaranteedIntegerPrecision(f)
  end

  # arg: v(int)
  # ret: bool
  def self.ImIsPowerOfTwo_Int(v)
    igImIsPowerOfTwo_Int(v)
  end

  # arg: v(ImU64)
  # ret: bool
  def self.ImIsPowerOfTwo_U64(v)
    igImIsPowerOfTwo_U64(v)
  end

  # arg: lhs(ImVec2)
  # ret: float
  def self.ImLengthSqr_Vec2(lhs)
    igImLengthSqr_Vec2(lhs)
  end

  # arg: lhs(ImVec4)
  # ret: float
  def self.ImLengthSqr_Vec4(lhs)
    igImLengthSqr_Vec4(lhs)
  end

  # arg: a(ImVec2), b(ImVec2), t(float)
  # ret: void
  def self.ImLerp_Vec2Float(a, b, t)
    pOut = ImVec2.new
    igImLerp_Vec2Float(pOut, a, b, t)
    return pOut
  end

  # arg: a(ImVec2), b(ImVec2), t(ImVec2)
  # ret: void
  def self.ImLerp_Vec2Vec2(a, b, t)
    pOut = ImVec2.new
    igImLerp_Vec2Vec2(pOut, a, b, t)
    return pOut
  end

  # arg: a(ImVec4), b(ImVec4), t(float)
  # ret: void
  def self.ImLerp_Vec4(a, b, t)
    pOut = ImVec4.new
    igImLerp_Vec4(pOut, a, b, t)
    return pOut
  end

  # arg: a(ImVec2), b(ImVec2), p(ImVec2)
  # ret: void
  def self.ImLineClosestPoint(a, b, p)
    pOut = ImVec2.new
    igImLineClosestPoint(pOut, a, b, p)
    return pOut
  end

  # arg: current(float), target(float), speed(float)
  # ret: float
  def self.ImLinearSweep(current, target, speed)
    igImLinearSweep(current, target, speed)
  end

  # arg: x(float)
  # ret: float
  def self.ImLog_Float(x)
    igImLog_Float(x)
  end

  # arg: x(double)
  # ret: double
  def self.ImLog_double(x)
    igImLog_double(x)
  end

  # arg: lhs(ImVec2), rhs(ImVec2)
  # ret: void
  def self.ImMax(lhs, rhs)
    pOut = ImVec2.new
    igImMax(pOut, lhs, rhs)
    return pOut
  end

  # arg: lhs(ImVec2), rhs(ImVec2)
  # ret: void
  def self.ImMin(lhs, rhs)
    pOut = ImVec2.new
    igImMin(pOut, lhs, rhs)
    return pOut
  end

  # arg: a(int), b(int)
  # ret: int
  def self.ImModPositive(a, b)
    igImModPositive(a, b)
  end

  # arg: lhs(ImVec2), rhs(ImVec2)
  # ret: void
  def self.ImMul(lhs, rhs)
    pOut = ImVec2.new
    igImMul(pOut, lhs, rhs)
    return pOut
  end

  # arg: format(const char*)
  # ret: pointer
  def self.ImParseFormatFindEnd(format)
    igImParseFormatFindEnd(format)
  end

  # arg: format(const char*)
  # ret: pointer
  def self.ImParseFormatFindStart(format)
    igImParseFormatFindStart(format)
  end

  # arg: format(const char*), default_value(int)
  # ret: int
  def self.ImParseFormatPrecision(format, default_value)
    igImParseFormatPrecision(format, default_value)
  end

  # arg: fmt_in(const char*), fmt_out(char*), fmt_out_size(size_t)
  # ret: void
  def self.ImParseFormatSanitizeForPrinting(fmt_in, fmt_out, fmt_out_size)
    igImParseFormatSanitizeForPrinting(fmt_in, fmt_out, fmt_out_size)
  end

  # arg: fmt_in(const char*), fmt_out(char*), fmt_out_size(size_t)
  # ret: pointer
  def self.ImParseFormatSanitizeForScanning(fmt_in, fmt_out, fmt_out_size)
    igImParseFormatSanitizeForScanning(fmt_in, fmt_out, fmt_out_size)
  end

  # arg: format(const char*), buf(char*), buf_size(size_t)
  # ret: pointer
  def self.ImParseFormatTrimDecorations(format, buf, buf_size)
    igImParseFormatTrimDecorations(format, buf, buf_size)
  end

  # arg: x(float), y(float)
  # ret: float
  def self.ImPow_Float(x, y)
    igImPow_Float(x, y)
  end

  # arg: x(double), y(double)
  # ret: double
  def self.ImPow_double(x, y)
    igImPow_double(x, y)
  end

  # arg: base(void*), count(size_t), size_of_element(size_t), compare_func(int(*)(void const*,void const*))
  # ret: void
  def self.ImQsort(base, count, size_of_element, compare_func)
    igImQsort(base, count, size_of_element, compare_func)
  end

  # arg: v(ImVec2), cos_a(float), sin_a(float)
  # ret: void
  def self.ImRotate(v, cos_a, sin_a)
    pOut = ImVec2.new
    igImRotate(pOut, v, cos_a, sin_a)
    return pOut
  end

  # arg: x(float)
  # ret: float
  def self.ImRsqrt_Float(x)
    igImRsqrt_Float(x)
  end

  # arg: x(double)
  # ret: double
  def self.ImRsqrt_double(x)
    igImRsqrt_double(x)
  end

  # arg: f(float)
  # ret: float
  def self.ImSaturate(f)
    igImSaturate(f)
  end

  # arg: x(float)
  # ret: float
  def self.ImSign_Float(x)
    igImSign_Float(x)
  end

  # arg: x(double)
  # ret: double
  def self.ImSign_double(x)
    igImSign_double(x)
  end

  # arg: str(const char*)
  # ret: pointer
  def self.ImStrSkipBlank(str)
    igImStrSkipBlank(str)
  end

  # arg: str(char*)
  # ret: void
  def self.ImStrTrimBlanks(str)
    igImStrTrimBlanks(str)
  end

  # arg: buf_mid_line(const ImWchar*), buf_begin(const ImWchar*)
  # ret: pointer
  def self.ImStrbolW(buf_mid_line, buf_begin)
    igImStrbolW(buf_mid_line, buf_begin)
  end

  # arg: str_begin(const char*), str_end(const char*), c(char)
  # ret: pointer
  def self.ImStrchrRange(str_begin, str_end, c)
    igImStrchrRange(str_begin, str_end, c)
  end

  # arg: str(const char*)
  # ret: pointer
  def self.ImStrdup(str)
    igImStrdup(str)
  end

  # arg: dst(char*), p_dst_size(size_t*), str(const char*)
  # ret: pointer
  def self.ImStrdupcpy(dst, p_dst_size, str)
    igImStrdupcpy(dst, p_dst_size, str)
  end

  # arg: str(const char*), str_end(const char*)
  # ret: pointer
  def self.ImStreolRange(str, str_end)
    igImStreolRange(str, str_end)
  end

  # arg: str1(const char*), str2(const char*)
  # ret: int
  def self.ImStricmp(str1, str2)
    igImStricmp(str1, str2)
  end

  # arg: haystack(const char*), haystack_end(const char*), needle(const char*), needle_end(const char*)
  # ret: pointer
  def self.ImStristr(haystack, haystack_end, needle, needle_end)
    igImStristr(haystack, haystack_end, needle, needle_end)
  end

  # arg: str(const ImWchar*)
  # ret: int
  def self.ImStrlenW(str)
    igImStrlenW(str)
  end

  # arg: dst(char*), src(const char*), count(size_t)
  # ret: void
  def self.ImStrncpy(dst, src, count)
    igImStrncpy(dst, src, count)
  end

  # arg: str1(const char*), str2(const char*), count(size_t)
  # ret: int
  def self.ImStrnicmp(str1, str2, count)
    igImStrnicmp(str1, str2, count)
  end

  # arg: out_char(unsigned int*), in_text(const char*), in_text_end(const char*)
  # ret: int
  def self.ImTextCharFromUtf8(out_char, in_text, in_text_end)
    igImTextCharFromUtf8(out_char, in_text, in_text_end)
  end

  # arg: out_buf(char[5]), c(unsigned int)
  # ret: pointer
  def self.ImTextCharToUtf8(out_buf, c)
    igImTextCharToUtf8(out_buf, c)
  end

  # arg: in_text(const char*), in_text_end(const char*)
  # ret: int
  def self.ImTextCountCharsFromUtf8(in_text, in_text_end)
    igImTextCountCharsFromUtf8(in_text, in_text_end)
  end

  # arg: in_text(const char*), in_text_end(const char*)
  # ret: int
  def self.ImTextCountUtf8BytesFromChar(in_text, in_text_end)
    igImTextCountUtf8BytesFromChar(in_text, in_text_end)
  end

  # arg: in_text(const ImWchar*), in_text_end(const ImWchar*)
  # ret: int
  def self.ImTextCountUtf8BytesFromStr(in_text, in_text_end)
    igImTextCountUtf8BytesFromStr(in_text, in_text_end)
  end

  # arg: out_buf(ImWchar*), out_buf_size(int), in_text(const char*), in_text_end(const char*), in_remaining(const char**)
  # ret: int
  def self.ImTextStrFromUtf8(out_buf, out_buf_size, in_text, in_text_end, in_remaining = nil)
    igImTextStrFromUtf8(out_buf, out_buf_size, in_text, in_text_end, in_remaining)
  end

  # arg: out_buf(char*), out_buf_size(int), in_text(const ImWchar*), in_text_end(const ImWchar*)
  # ret: int
  def self.ImTextStrToUtf8(out_buf, out_buf_size, in_text, in_text_end)
    igImTextStrToUtf8(out_buf, out_buf_size, in_text, in_text_end)
  end

  # arg: a(ImVec2), b(ImVec2), c(ImVec2)
  # ret: float
  def self.ImTriangleArea(a, b, c)
    igImTriangleArea(a, b, c)
  end

  # arg: a(ImVec2), b(ImVec2), c(ImVec2), p(ImVec2), out_u(float*), out_v(float*), out_w(float*)
  # ret: void
  def self.ImTriangleBarycentricCoords(a, b, c, p, out_u, out_v, out_w)
    igImTriangleBarycentricCoords(a, b, c, p, out_u, out_v, out_w)
  end

  # arg: a(ImVec2), b(ImVec2), c(ImVec2), p(ImVec2)
  # ret: void
  def self.ImTriangleClosestPoint(a, b, c, p)
    pOut = ImVec2.new
    igImTriangleClosestPoint(pOut, a, b, c, p)
    return pOut
  end

  # arg: a(ImVec2), b(ImVec2), c(ImVec2), p(ImVec2)
  # ret: bool
  def self.ImTriangleContainsPoint(a, b, c, p)
    igImTriangleContainsPoint(a, b, c, p)
  end

  # arg: v(int)
  # ret: int
  def self.ImUpperPowerOfTwo(v)
    igImUpperPowerOfTwo(v)
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

  # arg: id(ImGuiID), texture_id(ImTextureID), size(ImVec2), uv0(ImVec2), uv1(ImVec2), padding(ImVec2), bg_col(ImVec4), tint_col(ImVec4)
  # ret: bool
  def self.ImageButtonEx(id, texture_id, size, uv0, uv1, padding, bg_col, tint_col)
    igImageButtonEx(id, texture_id, size, uv0, uv1, padding, bg_col, tint_col)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Indent(indent_w = 0.0)
    igIndent(indent_w)
  end

  # ret: void
  def self.Initialize()
    igInitialize()
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

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(int), size_arg(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextEx(label, hint, buf, buf_size, size_arg, flags, callback = nil, user_data = nil)
    igInputTextEx(label, hint, buf, buf_size, size_arg, flags, callback, user_data)
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

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsActiveIdUsingKey(key)
    igIsActiveIdUsingKey(key)
  end

  # arg: dir(ImGuiDir)
  # ret: bool
  def self.IsActiveIdUsingNavDir(dir)
    igIsActiveIdUsingNavDir(dir)
  end

  # arg: input(ImGuiNavInput)
  # ret: bool
  def self.IsActiveIdUsingNavInput(input)
    igIsActiveIdUsingNavInput(input)
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

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.IsClippedEx(bb, id)
    igIsClippedEx(bb, id)
  end

  # ret: bool
  def self.IsDragDropActive()
    igIsDragDropActive()
  end

  # ret: bool
  def self.IsDragDropPayloadBeingAccepted()
    igIsDragDropPayloadBeingAccepted()
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsGamepadKey(key)
    igIsGamepadKey(key)
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
  def self.IsItemToggledSelection()
    igIsItemToggledSelection()
  end

  # ret: bool
  def self.IsItemVisible()
    igIsItemVisible()
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyDown(key)
    igIsKeyDown(key)
  end

  # arg: key(ImGuiKey), repeat(bool)
  # ret: bool
  def self.IsKeyPressed(key, repeat = true)
    igIsKeyPressed(key, repeat)
  end

  # arg: key(ImGuiKey), repeat(bool)
  # ret: bool
  def self.IsKeyPressedMap(key, repeat = true)
    igIsKeyPressedMap(key, repeat)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyReleased(key)
    igIsKeyReleased(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsLegacyKey(key)
    igIsLegacyKey(key)
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
  def self.IsMouseDragPastThreshold(button, lock_threshold = -1.0)
    igIsMouseDragPastThreshold(button, lock_threshold)
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

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsNamedKey(key)
    igIsNamedKey(key)
  end

  # arg: n(ImGuiNavInput)
  # ret: bool
  def self.IsNavInputDown(n)
    igIsNavInputDown(n)
  end

  # arg: n(ImGuiNavInput), rm(ImGuiNavReadMode)
  # ret: bool
  def self.IsNavInputTest(n, rm)
    igIsNavInputTest(n, rm)
  end

  # arg: str_id(const char*), flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpen_Str(str_id, flags = 0)
    igIsPopupOpen_Str(str_id, flags)
  end

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpen_ID(id, popup_flags)
    igIsPopupOpen_ID(id, popup_flags)
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

  # arg: potential_above(ImGuiWindow*), potential_below(ImGuiWindow*)
  # ret: bool
  def self.IsWindowAbove(potential_above, potential_below)
    igIsWindowAbove(potential_above, potential_below)
  end

  # ret: bool
  def self.IsWindowAppearing()
    igIsWindowAppearing()
  end

  # arg: window(ImGuiWindow*), potential_parent(ImGuiWindow*), popup_hierarchy(bool)
  # ret: bool
  def self.IsWindowChildOf(window, potential_parent, popup_hierarchy)
    igIsWindowChildOf(window, potential_parent, popup_hierarchy)
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

  # arg: window(ImGuiWindow*)
  # ret: bool
  def self.IsWindowNavFocusable(window)
    igIsWindowNavFocusable(window)
  end

  # arg: window(ImGuiWindow*), potential_parent(ImGuiWindow*)
  # ret: bool
  def self.IsWindowWithinBeginStackOf(window, potential_parent)
    igIsWindowWithinBeginStackOf(window, potential_parent)
  end

  # arg: bb(ImRect), id(ImGuiID), nav_bb(const ImRect*), extra_flags(ImGuiItemFlags)
  # ret: bool
  def self.ItemAdd(bb, id, nav_bb = nil, extra_flags = 0)
    igItemAdd(bb, id, nav_bb, extra_flags)
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.ItemHoverable(bb, id)
    igItemHoverable(bb, id)
  end

  # arg: size(ImVec2), text_baseline_y(float)
  # ret: void
  def self.ItemSize_Vec2(size, text_baseline_y = -1.0)
    igItemSize_Vec2(size, text_baseline_y)
  end

  # arg: bb(ImRect), text_baseline_y(float)
  # ret: void
  def self.ItemSize_Rect(bb, text_baseline_y = -1.0)
    igItemSize_Rect(bb, text_baseline_y)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.KeepAliveID(id)
    igKeepAliveID(id)
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

  # arg: type(ImGuiLogType), auto_open_depth(int)
  # ret: void
  def self.LogBegin(type, auto_open_depth)
    igLogBegin(type, auto_open_depth)
  end

  # ret: void
  def self.LogButtons()
    igLogButtons()
  end

  # ret: void
  def self.LogFinish()
    igLogFinish()
  end

  # arg: ref_pos(const ImVec2*), text(const char*), text_end(const char*)
  # ret: void
  def self.LogRenderedText(ref_pos, text, text_end = nil)
    igLogRenderedText(ref_pos, text, text_end)
  end

  # arg: prefix(const char*), suffix(const char*)
  # ret: void
  def self.LogSetNextTextDecoration(prefix, suffix)
    igLogSetNextTextDecoration(prefix, suffix)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.LogText(fmt, *varargs)
    igLogText(fmt, *varargs)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToBuffer(auto_open_depth = -1)
    igLogToBuffer(auto_open_depth)
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

  # ret: void
  def self.MarkIniSettingsDirty_Nil()
    igMarkIniSettingsDirty_Nil()
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.MarkIniSettingsDirty_WindowPtr(window)
    igMarkIniSettingsDirty_WindowPtr(window)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.MarkItemEdited(id)
    igMarkItemEdited(id)
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

  # arg: label(const char*), icon(const char*), shortcut(const char*), selected(bool), enabled(bool)
  # ret: bool
  def self.MenuItemEx(label, icon, shortcut = nil, selected = false, enabled = true)
    igMenuItemEx(label, icon, shortcut, selected, enabled)
  end

  # ret: void
  def self.NavInitRequestApplyResult()
    igNavInitRequestApplyResult()
  end

  # arg: window(ImGuiWindow*), force_reinit(bool)
  # ret: void
  def self.NavInitWindow(window, force_reinit)
    igNavInitWindow(window, force_reinit)
  end

  # ret: void
  def self.NavMoveRequestApplyResult()
    igNavMoveRequestApplyResult()
  end

  # ret: bool
  def self.NavMoveRequestButNoResultYet()
    igNavMoveRequestButNoResultYet()
  end

  # ret: void
  def self.NavMoveRequestCancel()
    igNavMoveRequestCancel()
  end

  # arg: move_dir(ImGuiDir), clip_dir(ImGuiDir), move_flags(ImGuiNavMoveFlags), scroll_flags(ImGuiScrollFlags)
  # ret: void
  def self.NavMoveRequestForward(move_dir, clip_dir, move_flags, scroll_flags)
    igNavMoveRequestForward(move_dir, clip_dir, move_flags, scroll_flags)
  end

  # arg: result(ImGuiNavItemData*)
  # ret: void
  def self.NavMoveRequestResolveWithLastItem(result)
    igNavMoveRequestResolveWithLastItem(result)
  end

  # arg: move_dir(ImGuiDir), clip_dir(ImGuiDir), move_flags(ImGuiNavMoveFlags), scroll_flags(ImGuiScrollFlags)
  # ret: void
  def self.NavMoveRequestSubmit(move_dir, clip_dir, move_flags, scroll_flags)
    igNavMoveRequestSubmit(move_dir, clip_dir, move_flags, scroll_flags)
  end

  # arg: window(ImGuiWindow*), move_flags(ImGuiNavMoveFlags)
  # ret: void
  def self.NavMoveRequestTryWrapping(window, move_flags)
    igNavMoveRequestTryWrapping(window, move_flags)
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

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupEx(id, popup_flags = ImGuiPopupFlags_None)
    igOpenPopupEx(id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupOnItemClick(str_id = nil, popup_flags = 1)
    igOpenPopupOnItemClick(str_id, popup_flags)
  end

  # arg: plot_type(ImGuiPlotType), label(const char*), values_getter(float(*)(void* data,int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), frame_size(ImVec2)
  # ret: int
  def self.PlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, frame_size)
    igPlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, frame_size)
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
  def self.PopColumnsBackground()
    igPopColumnsBackground()
  end

  # ret: void
  def self.PopFocusScope()
    igPopFocusScope()
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
  def self.PopItemFlag()
    igPopItemFlag()
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

  # arg: column_index(int)
  # ret: void
  def self.PushColumnClipRect(column_index)
    igPushColumnClipRect(column_index)
  end

  # ret: void
  def self.PushColumnsBackground()
    igPushColumnsBackground()
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.PushFocusScope(id)
    igPushFocusScope(id)
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

  # arg: option(ImGuiItemFlags), enabled(bool)
  # ret: void
  def self.PushItemFlag(option, enabled)
    igPushItemFlag(option, enabled)
  end

  # arg: item_width(float)
  # ret: void
  def self.PushItemWidth(item_width)
    igPushItemWidth(item_width)
  end

  # arg: components(int), width_full(float)
  # ret: void
  def self.PushMultiItemsWidths(components, width_full)
    igPushMultiItemsWidths(components, width_full)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.PushOverrideID(id)
    igPushOverrideID(id)
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

  # arg: context(ImGuiContext*), hook_to_remove(ImGuiID)
  # ret: void
  def self.RemoveContextHook(context, hook_to_remove)
    igRemoveContextHook(context, hook_to_remove)
  end

  # arg: type_name(const char*)
  # ret: void
  def self.RemoveSettingsHandler(type_name)
    igRemoveSettingsHandler(type_name)
  end

  # ret: void
  def self.Render()
    igRender()
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32), dir(ImGuiDir), scale(float)
  # ret: void
  def self.RenderArrow(draw_list, pos, col, dir, scale = 1.0)
    igRenderArrow(draw_list, pos, col, dir, scale)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), half_sz(ImVec2), direction(ImGuiDir), col(ImU32)
  # ret: void
  def self.RenderArrowPointingAt(draw_list, pos, half_sz, direction, col)
    igRenderArrowPointingAt(draw_list, pos, half_sz, direction, col)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32)
  # ret: void
  def self.RenderBullet(draw_list, pos, col)
    igRenderBullet(draw_list, pos, col)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32), sz(float)
  # ret: void
  def self.RenderCheckMark(draw_list, pos, col, sz)
    igRenderCheckMark(draw_list, pos, col, sz)
  end

  # arg: draw_list(ImDrawList*), p_min(ImVec2), p_max(ImVec2), fill_col(ImU32), grid_step(float), grid_off(ImVec2), rounding(float), flags(ImDrawFlags)
  # ret: void
  def self.RenderColorRectWithAlphaCheckerboard(draw_list, p_min, p_max, fill_col, grid_step, grid_off, rounding = 0.0, flags = 0)
    igRenderColorRectWithAlphaCheckerboard(draw_list, p_min, p_max, fill_col, grid_step, grid_off, rounding, flags)
  end

  # arg: p_min(ImVec2), p_max(ImVec2), fill_col(ImU32), border(bool), rounding(float)
  # ret: void
  def self.RenderFrame(p_min, p_max, fill_col, border = true, rounding = 0.0)
    igRenderFrame(p_min, p_max, fill_col, border, rounding)
  end

  # arg: p_min(ImVec2), p_max(ImVec2), rounding(float)
  # ret: void
  def self.RenderFrameBorder(p_min, p_max, rounding = 0.0)
    igRenderFrameBorder(p_min, p_max, rounding)
  end

  # arg: pos(ImVec2), scale(float), mouse_cursor(ImGuiMouseCursor), col_fill(ImU32), col_border(ImU32), col_shadow(ImU32)
  # ret: void
  def self.RenderMouseCursor(pos, scale, mouse_cursor, col_fill, col_border, col_shadow)
    igRenderMouseCursor(pos, scale, mouse_cursor, col_fill, col_border, col_shadow)
  end

  # arg: bb(ImRect), id(ImGuiID), flags(ImGuiNavHighlightFlags)
  # ret: void
  def self.RenderNavHighlight(bb, id, flags = ImGuiNavHighlightFlags_TypeDefault)
    igRenderNavHighlight(bb, id, flags)
  end

  # arg: draw_list(ImDrawList*), rect(ImRect), col(ImU32), x_start_norm(float), x_end_norm(float), rounding(float)
  # ret: void
  def self.RenderRectFilledRangeH(draw_list, rect, col, x_start_norm, x_end_norm, rounding)
    igRenderRectFilledRangeH(draw_list, rect, col, x_start_norm, x_end_norm, rounding)
  end

  # arg: draw_list(ImDrawList*), outer(ImRect), inner(ImRect), col(ImU32), rounding(float)
  # ret: void
  def self.RenderRectFilledWithHole(draw_list, outer, inner, col, rounding)
    igRenderRectFilledWithHole(draw_list, outer, inner, col, rounding)
  end

  # arg: pos(ImVec2), text(const char*), text_end(const char*), hide_text_after_hash(bool)
  # ret: void
  def self.RenderText(pos, text, text_end = nil, hide_text_after_hash = true)
    igRenderText(pos, text, text_end, hide_text_after_hash)
  end

  # arg: pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*), align(ImVec2), clip_rect(const ImRect*)
  # ret: void
  def self.RenderTextClipped(pos_min, pos_max, text, text_end, text_size_if_known, align = ImVec2.create(0,0), clip_rect = nil)
    igRenderTextClipped(pos_min, pos_max, text, text_end, text_size_if_known, align, clip_rect)
  end

  # arg: draw_list(ImDrawList*), pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*), align(ImVec2), clip_rect(const ImRect*)
  # ret: void
  def self.RenderTextClippedEx(draw_list, pos_min, pos_max, text, text_end, text_size_if_known, align = ImVec2.create(0,0), clip_rect = nil)
    igRenderTextClippedEx(draw_list, pos_min, pos_max, text, text_end, text_size_if_known, align, clip_rect)
  end

  # arg: draw_list(ImDrawList*), pos_min(ImVec2), pos_max(ImVec2), clip_max_x(float), ellipsis_max_x(float), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*)
  # ret: void
  def self.RenderTextEllipsis(draw_list, pos_min, pos_max, clip_max_x, ellipsis_max_x, text, text_end, text_size_if_known)
    igRenderTextEllipsis(draw_list, pos_min, pos_max, clip_max_x, ellipsis_max_x, text, text_end, text_size_if_known)
  end

  # arg: pos(ImVec2), text(const char*), text_end(const char*), wrap_width(float)
  # ret: void
  def self.RenderTextWrapped(pos, text, text_end, wrap_width)
    igRenderTextWrapped(pos, text, text_end, wrap_width)
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

  # arg: window(ImGuiWindow*), rect(ImRect)
  # ret: void
  def self.ScrollToBringRectIntoView(window, rect)
    igScrollToBringRectIntoView(window, rect)
  end

  # arg: flags(ImGuiScrollFlags)
  # ret: void
  def self.ScrollToItem(flags = 0)
    igScrollToItem(flags)
  end

  # arg: window(ImGuiWindow*), rect(ImRect), flags(ImGuiScrollFlags)
  # ret: void
  def self.ScrollToRect(window, rect, flags = 0)
    igScrollToRect(window, rect, flags)
  end

  # arg: window(ImGuiWindow*), rect(ImRect), flags(ImGuiScrollFlags)
  # ret: void
  def self.ScrollToRectEx(window, rect, flags = 0)
    pOut = ImVec2.new
    igScrollToRectEx(pOut, window, rect, flags)
    return pOut
  end

  # arg: axis(ImGuiAxis)
  # ret: void
  def self.Scrollbar(axis)
    igScrollbar(axis)
  end

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), p_scroll_v(ImS64*), avail_v(ImS64), contents_v(ImS64), flags(ImDrawFlags)
  # ret: bool
  def self.ScrollbarEx(bb, id, axis, p_scroll_v, avail_v, contents_v, flags)
    igScrollbarEx(bb, id, axis, p_scroll_v, avail_v, contents_v, flags)
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

  # arg: flags(ImGuiSeparatorFlags)
  # ret: void
  def self.SeparatorEx(flags)
    igSeparatorEx(flags)
  end

  # arg: id(ImGuiID), window(ImGuiWindow*)
  # ret: void
  def self.SetActiveID(id, window)
    igSetActiveID(id, window)
  end

  # arg: key(ImGuiKey)
  # ret: void
  def self.SetActiveIdUsingKey(key)
    igSetActiveIdUsingKey(key)
  end

  # ret: void
  def self.SetActiveIdUsingNavAndKeys()
    igSetActiveIdUsingNavAndKeys()
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

  # arg: font(ImFont*)
  # ret: void
  def self.SetCurrentFont(font)
    igSetCurrentFont(font)
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

  # arg: id(ImGuiID), window(ImGuiWindow*)
  # ret: void
  def self.SetFocusID(id, window)
    igSetFocusID(id, window)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.SetHoveredID(id)
    igSetHoveredID(id)
  end

  # ret: void
  def self.SetItemAllowOverlap()
    igSetItemAllowOverlap()
  end

  # ret: void
  def self.SetItemDefaultFocus()
    igSetItemDefaultFocus()
  end

  # ret: void
  def self.SetItemUsingMouseWheel()
    igSetItemUsingMouseWheel()
  end

  # arg: offset(int)
  # ret: void
  def self.SetKeyboardFocusHere(offset = 0)
    igSetKeyboardFocusHere(offset)
  end

  # arg: item_id(ImGuiID), in_flags(ImGuiItemFlags), status_flags(ImGuiItemStatusFlags), item_rect(ImRect)
  # ret: void
  def self.SetLastItemData(item_id, in_flags, status_flags, item_rect)
    igSetLastItemData(item_id, in_flags, status_flags, item_rect)
  end

  # arg: cursor_type(ImGuiMouseCursor)
  # ret: void
  def self.SetMouseCursor(cursor_type)
    igSetMouseCursor(cursor_type)
  end

  # arg: id(ImGuiID), nav_layer(ImGuiNavLayer), focus_scope_id(ImGuiID), rect_rel(ImRect)
  # ret: void
  def self.SetNavID(id, nav_layer, focus_scope_id, rect_rel)
    igSetNavID(id, nav_layer, focus_scope_id, rect_rel)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.SetNavWindow(window)
    igSetNavWindow(window)
  end

  # arg: want_capture_keyboard(bool)
  # ret: void
  def self.SetNextFrameWantCaptureKeyboard(want_capture_keyboard)
    igSetNextFrameWantCaptureKeyboard(want_capture_keyboard)
  end

  # arg: want_capture_mouse(bool)
  # ret: void
  def self.SetNextFrameWantCaptureMouse(want_capture_mouse)
    igSetNextFrameWantCaptureMouse(want_capture_mouse)
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

  # arg: scroll(ImVec2)
  # ret: void
  def self.SetNextWindowScroll(scroll)
    igSetNextWindowScroll(scroll)
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
  def self.SetScrollFromPosX_Float(local_x, center_x_ratio = 0.5)
    igSetScrollFromPosX_Float(local_x, center_x_ratio)
  end

  # arg: window(ImGuiWindow*), local_x(float), center_x_ratio(float)
  # ret: void
  def self.SetScrollFromPosX_WindowPtr(window, local_x, center_x_ratio)
    igSetScrollFromPosX_WindowPtr(window, local_x, center_x_ratio)
  end

  # arg: local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosY_Float(local_y, center_y_ratio = 0.5)
    igSetScrollFromPosY_Float(local_y, center_y_ratio)
  end

  # arg: window(ImGuiWindow*), local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosY_WindowPtr(window, local_y, center_y_ratio)
    igSetScrollFromPosY_WindowPtr(window, local_y, center_y_ratio)
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
  def self.SetScrollX_Float(scroll_x)
    igSetScrollX_Float(scroll_x)
  end

  # arg: window(ImGuiWindow*), scroll_x(float)
  # ret: void
  def self.SetScrollX_WindowPtr(window, scroll_x)
    igSetScrollX_WindowPtr(window, scroll_x)
  end

  # arg: scroll_y(float)
  # ret: void
  def self.SetScrollY_Float(scroll_y)
    igSetScrollY_Float(scroll_y)
  end

  # arg: window(ImGuiWindow*), scroll_y(float)
  # ret: void
  def self.SetScrollY_WindowPtr(window, scroll_y)
    igSetScrollY_WindowPtr(window, scroll_y)
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

  # arg: window(ImGuiWindow*), clip_rect(ImRect)
  # ret: void
  def self.SetWindowClipRectBeforeSetChannel(window, clip_rect)
    igSetWindowClipRectBeforeSetChannel(window, clip_rect)
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

  # arg: window(ImGuiWindow*), collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsed_WindowPtr(window, collapsed, cond = 0)
    igSetWindowCollapsed_WindowPtr(window, collapsed, cond)
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

  # arg: window(ImGuiWindow*), pos(ImVec2), size(ImVec2)
  # ret: void
  def self.SetWindowHitTestHole(window, pos, size)
    igSetWindowHitTestHole(window, pos, size)
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

  # arg: window(ImGuiWindow*), pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPos_WindowPtr(window, pos, cond = 0)
    igSetWindowPos_WindowPtr(window, pos, cond)
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

  # arg: window(ImGuiWindow*), size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSize_WindowPtr(window, size, cond = 0)
    igSetWindowSize_WindowPtr(window, size, cond)
  end

  # arg: window(ImGuiWindow*), viewport(ImGuiViewportP*)
  # ret: void
  def self.SetWindowViewport(window, viewport)
    igSetWindowViewport(window, viewport)
  end

  # arg: draw_list(ImDrawList*), vert_start_idx(int), vert_end_idx(int), gradient_p0(ImVec2), gradient_p1(ImVec2), col0(ImU32), col1(ImU32)
  # ret: void
  def self.ShadeVertsLinearColorGradientKeepAlpha(draw_list, vert_start_idx, vert_end_idx, gradient_p0, gradient_p1, col0, col1)
    igShadeVertsLinearColorGradientKeepAlpha(draw_list, vert_start_idx, vert_end_idx, gradient_p0, gradient_p1, col0, col1)
  end

  # arg: draw_list(ImDrawList*), vert_start_idx(int), vert_end_idx(int), a(ImVec2), b(ImVec2), uv_a(ImVec2), uv_b(ImVec2), clamp(bool)
  # ret: void
  def self.ShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, a, b, uv_a, uv_b, clamp)
    igShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, a, b, uv_a, uv_b, clamp)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowAboutWindow(p_open = nil)
    igShowAboutWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDebugLogWindow(p_open = nil)
    igShowDebugLogWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDemoWindow(p_open = nil)
    igShowDemoWindow(p_open)
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.ShowFontAtlas(atlas)
    igShowFontAtlas(atlas)
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

  # arg: p_open(bool*)
  # ret: void
  def self.ShowStackToolWindow(p_open = nil)
    igShowStackToolWindow(p_open)
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

  # arg: items(ImGuiShrinkWidthItem*), count(int), width_excess(float)
  # ret: void
  def self.ShrinkWidths(items, count, width_excess)
    igShrinkWidths(items, count, width_excess)
  end

  # ret: void
  def self.Shutdown()
    igShutdown()
  end

  # arg: label(const char*), v_rad(float*), v_degrees_min(float), v_degrees_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderAngle(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg", flags = 0)
    igSliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
  end

  # arg: bb(ImRect), id(ImGuiID), data_type(ImGuiDataType), p_v(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags), out_grab_bb(ImRect*)
  # ret: bool
  def self.SliderBehavior(bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb)
    igSliderBehavior(bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb)
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

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), size1(float*), size2(float*), min_size1(float), min_size2(float), hover_extend(float), hover_visibility_delay(float)
  # ret: bool
  def self.SplitterBehavior(bb, id, axis, size1, size2, min_size1, min_size2, hover_extend = 0.0, hover_visibility_delay = 0.0)
    igSplitterBehavior(bb, id, axis, size1, size2, min_size1, min_size2, hover_extend, hover_visibility_delay)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.StartMouseMovingWindow(window)
    igStartMouseMovingWindow(window)
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

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*)
  # ret: void
  def self.TabBarCloseTab(tab_bar, tab)
    igTabBarCloseTab(tab_bar, tab)
  end

  # arg: tab_bar(ImGuiTabBar*), tab_id(ImGuiID)
  # ret: pointer
  def self.TabBarFindTabByID(tab_bar, tab_id)
    igTabBarFindTabByID(tab_bar, tab_id)
  end

  # arg: tab_bar(ImGuiTabBar*)
  # ret: bool
  def self.TabBarProcessReorder(tab_bar)
    igTabBarProcessReorder(tab_bar)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(const ImGuiTabItem*), offset(int)
  # ret: void
  def self.TabBarQueueReorder(tab_bar, tab, offset)
    igTabBarQueueReorder(tab_bar, tab, offset)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(const ImGuiTabItem*), mouse_pos(ImVec2)
  # ret: void
  def self.TabBarQueueReorderFromMousePos(tab_bar, tab, mouse_pos)
    igTabBarQueueReorderFromMousePos(tab_bar, tab, mouse_pos)
  end

  # arg: tab_bar(ImGuiTabBar*), tab_id(ImGuiID)
  # ret: void
  def self.TabBarRemoveTab(tab_bar, tab_id)
    igTabBarRemoveTab(tab_bar, tab_id)
  end

  # arg: draw_list(ImDrawList*), bb(ImRect), flags(ImGuiTabItemFlags), col(ImU32)
  # ret: void
  def self.TabItemBackground(draw_list, bb, flags, col)
    igTabItemBackground(draw_list, bb, flags, col)
  end

  # arg: label(const char*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.TabItemButton(label, flags = 0)
    igTabItemButton(label, flags)
  end

  # arg: label(const char*), has_close_button(bool)
  # ret: void
  def self.TabItemCalcSize(label, has_close_button)
    pOut = ImVec2.new
    igTabItemCalcSize(pOut, label, has_close_button)
    return pOut
  end

  # arg: tab_bar(ImGuiTabBar*), label(const char*), p_open(bool*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.TabItemEx(tab_bar, label, p_open, flags)
    igTabItemEx(tab_bar, label, p_open, flags)
  end

  # arg: draw_list(ImDrawList*), bb(ImRect), flags(ImGuiTabItemFlags), frame_padding(ImVec2), label(const char*), tab_id(ImGuiID), close_button_id(ImGuiID), is_contents_visible(bool), out_just_closed(bool*), out_text_clipped(bool*)
  # ret: void
  def self.TabItemLabelAndCloseButton(draw_list, bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, out_just_closed, out_text_clipped)
    igTabItemLabelAndCloseButton(draw_list, bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, out_just_closed, out_text_clipped)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableBeginApplyRequests(table)
    igTableBeginApplyRequests(table)
  end

  # arg: table(ImGuiTable*), column_n(int)
  # ret: void
  def self.TableBeginCell(table, column_n)
    igTableBeginCell(table, column_n)
  end

  # arg: table(ImGuiTable*), columns_count(int)
  # ret: void
  def self.TableBeginInitMemory(table, columns_count)
    igTableBeginInitMemory(table, columns_count)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableBeginRow(table)
    igTableBeginRow(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableDrawBorders(table)
    igTableDrawBorders(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableDrawContextMenu(table)
    igTableDrawContextMenu(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableEndCell(table)
    igTableEndCell(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableEndRow(table)
    igTableEndRow(table)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.TableFindByID(id)
    igTableFindByID(id)
  end

  # arg: table(ImGuiTable*), column(ImGuiTableColumn*)
  # ret: void
  def self.TableFixColumnSortDirection(table, column)
    igTableFixColumnSortDirection(table, column)
  end

  # ret: void
  def self.TableGcCompactSettings()
    igTableGcCompactSettings()
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableGcCompactTransientBuffers_TablePtr(table)
    igTableGcCompactTransientBuffers_TablePtr(table)
  end

  # arg: table(ImGuiTableTempData*)
  # ret: void
  def self.TableGcCompactTransientBuffers_TableTempDataPtr(table)
    igTableGcCompactTransientBuffers_TableTempDataPtr(table)
  end

  # arg: table(ImGuiTable*)
  # ret: pointer
  def self.TableGetBoundSettings(table)
    igTableGetBoundSettings(table)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: void
  def self.TableGetCellBgRect(table, column_n)
    pOut = ImRect.new
    igTableGetCellBgRect(pOut, table, column_n)
    return pOut
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
  def self.TableGetColumnName_Int(column_n = -1)
    igTableGetColumnName_Int(column_n)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: pointer
  def self.TableGetColumnName_TablePtr(table, column_n)
    igTableGetColumnName_TablePtr(table, column_n)
  end

  # arg: column(ImGuiTableColumn*)
  # ret: int
  def self.TableGetColumnNextSortDirection(column)
    igTableGetColumnNextSortDirection(column)
  end

  # arg: table(const ImGuiTable*), column_n(int), instance_no(int)
  # ret: uint
  def self.TableGetColumnResizeID(table, column_n, instance_no = 0)
    igTableGetColumnResizeID(table, column_n, instance_no)
  end

  # arg: table(ImGuiTable*), column(ImGuiTableColumn*)
  # ret: float
  def self.TableGetColumnWidthAuto(table, column)
    igTableGetColumnWidthAuto(table, column)
  end

  # ret: float
  def self.TableGetHeaderRowHeight()
    igTableGetHeaderRowHeight()
  end

  # ret: int
  def self.TableGetHoveredColumn()
    igTableGetHoveredColumn()
  end

  # arg: table(ImGuiTable*), instance_no(int)
  # ret: pointer
  def self.TableGetInstanceData(table, instance_no)
    igTableGetInstanceData(table, instance_no)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: float
  def self.TableGetMaxColumnWidth(table, column_n)
    igTableGetMaxColumnWidth(table, column_n)
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

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableLoadSettings(table)
    igTableLoadSettings(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableMergeDrawChannels(table)
    igTableMergeDrawChannels(table)
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

  # arg: column_n(int)
  # ret: void
  def self.TableOpenContextMenu(column_n = -1)
    igTableOpenContextMenu(column_n)
  end

  # ret: void
  def self.TablePopBackgroundChannel()
    igTablePopBackgroundChannel()
  end

  # ret: void
  def self.TablePushBackgroundChannel()
    igTablePushBackgroundChannel()
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableRemove(table)
    igTableRemove(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableResetSettings(table)
    igTableResetSettings(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSaveSettings(table)
    igTableSaveSettings(table)
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

  # arg: column_n(int), sort_direction(ImGuiSortDirection), append_to_sort_specs(bool)
  # ret: void
  def self.TableSetColumnSortDirection(column_n, sort_direction, append_to_sort_specs)
    igTableSetColumnSortDirection(column_n, sort_direction, append_to_sort_specs)
  end

  # arg: column_n(int), width(float)
  # ret: void
  def self.TableSetColumnWidth(column_n, width)
    igTableSetColumnWidth(column_n, width)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSetColumnWidthAutoAll(table)
    igTableSetColumnWidthAutoAll(table)
  end

  # arg: table(ImGuiTable*), column_n(int)
  # ret: void
  def self.TableSetColumnWidthAutoSingle(table, column_n)
    igTableSetColumnWidthAutoSingle(table, column_n)
  end

  # ret: void
  def self.TableSettingsAddSettingsHandler()
    igTableSettingsAddSettingsHandler()
  end

  # arg: id(ImGuiID), columns_count(int)
  # ret: pointer
  def self.TableSettingsCreate(id, columns_count)
    igTableSettingsCreate(id, columns_count)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.TableSettingsFindByID(id)
    igTableSettingsFindByID(id)
  end

  # arg: label(const char*), flags(ImGuiTableColumnFlags), init_width_or_weight(float), user_id(ImGuiID)
  # ret: void
  def self.TableSetupColumn(label, flags = 0, init_width_or_weight = 0.0, user_id = 0)
    igTableSetupColumn(label, flags, init_width_or_weight, user_id)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSetupDrawChannels(table)
    igTableSetupDrawChannels(table)
  end

  # arg: cols(int), rows(int)
  # ret: void
  def self.TableSetupScrollFreeze(cols, rows)
    igTableSetupScrollFreeze(cols, rows)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSortSpecsBuild(table)
    igTableSortSpecsBuild(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSortSpecsSanitize(table)
    igTableSortSpecsSanitize(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateBorders(table)
    igTableUpdateBorders(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateColumnsWeightFromWidth(table)
    igTableUpdateColumnsWeightFromWidth(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateLayout(table)
    igTableUpdateLayout(table)
  end

  # arg: id(ImGuiID)
  # ret: bool
  def self.TempInputIsActive(id)
    igTempInputIsActive(id)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*), p_clamp_min(const void*), p_clamp_max(const void*)
  # ret: bool
  def self.TempInputScalar(bb, id, label, data_type, p_data, format, p_clamp_min = nil, p_clamp_max = nil)
    igTempInputScalar(bb, id, label, data_type, p_data, format, p_clamp_min, p_clamp_max)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), buf(char*), buf_size(int), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.TempInputText(bb, id, label, buf, buf_size, flags)
    igTempInputText(bb, id, label, buf, buf_size, flags)
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

  # arg: text(const char*), text_end(const char*), flags(ImGuiTextFlags)
  # ret: void
  def self.TextEx(text, text_end = nil, flags = 0)
    igTextEx(text, text_end, flags)
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

  # arg: id(ImGuiID), flags(ImGuiTreeNodeFlags), label(const char*), label_end(const char*)
  # ret: bool
  def self.TreeNodeBehavior(id, flags, label, label_end = nil)
    igTreeNodeBehavior(id, flags, label, label_end)
  end

  # arg: id(ImGuiID), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.TreeNodeBehaviorIsOpen(id, flags = 0)
    igTreeNodeBehaviorIsOpen(id, flags)
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

  # arg: id(ImGuiID)
  # ret: void
  def self.TreePushOverrideID(id)
    igTreePushOverrideID(id)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Unindent(indent_w = 0.0)
    igUnindent(indent_w)
  end

  # ret: void
  def self.UpdateHoveredWindowAndCaptureFlags()
    igUpdateHoveredWindowAndCaptureFlags()
  end

  # arg: trickle_fast_inputs(bool)
  # ret: void
  def self.UpdateInputEvents(trickle_fast_inputs)
    igUpdateInputEvents(trickle_fast_inputs)
  end

  # ret: void
  def self.UpdateMouseMovingWindowEndFrame()
    igUpdateMouseMovingWindowEndFrame()
  end

  # ret: void
  def self.UpdateMouseMovingWindowNewFrame()
    igUpdateMouseMovingWindowNewFrame()
  end

  # arg: window(ImGuiWindow*), flags(ImGuiWindowFlags), parent_window(ImGuiWindow*)
  # ret: void
  def self.UpdateWindowParentAndRootLinks(window, flags, parent_window)
    igUpdateWindowParentAndRootLinks(window, flags, parent_window)
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

  # arg: window(ImGuiWindow*), r(ImRect)
  # ret: void
  def self.WindowRectAbsToRel(window, r)
    pOut = ImRect.new
    igWindowRectAbsToRel(pOut, window, r)
    return pOut
  end

  # arg: window(ImGuiWindow*), r(ImRect)
  # ret: void
  def self.WindowRectRelToAbs(window, r)
    pOut = ImRect.new
    igWindowRectRelToAbs(pOut, window, r)
    return pOut
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
    # arg: 0:label(const char*), 1:flags(ImS64*), 2:flags_value(ImS64)
    # ret: bool
    return igCheckboxFlags_S64Ptr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(ImU64*), 2:flags_value(ImU64)
    # ret: bool
    return igCheckboxFlags_U64Ptr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
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

  def self.GetBackgroundDrawList(*arg)
    # arg: 
    # ret: pointer
    return igGetBackgroundDrawList_Nil() if arg.length == 0 && ()
    # arg: 0:viewport(ImGuiViewport*)
    # ret: pointer
    return igGetBackgroundDrawList_ViewportPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] GetBackgroundDrawList : No matching functions found (#{arg})")
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

  def self.GetForegroundDrawList(*arg)
    # arg: 
    # ret: pointer
    return igGetForegroundDrawList_Nil() if arg.length == 0 && ()
    # arg: 0:window(ImGuiWindow*)
    # ret: pointer
    return igGetForegroundDrawList_WindowPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:viewport(ImGuiViewport*)
    # ret: pointer
    return igGetForegroundDrawList_ViewportPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] GetForegroundDrawList : No matching functions found (#{arg})")
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

  def self.ImAbs(*arg)
    # arg: 0:x(int)
    # ret: int
    return igImAbs_Int(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:x(float)
    # ret: float
    return igImAbs_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:x(double)
    # ret: double
    return igImAbs_double(arg[0]) if arg.length == 1 && (arg[0].kind_of?(double))
    $stderr.puts("[Warning] ImAbs : No matching functions found (#{arg})")
  end

  def self.ImFloor(*arg)
    # arg: 0:f(float)
    # ret: float
    return igImFloor_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:pOut(ImVec2*), 1:v(ImVec2)
    # ret: void
    return igImFloor_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImFloor : No matching functions found (#{arg})")
  end

  def self.ImFloorSigned(*arg)
    # arg: 0:f(float)
    # ret: float
    return igImFloorSigned_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:pOut(ImVec2*), 1:v(ImVec2)
    # ret: void
    return igImFloorSigned_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImFloorSigned : No matching functions found (#{arg})")
  end

  def self.ImIsPowerOfTwo(*arg)
    # arg: 0:v(int)
    # ret: bool
    return igImIsPowerOfTwo_Int(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:v(ImU64)
    # ret: bool
    return igImIsPowerOfTwo_U64(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImIsPowerOfTwo : No matching functions found (#{arg})")
  end

  def self.ImLengthSqr(*arg)
    # arg: 0:lhs(ImVec2)
    # ret: float
    return igImLengthSqr_Vec2(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec2))
    # arg: 0:lhs(ImVec4)
    # ret: float
    return igImLengthSqr_Vec4(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImLengthSqr : No matching functions found (#{arg})")
  end

  def self.ImLerp(*arg)
    # arg: 0:pOut(ImVec2*), 1:a(ImVec2), 2:b(ImVec2), 3:t(float)
    # ret: void
    return igImLerp_Vec2Float(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(Float))
    # arg: 0:pOut(ImVec2*), 1:a(ImVec2), 2:b(ImVec2), 3:t(ImVec2)
    # ret: void
    return igImLerp_Vec2Vec2(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2))
    # arg: 0:pOut(ImVec4*), 1:a(ImVec4), 2:b(ImVec4), 3:t(float)
    # ret: void
    return igImLerp_Vec4(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec4) && arg[2].kind_of?(ImVec4) && arg[3].kind_of?(Float))
    $stderr.puts("[Warning] ImLerp : No matching functions found (#{arg})")
  end

  def self.ImLog(*arg)
    # arg: 0:x(float)
    # ret: float
    return igImLog_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:x(double)
    # ret: double
    return igImLog_double(arg[0]) if arg.length == 1 && (arg[0].kind_of?(double))
    $stderr.puts("[Warning] ImLog : No matching functions found (#{arg})")
  end

  def self.ImPow(*arg)
    # arg: 0:x(float), 1:y(float)
    # ret: float
    return igImPow_Float(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    # arg: 0:x(double), 1:y(double)
    # ret: double
    return igImPow_double(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(double) && arg[1].kind_of?(double))
    $stderr.puts("[Warning] ImPow : No matching functions found (#{arg})")
  end

  def self.ImRsqrt(*arg)
    # arg: 0:x(float)
    # ret: float
    return igImRsqrt_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:x(double)
    # ret: double
    return igImRsqrt_double(arg[0]) if arg.length == 1 && (arg[0].kind_of?(double))
    $stderr.puts("[Warning] ImRsqrt : No matching functions found (#{arg})")
  end

  def self.ImSign(*arg)
    # arg: 0:x(float)
    # ret: float
    return igImSign_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:x(double)
    # ret: double
    return igImSign_double(arg[0]) if arg.length == 1 && (arg[0].kind_of?(double))
    $stderr.puts("[Warning] ImSign : No matching functions found (#{arg})")
  end

  def self.IsPopupOpen(*arg)
    # arg: 0:str_id(const char*), 1:flags(ImGuiPopupFlags)
    # ret: bool
    return igIsPopupOpen_Str(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:popup_flags(ImGuiPopupFlags)
    # ret: bool
    return igIsPopupOpen_ID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] IsPopupOpen : No matching functions found (#{arg})")
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

  def self.ItemSize(*arg)
    # arg: 0:size(ImVec2), 1:text_baseline_y(float)
    # ret: void
    return igItemSize_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Float))
    # arg: 0:bb(ImRect), 1:text_baseline_y(float)
    # ret: void
    return igItemSize_Rect(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ItemSize : No matching functions found (#{arg})")
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

  def self.MarkIniSettingsDirty(*arg)
    # arg: 
    # ret: void
    return igMarkIniSettingsDirty_Nil() if arg.length == 0 && ()
    # arg: 0:window(ImGuiWindow*)
    # ret: void
    return igMarkIniSettingsDirty_WindowPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] MarkIniSettingsDirty : No matching functions found (#{arg})")
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

  def self.SetScrollFromPosX(*arg)
    # arg: 0:local_x(float), 1:center_x_ratio(float)
    # ret: void
    return igSetScrollFromPosX_Float(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:local_x(float), 2:center_x_ratio(float)
    # ret: void
    return igSetScrollFromPosX_WindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float) && arg[2].kind_of?(Float))
    $stderr.puts("[Warning] SetScrollFromPosX : No matching functions found (#{arg})")
  end

  def self.SetScrollFromPosY(*arg)
    # arg: 0:local_y(float), 1:center_y_ratio(float)
    # ret: void
    return igSetScrollFromPosY_Float(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:local_y(float), 2:center_y_ratio(float)
    # ret: void
    return igSetScrollFromPosY_WindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float) && arg[2].kind_of?(Float))
    $stderr.puts("[Warning] SetScrollFromPosY : No matching functions found (#{arg})")
  end

  def self.SetScrollX(*arg)
    # arg: 0:scroll_x(float)
    # ret: void
    return igSetScrollX_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:scroll_x(float)
    # ret: void
    return igSetScrollX_WindowPtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] SetScrollX : No matching functions found (#{arg})")
  end

  def self.SetScrollY(*arg)
    # arg: 0:scroll_y(float)
    # ret: void
    return igSetScrollY_Float(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:scroll_y(float)
    # ret: void
    return igSetScrollY_WindowPtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] SetScrollY : No matching functions found (#{arg})")
  end

  def self.SetWindowCollapsed(*arg)
    # arg: 0:collapsed(bool), 1:cond(ImGuiCond)
    # ret: void
    return igSetWindowCollapsed_Bool(arg[0], arg[1]) if arg.length == 2 && ((arg[0].is_a?(TrueClass) || arg[0].is_a?(FalseClass)) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowCollapsed_Str(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
    # arg: 0:window(ImGuiWindow*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowCollapsed_WindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
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
    # arg: 0:window(ImGuiWindow*), 1:pos(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowPos_WindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] SetWindowPos : No matching functions found (#{arg})")
  end

  def self.SetWindowSize(*arg)
    # arg: 0:size(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return igSetWindowSize_Vec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowSize_Str(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    # arg: 0:window(ImGuiWindow*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return igSetWindowSize_WindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] SetWindowSize : No matching functions found (#{arg})")
  end

  def self.TableGcCompactTransientBuffers(*arg)
    # arg: 0:table(ImGuiTable*)
    # ret: void
    return igTableGcCompactTransientBuffers_TablePtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:table(ImGuiTableTempData*)
    # ret: void
    return igTableGcCompactTransientBuffers_TableTempDataPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] TableGcCompactTransientBuffers : No matching functions found (#{arg})")
  end

  def self.TableGetColumnName(*arg)
    # arg: 0:column_n(int)
    # ret: pointer
    return igTableGetColumnName_Int(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:table(const ImGuiTable*), 1:column_n(int)
    # ret: pointer
    return igTableGetColumnName_TablePtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] TableGetColumnName : No matching functions found (#{arg})")
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
