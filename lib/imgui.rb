# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

# defines
IMGUI_VERSION_NUM = 19271 # 0x4B47
IM_UNICODE_CODEPOINT_INVALID = 65533 # 0xFFFD
IM_UNICODE_CODEPOINT_MAX = 65535 # 0xFFFF
IM_COL32_R_SHIFT = 0 # 0x0
IM_COL32_G_SHIFT = 8 # 0x8
IM_COL32_B_SHIFT = 16 # 0x10
IM_COL32_A_SHIFT = 24 # 0x18
IM_COL32_A_MASK = 4278190080 # 0xFF000000
IM_DRAWLIST_TEX_LINES_WIDTH_MAX = 32 # 0x20
ImFontAtlasRectId_Invalid = -1 # -0x1
IM_PI = 3.141592653589793 # 3.14159265358979323846f
IM_TABSIZE = 4 # 0x4
IM_DRAWLIST_CIRCLE_AUTO_SEGMENT_MIN = 4 # 0x4
IM_DRAWLIST_CIRCLE_AUTO_SEGMENT_MAX = 512 # 0x200
IM_DRAWLIST_ARCFAST_TABLE_SIZE = 48 # 0x30
IMSTB_TEXTEDIT_GETWIDTH_NEWLINE = -1.0 # -1.0f
IMSTB_TEXTEDIT_UNDOSTATECOUNT = 99 # 0x63
IMSTB_TEXTEDIT_UNDOCHARCOUNT = 999 # 0x3E7
ImGuiKey_LegacyNativeKey_BEGIN = 0 # 0x0
ImGuiKey_LegacyNativeKey_END = 512 # 0x200
IMGUI_WINDOW_HARD_MIN_SIZE = 4.0 # 4.0f
IMGUI_TABLE_MAX_COLUMNS = 512 # 0x200
IMGUI_FONT_SIZE_MAX = 512.0 # 512.0f
IMGUI_FONT_SIZE_THRESHOLD_FOR_LOADADVANCEXONLYMODE = 128.0 # 128.0f
ImFontAtlasRectId_IndexMask_ = 524287 # 0x7FFFF
ImFontAtlasRectId_GenerationMask_ = 1072693248 # 0x3FF00000
ImFontAtlasRectId_GenerationShift_ = 20 # 0x14

FFI.typedef :ushort, :ImDrawIdx
FFI.typedef :uint, :ImGuiID
FFI.typedef :char, :ImS8
FFI.typedef :uchar, :ImU8
FFI.typedef :short, :ImS16
FFI.typedef :ushort, :ImU16
FFI.typedef :int, :ImS32
FFI.typedef :uint, :ImU32
FFI.typedef :int64, :ImS64
FFI.typedef :uint64, :ImU64
FFI.typedef :int, :ImGuiDir
FFI.typedef :int, :ImGuiKey
FFI.typedef :int, :ImGuiMouseSource
FFI.typedef :uchar, :ImGuiSortDirection
FFI.typedef :int, :ImGuiCol
FFI.typedef :int, :ImGuiCond
FFI.typedef :int, :ImGuiDataType
FFI.typedef :int, :ImGuiMouseButton
FFI.typedef :int, :ImGuiMouseCursor
FFI.typedef :int, :ImGuiStyleVar
FFI.typedef :int, :ImGuiTableBgTarget
FFI.typedef :int, :ImDrawFlags
FFI.typedef :int, :ImDrawListFlags
FFI.typedef :int, :ImDrawTextFlags
FFI.typedef :int, :ImFontFlags
FFI.typedef :int, :ImFontAtlasFlags
FFI.typedef :int, :ImGuiBackendFlags
FFI.typedef :int, :ImGuiButtonFlags
FFI.typedef :int, :ImGuiChildFlags
FFI.typedef :int, :ImGuiColorEditFlags
FFI.typedef :int, :ImGuiConfigFlags
FFI.typedef :int, :ImGuiComboFlags
FFI.typedef :int, :ImGuiDragDropFlags
FFI.typedef :int, :ImGuiFocusedFlags
FFI.typedef :int, :ImGuiHoveredFlags
FFI.typedef :int, :ImGuiInputFlags
FFI.typedef :int, :ImGuiInputTextFlags
FFI.typedef :int, :ImGuiItemFlags
FFI.typedef :int, :ImGuiKeyChord
FFI.typedef :int, :ImGuiListClipperFlags
FFI.typedef :int, :ImGuiPopupFlags
FFI.typedef :int, :ImGuiMultiSelectFlags
FFI.typedef :int, :ImGuiSelectableFlags
FFI.typedef :int, :ImGuiSliderFlags
FFI.typedef :int, :ImGuiTabBarFlags
FFI.typedef :int, :ImGuiTabItemFlags
FFI.typedef :int, :ImGuiTableFlags
FFI.typedef :int, :ImGuiTableColumnFlags
FFI.typedef :int, :ImGuiTableRowFlags
FFI.typedef :int, :ImGuiTreeNodeFlags
FFI.typedef :int, :ImGuiViewportFlags
FFI.typedef :int, :ImGuiWindowFlags
FFI.typedef :uint, :ImWchar32
FFI.typedef :ushort, :ImWchar16
FFI.typedef :ushort, :ImWchar
FFI.typedef :int64, :ImGuiSelectionUserData
FFI.typedef :uint64, :ImTextureID
FFI.typedef :int, :ImFontAtlasRectId
FFI.typedef :int, :ImFontAtlasCustomRect
FFI.typedef :short, :ImGuiTableColumnIdx
FFI.typedef :int, :ImGuiLocKey
FFI.typedef :int, :ImGuiLayoutType
FFI.typedef :int, :ImGuiActivateFlags
FFI.typedef :int, :ImGuiDebugLogFlags
FFI.typedef :int, :ImGuiFocusRequestFlags
FFI.typedef :int, :ImGuiItemStatusFlags
FFI.typedef :int, :ImGuiOldColumnFlags
FFI.typedef :int, :ImGuiLogFlags
FFI.typedef :int, :ImGuiNavRenderCursorFlags
FFI.typedef :int, :ImGuiNavMoveFlags
FFI.typedef :int, :ImGuiNextItemDataFlags
FFI.typedef :int, :ImGuiNextWindowDataFlags
FFI.typedef :int, :ImGuiScrollFlags
FFI.typedef :int, :ImGuiSeparatorFlags
FFI.typedef :int, :ImGuiTextFlags
FFI.typedef :int, :ImGuiTooltipFlags
FFI.typedef :int, :ImGuiTypingSelectFlags
FFI.typedef :int, :ImGuiWindowBgClickFlags
FFI.typedef :int, :ImGuiWindowRefreshFlags
FFI.typedef :ushort, :ImGuiTableDrawChannelIdx
FFI.typedef :pointer, :ImFileHandle
FFI.typedef :pointer, :ImBitArrayPtr
FFI.typedef :int, :ImPoolIdx
FFI.typedef :short, :ImGuiKeyRoutingIndex
FFI.typedef :int, :ImFontBuilderIO
FFI.typedef :pointer, :stbrp_node_im

# ImGuiWindowFlags_
ImGuiWindowFlags_None = 0 # 0x0
ImGuiWindowFlags_NoTitleBar = 1 # 0x1
ImGuiWindowFlags_NoResize = 2 # 0x2
ImGuiWindowFlags_NoMove = 4 # 0x4
ImGuiWindowFlags_NoScrollbar = 8 # 0x8
ImGuiWindowFlags_NoScrollWithMouse = 16 # 0x10
ImGuiWindowFlags_NoCollapse = 32 # 0x20
ImGuiWindowFlags_AlwaysAutoResize = 64 # 0x40
ImGuiWindowFlags_NoBackground = 128 # 0x80
ImGuiWindowFlags_NoSavedSettings = 256 # 0x100
ImGuiWindowFlags_NoMouseInputs = 512 # 0x200
ImGuiWindowFlags_MenuBar = 1024 # 0x400
ImGuiWindowFlags_HorizontalScrollbar = 2048 # 0x800
ImGuiWindowFlags_NoFocusOnAppearing = 4096 # 0x1000
ImGuiWindowFlags_NoBringToFrontOnFocus = 8192 # 0x2000
ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384 # 0x4000
ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768 # 0x8000
ImGuiWindowFlags_NoNavInputs = 65536 # 0x10000
ImGuiWindowFlags_NoNavFocus = 131072 # 0x20000
ImGuiWindowFlags_UnsavedDocument = 262144 # 0x40000
ImGuiWindowFlags_NoNav = 196608 # 0x30000
ImGuiWindowFlags_NoDecoration = 43 # 0x2B
ImGuiWindowFlags_NoInputs = 197120 # 0x30200
ImGuiWindowFlags_ChildWindow = 16777216 # 0x1000000
ImGuiWindowFlags_Tooltip = 33554432 # 0x2000000
ImGuiWindowFlags_Popup = 67108864 # 0x4000000
ImGuiWindowFlags_Modal = 134217728 # 0x8000000
ImGuiWindowFlags_ChildMenu = 268435456 # 0x10000000

# ImGuiChildFlags_
ImGuiChildFlags_None = 0 # 0x0
ImGuiChildFlags_Borders = 1 # 0x1
ImGuiChildFlags_AlwaysUseWindowPadding = 2 # 0x2
ImGuiChildFlags_ResizeX = 4 # 0x4
ImGuiChildFlags_ResizeY = 8 # 0x8
ImGuiChildFlags_AutoResizeX = 16 # 0x10
ImGuiChildFlags_AutoResizeY = 32 # 0x20
ImGuiChildFlags_AlwaysAutoResize = 64 # 0x40
ImGuiChildFlags_FrameStyle = 128 # 0x80
ImGuiChildFlags_NavFlattened = 256 # 0x100

# ImGuiItemFlags_
ImGuiItemFlags_None = 0 # 0x0
ImGuiItemFlags_NoTabStop = 1 # 0x1
ImGuiItemFlags_NoNav = 2 # 0x2
ImGuiItemFlags_NoNavDefaultFocus = 4 # 0x4
ImGuiItemFlags_ButtonRepeat = 8 # 0x8
ImGuiItemFlags_AutoClosePopups = 16 # 0x10
ImGuiItemFlags_AllowDuplicateId = 32 # 0x20
ImGuiItemFlags_Disabled = 64 # 0x40

# ImGuiInputTextFlags_
ImGuiInputTextFlags_None = 0 # 0x0
ImGuiInputTextFlags_CharsDecimal = 1 # 0x1
ImGuiInputTextFlags_CharsHexadecimal = 2 # 0x2
ImGuiInputTextFlags_CharsScientific = 4 # 0x4
ImGuiInputTextFlags_CharsUppercase = 8 # 0x8
ImGuiInputTextFlags_CharsNoBlank = 16 # 0x10
ImGuiInputTextFlags_AllowTabInput = 32 # 0x20
ImGuiInputTextFlags_EnterReturnsTrue = 64 # 0x40
ImGuiInputTextFlags_EscapeClearsAll = 128 # 0x80
ImGuiInputTextFlags_CtrlEnterForNewLine = 256 # 0x100
ImGuiInputTextFlags_ReadOnly = 512 # 0x200
ImGuiInputTextFlags_Password = 1024 # 0x400
ImGuiInputTextFlags_AlwaysOverwrite = 2048 # 0x800
ImGuiInputTextFlags_AutoSelectAll = 4096 # 0x1000
ImGuiInputTextFlags_ParseEmptyRefVal = 8192 # 0x2000
ImGuiInputTextFlags_DisplayEmptyRefVal = 16384 # 0x4000
ImGuiInputTextFlags_NoHorizontalScroll = 32768 # 0x8000
ImGuiInputTextFlags_NoUndoRedo = 65536 # 0x10000
ImGuiInputTextFlags_ElideLeft = 131072 # 0x20000
ImGuiInputTextFlags_CallbackCompletion = 262144 # 0x40000
ImGuiInputTextFlags_CallbackHistory = 524288 # 0x80000
ImGuiInputTextFlags_CallbackAlways = 1048576 # 0x100000
ImGuiInputTextFlags_CallbackCharFilter = 2097152 # 0x200000
ImGuiInputTextFlags_CallbackResize = 4194304 # 0x400000
ImGuiInputTextFlags_CallbackEdit = 8388608 # 0x800000
ImGuiInputTextFlags_WordWrap = 16777216 # 0x1000000

# ImGuiTreeNodeFlags_
ImGuiTreeNodeFlags_None = 0 # 0x0
ImGuiTreeNodeFlags_Selected = 1 # 0x1
ImGuiTreeNodeFlags_Framed = 2 # 0x2
ImGuiTreeNodeFlags_AllowOverlap = 4 # 0x4
ImGuiTreeNodeFlags_NoTreePushOnOpen = 8 # 0x8
ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16 # 0x10
ImGuiTreeNodeFlags_DefaultOpen = 32 # 0x20
ImGuiTreeNodeFlags_OpenOnDoubleClick = 64 # 0x40
ImGuiTreeNodeFlags_OpenOnArrow = 128 # 0x80
ImGuiTreeNodeFlags_Leaf = 256 # 0x100
ImGuiTreeNodeFlags_Bullet = 512 # 0x200
ImGuiTreeNodeFlags_FramePadding = 1024 # 0x400
ImGuiTreeNodeFlags_SpanAvailWidth = 2048 # 0x800
ImGuiTreeNodeFlags_SpanFullWidth = 4096 # 0x1000
ImGuiTreeNodeFlags_SpanLabelWidth = 8192 # 0x2000
ImGuiTreeNodeFlags_SpanAllColumns = 16384 # 0x4000
ImGuiTreeNodeFlags_LabelSpanAllColumns = 32768 # 0x8000
ImGuiTreeNodeFlags_NavLeftJumpsToParent = 131072 # 0x20000
ImGuiTreeNodeFlags_CollapsingHeader = 26 # 0x1A
ImGuiTreeNodeFlags_DrawLinesNone = 262144 # 0x40000
ImGuiTreeNodeFlags_DrawLinesFull = 524288 # 0x80000
ImGuiTreeNodeFlags_DrawLinesToNodes = 1048576 # 0x100000
ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 131072 # 0x20000
ImGuiTreeNodeFlags_SpanTextWidth = 8192 # 0x2000

# ImGuiPopupFlags_
ImGuiPopupFlags_None = 0 # 0x0
ImGuiPopupFlags_MouseButtonLeft = 4 # 0x4
ImGuiPopupFlags_MouseButtonRight = 8 # 0x8
ImGuiPopupFlags_MouseButtonMiddle = 12 # 0xC
ImGuiPopupFlags_NoReopen = 32 # 0x20
ImGuiPopupFlags_NoOpenOverExistingPopup = 128 # 0x80
ImGuiPopupFlags_NoOpenOverItems = 256 # 0x100
ImGuiPopupFlags_AnyPopupId = 1024 # 0x400
ImGuiPopupFlags_AnyPopupLevel = 2048 # 0x800
ImGuiPopupFlags_AnyPopup = 3072 # 0xC00
ImGuiPopupFlags_MouseButtonShift_ = 2 # 0x2
ImGuiPopupFlags_MouseButtonMask_ = 12 # 0xC
ImGuiPopupFlags_InvalidMask_ = 3 # 0x3

# ImGuiSelectableFlags_
ImGuiSelectableFlags_None = 0 # 0x0
ImGuiSelectableFlags_NoAutoClosePopups = 1 # 0x1
ImGuiSelectableFlags_SpanAllColumns = 2 # 0x2
ImGuiSelectableFlags_AllowDoubleClick = 4 # 0x4
ImGuiSelectableFlags_Disabled = 8 # 0x8
ImGuiSelectableFlags_AllowOverlap = 16 # 0x10
ImGuiSelectableFlags_Highlight = 32 # 0x20
ImGuiSelectableFlags_SelectOnNav = 64 # 0x40
ImGuiSelectableFlags_DontClosePopups = 1 # 0x1

# ImGuiComboFlags_
ImGuiComboFlags_None = 0 # 0x0
ImGuiComboFlags_PopupAlignLeft = 1 # 0x1
ImGuiComboFlags_HeightSmall = 2 # 0x2
ImGuiComboFlags_HeightRegular = 4 # 0x4
ImGuiComboFlags_HeightLarge = 8 # 0x8
ImGuiComboFlags_HeightLargest = 16 # 0x10
ImGuiComboFlags_NoArrowButton = 32 # 0x20
ImGuiComboFlags_NoPreview = 64 # 0x40
ImGuiComboFlags_WidthFitPreview = 128 # 0x80
ImGuiComboFlags_HeightMask_ = 30 # 0x1E

# ImGuiTabBarFlags_
ImGuiTabBarFlags_None = 0 # 0x0
ImGuiTabBarFlags_Reorderable = 1 # 0x1
ImGuiTabBarFlags_AutoSelectNewTabs = 2 # 0x2
ImGuiTabBarFlags_TabListPopupButton = 4 # 0x4
ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8 # 0x8
ImGuiTabBarFlags_NoTabListScrollingButtons = 16 # 0x10
ImGuiTabBarFlags_NoTooltip = 32 # 0x20
ImGuiTabBarFlags_DrawSelectedOverline = 64 # 0x40
ImGuiTabBarFlags_FittingPolicyMixed = 128 # 0x80
ImGuiTabBarFlags_FittingPolicyShrink = 256 # 0x100
ImGuiTabBarFlags_FittingPolicyScroll = 512 # 0x200
ImGuiTabBarFlags_FittingPolicyMask_ = 896 # 0x380
ImGuiTabBarFlags_FittingPolicyDefault_ = 128 # 0x80
ImGuiTabBarFlags_FittingPolicyResizeDown = 256 # 0x100

# ImGuiTabItemFlags_
ImGuiTabItemFlags_None = 0 # 0x0
ImGuiTabItemFlags_UnsavedDocument = 1 # 0x1
ImGuiTabItemFlags_SetSelected = 2 # 0x2
ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4 # 0x4
ImGuiTabItemFlags_NoPushId = 8 # 0x8
ImGuiTabItemFlags_NoTooltip = 16 # 0x10
ImGuiTabItemFlags_NoReorder = 32 # 0x20
ImGuiTabItemFlags_Leading = 64 # 0x40
ImGuiTabItemFlags_Trailing = 128 # 0x80
ImGuiTabItemFlags_NoAssumedClosure = 256 # 0x100

# ImGuiFocusedFlags_
ImGuiFocusedFlags_None = 0 # 0x0
ImGuiFocusedFlags_ChildWindows = 1 # 0x1
ImGuiFocusedFlags_RootWindow = 2 # 0x2
ImGuiFocusedFlags_AnyWindow = 4 # 0x4
ImGuiFocusedFlags_NoPopupHierarchy = 8 # 0x8
ImGuiFocusedFlags_RootAndChildWindows = 3 # 0x3

# ImGuiHoveredFlags_
ImGuiHoveredFlags_None = 0 # 0x0
ImGuiHoveredFlags_ChildWindows = 1 # 0x1
ImGuiHoveredFlags_RootWindow = 2 # 0x2
ImGuiHoveredFlags_AnyWindow = 4 # 0x4
ImGuiHoveredFlags_NoPopupHierarchy = 8 # 0x8
ImGuiHoveredFlags_AllowWhenBlockedByPopup = 32 # 0x20
ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 128 # 0x80
ImGuiHoveredFlags_AllowWhenOverlappedByItem = 256 # 0x100
ImGuiHoveredFlags_AllowWhenOverlappedByWindow = 512 # 0x200
ImGuiHoveredFlags_AllowWhenDisabled = 1024 # 0x400
ImGuiHoveredFlags_NoNavOverride = 2048 # 0x800
ImGuiHoveredFlags_AllowWhenOverlapped = 768 # 0x300
ImGuiHoveredFlags_RectOnly = 928 # 0x3A0
ImGuiHoveredFlags_RootAndChildWindows = 3 # 0x3
ImGuiHoveredFlags_ForTooltip = 4096 # 0x1000
ImGuiHoveredFlags_Stationary = 8192 # 0x2000
ImGuiHoveredFlags_DelayNone = 16384 # 0x4000
ImGuiHoveredFlags_DelayShort = 32768 # 0x8000
ImGuiHoveredFlags_DelayNormal = 65536 # 0x10000
ImGuiHoveredFlags_NoSharedDelay = 131072 # 0x20000

# ImGuiDragDropFlags_
ImGuiDragDropFlags_None = 0 # 0x0
ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 # 0x1
ImGuiDragDropFlags_SourceNoDisableHover = 2 # 0x2
ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4 # 0x4
ImGuiDragDropFlags_SourceAllowNullID = 8 # 0x8
ImGuiDragDropFlags_SourceExtern = 16 # 0x10
ImGuiDragDropFlags_PayloadAutoExpire = 32 # 0x20
ImGuiDragDropFlags_PayloadNoCrossContext = 64 # 0x40
ImGuiDragDropFlags_PayloadNoCrossProcess = 128 # 0x80
ImGuiDragDropFlags_AcceptBeforeDelivery = 1024 # 0x400
ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048 # 0x800
ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096 # 0x1000
ImGuiDragDropFlags_AcceptDrawAsHovered = 8192 # 0x2000
ImGuiDragDropFlags_AcceptPeekOnly = 3072 # 0xC00
ImGuiDragDropFlags_SourceAutoExpirePayload = 32 # 0x20

# ImGuiDataType_
ImGuiDataType_S8 = 0 # 0x0
ImGuiDataType_U8 = 1 # 0x1
ImGuiDataType_S16 = 2 # 0x2
ImGuiDataType_U16 = 3 # 0x3
ImGuiDataType_S32 = 4 # 0x4
ImGuiDataType_U32 = 5 # 0x5
ImGuiDataType_S64 = 6 # 0x6
ImGuiDataType_U64 = 7 # 0x7
ImGuiDataType_Float = 8 # 0x8
ImGuiDataType_Double = 9 # 0x9
ImGuiDataType_Bool = 10 # 0xA
ImGuiDataType_String = 11 # 0xB
ImGuiDataType_COUNT = 12 # 0xC

# ImGuiDir
ImGuiDir_None = -1 # -0x1
ImGuiDir_Left = 0 # 0x0
ImGuiDir_Right = 1 # 0x1
ImGuiDir_Up = 2 # 0x2
ImGuiDir_Down = 3 # 0x3
ImGuiDir_COUNT = 4 # 0x4

# ImGuiSortDirection
ImGuiSortDirection_None = 0 # 0x0
ImGuiSortDirection_Ascending = 1 # 0x1
ImGuiSortDirection_Descending = 2 # 0x2

# ImGuiKey
ImGuiKey_None = 0 # 0x0
ImGuiKey_NamedKey_BEGIN = 512 # 0x200
ImGuiKey_Tab = 512 # 0x200
ImGuiKey_LeftArrow = 513 # 0x201
ImGuiKey_RightArrow = 514 # 0x202
ImGuiKey_UpArrow = 515 # 0x203
ImGuiKey_DownArrow = 516 # 0x204
ImGuiKey_PageUp = 517 # 0x205
ImGuiKey_PageDown = 518 # 0x206
ImGuiKey_Home = 519 # 0x207
ImGuiKey_End = 520 # 0x208
ImGuiKey_Insert = 521 # 0x209
ImGuiKey_Delete = 522 # 0x20A
ImGuiKey_Backspace = 523 # 0x20B
ImGuiKey_Space = 524 # 0x20C
ImGuiKey_Enter = 525 # 0x20D
ImGuiKey_Escape = 526 # 0x20E
ImGuiKey_LeftCtrl = 527 # 0x20F
ImGuiKey_LeftShift = 528 # 0x210
ImGuiKey_LeftAlt = 529 # 0x211
ImGuiKey_LeftSuper = 530 # 0x212
ImGuiKey_RightCtrl = 531 # 0x213
ImGuiKey_RightShift = 532 # 0x214
ImGuiKey_RightAlt = 533 # 0x215
ImGuiKey_RightSuper = 534 # 0x216
ImGuiKey_Menu = 535 # 0x217
ImGuiKey_0 = 536 # 0x218
ImGuiKey_1 = 537 # 0x219
ImGuiKey_2 = 538 # 0x21A
ImGuiKey_3 = 539 # 0x21B
ImGuiKey_4 = 540 # 0x21C
ImGuiKey_5 = 541 # 0x21D
ImGuiKey_6 = 542 # 0x21E
ImGuiKey_7 = 543 # 0x21F
ImGuiKey_8 = 544 # 0x220
ImGuiKey_9 = 545 # 0x221
ImGuiKey_A = 546 # 0x222
ImGuiKey_B = 547 # 0x223
ImGuiKey_C = 548 # 0x224
ImGuiKey_D = 549 # 0x225
ImGuiKey_E = 550 # 0x226
ImGuiKey_F = 551 # 0x227
ImGuiKey_G = 552 # 0x228
ImGuiKey_H = 553 # 0x229
ImGuiKey_I = 554 # 0x22A
ImGuiKey_J = 555 # 0x22B
ImGuiKey_K = 556 # 0x22C
ImGuiKey_L = 557 # 0x22D
ImGuiKey_M = 558 # 0x22E
ImGuiKey_N = 559 # 0x22F
ImGuiKey_O = 560 # 0x230
ImGuiKey_P = 561 # 0x231
ImGuiKey_Q = 562 # 0x232
ImGuiKey_R = 563 # 0x233
ImGuiKey_S = 564 # 0x234
ImGuiKey_T = 565 # 0x235
ImGuiKey_U = 566 # 0x236
ImGuiKey_V = 567 # 0x237
ImGuiKey_W = 568 # 0x238
ImGuiKey_X = 569 # 0x239
ImGuiKey_Y = 570 # 0x23A
ImGuiKey_Z = 571 # 0x23B
ImGuiKey_F1 = 572 # 0x23C
ImGuiKey_F2 = 573 # 0x23D
ImGuiKey_F3 = 574 # 0x23E
ImGuiKey_F4 = 575 # 0x23F
ImGuiKey_F5 = 576 # 0x240
ImGuiKey_F6 = 577 # 0x241
ImGuiKey_F7 = 578 # 0x242
ImGuiKey_F8 = 579 # 0x243
ImGuiKey_F9 = 580 # 0x244
ImGuiKey_F10 = 581 # 0x245
ImGuiKey_F11 = 582 # 0x246
ImGuiKey_F12 = 583 # 0x247
ImGuiKey_F13 = 584 # 0x248
ImGuiKey_F14 = 585 # 0x249
ImGuiKey_F15 = 586 # 0x24A
ImGuiKey_F16 = 587 # 0x24B
ImGuiKey_F17 = 588 # 0x24C
ImGuiKey_F18 = 589 # 0x24D
ImGuiKey_F19 = 590 # 0x24E
ImGuiKey_F20 = 591 # 0x24F
ImGuiKey_F21 = 592 # 0x250
ImGuiKey_F22 = 593 # 0x251
ImGuiKey_F23 = 594 # 0x252
ImGuiKey_F24 = 595 # 0x253
ImGuiKey_Apostrophe = 596 # 0x254
ImGuiKey_Comma = 597 # 0x255
ImGuiKey_Minus = 598 # 0x256
ImGuiKey_Period = 599 # 0x257
ImGuiKey_Slash = 600 # 0x258
ImGuiKey_Semicolon = 601 # 0x259
ImGuiKey_Equal = 602 # 0x25A
ImGuiKey_LeftBracket = 603 # 0x25B
ImGuiKey_Backslash = 604 # 0x25C
ImGuiKey_RightBracket = 605 # 0x25D
ImGuiKey_GraveAccent = 606 # 0x25E
ImGuiKey_CapsLock = 607 # 0x25F
ImGuiKey_ScrollLock = 608 # 0x260
ImGuiKey_NumLock = 609 # 0x261
ImGuiKey_PrintScreen = 610 # 0x262
ImGuiKey_Pause = 611 # 0x263
ImGuiKey_Keypad0 = 612 # 0x264
ImGuiKey_Keypad1 = 613 # 0x265
ImGuiKey_Keypad2 = 614 # 0x266
ImGuiKey_Keypad3 = 615 # 0x267
ImGuiKey_Keypad4 = 616 # 0x268
ImGuiKey_Keypad5 = 617 # 0x269
ImGuiKey_Keypad6 = 618 # 0x26A
ImGuiKey_Keypad7 = 619 # 0x26B
ImGuiKey_Keypad8 = 620 # 0x26C
ImGuiKey_Keypad9 = 621 # 0x26D
ImGuiKey_KeypadDecimal = 622 # 0x26E
ImGuiKey_KeypadDivide = 623 # 0x26F
ImGuiKey_KeypadMultiply = 624 # 0x270
ImGuiKey_KeypadSubtract = 625 # 0x271
ImGuiKey_KeypadAdd = 626 # 0x272
ImGuiKey_KeypadEnter = 627 # 0x273
ImGuiKey_KeypadEqual = 628 # 0x274
ImGuiKey_AppBack = 629 # 0x275
ImGuiKey_AppForward = 630 # 0x276
ImGuiKey_Oem102 = 631 # 0x277
ImGuiKey_GamepadStart = 632 # 0x278
ImGuiKey_GamepadBack = 633 # 0x279
ImGuiKey_GamepadFaceLeft = 634 # 0x27A
ImGuiKey_GamepadFaceRight = 635 # 0x27B
ImGuiKey_GamepadFaceUp = 636 # 0x27C
ImGuiKey_GamepadFaceDown = 637 # 0x27D
ImGuiKey_GamepadDpadLeft = 638 # 0x27E
ImGuiKey_GamepadDpadRight = 639 # 0x27F
ImGuiKey_GamepadDpadUp = 640 # 0x280
ImGuiKey_GamepadDpadDown = 641 # 0x281
ImGuiKey_GamepadL1 = 642 # 0x282
ImGuiKey_GamepadR1 = 643 # 0x283
ImGuiKey_GamepadL2 = 644 # 0x284
ImGuiKey_GamepadR2 = 645 # 0x285
ImGuiKey_GamepadL3 = 646 # 0x286
ImGuiKey_GamepadR3 = 647 # 0x287
ImGuiKey_GamepadLStickLeft = 648 # 0x288
ImGuiKey_GamepadLStickRight = 649 # 0x289
ImGuiKey_GamepadLStickUp = 650 # 0x28A
ImGuiKey_GamepadLStickDown = 651 # 0x28B
ImGuiKey_GamepadRStickLeft = 652 # 0x28C
ImGuiKey_GamepadRStickRight = 653 # 0x28D
ImGuiKey_GamepadRStickUp = 654 # 0x28E
ImGuiKey_GamepadRStickDown = 655 # 0x28F
ImGuiKey_MouseLeft = 656 # 0x290
ImGuiKey_MouseRight = 657 # 0x291
ImGuiKey_MouseMiddle = 658 # 0x292
ImGuiKey_MouseX1 = 659 # 0x293
ImGuiKey_MouseX2 = 660 # 0x294
ImGuiKey_MouseWheelX = 661 # 0x295
ImGuiKey_MouseWheelY = 662 # 0x296
ImGuiKey_ReservedForModCtrl = 663 # 0x297
ImGuiKey_ReservedForModShift = 664 # 0x298
ImGuiKey_ReservedForModAlt = 665 # 0x299
ImGuiKey_ReservedForModSuper = 666 # 0x29A
ImGuiKey_NamedKey_END = 667 # 0x29B
ImGuiKey_NamedKey_COUNT = 155 # 0x9B
ImGuiMod_None = 0 # 0x0
ImGuiMod_Ctrl = 4096 # 0x1000
ImGuiMod_Shift = 8192 # 0x2000
ImGuiMod_Alt = 16384 # 0x4000
ImGuiMod_Super = 32768 # 0x8000
ImGuiMod_Mask_ = 61440 # 0xF000
ImGuiKey_COUNT = 667 # 0x29B

# ImGuiInputFlags_
ImGuiInputFlags_None = 0 # 0x0
ImGuiInputFlags_Repeat = 1 # 0x1
ImGuiInputFlags_RouteActive = 1024 # 0x400
ImGuiInputFlags_RouteFocused = 2048 # 0x800
ImGuiInputFlags_RouteGlobal = 4096 # 0x1000
ImGuiInputFlags_RouteAlways = 8192 # 0x2000
ImGuiInputFlags_RouteOverFocused = 16384 # 0x4000
ImGuiInputFlags_RouteOverActive = 32768 # 0x8000
ImGuiInputFlags_RouteUnlessBgFocused = 65536 # 0x10000
ImGuiInputFlags_RouteFromRootWindow = 131072 # 0x20000
ImGuiInputFlags_Tooltip = 262144 # 0x40000

# ImGuiConfigFlags_
ImGuiConfigFlags_None = 0 # 0x0
ImGuiConfigFlags_NavEnableKeyboard = 1 # 0x1
ImGuiConfigFlags_NavEnableGamepad = 2 # 0x2
ImGuiConfigFlags_NoMouse = 16 # 0x10
ImGuiConfigFlags_NoMouseCursorChange = 32 # 0x20
ImGuiConfigFlags_NoKeyboard = 64 # 0x40
ImGuiConfigFlags_IsSRGB = 1048576 # 0x100000
ImGuiConfigFlags_IsTouchScreen = 2097152 # 0x200000
ImGuiConfigFlags_NavEnableSetMousePos = 4 # 0x4
ImGuiConfigFlags_NavNoCaptureKeyboard = 8 # 0x8

# ImGuiBackendFlags_
ImGuiBackendFlags_None = 0 # 0x0
ImGuiBackendFlags_HasGamepad = 1 # 0x1
ImGuiBackendFlags_HasMouseCursors = 2 # 0x2
ImGuiBackendFlags_HasSetMousePos = 4 # 0x4
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 0x8
ImGuiBackendFlags_RendererHasTextures = 16 # 0x10

# ImGuiCol_
ImGuiCol_Text = 0 # 0x0
ImGuiCol_TextDisabled = 1 # 0x1
ImGuiCol_WindowBg = 2 # 0x2
ImGuiCol_ChildBg = 3 # 0x3
ImGuiCol_PopupBg = 4 # 0x4
ImGuiCol_Border = 5 # 0x5
ImGuiCol_BorderShadow = 6 # 0x6
ImGuiCol_FrameBg = 7 # 0x7
ImGuiCol_FrameBgHovered = 8 # 0x8
ImGuiCol_FrameBgActive = 9 # 0x9
ImGuiCol_TitleBg = 10 # 0xA
ImGuiCol_TitleBgActive = 11 # 0xB
ImGuiCol_TitleBgCollapsed = 12 # 0xC
ImGuiCol_MenuBarBg = 13 # 0xD
ImGuiCol_ScrollbarBg = 14 # 0xE
ImGuiCol_ScrollbarGrab = 15 # 0xF
ImGuiCol_ScrollbarGrabHovered = 16 # 0x10
ImGuiCol_ScrollbarGrabActive = 17 # 0x11
ImGuiCol_CheckMark = 18 # 0x12
ImGuiCol_SliderGrab = 19 # 0x13
ImGuiCol_SliderGrabActive = 20 # 0x14
ImGuiCol_Button = 21 # 0x15
ImGuiCol_ButtonHovered = 22 # 0x16
ImGuiCol_ButtonActive = 23 # 0x17
ImGuiCol_Header = 24 # 0x18
ImGuiCol_HeaderHovered = 25 # 0x19
ImGuiCol_HeaderActive = 26 # 0x1A
ImGuiCol_Separator = 27 # 0x1B
ImGuiCol_SeparatorHovered = 28 # 0x1C
ImGuiCol_SeparatorActive = 29 # 0x1D
ImGuiCol_ResizeGrip = 30 # 0x1E
ImGuiCol_ResizeGripHovered = 31 # 0x1F
ImGuiCol_ResizeGripActive = 32 # 0x20
ImGuiCol_InputTextCursor = 33 # 0x21
ImGuiCol_TabHovered = 34 # 0x22
ImGuiCol_Tab = 35 # 0x23
ImGuiCol_TabSelected = 36 # 0x24
ImGuiCol_TabSelectedOverline = 37 # 0x25
ImGuiCol_TabDimmed = 38 # 0x26
ImGuiCol_TabDimmedSelected = 39 # 0x27
ImGuiCol_TabDimmedSelectedOverline = 40 # 0x28
ImGuiCol_PlotLines = 41 # 0x29
ImGuiCol_PlotLinesHovered = 42 # 0x2A
ImGuiCol_PlotHistogram = 43 # 0x2B
ImGuiCol_PlotHistogramHovered = 44 # 0x2C
ImGuiCol_TableHeaderBg = 45 # 0x2D
ImGuiCol_TableBorderStrong = 46 # 0x2E
ImGuiCol_TableBorderLight = 47 # 0x2F
ImGuiCol_TableRowBg = 48 # 0x30
ImGuiCol_TableRowBgAlt = 49 # 0x31
ImGuiCol_TextLink = 50 # 0x32
ImGuiCol_TextSelectedBg = 51 # 0x33
ImGuiCol_TreeLines = 52 # 0x34
ImGuiCol_DragDropTarget = 53 # 0x35
ImGuiCol_DragDropTargetBg = 54 # 0x36
ImGuiCol_UnsavedMarker = 55 # 0x37
ImGuiCol_NavCursor = 56 # 0x38
ImGuiCol_NavWindowingHighlight = 57 # 0x39
ImGuiCol_NavWindowingDimBg = 58 # 0x3A
ImGuiCol_ModalWindowDimBg = 59 # 0x3B
ImGuiCol_COUNT = 60 # 0x3C
ImGuiCol_TabActive = 36 # 0x24
ImGuiCol_TabUnfocused = 38 # 0x26
ImGuiCol_TabUnfocusedActive = 39 # 0x27
ImGuiCol_NavHighlight = 56 # 0x38

# ImGuiStyleVar_
ImGuiStyleVar_Alpha = 0 # 0x0
ImGuiStyleVar_DisabledAlpha = 1 # 0x1
ImGuiStyleVar_WindowPadding = 2 # 0x2
ImGuiStyleVar_WindowRounding = 3 # 0x3
ImGuiStyleVar_WindowBorderSize = 4 # 0x4
ImGuiStyleVar_WindowMinSize = 5 # 0x5
ImGuiStyleVar_WindowTitleAlign = 6 # 0x6
ImGuiStyleVar_ChildRounding = 7 # 0x7
ImGuiStyleVar_ChildBorderSize = 8 # 0x8
ImGuiStyleVar_PopupRounding = 9 # 0x9
ImGuiStyleVar_PopupBorderSize = 10 # 0xA
ImGuiStyleVar_FramePadding = 11 # 0xB
ImGuiStyleVar_FrameRounding = 12 # 0xC
ImGuiStyleVar_FrameBorderSize = 13 # 0xD
ImGuiStyleVar_ItemSpacing = 14 # 0xE
ImGuiStyleVar_ItemInnerSpacing = 15 # 0xF
ImGuiStyleVar_IndentSpacing = 16 # 0x10
ImGuiStyleVar_CellPadding = 17 # 0x11
ImGuiStyleVar_ScrollbarSize = 18 # 0x12
ImGuiStyleVar_ScrollbarRounding = 19 # 0x13
ImGuiStyleVar_ScrollbarPadding = 20 # 0x14
ImGuiStyleVar_GrabMinSize = 21 # 0x15
ImGuiStyleVar_GrabRounding = 22 # 0x16
ImGuiStyleVar_ImageRounding = 23 # 0x17
ImGuiStyleVar_ImageBorderSize = 24 # 0x18
ImGuiStyleVar_TabRounding = 25 # 0x19
ImGuiStyleVar_TabBorderSize = 26 # 0x1A
ImGuiStyleVar_TabMinWidthBase = 27 # 0x1B
ImGuiStyleVar_TabMinWidthShrink = 28 # 0x1C
ImGuiStyleVar_TabBarBorderSize = 29 # 0x1D
ImGuiStyleVar_TabBarOverlineSize = 30 # 0x1E
ImGuiStyleVar_TableAngledHeadersAngle = 31 # 0x1F
ImGuiStyleVar_TableAngledHeadersTextAlign = 32 # 0x20
ImGuiStyleVar_TreeLinesSize = 33 # 0x21
ImGuiStyleVar_TreeLinesRounding = 34 # 0x22
ImGuiStyleVar_ButtonTextAlign = 35 # 0x23
ImGuiStyleVar_SelectableTextAlign = 36 # 0x24
ImGuiStyleVar_SeparatorSize = 37 # 0x25
ImGuiStyleVar_SeparatorTextBorderSize = 38 # 0x26
ImGuiStyleVar_SeparatorTextAlign = 39 # 0x27
ImGuiStyleVar_SeparatorTextPadding = 40 # 0x28
ImGuiStyleVar_COUNT = 41 # 0x29

# ImGuiButtonFlags_
ImGuiButtonFlags_None = 0 # 0x0
ImGuiButtonFlags_MouseButtonLeft = 1 # 0x1
ImGuiButtonFlags_MouseButtonRight = 2 # 0x2
ImGuiButtonFlags_MouseButtonMiddle = 4 # 0x4
ImGuiButtonFlags_MouseButtonMask_ = 7 # 0x7
ImGuiButtonFlags_EnableNav = 8 # 0x8
ImGuiButtonFlags_AllowOverlap = 4096 # 0x1000

# ImGuiColorEditFlags_
ImGuiColorEditFlags_None = 0 # 0x0
ImGuiColorEditFlags_NoAlpha = 2 # 0x2
ImGuiColorEditFlags_NoPicker = 4 # 0x4
ImGuiColorEditFlags_NoOptions = 8 # 0x8
ImGuiColorEditFlags_NoSmallPreview = 16 # 0x10
ImGuiColorEditFlags_NoInputs = 32 # 0x20
ImGuiColorEditFlags_NoTooltip = 64 # 0x40
ImGuiColorEditFlags_NoLabel = 128 # 0x80
ImGuiColorEditFlags_NoSidePreview = 256 # 0x100
ImGuiColorEditFlags_NoDragDrop = 512 # 0x200
ImGuiColorEditFlags_NoBorder = 1024 # 0x400
ImGuiColorEditFlags_NoColorMarkers = 2048 # 0x800
ImGuiColorEditFlags_AlphaOpaque = 4096 # 0x1000
ImGuiColorEditFlags_AlphaNoBg = 8192 # 0x2000
ImGuiColorEditFlags_AlphaPreviewHalf = 16384 # 0x4000
ImGuiColorEditFlags_AlphaBar = 262144 # 0x40000
ImGuiColorEditFlags_HDR = 524288 # 0x80000
ImGuiColorEditFlags_DisplayRGB = 1048576 # 0x100000
ImGuiColorEditFlags_DisplayHSV = 2097152 # 0x200000
ImGuiColorEditFlags_DisplayHex = 4194304 # 0x400000
ImGuiColorEditFlags_Uint8 = 8388608 # 0x800000
ImGuiColorEditFlags_Float = 16777216 # 0x1000000
ImGuiColorEditFlags_PickerHueBar = 33554432 # 0x2000000
ImGuiColorEditFlags_PickerHueWheel = 67108864 # 0x4000000
ImGuiColorEditFlags_InputRGB = 134217728 # 0x8000000
ImGuiColorEditFlags_InputHSV = 268435456 # 0x10000000
ImGuiColorEditFlags_DefaultOptions_ = 177209344 # 0xA900000
ImGuiColorEditFlags_AlphaMask_ = 28674 # 0x7002
ImGuiColorEditFlags_DisplayMask_ = 7340032 # 0x700000
ImGuiColorEditFlags_DataTypeMask_ = 25165824 # 0x1800000
ImGuiColorEditFlags_PickerMask_ = 100663296 # 0x6000000
ImGuiColorEditFlags_InputMask_ = 402653184 # 0x18000000
ImGuiColorEditFlags_AlphaPreview = 0 # 0x0

# ImGuiSliderFlags_
ImGuiSliderFlags_None = 0 # 0x0
ImGuiSliderFlags_Logarithmic = 32 # 0x20
ImGuiSliderFlags_NoRoundToFormat = 64 # 0x40
ImGuiSliderFlags_NoInput = 128 # 0x80
ImGuiSliderFlags_WrapAround = 256 # 0x100
ImGuiSliderFlags_ClampOnInput = 512 # 0x200
ImGuiSliderFlags_ClampZeroRange = 1024 # 0x400
ImGuiSliderFlags_NoSpeedTweaks = 2048 # 0x800
ImGuiSliderFlags_ColorMarkers = 4096 # 0x1000
ImGuiSliderFlags_AlwaysClamp = 1536 # 0x600
ImGuiSliderFlags_InvalidMask_ = 1879048207 # 0x7000000F

# ImGuiMouseButton_
ImGuiMouseButton_Left = 0 # 0x0
ImGuiMouseButton_Right = 1 # 0x1
ImGuiMouseButton_Middle = 2 # 0x2
ImGuiMouseButton_COUNT = 5 # 0x5

# ImGuiMouseCursor_
ImGuiMouseCursor_None = -1 # -0x1
ImGuiMouseCursor_Arrow = 0 # 0x0
ImGuiMouseCursor_TextInput = 1 # 0x1
ImGuiMouseCursor_ResizeAll = 2 # 0x2
ImGuiMouseCursor_ResizeNS = 3 # 0x3
ImGuiMouseCursor_ResizeEW = 4 # 0x4
ImGuiMouseCursor_ResizeNESW = 5 # 0x5
ImGuiMouseCursor_ResizeNWSE = 6 # 0x6
ImGuiMouseCursor_Hand = 7 # 0x7
ImGuiMouseCursor_Wait = 8 # 0x8
ImGuiMouseCursor_Progress = 9 # 0x9
ImGuiMouseCursor_NotAllowed = 10 # 0xA
ImGuiMouseCursor_COUNT = 11 # 0xB

# ImGuiMouseSource
ImGuiMouseSource_Mouse = 0 # 0x0
ImGuiMouseSource_TouchScreen = 1 # 0x1
ImGuiMouseSource_Pen = 2 # 0x2
ImGuiMouseSource_COUNT = 3 # 0x3

# ImGuiCond_
ImGuiCond_None = 0 # 0x0
ImGuiCond_Always = 1 # 0x1
ImGuiCond_Once = 2 # 0x2
ImGuiCond_FirstUseEver = 4 # 0x4
ImGuiCond_Appearing = 8 # 0x8

# ImGuiTableFlags_
ImGuiTableFlags_None = 0 # 0x0
ImGuiTableFlags_Resizable = 1 # 0x1
ImGuiTableFlags_Reorderable = 2 # 0x2
ImGuiTableFlags_Hideable = 4 # 0x4
ImGuiTableFlags_Sortable = 8 # 0x8
ImGuiTableFlags_NoSavedSettings = 16 # 0x10
ImGuiTableFlags_ContextMenuInBody = 32 # 0x20
ImGuiTableFlags_RowBg = 64 # 0x40
ImGuiTableFlags_BordersInnerH = 128 # 0x80
ImGuiTableFlags_BordersOuterH = 256 # 0x100
ImGuiTableFlags_BordersInnerV = 512 # 0x200
ImGuiTableFlags_BordersOuterV = 1024 # 0x400
ImGuiTableFlags_BordersH = 384 # 0x180
ImGuiTableFlags_BordersV = 1536 # 0x600
ImGuiTableFlags_BordersInner = 640 # 0x280
ImGuiTableFlags_BordersOuter = 1280 # 0x500
ImGuiTableFlags_Borders = 1920 # 0x780
ImGuiTableFlags_NoBordersInBody = 2048 # 0x800
ImGuiTableFlags_NoBordersInBodyUntilResize = 4096 # 0x1000
ImGuiTableFlags_SizingFixedFit = 8192 # 0x2000
ImGuiTableFlags_SizingFixedSame = 16384 # 0x4000
ImGuiTableFlags_SizingStretchProp = 24576 # 0x6000
ImGuiTableFlags_SizingStretchSame = 32768 # 0x8000
ImGuiTableFlags_NoHostExtendX = 65536 # 0x10000
ImGuiTableFlags_NoHostExtendY = 131072 # 0x20000
ImGuiTableFlags_NoKeepColumnsVisible = 262144 # 0x40000
ImGuiTableFlags_PreciseWidths = 524288 # 0x80000
ImGuiTableFlags_NoClip = 1048576 # 0x100000
ImGuiTableFlags_PadOuterX = 2097152 # 0x200000
ImGuiTableFlags_NoPadOuterX = 4194304 # 0x400000
ImGuiTableFlags_NoPadInnerX = 8388608 # 0x800000
ImGuiTableFlags_ScrollX = 16777216 # 0x1000000
ImGuiTableFlags_ScrollY = 33554432 # 0x2000000
ImGuiTableFlags_SortMulti = 67108864 # 0x4000000
ImGuiTableFlags_SortTristate = 134217728 # 0x8000000
ImGuiTableFlags_HighlightHoveredColumn = 268435456 # 0x10000000
ImGuiTableFlags_SizingMask_ = 57344 # 0xE000

# ImGuiTableColumnFlags_
ImGuiTableColumnFlags_None = 0 # 0x0
ImGuiTableColumnFlags_Disabled = 1 # 0x1
ImGuiTableColumnFlags_DefaultHide = 2 # 0x2
ImGuiTableColumnFlags_DefaultSort = 4 # 0x4
ImGuiTableColumnFlags_WidthStretch = 8 # 0x8
ImGuiTableColumnFlags_WidthFixed = 16 # 0x10
ImGuiTableColumnFlags_NoResize = 32 # 0x20
ImGuiTableColumnFlags_NoReorder = 64 # 0x40
ImGuiTableColumnFlags_NoHide = 128 # 0x80
ImGuiTableColumnFlags_NoClip = 256 # 0x100
ImGuiTableColumnFlags_NoSort = 512 # 0x200
ImGuiTableColumnFlags_NoSortAscending = 1024 # 0x400
ImGuiTableColumnFlags_NoSortDescending = 2048 # 0x800
ImGuiTableColumnFlags_NoHeaderLabel = 4096 # 0x1000
ImGuiTableColumnFlags_NoHeaderWidth = 8192 # 0x2000
ImGuiTableColumnFlags_PreferSortAscending = 16384 # 0x4000
ImGuiTableColumnFlags_PreferSortDescending = 32768 # 0x8000
ImGuiTableColumnFlags_IndentEnable = 65536 # 0x10000
ImGuiTableColumnFlags_IndentDisable = 131072 # 0x20000
ImGuiTableColumnFlags_AngledHeader = 262144 # 0x40000
ImGuiTableColumnFlags_IsEnabled = 16777216 # 0x1000000
ImGuiTableColumnFlags_IsVisible = 33554432 # 0x2000000
ImGuiTableColumnFlags_IsSorted = 67108864 # 0x4000000
ImGuiTableColumnFlags_IsHovered = 134217728 # 0x8000000
ImGuiTableColumnFlags_WidthMask_ = 24 # 0x18
ImGuiTableColumnFlags_IndentMask_ = 196608 # 0x30000
ImGuiTableColumnFlags_StatusMask_ = 251658240 # 0xF000000
ImGuiTableColumnFlags_NoDirectResize_ = 1073741824 # 0x40000000

# ImGuiTableRowFlags_
ImGuiTableRowFlags_None = 0 # 0x0
ImGuiTableRowFlags_Headers = 1 # 0x1

# ImGuiTableBgTarget_
ImGuiTableBgTarget_None = 0 # 0x0
ImGuiTableBgTarget_RowBg0 = 1 # 0x1
ImGuiTableBgTarget_RowBg1 = 2 # 0x2
ImGuiTableBgTarget_CellBg = 3 # 0x3

# ImGuiListClipperFlags_
ImGuiListClipperFlags_None = 0 # 0x0
ImGuiListClipperFlags_NoSetTableRowCounters = 1 # 0x1

# ImGuiMultiSelectFlags_
ImGuiMultiSelectFlags_None = 0 # 0x0
ImGuiMultiSelectFlags_SingleSelect = 1 # 0x1
ImGuiMultiSelectFlags_NoSelectAll = 2 # 0x2
ImGuiMultiSelectFlags_NoRangeSelect = 4 # 0x4
ImGuiMultiSelectFlags_NoAutoSelect = 8 # 0x8
ImGuiMultiSelectFlags_NoAutoClear = 16 # 0x10
ImGuiMultiSelectFlags_NoAutoClearOnReselect = 32 # 0x20
ImGuiMultiSelectFlags_BoxSelect1d = 64 # 0x40
ImGuiMultiSelectFlags_BoxSelect2d = 128 # 0x80
ImGuiMultiSelectFlags_BoxSelectNoScroll = 256 # 0x100
ImGuiMultiSelectFlags_ClearOnEscape = 512 # 0x200
ImGuiMultiSelectFlags_ClearOnClickVoid = 1024 # 0x400
ImGuiMultiSelectFlags_ScopeWindow = 2048 # 0x800
ImGuiMultiSelectFlags_ScopeRect = 4096 # 0x1000
ImGuiMultiSelectFlags_SelectOnAuto = 8192 # 0x2000
ImGuiMultiSelectFlags_SelectOnClickAlways = 16384 # 0x4000
ImGuiMultiSelectFlags_SelectOnClickRelease = 32768 # 0x8000
ImGuiMultiSelectFlags_NavWrapX = 65536 # 0x10000
ImGuiMultiSelectFlags_NoSelectOnRightClick = 131072 # 0x20000
ImGuiMultiSelectFlags_SelectOnMask_ = 57344 # 0xE000
ImGuiMultiSelectFlags_SelectOnClick = 8192 # 0x2000

# ImGuiSelectionRequestType
ImGuiSelectionRequestType_None = 0 # 0x0
ImGuiSelectionRequestType_SetAll = 1 # 0x1
ImGuiSelectionRequestType_SetRange = 2 # 0x2

# ImDrawFlags_
ImDrawFlags_None = 0 # 0x0
ImDrawFlags_Closed = 1 # 0x1
ImDrawFlags_RoundCornersTopLeft = 16 # 0x10
ImDrawFlags_RoundCornersTopRight = 32 # 0x20
ImDrawFlags_RoundCornersBottomLeft = 64 # 0x40
ImDrawFlags_RoundCornersBottomRight = 128 # 0x80
ImDrawFlags_RoundCornersNone = 256 # 0x100
ImDrawFlags_RoundCornersTop = 48 # 0x30
ImDrawFlags_RoundCornersBottom = 192 # 0xC0
ImDrawFlags_RoundCornersLeft = 80 # 0x50
ImDrawFlags_RoundCornersRight = 160 # 0xA0
ImDrawFlags_RoundCornersAll = 240 # 0xF0
ImDrawFlags_RoundCornersDefault_ = 240 # 0xF0
ImDrawFlags_RoundCornersMask_ = 496 # 0x1F0

# ImDrawListFlags_
ImDrawListFlags_None = 0 # 0x0
ImDrawListFlags_AntiAliasedLines = 1 # 0x1
ImDrawListFlags_AntiAliasedLinesUseTex = 2 # 0x2
ImDrawListFlags_AntiAliasedFill = 4 # 0x4
ImDrawListFlags_AllowVtxOffset = 8 # 0x8

# ImTextureFormat
ImTextureFormat_RGBA32 = 0 # 0x0
ImTextureFormat_Alpha8 = 1 # 0x1

# ImTextureStatus
ImTextureStatus_OK = 0 # 0x0
ImTextureStatus_Destroyed = 1 # 0x1
ImTextureStatus_WantCreate = 2 # 0x2
ImTextureStatus_WantUpdates = 3 # 0x3
ImTextureStatus_WantDestroy = 4 # 0x4

# ImFontAtlasFlags_
ImFontAtlasFlags_None = 0 # 0x0
ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 0x1
ImFontAtlasFlags_NoMouseCursors = 2 # 0x2
ImFontAtlasFlags_NoBakedLines = 4 # 0x4

# ImFontFlags_
ImFontFlags_None = 0 # 0x0
ImFontFlags_NoLoadError = 2 # 0x2
ImFontFlags_NoLoadGlyphs = 4 # 0x4
ImFontFlags_LockBakedSizes = 8 # 0x8

# ImGuiViewportFlags_
ImGuiViewportFlags_None = 0 # 0x0
ImGuiViewportFlags_IsPlatformWindow = 1 # 0x1
ImGuiViewportFlags_IsPlatformMonitor = 2 # 0x2
ImGuiViewportFlags_OwnedByApp = 4 # 0x4

# ImDrawTextFlags_
ImDrawTextFlags_None = 0 # 0x0
ImDrawTextFlags_CpuFineClip = 1 # 0x1
ImDrawTextFlags_WrapKeepBlanks = 2 # 0x2
ImDrawTextFlags_StopOnNewLine = 4 # 0x4

# ImWcharClass
ImWcharClass_Blank = 0 # 0x0
ImWcharClass_Punct = 1 # 0x1
ImWcharClass_Other = 2 # 0x2

# ImGuiDataTypePrivate_
ImGuiDataType_Pointer = 12 # 0xC
ImGuiDataType_ID = 13 # 0xD

# ImGuiItemFlagsPrivate_
ImGuiItemFlags_ReadOnly = 2048 # 0x800
ImGuiItemFlags_MixedValue = 4096 # 0x1000
ImGuiItemFlags_NoWindowHoverableCheck = 8192 # 0x2000
ImGuiItemFlags_AllowOverlap = 16384 # 0x4000
ImGuiItemFlags_NoNavDisableMouseHover = 32768 # 0x8000
ImGuiItemFlags_NoMarkEdited = 65536 # 0x10000
ImGuiItemFlags_NoFocus = 131072 # 0x20000
ImGuiItemFlags_Inputable = 1048576 # 0x100000
ImGuiItemFlags_HasSelectionUserData = 2097152 # 0x200000
ImGuiItemFlags_IsMultiSelect = 4194304 # 0x400000
ImGuiItemFlags_Default_ = 16 # 0x10

# ImGuiItemStatusFlags_
ImGuiItemStatusFlags_None = 0 # 0x0
ImGuiItemStatusFlags_HoveredRect = 1 # 0x1
ImGuiItemStatusFlags_HasDisplayRect = 2 # 0x2
ImGuiItemStatusFlags_Edited = 4 # 0x4
ImGuiItemStatusFlags_ToggledSelection = 8 # 0x8
ImGuiItemStatusFlags_ToggledOpen = 16 # 0x10
ImGuiItemStatusFlags_HasDeactivated = 32 # 0x20
ImGuiItemStatusFlags_Deactivated = 64 # 0x40
ImGuiItemStatusFlags_HoveredWindow = 128 # 0x80
ImGuiItemStatusFlags_Visible = 256 # 0x100
ImGuiItemStatusFlags_HasClipRect = 512 # 0x200
ImGuiItemStatusFlags_HasShortcut = 1024 # 0x400

# ImGuiHoveredFlagsPrivate_
ImGuiHoveredFlags_DelayMask_ = 245760 # 0x3C000
ImGuiHoveredFlags_AllowedMaskForIsWindowHovered = 12463 # 0x30AF
ImGuiHoveredFlags_AllowedMaskForIsItemHovered = 262048 # 0x3FFA0

# ImGuiInputTextFlagsPrivate_
ImGuiInputTextFlags_Multiline = 67108864 # 0x4000000
ImGuiInputTextFlags_TempInput = 134217728 # 0x8000000
ImGuiInputTextFlags_LocalizeDecimalPoint = 268435456 # 0x10000000

# ImGuiButtonFlagsPrivate_
ImGuiButtonFlags_PressedOnClick = 16 # 0x10
ImGuiButtonFlags_PressedOnClickRelease = 32 # 0x20
ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 64 # 0x40
ImGuiButtonFlags_PressedOnRelease = 128 # 0x80
ImGuiButtonFlags_PressedOnDoubleClick = 256 # 0x100
ImGuiButtonFlags_PressedOnDragDropHold = 512 # 0x200
ImGuiButtonFlags_FlattenChildren = 2048 # 0x800
ImGuiButtonFlags_AlignTextBaseLine = 32768 # 0x8000
ImGuiButtonFlags_NoKeyModsAllowed = 65536 # 0x10000
ImGuiButtonFlags_NoHoldingActiveId = 131072 # 0x20000
ImGuiButtonFlags_NoNavFocus = 262144 # 0x40000
ImGuiButtonFlags_NoHoveredOnFocus = 524288 # 0x80000
ImGuiButtonFlags_NoSetKeyOwner = 1048576 # 0x100000
ImGuiButtonFlags_NoTestKeyOwner = 2097152 # 0x200000
ImGuiButtonFlags_NoFocus = 4194304 # 0x400000
ImGuiButtonFlags_PressedOnMask_ = 1008 # 0x3F0
ImGuiButtonFlags_PressedOnDefault_ = 32 # 0x20

# ImGuiComboFlagsPrivate_
ImGuiComboFlags_CustomPreview = 1048576 # 0x100000

# ImGuiSliderFlagsPrivate_
ImGuiSliderFlags_Vertical = 1048576 # 0x100000
ImGuiSliderFlags_ReadOnly = 2097152 # 0x200000

# ImGuiSelectableFlagsPrivate_
ImGuiSelectableFlags_NoHoldingActiveID = 1048576 # 0x100000
ImGuiSelectableFlags_SelectOnClick = 4194304 # 0x400000
ImGuiSelectableFlags_SelectOnRelease = 8388608 # 0x800000
ImGuiSelectableFlags_SpanAvailWidth = 16777216 # 0x1000000
ImGuiSelectableFlags_SetNavIdOnHover = 33554432 # 0x2000000
ImGuiSelectableFlags_NoPadWithHalfSpacing = 67108864 # 0x4000000
ImGuiSelectableFlags_NoSetKeyOwner = 134217728 # 0x8000000

# ImGuiTreeNodeFlagsPrivate_
ImGuiTreeNodeFlags_NoNavFocus = 134217728 # 0x8000000
ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 268435456 # 0x10000000
ImGuiTreeNodeFlags_UpsideDownArrow = 536870912 # 0x20000000
ImGuiTreeNodeFlags_OpenOnMask_ = 192 # 0xC0
ImGuiTreeNodeFlags_DrawLinesMask_ = 1835008 # 0x1C0000

# ImGuiSeparatorFlags_
ImGuiSeparatorFlags_None = 0 # 0x0
ImGuiSeparatorFlags_Horizontal = 1 # 0x1
ImGuiSeparatorFlags_Vertical = 2 # 0x2
ImGuiSeparatorFlags_SpanAllColumns = 4 # 0x4

# ImGuiFocusRequestFlags_
ImGuiFocusRequestFlags_None = 0 # 0x0
ImGuiFocusRequestFlags_RestoreFocusedChild = 1 # 0x1
ImGuiFocusRequestFlags_UnlessBelowModal = 2 # 0x2

# ImGuiTextFlags_
ImGuiTextFlags_None = 0 # 0x0
ImGuiTextFlags_NoWidthForLargeClippedText = 1 # 0x1

# ImGuiTooltipFlags_
ImGuiTooltipFlags_None = 0 # 0x0
ImGuiTooltipFlags_OverridePrevious = 2 # 0x2

# ImGuiLayoutType_
ImGuiLayoutType_Horizontal = 0 # 0x0
ImGuiLayoutType_Vertical = 1 # 0x1

# ImGuiLogFlags_
ImGuiLogFlags_None = 0 # 0x0
ImGuiLogFlags_OutputTTY = 1 # 0x1
ImGuiLogFlags_OutputFile = 2 # 0x2
ImGuiLogFlags_OutputBuffer = 4 # 0x4
ImGuiLogFlags_OutputClipboard = 8 # 0x8
ImGuiLogFlags_OutputMask_ = 15 # 0xF

# ImGuiAxis
ImGuiAxis_None = -1 # -0x1
ImGuiAxis_X = 0 # 0x0
ImGuiAxis_Y = 1 # 0x1

# ImGuiPlotType
ImGuiPlotType_Lines = 0 # 0x0
ImGuiPlotType_Histogram = 1 # 0x1

# ImGuiWindowRefreshFlags_
ImGuiWindowRefreshFlags_None = 0 # 0x0
ImGuiWindowRefreshFlags_TryToAvoidRefresh = 1 # 0x1
ImGuiWindowRefreshFlags_RefreshOnHover = 2 # 0x2
ImGuiWindowRefreshFlags_RefreshOnFocus = 4 # 0x4

# ImGuiWindowBgClickFlags_
ImGuiWindowBgClickFlags_None = 0 # 0x0
ImGuiWindowBgClickFlags_Move = 1 # 0x1

# ImGuiNextWindowDataFlags_
ImGuiNextWindowDataFlags_None = 0 # 0x0
ImGuiNextWindowDataFlags_HasPos = 1 # 0x1
ImGuiNextWindowDataFlags_HasSize = 2 # 0x2
ImGuiNextWindowDataFlags_HasContentSize = 4 # 0x4
ImGuiNextWindowDataFlags_HasCollapsed = 8 # 0x8
ImGuiNextWindowDataFlags_HasSizeConstraint = 16 # 0x10
ImGuiNextWindowDataFlags_HasFocus = 32 # 0x20
ImGuiNextWindowDataFlags_HasBgAlpha = 64 # 0x40
ImGuiNextWindowDataFlags_HasScroll = 128 # 0x80
ImGuiNextWindowDataFlags_HasWindowFlags = 256 # 0x100
ImGuiNextWindowDataFlags_HasChildFlags = 512 # 0x200
ImGuiNextWindowDataFlags_HasRefreshPolicy = 1024 # 0x400

# ImGuiNextItemDataFlags_
ImGuiNextItemDataFlags_None = 0 # 0x0
ImGuiNextItemDataFlags_HasWidth = 1 # 0x1
ImGuiNextItemDataFlags_HasOpen = 2 # 0x2
ImGuiNextItemDataFlags_HasShortcut = 4 # 0x4
ImGuiNextItemDataFlags_HasRefVal = 8 # 0x8
ImGuiNextItemDataFlags_HasStorageID = 16 # 0x10
ImGuiNextItemDataFlags_HasColorMarker = 32 # 0x20

# ImGuiPopupPositionPolicy
ImGuiPopupPositionPolicy_Default = 0 # 0x0
ImGuiPopupPositionPolicy_ComboBox = 1 # 0x1
ImGuiPopupPositionPolicy_Tooltip = 2 # 0x2

# ImGuiInputEventType
ImGuiInputEventType_None = 0 # 0x0
ImGuiInputEventType_MousePos = 1 # 0x1
ImGuiInputEventType_MouseWheel = 2 # 0x2
ImGuiInputEventType_MouseButton = 3 # 0x3
ImGuiInputEventType_Key = 4 # 0x4
ImGuiInputEventType_Text = 5 # 0x5
ImGuiInputEventType_Focus = 6 # 0x6
ImGuiInputEventType_COUNT = 7 # 0x7

# ImGuiInputSource
ImGuiInputSource_None = 0 # 0x0
ImGuiInputSource_Mouse = 1 # 0x1
ImGuiInputSource_Keyboard = 2 # 0x2
ImGuiInputSource_Gamepad = 3 # 0x3
ImGuiInputSource_COUNT = 4 # 0x4

# ImGuiInputFlagsPrivate_
ImGuiInputFlags_RepeatRateDefault = 2 # 0x2
ImGuiInputFlags_RepeatRateNavMove = 4 # 0x4
ImGuiInputFlags_RepeatRateNavTweak = 8 # 0x8
ImGuiInputFlags_RepeatUntilRelease = 16 # 0x10
ImGuiInputFlags_RepeatUntilKeyModsChange = 32 # 0x20
ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone = 64 # 0x40
ImGuiInputFlags_RepeatUntilOtherKeyPress = 128 # 0x80
ImGuiInputFlags_LockThisFrame = 1048576 # 0x100000
ImGuiInputFlags_LockUntilRelease = 2097152 # 0x200000
ImGuiInputFlags_CondHovered = 4194304 # 0x400000
ImGuiInputFlags_CondActive = 8388608 # 0x800000
ImGuiInputFlags_CondDefault_ = 12582912 # 0xC00000
ImGuiInputFlags_RepeatRateMask_ = 14 # 0xE
ImGuiInputFlags_RepeatUntilMask_ = 240 # 0xF0
ImGuiInputFlags_RepeatMask_ = 255 # 0xFF
ImGuiInputFlags_CondMask_ = 12582912 # 0xC00000
ImGuiInputFlags_RouteTypeMask_ = 15360 # 0x3C00
ImGuiInputFlags_RouteOptionsMask_ = 245760 # 0x3C000
ImGuiInputFlags_SupportedByIsKeyPressed = 255 # 0xFF
ImGuiInputFlags_SupportedByIsMouseClicked = 1 # 0x1
ImGuiInputFlags_SupportedByShortcut = 261375 # 0x3FCFF
ImGuiInputFlags_SupportedBySetNextItemShortcut = 523519 # 0x7FCFF
ImGuiInputFlags_SupportedBySetKeyOwner = 3145728 # 0x300000
ImGuiInputFlags_SupportedBySetItemKeyOwner = 15728640 # 0xF00000

# ImGuiActivateFlags_
ImGuiActivateFlags_None = 0 # 0x0
ImGuiActivateFlags_PreferInput = 1 # 0x1
ImGuiActivateFlags_PreferTweak = 2 # 0x2
ImGuiActivateFlags_TryToPreserveState = 4 # 0x4
ImGuiActivateFlags_FromTabbing = 8 # 0x8
ImGuiActivateFlags_FromShortcut = 16 # 0x10
ImGuiActivateFlags_FromFocusApi = 32 # 0x20

# ImGuiScrollFlags_
ImGuiScrollFlags_None = 0 # 0x0
ImGuiScrollFlags_KeepVisibleEdgeX = 1 # 0x1
ImGuiScrollFlags_KeepVisibleEdgeY = 2 # 0x2
ImGuiScrollFlags_KeepVisibleCenterX = 4 # 0x4
ImGuiScrollFlags_KeepVisibleCenterY = 8 # 0x8
ImGuiScrollFlags_AlwaysCenterX = 16 # 0x10
ImGuiScrollFlags_AlwaysCenterY = 32 # 0x20
ImGuiScrollFlags_NoScrollParent = 64 # 0x40
ImGuiScrollFlags_MaskX_ = 21 # 0x15
ImGuiScrollFlags_MaskY_ = 42 # 0x2A

# ImGuiNavRenderCursorFlags_
ImGuiNavRenderCursorFlags_None = 0 # 0x0
ImGuiNavRenderCursorFlags_Compact = 2 # 0x2
ImGuiNavRenderCursorFlags_AlwaysDraw = 4 # 0x4
ImGuiNavRenderCursorFlags_NoRounding = 8 # 0x8
ImGuiNavHighlightFlags_None = 0 # 0x0
ImGuiNavHighlightFlags_Compact = 2 # 0x2
ImGuiNavHighlightFlags_AlwaysDraw = 4 # 0x4
ImGuiNavHighlightFlags_NoRounding = 8 # 0x8

# ImGuiNavMoveFlags_
ImGuiNavMoveFlags_None = 0 # 0x0
ImGuiNavMoveFlags_LoopX = 1 # 0x1
ImGuiNavMoveFlags_LoopY = 2 # 0x2
ImGuiNavMoveFlags_WrapX = 4 # 0x4
ImGuiNavMoveFlags_WrapY = 8 # 0x8
ImGuiNavMoveFlags_WrapMask_ = 15 # 0xF
ImGuiNavMoveFlags_AllowCurrentNavId = 16 # 0x10
ImGuiNavMoveFlags_AlsoScoreVisibleSet = 32 # 0x20
ImGuiNavMoveFlags_ScrollToEdgeY = 64 # 0x40
ImGuiNavMoveFlags_Forwarded = 128 # 0x80
ImGuiNavMoveFlags_DebugNoResult = 256 # 0x100
ImGuiNavMoveFlags_FocusApi = 512 # 0x200
ImGuiNavMoveFlags_IsTabbing = 1024 # 0x400
ImGuiNavMoveFlags_IsPageMove = 2048 # 0x800
ImGuiNavMoveFlags_Activate = 4096 # 0x1000
ImGuiNavMoveFlags_NoSelect = 8192 # 0x2000
ImGuiNavMoveFlags_NoSetNavCursorVisible = 16384 # 0x4000
ImGuiNavMoveFlags_NoClearActiveId = 32768 # 0x8000

# ImGuiNavLayer
ImGuiNavLayer_Main = 0 # 0x0
ImGuiNavLayer_Menu = 1 # 0x1
ImGuiNavLayer_COUNT = 2 # 0x2

# ImGuiTypingSelectFlags_
ImGuiTypingSelectFlags_None = 0 # 0x0
ImGuiTypingSelectFlags_AllowBackspace = 1 # 0x1
ImGuiTypingSelectFlags_AllowSingleCharMode = 2 # 0x2

# ImGuiOldColumnFlags_
ImGuiOldColumnFlags_None = 0 # 0x0
ImGuiOldColumnFlags_NoBorder = 1 # 0x1
ImGuiOldColumnFlags_NoResize = 2 # 0x2
ImGuiOldColumnFlags_NoPreserveWidths = 4 # 0x4
ImGuiOldColumnFlags_NoForceWithinWindow = 8 # 0x8
ImGuiOldColumnFlags_GrowParentContentsSize = 16 # 0x10

# ImGuiLocKey
ImGuiLocKey_VersionStr = 0 # 0x0
ImGuiLocKey_TableSizeOne = 1 # 0x1
ImGuiLocKey_TableSizeAllFit = 2 # 0x2
ImGuiLocKey_TableSizeAllDefault = 3 # 0x3
ImGuiLocKey_TableResetOrder = 4 # 0x4
ImGuiLocKey_WindowingMainMenuBar = 5 # 0x5
ImGuiLocKey_WindowingPopup = 6 # 0x6
ImGuiLocKey_WindowingUntitled = 7 # 0x7
ImGuiLocKey_OpenLink_s = 8 # 0x8
ImGuiLocKey_CopyLink = 9 # 0x9
ImGuiLocKey_COUNT = 10 # 0xA

# ImGuiDebugLogFlags_
ImGuiDebugLogFlags_None = 0 # 0x0
ImGuiDebugLogFlags_EventError = 1 # 0x1
ImGuiDebugLogFlags_EventActiveId = 2 # 0x2
ImGuiDebugLogFlags_EventFocus = 4 # 0x4
ImGuiDebugLogFlags_EventPopup = 8 # 0x8
ImGuiDebugLogFlags_EventNav = 16 # 0x10
ImGuiDebugLogFlags_EventClipper = 32 # 0x20
ImGuiDebugLogFlags_EventSelection = 64 # 0x40
ImGuiDebugLogFlags_EventIO = 128 # 0x80
ImGuiDebugLogFlags_EventFont = 256 # 0x100
ImGuiDebugLogFlags_EventInputRouting = 512 # 0x200
ImGuiDebugLogFlags_EventDocking = 1024 # 0x400
ImGuiDebugLogFlags_EventViewport = 2048 # 0x800
ImGuiDebugLogFlags_EventMask_ = 4095 # 0xFFF
ImGuiDebugLogFlags_OutputToTTY = 1048576 # 0x100000
ImGuiDebugLogFlags_OutputToDebugger = 2097152 # 0x200000
ImGuiDebugLogFlags_OutputToTestEngine = 4194304 # 0x400000

# ImGuiContextHookType
ImGuiContextHookType_NewFramePre = 0 # 0x0
ImGuiContextHookType_NewFramePost = 1 # 0x1
ImGuiContextHookType_EndFramePre = 2 # 0x2
ImGuiContextHookType_EndFramePost = 3 # 0x3
ImGuiContextHookType_RenderPre = 4 # 0x4
ImGuiContextHookType_RenderPost = 5 # 0x5
ImGuiContextHookType_Shutdown = 6 # 0x6
ImGuiContextHookType_PendingRemoval_ = 7 # 0x7

# ImGuiTabBarFlagsPrivate_
ImGuiTabBarFlags_DockNode = 1048576 # 0x100000
ImGuiTabBarFlags_IsFocused = 2097152 # 0x200000
ImGuiTabBarFlags_SaveSettings = 4194304 # 0x400000

# ImGuiTabItemFlagsPrivate_
ImGuiTabItemFlags_SectionMask_ = 192 # 0xC0
ImGuiTabItemFlags_NoCloseButton = 1048576 # 0x100000
ImGuiTabItemFlags_Button = 2097152 # 0x200000
ImGuiTabItemFlags_Invisible = 4194304 # 0x400000


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

  def Clear()
    ImGui::ImDrawListSplitter_Clear(self)
  end

  def ClearFreeMemory()
    ImGui::ImDrawListSplitter_ClearFreeMemory(self)
  end

  def Split(draw_list, count)
    ImGui::ImDrawListSplitter_Split(self, draw_list, count)
  end

  def Merge(draw_list)
    ImGui::ImDrawListSplitter_Merge(self, draw_list)
  end

  def SetCurrentChannel(draw_list, channel_idx)
    ImGui::ImDrawListSplitter_SetCurrentChannel(self, draw_list, channel_idx)
  end

end

class ImTextureRef < FFI::Struct
  layout(
    :_TexData, :pointer,
    :_TexID, :uint64
  )

  def GetTexID()
    ImGui::ImTextureRef_GetTexID(self)
  end

end

class ImDrawCmd < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,
    :TexRef, ImTextureRef.by_value,
    :VtxOffset, :uint,
    :IdxOffset, :uint,
    :ElemCount, :uint,
    :UserCallback, :pointer,
    :UserCallbackData, :pointer,
    :UserCallbackDataSize, :int,
    :UserCallbackDataOffset, :int
  )

  def GetTexID()
    ImGui::ImDrawCmd_GetTexID(self)
  end

end

class ImDrawCmdHeader < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,
    :TexRef, ImTextureRef.by_value,
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
    :_VtxWritePtr, :pointer,
    :_IdxWritePtr, :pointer,
    :_Path, ImVector.by_value,
    :_CmdHeader, ImDrawCmdHeader.by_value,
    :_Splitter, ImDrawListSplitter.by_value,
    :_ClipRectStack, ImVector.by_value,
    :_TextureStack, ImVector.by_value,
    :_CallbacksDataBuf, ImVector.by_value,
    :_FringeScale, :float,
    :_OwnerName, :pointer
  )

  def PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect = false)
    ImGui::ImDrawList_PushClipRect(self, clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  def PushClipRectFullScreen()
    ImGui::ImDrawList_PushClipRectFullScreen(self)
  end

  def PopClipRect()
    ImGui::ImDrawList_PopClipRect(self)
  end

  def PushTexture(tex_ref)
    ImGui::ImDrawList_PushTexture(self, tex_ref)
  end

  def PopTexture()
    ImGui::ImDrawList_PopTexture(self)
  end

  def GetClipRectMin()
    ImGui::ImDrawList_GetClipRectMin(self)
  end

  def GetClipRectMax()
    ImGui::ImDrawList_GetClipRectMax(self)
  end

  def AddLine(p1, p2, col)
    ImGui::ImDrawList_AddLine(self, p1, p2, col)
  end

  def AddLineEx(p1, p2, col, thickness = 1.0)
    ImGui::ImDrawList_AddLineEx(self, p1, p2, col, thickness)
  end

  def AddRect(p_min, p_max, col)
    ImGui::ImDrawList_AddRect(self, p_min, p_max, col)
  end

  def AddRectEx(p_min, p_max, col, rounding = 0.0, flags = 0, thickness = 1.0)
    ImGui::ImDrawList_AddRectEx(self, p_min, p_max, col, rounding, flags, thickness)
  end

  def AddRectFilled(p_min, p_max, col)
    ImGui::ImDrawList_AddRectFilled(self, p_min, p_max, col)
  end

  def AddRectFilledEx(p_min, p_max, col, rounding = 0.0, flags = 0)
    ImGui::ImDrawList_AddRectFilledEx(self, p_min, p_max, col, rounding, flags)
  end

  def AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
    ImGui::ImDrawList_AddRectFilledMultiColor(self, p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
  end

  def AddQuad(p1, p2, p3, p4, col)
    ImGui::ImDrawList_AddQuad(self, p1, p2, p3, p4, col)
  end

  def AddQuadEx(p1, p2, p3, p4, col, thickness = 1.0)
    ImGui::ImDrawList_AddQuadEx(self, p1, p2, p3, p4, col, thickness)
  end

  def AddQuadFilled(p1, p2, p3, p4, col)
    ImGui::ImDrawList_AddQuadFilled(self, p1, p2, p3, p4, col)
  end

  def AddTriangle(p1, p2, p3, col)
    ImGui::ImDrawList_AddTriangle(self, p1, p2, p3, col)
  end

  def AddTriangleEx(p1, p2, p3, col, thickness = 1.0)
    ImGui::ImDrawList_AddTriangleEx(self, p1, p2, p3, col, thickness)
  end

  def AddTriangleFilled(p1, p2, p3, col)
    ImGui::ImDrawList_AddTriangleFilled(self, p1, p2, p3, col)
  end

  def AddCircle(center, radius, col)
    ImGui::ImDrawList_AddCircle(self, center, radius, col)
  end

  def AddCircleEx(center, radius, col, num_segments = 0, thickness = 1.0)
    ImGui::ImDrawList_AddCircleEx(self, center, radius, col, num_segments, thickness)
  end

  def AddCircleFilled(center, radius, col, num_segments = 0)
    ImGui::ImDrawList_AddCircleFilled(self, center, radius, col, num_segments)
  end

  def AddNgon(center, radius, col, num_segments)
    ImGui::ImDrawList_AddNgon(self, center, radius, col, num_segments)
  end

  def AddNgonEx(center, radius, col, num_segments, thickness = 1.0)
    ImGui::ImDrawList_AddNgonEx(self, center, radius, col, num_segments, thickness)
  end

  def AddNgonFilled(center, radius, col, num_segments)
    ImGui::ImDrawList_AddNgonFilled(self, center, radius, col, num_segments)
  end

  def AddEllipse(center, radius, col)
    ImGui::ImDrawList_AddEllipse(self, center, radius, col)
  end

  def AddEllipseEx(center, radius, col, rot = 0.0, num_segments = 0, thickness = 1.0)
    ImGui::ImDrawList_AddEllipseEx(self, center, radius, col, rot, num_segments, thickness)
  end

  def AddEllipseFilled(center, radius, col)
    ImGui::ImDrawList_AddEllipseFilled(self, center, radius, col)
  end

  def AddEllipseFilledEx(center, radius, col, rot = 0.0, num_segments = 0)
    ImGui::ImDrawList_AddEllipseFilledEx(self, center, radius, col, rot, num_segments)
  end

  def AddText(pos, col, text_begin)
    ImGui::ImDrawList_AddText(self, pos, col, text_begin)
  end

  def AddTextEx(pos, col, text_begin, text_end = nil)
    ImGui::ImDrawList_AddTextEx(self, pos, col, text_begin, text_end)
  end

  def AddTextImFontPtr(font, font_size, pos, col, text_begin)
    ImGui::ImDrawList_AddTextImFontPtr(self, font, font_size, pos, col, text_begin)
  end

  def AddTextImFontPtrEx(font, font_size, pos, col, text_begin, text_end = nil, wrap_width = 0.0, cpu_fine_clip_rect = nil)
    ImGui::ImDrawList_AddTextImFontPtrEx(self, font, font_size, pos, col, text_begin, text_end, wrap_width, cpu_fine_clip_rect)
  end

  def AddBezierCubic(p1, p2, p3, p4, col, thickness, num_segments = 0)
    ImGui::ImDrawList_AddBezierCubic(self, p1, p2, p3, p4, col, thickness, num_segments)
  end

  def AddBezierQuadratic(p1, p2, p3, col, thickness, num_segments = 0)
    ImGui::ImDrawList_AddBezierQuadratic(self, p1, p2, p3, col, thickness, num_segments)
  end

  def AddPolyline(points, num_points, col, flags, thickness)
    ImGui::ImDrawList_AddPolyline(self, points, num_points, col, flags, thickness)
  end

  def AddConvexPolyFilled(points, num_points, col)
    ImGui::ImDrawList_AddConvexPolyFilled(self, points, num_points, col)
  end

  def AddConcavePolyFilled(points, num_points, col)
    ImGui::ImDrawList_AddConcavePolyFilled(self, points, num_points, col)
  end

  def AddImage(tex_ref, p_min, p_max)
    ImGui::ImDrawList_AddImage(self, tex_ref, p_min, p_max)
  end

  def AddImageEx(tex_ref, p_min, p_max, uv_min = ImVec2.create(0,0), uv_max = ImVec2.create(1,1), col = IM_COL32_WHITE)
    ImGui::ImDrawList_AddImageEx(self, tex_ref, p_min, p_max, uv_min, uv_max, col)
  end

  def AddImageQuad(tex_ref, p1, p2, p3, p4)
    ImGui::ImDrawList_AddImageQuad(self, tex_ref, p1, p2, p3, p4)
  end

  def AddImageQuadEx(tex_ref, p1, p2, p3, p4, uv1 = ImVec2.create(0,0), uv2 = ImVec2.create(1,0), uv3 = ImVec2.create(1,1), uv4 = ImVec2.create(0,1), col = IM_COL32_WHITE)
    ImGui::ImDrawList_AddImageQuadEx(self, tex_ref, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col)
  end

  def AddImageRounded(tex_ref, p_min, p_max, uv_min, uv_max, col, rounding, flags = 0)
    ImGui::ImDrawList_AddImageRounded(self, tex_ref, p_min, p_max, uv_min, uv_max, col, rounding, flags)
  end

  def PathClear()
    ImGui::ImDrawList_PathClear(self)
  end

  def PathLineTo(pos)
    ImGui::ImDrawList_PathLineTo(self, pos)
  end

  def PathLineToMergeDuplicate(pos)
    ImGui::ImDrawList_PathLineToMergeDuplicate(self, pos)
  end

  def PathFillConvex(col)
    ImGui::ImDrawList_PathFillConvex(self, col)
  end

  def PathFillConcave(col)
    ImGui::ImDrawList_PathFillConcave(self, col)
  end

  def PathStroke(col, flags = 0, thickness = 1.0)
    ImGui::ImDrawList_PathStroke(self, col, flags, thickness)
  end

  def PathArcTo(center, radius, a_min, a_max, num_segments = 0)
    ImGui::ImDrawList_PathArcTo(self, center, radius, a_min, a_max, num_segments)
  end

  def PathArcToFast(center, radius, a_min_of_12, a_max_of_12)
    ImGui::ImDrawList_PathArcToFast(self, center, radius, a_min_of_12, a_max_of_12)
  end

  def PathEllipticalArcTo(center, radius, rot, a_min, a_max)
    ImGui::ImDrawList_PathEllipticalArcTo(self, center, radius, rot, a_min, a_max)
  end

  def PathEllipticalArcToEx(center, radius, rot, a_min, a_max, num_segments = 0)
    ImGui::ImDrawList_PathEllipticalArcToEx(self, center, radius, rot, a_min, a_max, num_segments)
  end

  def PathBezierCubicCurveTo(p2, p3, p4, num_segments = 0)
    ImGui::ImDrawList_PathBezierCubicCurveTo(self, p2, p3, p4, num_segments)
  end

  def PathBezierQuadraticCurveTo(p2, p3, num_segments = 0)
    ImGui::ImDrawList_PathBezierQuadraticCurveTo(self, p2, p3, num_segments)
  end

  def PathRect(rect_min, rect_max, rounding = 0.0, flags = 0)
    ImGui::ImDrawList_PathRect(self, rect_min, rect_max, rounding, flags)
  end

  def AddCallback(callback, userdata)
    ImGui::ImDrawList_AddCallback(self, callback, userdata)
  end

  def AddCallbackEx(callback, userdata, userdata_size = 0)
    ImGui::ImDrawList_AddCallbackEx(self, callback, userdata, userdata_size)
  end

  def AddDrawCmd()
    ImGui::ImDrawList_AddDrawCmd(self)
  end

  def CloneOutput()
    ImGui::ImDrawList_CloneOutput(self)
  end

  def ChannelsSplit(count)
    ImGui::ImDrawList_ChannelsSplit(self, count)
  end

  def ChannelsMerge()
    ImGui::ImDrawList_ChannelsMerge(self)
  end

  def ChannelsSetCurrent(n)
    ImGui::ImDrawList_ChannelsSetCurrent(self, n)
  end

  def PrimReserve(idx_count, vtx_count)
    ImGui::ImDrawList_PrimReserve(self, idx_count, vtx_count)
  end

  def PrimUnreserve(idx_count, vtx_count)
    ImGui::ImDrawList_PrimUnreserve(self, idx_count, vtx_count)
  end

  def PrimRect(a, b, col)
    ImGui::ImDrawList_PrimRect(self, a, b, col)
  end

  def PrimRectUV(a, b, uv_a, uv_b, col)
    ImGui::ImDrawList_PrimRectUV(self, a, b, uv_a, uv_b, col)
  end

  def PrimQuadUV(a, b, c, d, uv_a, uv_b, uv_c, uv_d, col)
    ImGui::ImDrawList_PrimQuadUV(self, a, b, c, d, uv_a, uv_b, uv_c, uv_d, col)
  end

  def PrimWriteVtx(pos, uv, col)
    ImGui::ImDrawList_PrimWriteVtx(self, pos, uv, col)
  end

  def PrimWriteIdx(idx)
    ImGui::ImDrawList_PrimWriteIdx(self, idx)
  end

  def PrimVtx(pos, uv, col)
    ImGui::ImDrawList_PrimVtx(self, pos, uv, col)
  end

  def PushTextureID(tex_ref)
    ImGui::ImDrawList_PushTextureID(self, tex_ref)
  end

  def PopTextureID()
    ImGui::ImDrawList_PopTextureID(self)
  end

  def _SetDrawListSharedData(data)
    ImGui::ImDrawList__SetDrawListSharedData(self, data)
  end

  def _ResetForNewFrame()
    ImGui::ImDrawList__ResetForNewFrame(self)
  end

  def _ClearFreeMemory()
    ImGui::ImDrawList__ClearFreeMemory(self)
  end

  def _PopUnusedDrawCmd()
    ImGui::ImDrawList__PopUnusedDrawCmd(self)
  end

  def _TryMergeDrawCmds()
    ImGui::ImDrawList__TryMergeDrawCmds(self)
  end

  def _OnChangedClipRect()
    ImGui::ImDrawList__OnChangedClipRect(self)
  end

  def _OnChangedTexture()
    ImGui::ImDrawList__OnChangedTexture(self)
  end

  def _OnChangedVtxOffset()
    ImGui::ImDrawList__OnChangedVtxOffset(self)
  end

  def _SetTexture(tex_ref)
    ImGui::ImDrawList__SetTexture(self, tex_ref)
  end

  def _CalcCircleAutoSegmentCount(radius)
    ImGui::ImDrawList__CalcCircleAutoSegmentCount(self, radius)
  end

  def _PathArcToFastEx(center, radius, a_min_sample, a_max_sample, a_step)
    ImGui::ImDrawList__PathArcToFastEx(self, center, radius, a_min_sample, a_max_sample, a_step)
  end

  def _PathArcToN(center, radius, a_min, a_max, num_segments)
    ImGui::ImDrawList__PathArcToN(self, center, radius, a_min, a_max, num_segments)
  end

end

class ImFontAtlasRect < FFI::Struct
  layout(
    :x, :ushort,
    :y, :ushort,
    :w, :ushort,
    :h, :ushort,
    :uv0, ImVec2.by_value,
    :uv1, ImVec2.by_value
  )
end

class ImFontAtlas < FFI::Struct
  layout(
    :Flags, :int,
    :TexDesiredFormat, :int,
    :TexGlyphPadding, :int,
    :TexMinWidth, :int,
    :TexMinHeight, :int,
    :TexMaxWidth, :int,
    :TexMaxHeight, :int,
    :UserData, :pointer,
    :TexRef, ImTextureRef.by_value,
    :TexData, :pointer,
    :TexList, ImVector.by_value,
    :Locked, :bool,
    :RendererHasTextures, :bool,
    :TexIsBuilt, :bool,
    :TexPixelsUseColors, :bool,
    :TexUvScale, ImVec2.by_value,
    :TexUvWhitePixel, ImVec2.by_value,
    :Fonts, ImVector.by_value,
    :Sources, ImVector.by_value,
    :TexUvLines, [ImVec4.by_value, IM_DRAWLIST_TEX_LINES_WIDTH_MAX+1],
    :TexNextUniqueID, :int,
    :FontNextUniqueID, :int,
    :DrawListSharedDatas, ImVector.by_value,
    :Builder, :pointer,
    :FontLoader, :pointer,
    :FontLoaderName, :pointer,
    :FontLoaderData, :pointer,
    :FontLoaderFlags, :uint,
    :RefCount, :int,
    :OwnerContext, :pointer,
    :TempRect, ImFontAtlasRect.by_value
  )

  def AddFont(font_cfg)
    ImGui::ImFontAtlas_AddFont(self, font_cfg)
  end

  def AddFontDefault(font_cfg = nil)
    ImGui::ImFontAtlas_AddFontDefault(self, font_cfg)
  end

  def AddFontDefaultVector(font_cfg = nil)
    ImGui::ImFontAtlas_AddFontDefaultVector(self, font_cfg)
  end

  def AddFontDefaultBitmap(font_cfg = nil)
    ImGui::ImFontAtlas_AddFontDefaultBitmap(self, font_cfg)
  end

  def AddFontFromFileTTF(filename, size_pixels = 0.0, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromFileTTF(self, filename, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryTTF(font_data, font_data_size, size_pixels = 0.0, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryTTF(self, font_data, font_data_size, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryCompressedTTF(compressed_font_data, compressed_font_data_size, size_pixels = 0.0, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryCompressedTTF(self, compressed_font_data, compressed_font_data_size, size_pixels, font_cfg, glyph_ranges)
  end

  def AddFontFromMemoryCompressedBase85TTF(compressed_font_data_base85, size_pixels = 0.0, font_cfg = nil, glyph_ranges = nil)
    ImGui::ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self, compressed_font_data_base85, size_pixels, font_cfg, glyph_ranges)
  end

  def RemoveFont(font)
    ImGui::ImFontAtlas_RemoveFont(self, font)
  end

  def Clear()
    ImGui::ImFontAtlas_Clear(self)
  end

  def CompactCache()
    ImGui::ImFontAtlas_CompactCache(self)
  end

  def SetFontLoader(font_loader)
    ImGui::ImFontAtlas_SetFontLoader(self, font_loader)
  end

  def ClearInputData()
    ImGui::ImFontAtlas_ClearInputData(self)
  end

  def ClearFonts()
    ImGui::ImFontAtlas_ClearFonts(self)
  end

  def ClearTexData()
    ImGui::ImFontAtlas_ClearTexData(self)
  end

  def Build()
    ImGui::ImFontAtlas_Build(self)
  end

  def GetTexDataAsAlpha8(out_pixels, out_width, out_height, out_bytes_per_pixel = nil)
    ImGui::ImFontAtlas_GetTexDataAsAlpha8(self, out_pixels, out_width, out_height, out_bytes_per_pixel)
  end

  def GetTexDataAsRGBA32(out_pixels, out_width, out_height, out_bytes_per_pixel = nil)
    ImGui::ImFontAtlas_GetTexDataAsRGBA32(self, out_pixels, out_width, out_height, out_bytes_per_pixel)
  end

  def SetTexID(id)
    ImGui::ImFontAtlas_SetTexID(self, id)
  end

  def SetTexIDImTextureRef(id)
    ImGui::ImFontAtlas_SetTexIDImTextureRef(self, id)
  end

  def IsBuilt()
    ImGui::ImFontAtlas_IsBuilt(self)
  end

  def GetGlyphRangesDefault()
    ImGui::ImFontAtlas_GetGlyphRangesDefault(self)
  end

  def GetGlyphRangesGreek()
    ImGui::ImFontAtlas_GetGlyphRangesGreek(self)
  end

  def GetGlyphRangesKorean()
    ImGui::ImFontAtlas_GetGlyphRangesKorean(self)
  end

  def GetGlyphRangesJapanese()
    ImGui::ImFontAtlas_GetGlyphRangesJapanese(self)
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

  def GetGlyphRangesThai()
    ImGui::ImFontAtlas_GetGlyphRangesThai(self)
  end

  def GetGlyphRangesVietnamese()
    ImGui::ImFontAtlas_GetGlyphRangesVietnamese(self)
  end

  def AddCustomRect(width, height, out_r = nil)
    ImGui::ImFontAtlas_AddCustomRect(self, width, height, out_r)
  end

  def RemoveCustomRect(id)
    ImGui::ImFontAtlas_RemoveCustomRect(self, id)
  end

  def GetCustomRect(id, out_r)
    ImGui::ImFontAtlas_GetCustomRect(self, id, out_r)
  end

  def AddCustomRectRegular(w, h)
    ImGui::ImFontAtlas_AddCustomRectRegular(self, w, h)
  end

  def GetCustomRectByIndex(id)
    ImGui::ImFontAtlas_GetCustomRectByIndex(self, id)
  end

  def CalcCustomRectUV(r, out_uv_min, out_uv_max)
    ImGui::ImFontAtlas_CalcCustomRectUV(self, r, out_uv_min, out_uv_max)
  end

  def AddCustomRectFontGlyph(font, codepoint, w, h, advance_x, offset = ImVec2.create(0,0))
    ImGui::ImFontAtlas_AddCustomRectFontGlyph(self, font, codepoint, w, h, advance_x, offset)
  end

  def AddCustomRectFontGlyphForSize(font, font_size, codepoint, w, h, advance_x, offset = ImVec2.create(0,0))
    ImGui::ImFontAtlas_AddCustomRectFontGlyphForSize(self, font, font_size, codepoint, w, h, advance_x, offset)
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

class ImGuiTableSortSpecs < FFI::Struct
  layout(
    :Specs, :pointer,
    :SpecsCount, :int,
    :SpecsDirty, :bool
  )
end

class ImGuiTableColumnSortSpecs < FFI::Struct
  layout(
    :ColumnUserID, :uint,
    :ColumnIndex, :short,
    :SortOrder, :short,
    :SortDirection, :uchar
  )
end

class ImVector_ImGuiTextRange < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_char < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiStoragePair < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiSelectionRequest < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawChannel < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawCmd < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawIdx < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawVert < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImVec2 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImVec4 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImTextureRef < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImU8 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawListPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImTextureRect < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImU32 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImWchar < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImFontPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImFontConfig < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImDrawListSharedDataPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_float < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImU16 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImFontGlyph < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImFontConfigPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImTextureDataPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImGuiStyle < FFI::Struct
  layout(
    :FontSizeBase, :float,
    :FontScaleMain, :float,
    :FontScaleDpi, :float,
    :Alpha, :float,
    :DisabledAlpha, :float,
    :WindowPadding, ImVec2.by_value,
    :WindowRounding, :float,
    :WindowBorderSize, :float,
    :WindowBorderHoverPadding, :float,
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
    :ScrollbarPadding, :float,
    :GrabMinSize, :float,
    :GrabRounding, :float,
    :LogSliderDeadzone, :float,
    :ImageRounding, :float,
    :ImageBorderSize, :float,
    :TabRounding, :float,
    :TabBorderSize, :float,
    :TabMinWidthBase, :float,
    :TabMinWidthShrink, :float,
    :TabCloseButtonMinWidthSelected, :float,
    :TabCloseButtonMinWidthUnselected, :float,
    :TabBarBorderSize, :float,
    :TabBarOverlineSize, :float,
    :TableAngledHeadersAngle, :float,
    :TableAngledHeadersTextAlign, ImVec2.by_value,
    :TreeLinesFlags, :int,
    :TreeLinesSize, :float,
    :TreeLinesRounding, :float,
    :DragDropTargetRounding, :float,
    :DragDropTargetBorderSize, :float,
    :DragDropTargetPadding, :float,
    :ColorMarkerSize, :float,
    :ColorButtonPosition, :int,
    :ButtonTextAlign, ImVec2.by_value,
    :SelectableTextAlign, ImVec2.by_value,
    :SeparatorSize, :float,
    :SeparatorTextBorderSize, :float,
    :SeparatorTextAlign, ImVec2.by_value,
    :SeparatorTextPadding, ImVec2.by_value,
    :DisplayWindowPadding, ImVec2.by_value,
    :DisplaySafeAreaPadding, ImVec2.by_value,
    :MouseCursorScale, :float,
    :AntiAliasedLines, :bool,
    :AntiAliasedLinesUseTex, :bool,
    :AntiAliasedFill, :bool,
    :CurveTessellationTol, :float,
    :CircleTessellationMaxError, :float,
    :Colors, [ImVec4.by_value, ImGuiCol_COUNT],
    :HoverStationaryDelay, :float,
    :HoverDelayShort, :float,
    :HoverDelayNormal, :float,
    :HoverFlagsForTooltipMouse, :int,
    :HoverFlagsForTooltipNav, :int,
    :_MainScale, :float,
    :_NextFrameFontSizeBase, :float
  )

  def ScaleAllSizes(scale_factor)
    ImGui::ImGuiStyle_ScaleAllSizes(self, scale_factor)
  end

end

class ImGuiIO < FFI::Struct
  layout(
    :ConfigFlags, :int,
    :BackendFlags, :int,
    :DisplaySize, ImVec2.by_value,
    :DisplayFramebufferScale, ImVec2.by_value,
    :DeltaTime, :float,
    :IniSavingRate, :float,
    :IniFilename, :pointer,
    :LogFilename, :pointer,
    :UserData, :pointer,
    :Fonts, :pointer,
    :FontDefault, :pointer,
    :FontAllowUserScaling, :bool,
    :ConfigNavSwapGamepadButtons, :bool,
    :ConfigNavMoveSetMousePos, :bool,
    :ConfigNavCaptureKeyboard, :bool,
    :ConfigNavEscapeClearFocusItem, :bool,
    :ConfigNavEscapeClearFocusWindow, :bool,
    :ConfigNavCursorVisibleAuto, :bool,
    :ConfigNavCursorVisibleAlways, :bool,
    :MouseDrawCursor, :bool,
    :ConfigMacOSXBehaviors, :bool,
    :ConfigInputTrickleEventQueue, :bool,
    :ConfigInputTextCursorBlink, :bool,
    :ConfigInputTextEnterKeepActive, :bool,
    :ConfigDragClickToInputText, :bool,
    :ConfigWindowsResizeFromEdges, :bool,
    :ConfigWindowsMoveFromTitleBarOnly, :bool,
    :ConfigWindowsCopyContentsWithCtrlC, :bool,
    :ConfigScrollbarScrollByPage, :bool,
    :ConfigMemoryCompactTimer, :float,
    :MouseDoubleClickTime, :float,
    :MouseDoubleClickMaxDist, :float,
    :MouseDragThreshold, :float,
    :KeyRepeatDelay, :float,
    :KeyRepeatRate, :float,
    :ConfigErrorRecovery, :bool,
    :ConfigErrorRecoveryEnableAssert, :bool,
    :ConfigErrorRecoveryEnableDebugLog, :bool,
    :ConfigErrorRecoveryEnableTooltip, :bool,
    :ConfigDebugIsDebuggerPresent, :bool,
    :ConfigDebugHighlightIdConflicts, :bool,
    :ConfigDebugHighlightIdConflictsShowItemPicker, :bool,
    :ConfigDebugBeginReturnValueOnce, :bool,
    :ConfigDebugBeginReturnValueLoop, :bool,
    :ConfigDebugIgnoreFocusLoss, :bool,
    :ConfigDebugIniSettings, :bool,
    :BackendPlatformName, :pointer,
    :BackendRendererName, :pointer,
    :BackendPlatformUserData, :pointer,
    :BackendRendererUserData, :pointer,
    :BackendLanguageUserData, :pointer,
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
    :MouseDelta, ImVec2.by_value,
    :Ctx, :pointer,
    :MousePos, ImVec2.by_value,
    :MouseDown, [:bool, 5],
    :MouseWheel, :float,
    :MouseWheelH, :float,
    :MouseSource, :int,
    :KeyCtrl, :bool,
    :KeyShift, :bool,
    :KeyAlt, :bool,
    :KeySuper, :bool,
    :KeyMods, :int,
    :KeysData, [ImGuiKeyData.by_value, ImGuiKey_NamedKey_COUNT],
    :WantCaptureMouseUnlessPopupClose, :bool,
    :MousePosPrev, ImVec2.by_value,
    :MouseClickedPos, [ImVec2.by_value, 5],
    :MouseClickedTime, [:double, 5],
    :MouseClicked, [:bool, 5],
    :MouseDoubleClicked, [:bool, 5],
    :MouseClickedCount, [:ushort, 5],
    :MouseClickedLastCount, [:ushort, 5],
    :MouseReleased, [:bool, 5],
    :MouseReleasedTime, [:double, 5],
    :MouseDownOwned, [:bool, 5],
    :MouseDownOwnedUnlessPopupClose, [:bool, 5],
    :MouseWheelRequestAxisSwap, :bool,
    :MouseCtrlLeftAsRightClick, :bool,
    :MouseDownDuration, [:float, 5],
    :MouseDownDurationPrev, [:float, 5],
    :MouseDragMaxDistanceSqr, [:float, 5],
    :PenPressure, :float,
    :AppFocusLost, :bool,
    :AppAcceptingEvents, :bool,
    :InputQueueSurrogate, :ushort,
    :InputQueueCharacters, ImVector.by_value,
    :FontGlobalScale, :float,
    :GetClipboardTextFn, :pointer,
    :SetClipboardTextFn, :pointer,
    :ClipboardUserData, :pointer
  )

  def AddKeyEvent(key, down)
    ImGui::ImGuiIO_AddKeyEvent(self, key, down)
  end

  def AddKeyAnalogEvent(key, down, v)
    ImGui::ImGuiIO_AddKeyAnalogEvent(self, key, down, v)
  end

  def AddMousePosEvent(x, y)
    ImGui::ImGuiIO_AddMousePosEvent(self, x, y)
  end

  def AddMouseButtonEvent(button, down)
    ImGui::ImGuiIO_AddMouseButtonEvent(self, button, down)
  end

  def AddMouseWheelEvent(wheel_x, wheel_y)
    ImGui::ImGuiIO_AddMouseWheelEvent(self, wheel_x, wheel_y)
  end

  def AddMouseSourceEvent(source)
    ImGui::ImGuiIO_AddMouseSourceEvent(self, source)
  end

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

  def SetKeyEventNativeData(key, native_keycode, native_scancode)
    ImGui::ImGuiIO_SetKeyEventNativeData(self, key, native_keycode, native_scancode)
  end

  def SetKeyEventNativeDataEx(key, native_keycode, native_scancode, native_legacy_index = -1)
    ImGui::ImGuiIO_SetKeyEventNativeDataEx(self, key, native_keycode, native_scancode, native_legacy_index)
  end

  def SetAppAcceptingEvents(accepting_events)
    ImGui::ImGuiIO_SetAppAcceptingEvents(self, accepting_events)
  end

  def ClearEventsQueue()
    ImGui::ImGuiIO_ClearEventsQueue(self)
  end

  def ClearInputKeys()
    ImGui::ImGuiIO_ClearInputKeys(self)
  end

  def ClearInputMouse()
    ImGui::ImGuiIO_ClearInputMouse(self)
  end

end

class ImGuiInputTextCallbackData < FFI::Struct
  layout(
    :Ctx, :pointer,
    :EventFlag, :int,
    :Flags, :int,
    :UserData, :pointer,
    :ID, :uint,
    :EventKey, :int,
    :EventChar, :ushort,
    :EventActivated, :bool,
    :BufDirty, :bool,
    :Buf, :pointer,
    :BufTextLen, :int,
    :BufSize, :int,
    :CursorPos, :int,
    :SelectionStart, :int,
    :SelectionEnd, :int
  )

  def DeleteChars(pos, bytes_count)
    ImGui::ImGuiInputTextCallbackData_DeleteChars(self, pos, bytes_count)
  end

  def InsertChars(pos, text, text_end = nil)
    ImGui::ImGuiInputTextCallbackData_InsertChars(self, pos, text, text_end)
  end

  def SelectAll()
    ImGui::ImGuiInputTextCallbackData_SelectAll(self)
  end

  def SetSelection(s, e)
    ImGui::ImGuiInputTextCallbackData_SetSelection(self, s, e)
  end

  def ClearSelection()
    ImGui::ImGuiInputTextCallbackData_ClearSelection(self)
  end

  def HasSelection()
    ImGui::ImGuiInputTextCallbackData_HasSelection(self)
  end

end

class ImGuiSizeCallbackData < FFI::Struct
  layout(
    :UserData, :pointer,
    :Pos, ImVec2.by_value,
    :CurrentSize, ImVec2.by_value,
    :DesiredSize, ImVec2.by_value
  )
end

class ImGuiPayload < FFI::Struct
  layout(
    :Data, :pointer,
    :DataSize, :int,
    :SourceId, :uint,
    :SourceParentId, :uint,
    :DataFrameCount, :int,
    :DataType, [:char, 32+1],
    :Preview, :bool,
    :Delivery, :bool
  )

  def Clear()
    ImGui::ImGuiPayload_Clear(self)
  end

  def IsDataType(type)
    ImGui::ImGuiPayload_IsDataType(self, type)
  end

  def IsPreview()
    ImGui::ImGuiPayload_IsPreview(self)
  end

  def IsDelivery()
    ImGui::ImGuiPayload_IsDelivery(self)
  end

end

class ImGuiTextFilter_ImGuiTextRange < FFI::Struct
  layout(
    :b, :pointer,
    :e, :pointer
  )

  def ImGuiTextRange_empty()
    ImGui::ImGuiTextFilter_ImGuiTextRange_empty(self)
  end

  def ImGuiTextRange_split(separator, out)
    ImGui::ImGuiTextFilter_ImGuiTextRange_split(self, separator, out)
  end

end

class ImGuiTextFilter < FFI::Struct
  layout(
    :InputBuf, [:char, 256],
    :Filters, ImVector.by_value,
    :CountGrep, :int
  )

  def Draw(label = "Filter (inc,-exc)", width = 0.0)
    ImGui::ImGuiTextFilter_Draw(self, label, width)
  end

  def PassFilter(text, text_end = nil)
    ImGui::ImGuiTextFilter_PassFilter(self, text, text_end)
  end

  def Build()
    ImGui::ImGuiTextFilter_Build(self)
  end

  def Clear()
    ImGui::ImGuiTextFilter_Clear(self)
  end

  def IsActive()
    ImGui::ImGuiTextFilter_IsActive(self)
  end

end

class ImGuiTextBuffer < FFI::Struct
  layout(
    :Buf, ImVector.by_value
  )

  def begin()
    ImGui::ImGuiTextBuffer_begin(self)
  end

  def end()
    ImGui::ImGuiTextBuffer_end(self)
  end

  def size()
    ImGui::ImGuiTextBuffer_size(self)
  end

  def empty()
    ImGui::ImGuiTextBuffer_empty(self)
  end

  def clear()
    ImGui::ImGuiTextBuffer_clear(self)
  end

  def resize(size)
    ImGui::ImGuiTextBuffer_resize(self, size)
  end

  def reserve(capacity)
    ImGui::ImGuiTextBuffer_reserve(self, capacity)
  end

  def c_str()
    ImGui::ImGuiTextBuffer_c_str(self)
  end

  def append(str, str_end = nil)
    ImGui::ImGuiTextBuffer_append(self, str, str_end)
  end

  def appendf(fmt, *varargs)
    ImGui::ImGuiTextBuffer_appendf(self, fmt, *varargs)
  end

end

class ImGuiStoragePair < FFI::Struct
  layout(
    :key, :uint
  )
end

class ImGuiStorage < FFI::Struct
  layout(
    :Data, ImVector.by_value
  )

  def Clear()
    ImGui::ImGuiStorage_Clear(self)
  end

  def GetInt(key, default_val = 0)
    ImGui::ImGuiStorage_GetInt(self, key, default_val)
  end

  def SetInt(key, val)
    ImGui::ImGuiStorage_SetInt(self, key, val)
  end

  def GetBool(key, default_val = false)
    ImGui::ImGuiStorage_GetBool(self, key, default_val)
  end

  def SetBool(key, val)
    ImGui::ImGuiStorage_SetBool(self, key, val)
  end

  def GetFloat(key, default_val = 0.0)
    ImGui::ImGuiStorage_GetFloat(self, key, default_val)
  end

  def SetFloat(key, val)
    ImGui::ImGuiStorage_SetFloat(self, key, val)
  end

  def GetVoidPtr(key)
    ImGui::ImGuiStorage_GetVoidPtr(self, key)
  end

  def SetVoidPtr(key, val)
    ImGui::ImGuiStorage_SetVoidPtr(self, key, val)
  end

  def GetIntRef(key, default_val = 0)
    ImGui::ImGuiStorage_GetIntRef(self, key, default_val)
  end

  def GetBoolRef(key, default_val = false)
    ImGui::ImGuiStorage_GetBoolRef(self, key, default_val)
  end

  def GetFloatRef(key, default_val = 0.0)
    ImGui::ImGuiStorage_GetFloatRef(self, key, default_val)
  end

  def GetVoidPtrRef(key, default_val = nil)
    ImGui::ImGuiStorage_GetVoidPtrRef(self, key, default_val)
  end

  def BuildSortByKey()
    ImGui::ImGuiStorage_BuildSortByKey(self)
  end

  def SetAllInt(val)
    ImGui::ImGuiStorage_SetAllInt(self, val)
  end

end

class ImGuiListClipper < FFI::Struct
  layout(
    :DisplayStart, :int,
    :DisplayEnd, :int,
    :UserIndex, :int,
    :ItemsCount, :int,
    :ItemsHeight, :float,
    :Flags, :int,
    :StartPosY, :double,
    :StartSeekOffsetY, :double,
    :Ctx, :pointer,
    :TempData, :pointer
  )

  def Begin(items_count, items_height = -1.0)
    ImGui::ImGuiListClipper_Begin(self, items_count, items_height)
  end

  def End()
    ImGui::ImGuiListClipper_End(self)
  end

  def Step()
    ImGui::ImGuiListClipper_Step(self)
  end

  def IncludeItemByIndex(item_index)
    ImGui::ImGuiListClipper_IncludeItemByIndex(self, item_index)
  end

  def IncludeItemsByIndex(item_begin, item_end)
    ImGui::ImGuiListClipper_IncludeItemsByIndex(self, item_begin, item_end)
  end

  def SeekCursorForItem(item_index)
    ImGui::ImGuiListClipper_SeekCursorForItem(self, item_index)
  end

end

class ImColor < FFI::Struct
  layout(
    :Value, ImVec4.by_value
  )

  def SetHSV(h, s, v, a = 1.0)
    ImGui::ImColor_SetHSV(self, h, s, v, a)
  end

  def HSV(h, s, v, a = 1.0)
    ImGui::ImColor_HSV(h, s, v, a)
  end

end

class ImGuiMultiSelectIO < FFI::Struct
  layout(
    :Requests, ImVector.by_value,
    :RangeSrcItem, :int64,
    :NavIdItem, :int64,
    :NavIdSelected, :bool,
    :RangeSrcReset, :bool,
    :ItemsCount, :int
  )
end

class ImGuiSelectionRequest < FFI::Struct
  layout(
    :Type, :int,
    :Selected, :bool,
    :RangeDirection, :char,
    :RangeFirstItem, :int64,
    :RangeLastItem, :int64
  )
end

class ImGuiSelectionBasicStorage < FFI::Struct
  layout(
    :Size, :int,
    :PreserveOrder, :bool,
    :UserData, :pointer,
    :AdapterIndexToStorageId, :pointer,
    :_SelectionOrder, :int,
    :_Storage, ImGuiStorage.by_value
  )

  def ApplyRequests(ms_io)
    ImGui::ImGuiSelectionBasicStorage_ApplyRequests(self, ms_io)
  end

  def Contains(id)
    ImGui::ImGuiSelectionBasicStorage_Contains(self, id)
  end

  def Clear()
    ImGui::ImGuiSelectionBasicStorage_Clear(self)
  end

  def Swap(r)
    ImGui::ImGuiSelectionBasicStorage_Swap(self, r)
  end

  def SetItemSelected(id, selected)
    ImGui::ImGuiSelectionBasicStorage_SetItemSelected(self, id, selected)
  end

  def GetNextSelectedItem(opaque_it, out_id)
    ImGui::ImGuiSelectionBasicStorage_GetNextSelectedItem(self, opaque_it, out_id)
  end

  def GetStorageIdFromIndex(idx)
    ImGui::ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self, idx)
  end

end

class ImGuiSelectionExternalStorage < FFI::Struct
  layout(
    :UserData, :pointer,
    :AdapterSetItemSelected, :pointer
  )

  def ApplyRequests(ms_io)
    ImGui::ImGuiSelectionExternalStorage_ApplyRequests(self, ms_io)
  end

end

class ImDrawChannel < FFI::Struct
  layout(
    :_CmdBuffer, ImVector.by_value,
    :_IdxBuffer, ImVector.by_value
  )
end

class ImDrawData < FFI::Struct
  layout(
    :Valid, :bool,
    :CmdListsCount, :int,
    :TotalIdxCount, :int,
    :TotalVtxCount, :int,
    :CmdLists, ImVector.by_value,
    :DisplayPos, ImVec2.by_value,
    :DisplaySize, ImVec2.by_value,
    :FramebufferScale, ImVec2.by_value,
    :OwnerViewport, :pointer,
    :Textures, :pointer
  )

  def Clear()
    ImGui::ImDrawData_Clear(self)
  end

  def AddDrawList(draw_list)
    ImGui::ImDrawData_AddDrawList(self, draw_list)
  end

  def DeIndexAllBuffers()
    ImGui::ImDrawData_DeIndexAllBuffers(self)
  end

  def ScaleClipRects(fb_scale)
    ImGui::ImDrawData_ScaleClipRects(self, fb_scale)
  end

end

class ImTextureRect < FFI::Struct
  layout(
    :x, :ushort,
    :y, :ushort,
    :w, :ushort,
    :h, :ushort
  )
end

class ImTextureData < FFI::Struct
  layout(
    :UniqueID, :int,
    :Status, :int,
    :BackendUserData, :pointer,
    :TexID, :uint64,
    :Format, :int,
    :Width, :int,
    :Height, :int,
    :BytesPerPixel, :int,
    :Pixels, :pointer,
    :UsedRect, ImTextureRect.by_value,
    :UpdateRect, ImTextureRect.by_value,
    :Updates, ImVector.by_value,
    :UnusedFrames, :int,
    :RefCount, :ushort,
    :UseColors, :bool,
    :WantDestroyNextFrame, :bool
  )

  def Create(format, w, h)
    ImGui::ImTextureData_Create(self, format, w, h)
  end

  def DestroyPixels()
    ImGui::ImTextureData_DestroyPixels(self)
  end

  def GetPixels()
    ImGui::ImTextureData_GetPixels(self)
  end

  def GetPixelsAt(x, y)
    ImGui::ImTextureData_GetPixelsAt(self, x, y)
  end

  def GetSizeInBytes()
    ImGui::ImTextureData_GetSizeInBytes(self)
  end

  def GetPitch()
    ImGui::ImTextureData_GetPitch(self)
  end

  def GetTexRef()
    ImGui::ImTextureData_GetTexRef(self)
  end

  def GetTexID()
    ImGui::ImTextureData_GetTexID(self)
  end

  def SetTexID(tex_id)
    ImGui::ImTextureData_SetTexID(self, tex_id)
  end

  def SetStatus(status)
    ImGui::ImTextureData_SetStatus(self, status)
  end

end

class ImFontConfig < FFI::Struct
  layout(
    :Name, [:char, 40],
    :FontData, :pointer,
    :FontDataSize, :int,
    :FontDataOwnedByAtlas, :bool,
    :MergeMode, :bool,
    :PixelSnapH, :bool,
    :OversampleH, :char,
    :OversampleV, :char,
    :EllipsisChar, :ushort,
    :SizePixels, :float,
    :GlyphRanges, :pointer,
    :GlyphExcludeRanges, :pointer,
    :GlyphOffset, ImVec2.by_value,
    :GlyphMinAdvanceX, :float,
    :GlyphMaxAdvanceX, :float,
    :GlyphExtraAdvanceX, :float,
    :FontNo, :uint,
    :FontLoaderFlags, :uint,
    :RasterizerMultiply, :float,
    :RasterizerDensity, :float,
    :ExtraSizeScale, :float,
    :Flags, :int,
    :DstFont, :pointer,
    :FontLoader, :pointer,
    :FontLoaderData, :pointer,
    :PixelSnapV, :bool
  )
end

class ImFontGlyph < FFI::Struct
  layout(
    :Colored, :uint,
    :Visible, :uint,
    :SourceIdx, :uint,
    :Codepoint, :uint,
    :AdvanceX, :float,
    :X0, :float,
    :Y0, :float,
    :X1, :float,
    :Y1, :float,
    :U0, :float,
    :V0, :float,
    :U1, :float,
    :V1, :float,
    :PackId, :int
  )
end

class ImFontGlyphRangesBuilder < FFI::Struct
  layout(
    :UsedChars, ImVector.by_value
  )

  def Clear()
    ImGui::ImFontGlyphRangesBuilder_Clear(self)
  end

  def GetBit(n)
    ImGui::ImFontGlyphRangesBuilder_GetBit(self, n)
  end

  def SetBit(n)
    ImGui::ImFontGlyphRangesBuilder_SetBit(self, n)
  end

  def AddChar(c)
    ImGui::ImFontGlyphRangesBuilder_AddChar(self, c)
  end

  def AddText(text, text_end = nil)
    ImGui::ImFontGlyphRangesBuilder_AddText(self, text, text_end)
  end

  def AddRanges(ranges)
    ImGui::ImFontGlyphRangesBuilder_AddRanges(self, ranges)
  end

  def BuildRanges(out_ranges)
    ImGui::ImFontGlyphRangesBuilder_BuildRanges(self, out_ranges)
  end

end

class ImFontBaked < FFI::Struct
  layout(
    :IndexAdvanceX, ImVector.by_value,
    :FallbackAdvanceX, :float,
    :Size, :float,
    :RasterizerDensity, :float,
    :IndexLookup, ImVector.by_value,
    :Glyphs, ImVector.by_value,
    :FallbackGlyphIndex, :int,
    :Ascent, :float,
    :Descent, :float,
    :MetricsTotalSurface, :uint,
    :WantDestroy, :uint,
    :LoadNoFallback, :uint,
    :LoadNoRenderOnLayout, :uint,
    :LastUsedFrame, :int,
    :BakedId, :uint,
    :OwnerFont, :pointer,
    :FontLoaderDatas, :pointer
  )

  def ClearOutputData()
    ImGui::ImFontBaked_ClearOutputData(self)
  end

  def FindGlyph(c)
    ImGui::ImFontBaked_FindGlyph(self, c)
  end

  def FindGlyphNoFallback(c)
    ImGui::ImFontBaked_FindGlyphNoFallback(self, c)
  end

  def GetCharAdvance(c)
    ImGui::ImFontBaked_GetCharAdvance(self, c)
  end

  def IsGlyphLoaded(c)
    ImGui::ImFontBaked_IsGlyphLoaded(self, c)
  end

end

class ImFont < FFI::Struct
  layout(
    :LastBaked, :pointer,
    :OwnerAtlas, :pointer,
    :Flags, :int,
    :CurrentRasterizerDensity, :float,
    :FontId, :uint,
    :LegacySize, :float,
    :Sources, ImVector.by_value,
    :EllipsisChar, :ushort,
    :FallbackChar, :ushort,
    :Used8kPagesMap, [:uchar, 1],
    :EllipsisAutoBake, :bool,
    :RemapPairs, ImGuiStorage.by_value,
    :Scale, :float
  )

  def IsGlyphInFont(c)
    ImGui::ImFont_IsGlyphInFont(self, c)
  end

  def IsLoaded()
    ImGui::ImFont_IsLoaded(self)
  end

  def GetDebugName()
    ImGui::ImFont_GetDebugName(self)
  end

  def GetFontBaked(font_size)
    ImGui::ImFont_GetFontBaked(self, font_size)
  end

  def GetFontBakedEx(font_size, density = -1.0)
    ImGui::ImFont_GetFontBakedEx(self, font_size, density)
  end

  def CalcTextSizeA(size, max_width, wrap_width, text_begin)
    ImGui::ImFont_CalcTextSizeA(self, size, max_width, wrap_width, text_begin)
  end

  def CalcTextSizeAEx(size, max_width, wrap_width, text_begin, text_end = nil, out_remaining = nil)
    ImGui::ImFont_CalcTextSizeAEx(self, size, max_width, wrap_width, text_begin, text_end, out_remaining)
  end

  def CalcWordWrapPosition(size, text, text_end, wrap_width)
    ImGui::ImFont_CalcWordWrapPosition(self, size, text, text_end, wrap_width)
  end

  def RenderChar(draw_list, size, pos, col, c)
    ImGui::ImFont_RenderChar(self, draw_list, size, pos, col, c)
  end

  def RenderCharEx(draw_list, size, pos, col, c, cpu_fine_clip = nil)
    ImGui::ImFont_RenderCharEx(self, draw_list, size, pos, col, c, cpu_fine_clip)
  end

  def RenderText(draw_list, size, pos, col, clip_rect, text_begin, text_end, wrap_width = 0.0, flags = 0)
    ImGui::ImFont_RenderText(self, draw_list, size, pos, col, clip_rect, text_begin, text_end, wrap_width, flags)
  end

  def CalcWordWrapPositionA(scale, text, text_end, wrap_width)
    ImGui::ImFont_CalcWordWrapPositionA(self, scale, text, text_end, wrap_width)
  end

  def ClearOutputData()
    ImGui::ImFont_ClearOutputData(self)
  end

  def AddRemapChar(from_codepoint, to_codepoint)
    ImGui::ImFont_AddRemapChar(self, from_codepoint, to_codepoint)
  end

  def IsGlyphRangeUnused(c_begin, c_last)
    ImGui::ImFont_IsGlyphRangeUnused(self, c_begin, c_last)
  end

end

class ImGuiViewport < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :FramebufferScale, ImVec2.by_value,
    :WorkPos, ImVec2.by_value,
    :WorkSize, ImVec2.by_value,
    :PlatformHandle, :pointer,
    :PlatformHandleRaw, :pointer
  )

  def GetCenter()
    ImGui::ImGuiViewport_GetCenter(self)
  end

  def GetWorkCenter()
    ImGui::ImGuiViewport_GetWorkCenter(self)
  end

end

class ImGuiPlatformIO < FFI::Struct
  layout(
    :Platform_GetClipboardTextFn, :pointer,
    :Platform_SetClipboardTextFn, :pointer,
    :Platform_ClipboardUserData, :pointer,
    :Platform_OpenInShellFn, :pointer,
    :Platform_OpenInShellUserData, :pointer,
    :Platform_SetImeDataFn, :pointer,
    :Platform_ImeUserData, :pointer,
    :Platform_LocaleDecimalPoint, :ushort,
    :Renderer_TextureMaxWidth, :int,
    :Renderer_TextureMaxHeight, :int,
    :Renderer_RenderState, :pointer,
    :Textures, ImVector.by_value
  )

  def ClearPlatformHandlers()
    ImGui::ImGuiPlatformIO_ClearPlatformHandlers(self)
  end

  def ClearRendererHandlers()
    ImGui::ImGuiPlatformIO_ClearRendererHandlers(self)
  end

end

class ImGuiPlatformImeData < FFI::Struct
  layout(
    :WantVisible, :bool,
    :WantTextInput, :bool,
    :InputPos, ImVec2.by_value,
    :InputLineHeight, :float,
    :ViewportId, :uint
  )
end

class ImVector_ImFontBakedPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImFontAtlasPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVec1 < FFI::Struct
  layout(
    :x, :float
  )
end

class ImVec2i < FFI::Struct
  layout(
    :x, :int,
    :y, :int
  )
end

class ImVec2ih < FFI::Struct
  layout(
    :x, :short,
    :y, :short
  )
end

class ImRect < FFI::Struct
  layout(
    :Min, ImVec2.by_value,
    :Max, ImVec2.by_value
  )

  def GetCenter()
    ImGui::ImRect_GetCenter(self)
  end

  def GetSize()
    ImGui::ImRect_GetSize(self)
  end

  def GetWidth()
    ImGui::ImRect_GetWidth(self)
  end

  def GetHeight()
    ImGui::ImRect_GetHeight(self)
  end

  def GetArea()
    ImGui::ImRect_GetArea(self)
  end

  def GetTL()
    ImGui::ImRect_GetTL(self)
  end

  def GetTR()
    ImGui::ImRect_GetTR(self)
  end

  def GetBL()
    ImGui::ImRect_GetBL(self)
  end

  def GetBR()
    ImGui::ImRect_GetBR(self)
  end

  def Contains(p)
    ImGui::ImRect_Contains(self, p)
  end

  def ContainsImRect(r)
    ImGui::ImRect_ContainsImRect(self, r)
  end

  def ContainsWithPad(p, pad)
    ImGui::ImRect_ContainsWithPad(self, p, pad)
  end

  def Overlaps(r)
    ImGui::ImRect_Overlaps(self, r)
  end

  def Add(p)
    ImGui::ImRect_Add(self, p)
  end

  def AddImRect(r)
    ImGui::ImRect_AddImRect(self, r)
  end

  def Expand(amount)
    ImGui::ImRect_Expand(self, amount)
  end

  def ExpandImVec2(amount)
    ImGui::ImRect_ExpandImVec2(self, amount)
  end

  def Translate(d)
    ImGui::ImRect_Translate(self, d)
  end

  def TranslateX(dx)
    ImGui::ImRect_TranslateX(self, dx)
  end

  def TranslateY(dy)
    ImGui::ImRect_TranslateY(self, dy)
  end

  def ClipWith(r)
    ImGui::ImRect_ClipWith(self, r)
  end

  def ClipWithFull(r)
    ImGui::ImRect_ClipWithFull(self, r)
  end

  def IsInverted()
    ImGui::ImRect_IsInverted(self)
  end

  def ToVec4()
    ImGui::ImRect_ToVec4(self)
  end

end

class ImBitVector < FFI::Struct
  layout(
    :Storage, ImVector.by_value
  )

  def Create(sz)
    ImGui::ImBitVector_Create(self, sz)
  end

  def Clear()
    ImGui::ImBitVector_Clear(self)
  end

  def TestBit(n)
    ImGui::ImBitVector_TestBit(self, n)
  end

  def SetBit(n)
    ImGui::ImBitVector_SetBit(self, n)
  end

  def ClearBit(n)
    ImGui::ImBitVector_ClearBit(self, n)
  end

end

class ImSpan_ImGuiTableColumn < FFI::Struct
  layout(
    :Data, :pointer,
    :DataEnd, :pointer
  )
end

class ImSpan_ImGuiTableColumnIdx < FFI::Struct
  layout(
    :Data, :pointer,
    :DataEnd, :pointer
  )
end

class ImSpan_ImGuiTableCellData < FFI::Struct
  layout(
    :Data, :pointer,
    :DataEnd, :pointer
  )
end

class ImStableVector_ImFontBaked_32 < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Blocks, ImVector.by_value
  )

  def ImFontBaked_32_clear()
    ImGui::ImStableVector_ImFontBaked_32_clear(self)
  end

  def ImFontBaked_32_resize(new_size)
    ImGui::ImStableVector_ImFontBaked_32_resize(self, new_size)
  end

  def ImFontBaked_32_reserve(new_cap)
    ImGui::ImStableVector_ImFontBaked_32_reserve(self, new_cap)
  end

end

class ImDrawListSharedData < FFI::Struct
  layout(
    :TexUvWhitePixel, ImVec2.by_value,
    :TexUvLines, :pointer,
    :FontAtlas, :pointer,
    :Font, :pointer,
    :FontSize, :float,
    :FontScale, :float,
    :CurveTessellationTol, :float,
    :CircleSegmentMaxError, :float,
    :InitialFringeScale, :float,
    :InitialFlags, :int,
    :ClipRectFullscreen, ImVec4.by_value,
    :TempBuffer, ImVector.by_value,
    :DrawLists, ImVector.by_value,
    :Context, :pointer,
    :ArcFastVtx, [ImVec2.by_value, IM_DRAWLIST_ARCFAST_TABLE_SIZE],
    :ArcFastRadiusCutoff, :float,
    :CircleSegmentCounts, [:uchar, 64]
  )

  def SetCircleTessellationMaxError(max_error)
    ImGui::ImDrawListSharedData_SetCircleTessellationMaxError(self, max_error)
  end

end

class ImDrawDataBuilder < FFI::Struct
  layout(
    :Layers, [:pointer, 2],
    :LayerData1, ImVector.by_value
  )
end

class ImFontStackData < FFI::Struct
  layout(
    :Font, :pointer,
    :FontSizeBeforeScaling, :float,
    :FontSizeAfterScaling, :float
  )
end

class ImVector_ImFontStackData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImGuiStyleVarInfo < FFI::Struct
  layout(
    :Count, :uint,
    :DataType, :int,
    :Offset, :uint
  )

  def GetVarPtr(parent)
    ImGui::ImGuiStyleVarInfo_GetVarPtr(self, parent)
  end

end

class ImGuiColorMod < FFI::Struct
  layout(
    :Col, :int,
    :BackupValue, ImVec4.by_value
  )
end

class ImGuiStyleMod < FFI::Struct
  layout(
    :VarIdx, :int
  )
end

class ImGuiDataTypeStorage < FFI::Struct
  layout(
    :Data, [:uchar, 8]
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

class ImChunkStream_ImGuiTableSettings < FFI::Struct
  layout(
    :Buf, ImVector.by_value
  )
end

class ImChunkStream_ImGuiWindowSettings < FFI::Struct
  layout(
    :Buf, ImVector.by_value
  )
end

class ImVector_unsigned_char < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiWindowStackData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiWindowPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiViewportPPtr < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTreeNodeStackData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTableTempData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTableInstanceData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTableHeaderData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTableColumnSortSpecs < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTable < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTabItem < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiTabBar < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiStyleMod < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiStackLevelInfo < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiShrinkWidthItem < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiSettingsHandler < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiPtrOrIndex < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiPopupData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiOldColumns < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiOldColumnData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiMultiSelectTempData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiMultiSelectState < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiListClipperRange < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiListClipperData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiKeyRoutingData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiItemFlags < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiInputEvent < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiID < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiGroupData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiFocusScopeData < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiContextHook < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_ImGuiColorMod < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImVector_int < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImPool_ImGuiMultiSelectState < FFI::Struct
  layout(
    :Buf, ImVector.by_value,
    :Map, ImGuiStorage.by_value,
    :FreeIdx, :int,
    :AliveCount, :int
  )
end

class ImPool_ImGuiTabBar < FFI::Struct
  layout(
    :Buf, ImVector.by_value,
    :Map, ImGuiStorage.by_value,
    :FreeIdx, :int,
    :AliveCount, :int
  )
end

class ImPool_ImGuiTable < FFI::Struct
  layout(
    :Buf, ImVector.by_value,
    :Map, ImGuiStorage.by_value,
    :FreeIdx, :int,
    :AliveCount, :int
  )
end

class ImGuiTextIndex < FFI::Struct
  layout(
    :Offsets, ImVector.by_value,
    :EndOffset, :int
  )

  def clear()
    ImGui::ImGuiTextIndex_clear(self)
  end

  def size()
    ImGui::ImGuiTextIndex_size(self)
  end

  def get_line_begin(base, n)
    ImGui::ImGuiTextIndex_get_line_begin(self, base, n)
  end

  def get_line_end(base, n)
    ImGui::ImGuiTextIndex_get_line_end(self, base, n)
  end

  def append(base, old_size, new_size)
    ImGui::ImGuiTextIndex_append(self, base, old_size, new_size)
  end

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

class ImGuiGroupData < FFI::Struct
  layout(
    :WindowID, :uint,
    :BackupCursorPos, ImVec2.by_value,
    :BackupCursorMaxPos, ImVec2.by_value,
    :BackupCursorPosPrevLine, ImVec2.by_value,
    :BackupIndent, ImVec1.by_value,
    :BackupGroupOffset, ImVec1.by_value,
    :BackupCurrLineSize, ImVec2.by_value,
    :BackupCurrLineTextBaseOffset, :float,
    :BackupActiveIdIsAlive, :uint,
    :BackupActiveIdHasBeenEditedThisFrame, :bool,
    :BackupDeactivatedIdIsAlive, :bool,
    :BackupHoveredIdIsAlive, :bool,
    :BackupIsSameLine, :bool,
    :EmitItem, :bool
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

  def Update(spacing, window_reappearing)
    ImGui::ImGuiMenuColumns_Update(self, spacing, window_reappearing)
  end

  def DeclColumns(w_icon, w_label, w_shortcut, w_mark)
    ImGui::ImGuiMenuColumns_DeclColumns(self, w_icon, w_label, w_shortcut, w_mark)
  end

  def CalcNextTotalWidth(update_offsets)
    ImGui::ImGuiMenuColumns_CalcNextTotalWidth(self, update_offsets)
  end

end

class ImGuiInputTextDeactivatedState < FFI::Struct
  layout(
    :ID, :uint,
    :TextA, ImVector.by_value
  )

  def ClearFreeMemory()
    ImGui::ImGuiInputTextDeactivatedState_ClearFreeMemory(self)
  end

end

class ImGuiInputTextState < FFI::Struct
  layout(
    :Ctx, :pointer,
    :Stb, :pointer,
    :Flags, :int,
    :ID, :uint,
    :TextLen, :int,
    :TextSrc, :pointer,
    :TextA, ImVector.by_value,
    :TextToRevertTo, ImVector.by_value,
    :CallbackTextBackup, ImVector.by_value,
    :BufCapacity, :int,
    :Scroll, ImVec2.by_value,
    :LineCount, :int,
    :WrapWidth, :float,
    :CursorAnim, :float,
    :CursorFollow, :bool,
    :CursorCenterY, :bool,
    :SelectedAllMouseLock, :bool,
    :EditedBefore, :bool,
    :EditedThisFrame, :bool,
    :WantReloadUserBuf, :bool,
    :LastMoveDirectionLR, :char,
    :ReloadSelectionStart, :int,
    :ReloadSelectionEnd, :int
  )

  def ClearText()
    ImGui::ImGuiInputTextState_ClearText(self)
  end

  def ClearFreeMemory()
    ImGui::ImGuiInputTextState_ClearFreeMemory(self)
  end

  def OnKeyPressed(key)
    ImGui::ImGuiInputTextState_OnKeyPressed(self, key)
  end

  def OnCharPressed(c)
    ImGui::ImGuiInputTextState_OnCharPressed(self, c)
  end

  def GetPreferredOffsetX()
    ImGui::ImGuiInputTextState_GetPreferredOffsetX(self)
  end

  def GetText()
    ImGui::ImGuiInputTextState_GetText(self)
  end

  def CursorAnimReset()
    ImGui::ImGuiInputTextState_CursorAnimReset(self)
  end

  def CursorClamp()
    ImGui::ImGuiInputTextState_CursorClamp(self)
  end

  def HasSelection()
    ImGui::ImGuiInputTextState_HasSelection(self)
  end

  def ClearSelection()
    ImGui::ImGuiInputTextState_ClearSelection(self)
  end

  def GetCursorPos()
    ImGui::ImGuiInputTextState_GetCursorPos(self)
  end

  def GetSelectionStart()
    ImGui::ImGuiInputTextState_GetSelectionStart(self)
  end

  def GetSelectionEnd()
    ImGui::ImGuiInputTextState_GetSelectionEnd(self)
  end

  def SetSelection(start, _end_)
    ImGui::ImGuiInputTextState_SetSelection(self, start, _end_)
  end

  def SelectAll()
    ImGui::ImGuiInputTextState_SelectAll(self)
  end

  def ReloadUserBufAndSelectAll()
    ImGui::ImGuiInputTextState_ReloadUserBufAndSelectAll(self)
  end

  def ReloadUserBufAndKeepSelection()
    ImGui::ImGuiInputTextState_ReloadUserBufAndKeepSelection(self)
  end

  def ReloadUserBufAndMoveToEnd()
    ImGui::ImGuiInputTextState_ReloadUserBufAndMoveToEnd(self)
  end

end

class ImGuiNextWindowData < FFI::Struct
  layout(
    :HasFlags, :int,
    :PosCond, :int,
    :SizeCond, :int,
    :CollapsedCond, :int,
    :PosVal, ImVec2.by_value,
    :PosPivotVal, ImVec2.by_value,
    :SizeVal, ImVec2.by_value,
    :ContentSizeVal, ImVec2.by_value,
    :ScrollVal, ImVec2.by_value,
    :WindowFlags, :int,
    :ChildFlags, :int,
    :CollapsedVal, :bool,
    :SizeConstraintRect, ImRect.by_value,
    :SizeCallback, :pointer,
    :SizeCallbackUserData, :pointer,
    :BgAlphaVal, :float,
    :MenuBarOffsetMinVal, ImVec2.by_value,
    :RefreshFlagsVal, :int
  )

  def ClearFlags()
    ImGui::ImGuiNextWindowData_ClearFlags(self)
  end

end

class ImGuiNextItemData < FFI::Struct
  layout(
    :HasFlags, :int,
    :ItemFlags, :int,
    :FocusScopeId, :uint,
    :SelectionUserData, :int64,
    :Width, :float,
    :Shortcut, :int,
    :ShortcutFlags, :int,
    :OpenVal, :bool,
    :OpenCond, :uchar,
    :RefVal, ImGuiDataTypeStorage.by_value,
    :StorageId, :uint,
    :ColorMarker, :uint
  )

  def ClearFlags()
    ImGui::ImGuiNextItemData_ClearFlags(self)
  end

end

class ImGuiLastItemData < FFI::Struct
  layout(
    :ID, :uint,
    :ItemFlags, :int,
    :StatusFlags, :int,
    :Rect, ImRect.by_value,
    :NavRect, ImRect.by_value,
    :DisplayRect, ImRect.by_value,
    :ClipRect, ImRect.by_value,
    :Shortcut, :int
  )
end

class ImGuiTreeNodeStackData < FFI::Struct
  layout(
    :ID, :uint,
    :TreeFlags, :int,
    :ItemFlags, :int,
    :NavRect, ImRect.by_value,
    :DrawLinesX1, :float,
    :DrawLinesToNodesY2, :float,
    :DrawLinesTableColumn, :short
  )
end

class ImGuiErrorRecoveryState < FFI::Struct
  layout(
    :SizeOfWindowStack, :short,
    :SizeOfIDStack, :short,
    :SizeOfTreeStack, :short,
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

class ImGuiWindowStackData < FFI::Struct
  layout(
    :Window, :pointer,
    :ParentLastItemDataBackup, ImGuiLastItemData.by_value,
    :StackSizesInBegin, ImGuiErrorRecoveryState.by_value,
    :DisabledOverrideReenable, :bool,
    :DisabledOverrideReenableAlphaBackup, :float
  )
end

class ImGuiShrinkWidthItem < FFI::Struct
  layout(
    :Index, :int,
    :Width, :float,
    :InitialWidth, :float
  )
end

class ImGuiPtrOrIndex < FFI::Struct
  layout(
    :Ptr, :pointer,
    :Index, :int
  )
end

class ImGuiDeactivatedItemData < FFI::Struct
  layout(
    :ID, :uint,
    :ElapseFrame, :int,
    :HasBeenEditedBefore, :bool,
    :IsAlive, :bool
  )
end

class ImGuiPopupData < FFI::Struct
  layout(
    :PopupId, :uint,
    :Window, :pointer,
    :RestoreNavWindow, :pointer,
    :ParentNavLayer, :int,
    :OpenFrameCount, :int,
    :OpenParentId, :uint,
    :OpenPopupPos, ImVec2.by_value,
    :OpenMousePos, ImVec2.by_value
  )
end

class ImBitArrayForNamedKeys < FFI::Struct
  layout(
    :__dummy, [:char, 20]
  )
end

class ImGuiInputEventMousePos < FFI::Struct
  layout(
    :PosX, :float,
    :PosY, :float,
    :MouseSource, :int
  )
end

class ImGuiInputEventMouseWheel < FFI::Struct
  layout(
    :WheelX, :float,
    :WheelY, :float,
    :MouseSource, :int
  )
end

class ImGuiInputEventMouseButton < FFI::Struct
  layout(
    :Button, :int,
    :Down, :bool,
    :MouseSource, :int
  )
end

class ImGuiInputEventKey < FFI::Struct
  layout(
    :Key, :int,
    :Down, :bool,
    :AnalogValue, :float
  )
end

class ImGuiInputEventText < FFI::Struct
  layout(
    :Char, :uint
  )
end

class ImGuiInputEventAppFocused < FFI::Struct
  layout(
    :Focused, :bool
  )
end

class ImGuiInputEvent < FFI::Struct
  layout(
    :Type, :int,
    :Source, :int,
    :EventId, :uint,
    :AddedByTestEngine, :bool
  )
end

class ImGuiKeyRoutingData < FFI::Struct
  layout(
    :NextEntryIndex, :short,
    :Mods, :ushort,
    :RoutingCurrScore, :ushort,
    :RoutingNextScore, :ushort,
    :RoutingCurr, :uint,
    :RoutingNext, :uint
  )
end

class ImGuiKeyRoutingTable < FFI::Struct
  layout(
    :Index, [:short, ImGuiKey_NamedKey_COUNT],
    :Entries, ImVector.by_value,
    :EntriesNext, ImVector.by_value
  )

  def Clear()
    ImGui::ImGuiKeyRoutingTable_Clear(self)
  end

end

class ImGuiKeyOwnerData < FFI::Struct
  layout(
    :OwnerCurr, :uint,
    :OwnerNext, :uint,
    :LockThisFrame, :bool,
    :LockUntilRelease, :bool
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

  def FromIndices(min, max)
    ImGui::ImGuiListClipperRange_FromIndices(min, max)
  end

  def FromPositions(y1, y2, off_min, off_max)
    ImGui::ImGuiListClipperRange_FromPositions(y1, y2, off_min, off_max)
  end

end

class ImGuiListClipperData < FFI::Struct
  layout(
    :ListClipper, :pointer,
    :LossynessOffset, :float,
    :StepNo, :int,
    :ItemsFrozen, :int,
    :Ranges, ImVector.by_value
  )

  def Reset(clipper)
    ImGui::ImGuiListClipperData_Reset(self, clipper)
  end

end

class ImGuiNavItemData < FFI::Struct
  layout(
    :Window, :pointer,
    :ID, :uint,
    :FocusScopeId, :uint,
    :RectRel, ImRect.by_value,
    :ItemFlags, :int,
    :DistBox, :float,
    :DistCenter, :float,
    :DistAxial, :float,
    :SelectionUserData, :int64
  )

  def Clear()
    ImGui::ImGuiNavItemData_Clear(self)
  end

end

class ImGuiFocusScopeData < FFI::Struct
  layout(
    :ID, :uint,
    :WindowID, :uint
  )
end

class ImGuiTypingSelectRequest < FFI::Struct
  layout(
    :Flags, :int,
    :SearchBufferLen, :int,
    :SearchBuffer, :pointer,
    :SelectRequest, :bool,
    :SingleCharMode, :bool,
    :SingleCharSize, :char
  )
end

class ImGuiTypingSelectState < FFI::Struct
  layout(
    :Request, ImGuiTypingSelectRequest.by_value,
    :SearchBuffer, [:char, 64],
    :FocusScope, :uint,
    :LastRequestFrame, :int,
    :LastRequestTime, :float,
    :SingleCharModeLock, :bool
  )

  def Clear()
    ImGui::ImGuiTypingSelectState_Clear(self)
  end

end

class ImGuiOldColumnData < FFI::Struct
  layout(
    :OffsetNorm, :float,
    :OffsetNormBeforeResize, :float,
    :Flags, :int,
    :ClipRect, ImRect.by_value
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

class ImGuiBoxSelectState < FFI::Struct
  layout(
    :ID, :uint,
    :IsActive, :bool,
    :IsStarting, :bool,
    :IsStartedFromVoid, :bool,
    :IsStartedSetNavIdOnce, :bool,
    :RequestClear, :bool,
    :KeyMods, :int,
    :StartPosRel, ImVec2.by_value,
    :EndPosRel, ImVec2.by_value,
    :ScrollAccum, ImVec2.by_value,
    :Window, :pointer,
    :UnclipMode, :bool,
    :UnclipRect, ImRect.by_value,
    :BoxSelectRectPrev, ImRect.by_value,
    :BoxSelectRectCurr, ImRect.by_value
  )
end

class ImGuiMultiSelectTempData < FFI::Struct
  layout(
    :IO, ImGuiMultiSelectIO.by_value,
    :Storage, :pointer,
    :FocusScopeId, :uint,
    :Flags, :int,
    :ScopeRectMin, ImVec2.by_value,
    :BackupCursorMaxPos, ImVec2.by_value,
    :LastSubmittedItem, :int64,
    :BoxSelectId, :uint,
    :KeyMods, :int,
    :LoopRequestSetAll, :char,
    :IsEndIO, :bool,
    :IsFocused, :bool,
    :IsKeyboardSetRange, :bool,
    :NavIdPassedBy, :bool,
    :RangeSrcPassedBy, :bool,
    :RangeDstPassedBy, :bool
  )

  def Clear()
    ImGui::ImGuiMultiSelectTempData_Clear(self)
  end

  def ClearIO()
    ImGui::ImGuiMultiSelectTempData_ClearIO(self)
  end

end

class ImGuiMultiSelectState < FFI::Struct
  layout(
    :Window, :pointer,
    :ID, :uint,
    :LastFrameActive, :int,
    :LastSelectionSize, :int,
    :RangeSelected, :char,
    :NavIdSelected, :char,
    :RangeSrcItem, :int64,
    :NavIdItem, :int64
  )
end

class ImGuiViewportP < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :FramebufferScale, ImVec2.by_value,
    :WorkPos, ImVec2.by_value,
    :WorkSize, ImVec2.by_value,
    :PlatformHandle, :pointer,
    :PlatformHandleRaw, :pointer,
    :BgFgDrawListsLastTimeActive, [:float, 2],
    :BgFgDrawLists, [:pointer, 2],
    :DrawDataP, ImDrawData.by_value,
    :DrawDataBuilder, ImDrawDataBuilder.by_value,
    :WorkInsetMin, ImVec2.by_value,
    :WorkInsetMax, ImVec2.by_value,
    :BuildWorkInsetMin, ImVec2.by_value,
    :BuildWorkInsetMax, ImVec2.by_value
  )

  def CalcWorkRectPos(inset_min)
    ImGui::ImGuiViewportP_CalcWorkRectPos(self, inset_min)
  end

  def CalcWorkRectSize(inset_min, inset_max)
    ImGui::ImGuiViewportP_CalcWorkRectSize(self, inset_min, inset_max)
  end

  def UpdateWorkRect()
    ImGui::ImGuiViewportP_UpdateWorkRect(self)
  end

  def GetMainRect()
    ImGui::ImGuiViewportP_GetMainRect(self)
  end

  def GetWorkRect()
    ImGui::ImGuiViewportP_GetWorkRect(self)
  end

  def GetBuildWorkRect()
    ImGui::ImGuiViewportP_GetBuildWorkRect(self)
  end

end

class ImGuiWindowSettings < FFI::Struct
  layout(
    :ID, :uint,
    :Pos, ImVec2ih.by_value,
    :Size, ImVec2ih.by_value,
    :Collapsed, :bool,
    :IsChild, :bool,
    :WantApply, :bool,
    :WantDelete, :bool
  )

  def GetName()
    ImGui::ImGuiWindowSettings_GetName(self)
  end

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

class ImGuiLocEntry < FFI::Struct
  layout(
    :Key, :int,
    :Text, :pointer
  )
end

class ImGuiDebugAllocEntry < FFI::Struct
  layout(
    :FrameCount, :int,
    :AllocCount, :short,
    :FreeCount, :short
  )
end

class ImGuiDebugAllocInfo < FFI::Struct
  layout(
    :TotalAllocCount, :int,
    :TotalFreeCount, :int,
    :LastEntriesIdx, :short,
    :LastEntriesBuf, [ImGuiDebugAllocEntry.by_value, 6]
  )
end

class ImGuiMetricsConfig < FFI::Struct
  layout(
    :ShowDebugLog, :bool,
    :ShowIDStackTool, :bool,
    :ShowWindowsRects, :bool,
    :ShowWindowsBeginOrder, :bool,
    :ShowTablesRects, :bool,
    :ShowDrawCmdMesh, :bool,
    :ShowDrawCmdBoundingBoxes, :bool,
    :ShowTextEncodingViewer, :bool,
    :ShowTextureUsedRect, :bool,
    :ShowWindowsRectsType, :int,
    :ShowTablesRectsType, :int,
    :HighlightMonitorIdx, :int,
    :HighlightViewportID, :uint,
    :ShowFontPreview, :bool
  )
end

class ImGuiStackLevelInfo < FFI::Struct
  layout(
    :ID, :uint,
    :QueryFrameCount, :char,
    :QuerySuccess, :bool,
    :DataType, :char,
    :DescOffset, :int
  )
end

class ImGuiDebugItemPathQuery < FFI::Struct
  layout(
    :MainID, :uint,
    :Active, :bool,
    :Complete, :bool,
    :Step, :char,
    :Results, ImVector.by_value,
    :ResultsDescBuf, ImGuiTextBuffer.by_value,
    :ResultPathBuf, ImGuiTextBuffer.by_value
  )
end

class ImGuiIDStackTool < FFI::Struct
  layout(
    :OptHexEncodeNonAsciiChars, :bool,
    :OptCopyToClipboardOnCtrlC, :bool,
    :LastActiveFrame, :int,
    :CopyToClipboardLastTime, :float
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

class ImGuiContext < FFI::Struct
  layout(
    :Initialized, :bool,
    :WithinFrameScope, :bool,
    :WithinFrameScopeWithImplicitWindow, :bool,
    :TestEngineHookItems, :bool,
    :FrameCount, :int,
    :FrameCountEnded, :int,
    :FrameCountRendered, :int,
    :Time, :double,
    :ContextName, [:char, 16],
    :IO, ImGuiIO.by_value,
    :PlatformIO, ImGuiPlatformIO.by_value,
    :Style, ImGuiStyle.by_value,
    :FontAtlases, ImVector.by_value,
    :Font, :pointer,
    :FontBaked, :pointer,
    :FontSize, :float,
    :FontSizeBase, :float,
    :FontBakedScale, :float,
    :FontRasterizerDensity, :float,
    :CurrentDpiScale, :float,
    :DrawListSharedData, ImDrawListSharedData.by_value,
    :WithinEndChildID, :uint,
    :TestEngine, :pointer,
    :InputEventsQueue, ImVector.by_value,
    :InputEventsTrail, ImVector.by_value,
    :InputEventsNextMouseSource, :int,
    :InputEventsNextEventId, :uint,
    :Windows, ImVector.by_value,
    :WindowsFocusOrder, ImVector.by_value,
    :WindowsTempSortBuffer, ImVector.by_value,
    :CurrentWindowStack, ImVector.by_value,
    :WindowsById, ImGuiStorage.by_value,
    :WindowsActiveCount, :int,
    :WindowsBorderHoverPadding, :float,
    :DebugBreakInWindow, :uint,
    :CurrentWindow, :pointer,
    :HoveredWindow, :pointer,
    :HoveredWindowUnderMovingWindow, :pointer,
    :HoveredWindowBeforeClear, :pointer,
    :MovingWindow, :pointer,
    :WheelingWindow, :pointer,
    :WheelingWindowRefMousePos, ImVec2.by_value,
    :WheelingWindowStartFrame, :int,
    :WheelingWindowScrolledFrame, :int,
    :WheelingWindowReleaseTimer, :float,
    :WheelingWindowWheelRemainder, ImVec2.by_value,
    :WheelingAxisAvg, ImVec2.by_value,
    :DebugDrawIdConflictsId, :uint,
    :DebugHookIdInfoId, :uint,
    :HoveredId, :uint,
    :HoveredIdPreviousFrame, :uint,
    :HoveredIdPreviousFrameItemCount, :int,
    :HoveredIdTimer, :float,
    :HoveredIdNotActiveTimer, :float,
    :HoveredIdAllowOverlap, :bool,
    :HoveredIdIsDisabled, :bool,
    :ItemUnclipByLog, :bool,
    :ActiveId, :uint,
    :ActiveIdIsAlive, :uint,
    :ActiveIdTimer, :float,
    :ActiveIdIsJustActivated, :bool,
    :ActiveIdAllowOverlap, :bool,
    :ActiveIdNoClearOnFocusLoss, :bool,
    :ActiveIdHasBeenPressedBefore, :bool,
    :ActiveIdHasBeenEditedBefore, :bool,
    :ActiveIdHasBeenEditedThisFrame, :bool,
    :ActiveIdFromShortcut, :bool,
    :ActiveIdMouseButton, :char,
    :ActiveIdDisabledId, :uint,
    :ActiveIdClickOffset, ImVec2.by_value,
    :ActiveIdSource, :int,
    :ActiveIdWindow, :pointer,
    :ActiveIdPreviousFrame, :uint,
    :DeactivatedItemData, ImGuiDeactivatedItemData.by_value,
    :ActiveIdValueOnActivation, ImGuiDataTypeStorage.by_value,
    :LastActiveId, :uint,
    :LastActiveIdTimer, :float,
    :LastKeyModsChangeTime, :double,
    :LastKeyModsChangeFromNoneTime, :double,
    :LastKeyboardKeyPressTime, :double,
    :KeysMayBeCharInput, ImBitArrayForNamedKeys.by_value,
    :KeysOwnerData, [ImGuiKeyOwnerData.by_value, ImGuiKey_NamedKey_COUNT],
    :KeysRoutingTable, ImGuiKeyRoutingTable.by_value,
    :ActiveIdUsingNavDirMask, :uint,
    :ActiveIdUsingAllKeyboardKeys, :bool,
    :DebugBreakInShortcutRouting, :int,
    :CurrentFocusScopeId, :uint,
    :CurrentItemFlags, :int,
    :DebugLocateId, :uint,
    :NextItemData, ImGuiNextItemData.by_value,
    :LastItemData, ImGuiLastItemData.by_value,
    :NextWindowData, ImGuiNextWindowData.by_value,
    :DebugShowGroupRects, :bool,
    :GcCompactAll, :bool,
    :DebugFlashStyleColorIdx, :int,
    :ColorStack, ImVector.by_value,
    :StyleVarStack, ImVector.by_value,
    :FontStack, ImVector.by_value,
    :FocusScopeStack, ImVector.by_value,
    :ItemFlagsStack, ImVector.by_value,
    :GroupStack, ImVector.by_value,
    :OpenPopupStack, ImVector.by_value,
    :BeginPopupStack, ImVector.by_value,
    :TreeNodeStack, ImVector.by_value,
    :Viewports, ImVector.by_value,
    :NavCursorVisible, :bool,
    :NavHighlightItemUnderNav, :bool,
    :NavMousePosDirty, :bool,
    :NavIdIsAlive, :bool,
    :NavId, :uint,
    :NavWindow, :pointer,
    :NavFocusScopeId, :uint,
    :NavLayer, :int,
    :NavIdItemFlags, :int,
    :NavActivateId, :uint,
    :NavActivateDownId, :uint,
    :NavActivatePressedId, :uint,
    :NavActivateFlags, :int,
    :NavFocusRoute, ImVector.by_value,
    :NavHighlightActivatedId, :uint,
    :NavHighlightActivatedTimer, :float,
    :NavOpenContextMenuItemId, :uint,
    :NavOpenContextMenuWindowId, :uint,
    :NavNextActivateId, :uint,
    :NavNextActivateFlags, :int,
    :NavInputSource, :int,
    :NavLastValidSelectionUserData, :int64,
    :NavCursorHideFrames, :char,
    :NavAnyRequest, :bool,
    :NavInitRequest, :bool,
    :NavInitRequestFromMove, :bool,
    :NavInitResult, ImGuiNavItemData.by_value,
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
    :NavJustMovedFromFocusScopeId, :uint,
    :NavJustMovedToId, :uint,
    :NavJustMovedToFocusScopeId, :uint,
    :NavJustMovedToKeyMods, :int,
    :NavJustMovedToIsTabbing, :bool,
    :NavJustMovedToHasSelectionData, :bool,
    :ConfigNavEnableTabbing, :bool,
    :ConfigNavWindowingWithGamepad, :bool,
    :ConfigNavWindowingKeyNext, :int,
    :ConfigNavWindowingKeyPrev, :int,
    :NavWindowingTarget, :pointer,
    :NavWindowingTargetAnim, :pointer,
    :NavWindowingListWindow, :pointer,
    :NavWindowingTimer, :float,
    :NavWindowingHighlightAlpha, :float,
    :NavWindowingInputSource, :int,
    :NavWindowingToggleLayer, :bool,
    :NavWindowingToggleKey, :int,
    :NavWindowingAccumDeltaPos, ImVec2.by_value,
    :NavWindowingAccumDeltaSize, ImVec2.by_value,
    :DimBgRatio, :float,
    :DragDropActive, :bool,
    :DragDropWithinSource, :bool,
    :DragDropWithinTarget, :bool,
    :DragDropSourceFlags, :int,
    :DragDropSourceFrameCount, :int,
    :DragDropMouseButton, :int,
    :DragDropPayload, ImGuiPayload.by_value,
    :DragDropTargetRect, ImRect.by_value,
    :DragDropTargetClipRect, ImRect.by_value,
    :DragDropTargetId, :uint,
    :DragDropTargetFullViewport, :uint,
    :DragDropAcceptFlagsCurr, :int,
    :DragDropAcceptFlagsPrev, :int,
    :DragDropAcceptIdCurrRectSurface, :float,
    :DragDropAcceptIdCurr, :uint,
    :DragDropAcceptIdPrev, :uint,
    :DragDropAcceptFrameCount, :int,
    :DragDropHoldJustPressedId, :uint,
    :DragDropPayloadBufHeap, ImVector.by_value,
    :DragDropPayloadBufLocal, [:uchar, 16],
    :ClipperTempDataStacked, :int,
    :ClipperTempData, ImVector.by_value,
    :CurrentTable, :pointer,
    :DebugBreakInTable, :uint,
    :TablesTempDataStacked, :int,
    :TablesTempData, ImVector.by_value,
    :Tables, ImPool_ImGuiTable.by_value,
    :TablesLastTimeActive, ImVector.by_value,
    :DrawChannelsTempMergeBuffer, ImVector.by_value,
    :CurrentTabBar, :pointer,
    :TabBars, ImPool_ImGuiTabBar.by_value,
    :CurrentTabBarStack, ImVector.by_value,
    :ShrinkWidthBuffer, ImVector.by_value,
    :BoxSelectState, ImGuiBoxSelectState.by_value,
    :CurrentMultiSelect, :pointer,
    :MultiSelectTempDataStacked, :int,
    :MultiSelectTempData, ImVector.by_value,
    :MultiSelectStorage, ImPool_ImGuiMultiSelectState.by_value,
    :HoverItemDelayId, :uint,
    :HoverItemDelayIdPreviousFrame, :uint,
    :HoverItemDelayTimer, :float,
    :HoverItemDelayClearTimer, :float,
    :HoverItemUnlockedStationaryId, :uint,
    :HoverWindowUnlockedStationaryId, :uint,
    :MouseCursor, :int,
    :MouseStationaryTimer, :float,
    :MouseLastValidPos, ImVec2.by_value,
    :InputTextState, ImGuiInputTextState.by_value,
    :InputTextLineIndex, ImGuiTextIndex.by_value,
    :InputTextDeactivatedState, ImGuiInputTextDeactivatedState.by_value,
    :InputTextPasswordFontBackupBaked, ImFontBaked.by_value,
    :InputTextPasswordFontBackupFlags, :int,
    :InputTextReactivateId, :uint,
    :TempInputId, :uint,
    :DataTypeZeroValue, ImGuiDataTypeStorage.by_value,
    :BeginMenuDepth, :int,
    :BeginComboDepth, :int,
    :ColorEditOptions, :int,
    :ColorEditCurrentID, :uint,
    :ColorEditSavedID, :uint,
    :ColorEditSavedHue, :float,
    :ColorEditSavedSat, :float,
    :ColorEditSavedColor, :uint,
    :ColorPickerRef, ImVec4.by_value,
    :ComboPreviewData, ImGuiComboPreviewData.by_value,
    :WindowResizeBorderExpectedRect, ImRect.by_value,
    :WindowResizeRelativeMode, :bool,
    :ScrollbarSeekMode, :short,
    :ScrollbarClickDeltaToGrabCenter, :float,
    :SliderGrabClickOffset, :float,
    :SliderCurrentAccum, :float,
    :SliderCurrentAccumDirty, :bool,
    :DragCurrentAccumDirty, :bool,
    :DragCurrentAccum, :float,
    :DragSpeedDefaultRatio, :float,
    :DisabledAlphaBackup, :float,
    :DisabledStackSize, :short,
    :TooltipOverrideCount, :short,
    :TooltipPreviousWindow, :pointer,
    :ClipboardHandlerData, ImVector.by_value,
    :MenusIdSubmittedThisFrame, ImVector.by_value,
    :TypingSelectState, ImGuiTypingSelectState.by_value,
    :PlatformImeData, ImGuiPlatformImeData.by_value,
    :PlatformImeDataPrev, ImGuiPlatformImeData.by_value,
    :UserTextures, ImVector.by_value,
    :SettingsLoaded, :bool,
    :SettingsDirtyTimer, :float,
    :SettingsIniData, ImGuiTextBuffer.by_value,
    :SettingsHandlers, ImVector.by_value,
    :SettingsWindows, ImChunkStream_ImGuiWindowSettings.by_value,
    :SettingsTables, ImChunkStream_ImGuiTableSettings.by_value,
    :Hooks, ImVector.by_value,
    :HookIdNext, :uint,
    :DemoMarkerCallback, :pointer,
    :LocalizationTable, [:pointer, ImGuiLocKey_COUNT],
    :LogEnabled, :bool,
    :LogLineFirstItem, :bool,
    :LogFlags, :int,
    :LogWindow, :pointer,
    :LogFile, :pointer,
    :LogBuffer, ImGuiTextBuffer.by_value,
    :LogNextPrefix, :pointer,
    :LogNextSuffix, :pointer,
    :LogLinePosY, :float,
    :LogDepthRef, :int,
    :LogDepthToExpand, :int,
    :LogDepthToExpandDefault, :int,
    :ErrorCallback, :pointer,
    :ErrorCallbackUserData, :pointer,
    :ErrorTooltipLockedPos, ImVec2.by_value,
    :ErrorFirst, :bool,
    :ErrorCountCurrentFrame, :int,
    :StackSizesInNewFrame, ImGuiErrorRecoveryState.by_value,
    :StackSizesInBeginForCurrentWindow, :pointer,
    :DebugDrawIdConflictsCount, :int,
    :DebugLogFlags, :int,
    :DebugLogBuf, ImGuiTextBuffer.by_value,
    :DebugLogIndex, ImGuiTextIndex.by_value,
    :DebugLogSkippedErrors, :int,
    :DebugLogAutoDisableFlags, :int,
    :DebugLogAutoDisableFrames, :uchar,
    :DebugLocateFrames, :uchar,
    :DebugBreakInLocateId, :bool,
    :DebugBreakKeyChord, :int,
    :DebugBeginReturnValueCullDepth, :char,
    :DebugItemPickerActive, :bool,
    :DebugItemPickerMouseButton, :uchar,
    :DebugItemPickerBreakId, :uint,
    :DebugFlashStyleColorTime, :float,
    :DebugFlashStyleColorBackup, ImVec4.by_value,
    :DebugMetricsConfig, ImGuiMetricsConfig.by_value,
    :DebugItemPathQuery, ImGuiDebugItemPathQuery.by_value,
    :DebugIDStackTool, ImGuiIDStackTool.by_value,
    :DebugAllocInfo, ImGuiDebugAllocInfo.by_value,
    :DebugDrawIdConflictsAliveCount, ImGuiStorage.by_value,
    :DebugDrawIdConflictsHighlightSet, ImGuiStorage.by_value,
    :FramerateSecPerFrame, [:float, 60],
    :FramerateSecPerFrameIdx, :int,
    :FramerateSecPerFrameCount, :int,
    :FramerateSecPerFrameAccum, :float,
    :WantCaptureMouseNextFrame, :int,
    :WantCaptureKeyboardNextFrame, :int,
    :WantTextInputNextFrame, :int,
    :TempBuffer, ImVector.by_value,
    :TempKeychordName, [:char, 64]
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
    :IsSetPos, :bool,
    :Indent, ImVec1.by_value,
    :ColumnsOffset, ImVec1.by_value,
    :GroupOffset, ImVec1.by_value,
    :CursorStartPosLossyness, ImVec2.by_value,
    :NavLayerCurrent, :int,
    :NavLayersActiveMask, :short,
    :NavLayersActiveMaskNext, :short,
    :NavIsScrollPushableX, :bool,
    :NavHideHighlightOneFrame, :bool,
    :NavWindowHasScrollY, :bool,
    :MenuBarAppending, :bool,
    :MenuBarOffset, ImVec2.by_value,
    :MenuColumns, ImGuiMenuColumns.by_value,
    :TreeDepth, :int,
    :TreeHasStackDataDepthMask, :uint,
    :TreeRecordsClippedNodesY2Mask, :uint,
    :ChildWindows, ImVector.by_value,
    :StateStorage, :pointer,
    :CurrentColumns, :pointer,
    :CurrentTableIdx, :int,
    :LayoutType, :int,
    :ParentLayoutType, :int,
    :ModalDimBgColor, :uint,
    :WindowItemStatusFlags, :int,
    :ChildItemStatusFlags, :int,
    :ItemWidth, :float,
    :ItemWidthDefault, :float,
    :TextWrapPos, :float,
    :ItemWidthStack, ImVector.by_value,
    :TextWrapPosStack, ImVector.by_value
  )
end

class ImGuiWindow < FFI::Struct
  layout(
    :Ctx, :pointer,
    :Name, :pointer,
    :ID, :uint,
    :Flags, :int,
    :ChildFlags, :int,
    :Viewport, :pointer,
    :Pos, ImVec2.by_value,
    :Size, ImVec2.by_value,
    :SizeFull, ImVec2.by_value,
    :ContentSize, ImVec2.by_value,
    :ContentSizeIdeal, ImVec2.by_value,
    :ContentSizeExplicit, ImVec2.by_value,
    :WindowPadding, ImVec2.by_value,
    :WindowRounding, :float,
    :WindowBorderSize, :float,
    :TitleBarHeight, :float,
    :MenuBarHeight, :float,
    :DecoOuterSizeX1, :float,
    :DecoOuterSizeY1, :float,
    :DecoOuterSizeX2, :float,
    :DecoOuterSizeY2, :float,
    :DecoInnerSizeX1, :float,
    :DecoInnerSizeY1, :float,
    :NameBufLen, :int,
    :MoveId, :uint,
    :ChildId, :uint,
    :PopupId, :uint,
    :Scroll, ImVec2.by_value,
    :ScrollMax, ImVec2.by_value,
    :ScrollTarget, ImVec2.by_value,
    :ScrollTargetCenterRatio, ImVec2.by_value,
    :ScrollTargetEdgeSnapDist, ImVec2.by_value,
    :ScrollbarSizes, ImVec2.by_value,
    :ScrollbarX, :bool,
    :ScrollbarY, :bool,
    :ScrollbarXStabilizeEnabled, :bool,
    :ScrollbarXStabilizeToggledHistory, :uchar,
    :Active, :bool,
    :WasActive, :bool,
    :WriteAccessed, :bool,
    :Collapsed, :bool,
    :WantCollapseToggle, :bool,
    :SkipItems, :bool,
    :SkipRefresh, :bool,
    :Appearing, :bool,
    :Hidden, :bool,
    :IsFallbackWindow, :bool,
    :IsExplicitChild, :bool,
    :HasCloseButton, :bool,
    :ResizeBorderHovered, :char,
    :ResizeBorderHeld, :char,
    :BeginCount, :short,
    :BeginCountPreviousFrame, :short,
    :BeginOrderWithinParent, :short,
    :BeginOrderWithinContext, :short,
    :FocusOrder, :short,
    :AutoPosLastDirection, :int,
    :AutoFitFramesX, :char,
    :AutoFitFramesY, :char,
    :AutoFitOnlyGrows, :bool,
    :HiddenFramesCanSkipItems, :char,
    :HiddenFramesCannotSkipItems, :char,
    :HiddenFramesForRenderOnly, :char,
    :DisableInputsFrames, :char,
    :BgClickFlags, :int,
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
    :StateStorage, ImGuiStorage.by_value,
    :ColumnsStorage, ImVector.by_value,
    :FontWindowScale, :float,
    :FontWindowScaleParents, :float,
    :FontRefSize, :float,
    :SettingsOffset, :int,
    :DrawList, :pointer,
    :DrawListInst, ImDrawList.by_value,
    :ParentWindow, :pointer,
    :ParentWindowInBeginStack, :pointer,
    :RootWindow, :pointer,
    :RootWindowPopupTree, :pointer,
    :RootWindowForTitleBarHighlight, :pointer,
    :RootWindowForNav, :pointer,
    :ParentWindowForFocusRoute, :pointer,
    :NavLastChildNavWindow, :pointer,
    :NavLastIds, [:uint, ImGuiNavLayer_COUNT],
    :NavRectRel, [ImRect.by_value, ImGuiNavLayer_COUNT],
    :NavPreferredScoringPosRel, [ImVec2.by_value, ImGuiNavLayer_COUNT],
    :NavRootFocusScopeId, :uint,
    :MemoryDrawListIdxCapacity, :int,
    :MemoryDrawListVtxCapacity, :int,
    :MemoryCompacted, :bool
  )

  def GetIDStr(str)
    ImGui::ImGuiWindow_GetIDStr(self, str)
  end

  def GetIDStrEx(str, str_end = nil)
    ImGui::ImGuiWindow_GetIDStrEx(self, str, str_end)
  end

  def GetID(ptr)
    ImGui::ImGuiWindow_GetID(self, ptr)
  end

  def GetIDInt(n)
    ImGui::ImGuiWindow_GetIDInt(self, n)
  end

  def GetIDFromPos(p_abs)
    ImGui::ImGuiWindow_GetIDFromPos(self, p_abs)
  end

  def GetIDFromRectangle(r_abs)
    ImGui::ImGuiWindow_GetIDFromRectangle(self, r_abs)
  end

  def Rect()
    ImGui::ImGuiWindow_Rect(self)
  end

  def TitleBarRect()
    ImGui::ImGuiWindow_TitleBarRect(self)
  end

  def MenuBarRect()
    ImGui::ImGuiWindow_MenuBarRect(self)
  end

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

class ImGuiTabBar < FFI::Struct
  layout(
    :Window, :pointer,
    :Tabs, ImVector.by_value,
    :Flags, :int,
    :ID, :uint,
    :SelectedTabId, :uint,
    :NextSelectedTabId, :uint,
    :NextScrollToTabId, :uint,
    :VisibleTabId, :uint,
    :CurrFrameVisible, :int,
    :PrevFrameVisible, :int,
    :BarRect, ImRect.by_value,
    :BarRectPrevWidth, :float,
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
    :SeparatorMinX, :float,
    :SeparatorMaxX, :float,
    :ReorderRequestTabId, :uint,
    :ReorderRequestOffset, :short,
    :BeginCount, :char,
    :WantLayout, :bool,
    :VisibleTabWasSubmitted, :bool,
    :TabsAddedNew, :bool,
    :ScrollButtonEnabled, :bool,
    :TabsActiveCount, :short,
    :LastTabItemIdx, :short,
    :ItemSpacingY, :float,
    :FramePadding, ImVec2.by_value,
    :BackupCursorPos, ImVec2.by_value,
    :TabsNames, ImGuiTextBuffer.by_value
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
    :WidthMax, :float,
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
    :DisplayOrder, :short,
    :IndexWithinEnabledSet, :short,
    :PrevEnabledColumn, :short,
    :NextEnabledColumn, :short,
    :SortOrder, :short,
    :DrawChannelCurrent, :ushort,
    :DrawChannelFrozen, :ushort,
    :DrawChannelUnfrozen, :ushort,
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

class ImGuiTableCellData < FFI::Struct
  layout(
    :BgColor, :uint,
    :Column, :short
  )
end

class ImGuiTableHeaderData < FFI::Struct
  layout(
    :Index, :short,
    :TextColor, :uint,
    :BgColor0, :uint,
    :BgColor1, :uint
  )
end

class ImGuiTableInstanceData < FFI::Struct
  layout(
    :TableInstanceID, :uint,
    :LastOuterHeight, :float,
    :LastTopHeadersRowHeight, :float,
    :LastFrozenHeight, :float,
    :HoveredRowLast, :int,
    :HoveredRowNext, :int
  )
end

class ImGuiTable < FFI::Struct
  layout(
    :ID, :uint,
    :Flags, :int,
    :RawData, :pointer,
    :TempData, :pointer,
    :Columns, ImSpan_ImGuiTableColumn.by_value,
    :DisplayOrderToIndex, ImSpan_ImGuiTableColumnIdx.by_value,
    :RowCellData, ImSpan_ImGuiTableCellData.by_value,
    :EnabledMaskByDisplayOrder, :pointer,
    :EnabledMaskByIndex, :pointer,
    :VisibleMaskByIndex, :pointer,
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
    :RowCellPaddingY, :float,
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
    :CellSpacingX1, :float,
    :CellSpacingX2, :float,
    :InnerWidth, :float,
    :ColumnsGivenWidth, :float,
    :ColumnsAutoFitWidth, :float,
    :ColumnsStretchSumWeights, :float,
    :ResizedColumnNextWidth, :float,
    :ResizeLockMinContentsX2, :float,
    :RefScale, :float,
    :AngledHeadersHeight, :float,
    :AngledHeadersSlope, :float,
    :OuterRect, ImRect.by_value,
    :InnerRect, ImRect.by_value,
    :WorkRect, ImRect.by_value,
    :InnerClipRect, ImRect.by_value,
    :BgClipRect, ImRect.by_value,
    :Bg0ClipRectForDrawCmd, ImRect.by_value,
    :Bg2ClipRectForDrawCmd, ImRect.by_value,
    :HostClipRect, ImRect.by_value,
    :HostBackupInnerClipRect, ImRect.by_value,
    :OuterWindow, :pointer,
    :InnerWindow, :pointer,
    :ColumnsNames, ImGuiTextBuffer.by_value,
    :DrawSplitter, :pointer,
    :InstanceDataFirst, ImGuiTableInstanceData.by_value,
    :InstanceDataExtra, ImVector.by_value,
    :SortSpecsSingle, ImGuiTableColumnSortSpecs.by_value,
    :SortSpecsMulti, ImVector.by_value,
    :SortSpecs, ImGuiTableSortSpecs.by_value,
    :SortSpecsCount, :short,
    :ColumnsEnabledCount, :short,
    :ColumnsEnabledFixedCount, :short,
    :DeclColumnsCount, :short,
    :AngledHeadersCount, :short,
    :HoveredColumnBody, :short,
    :HoveredColumnBorder, :short,
    :HighlightColumnHeader, :short,
    :AutoFitSingleColumn, :short,
    :ResizedColumn, :short,
    :LastResizedColumn, :short,
    :HeldHeaderColumn, :short,
    :LastHeldHeaderColumn, :short,
    :ReorderColumn, :short,
    :ReorderColumnDstOrder, :short,
    :LeftMostEnabledColumn, :short,
    :RightMostEnabledColumn, :short,
    :LeftMostStretchedColumn, :short,
    :RightMostStretchedColumn, :short,
    :ContextPopupColumn, :short,
    :FreezeRowsRequest, :short,
    :FreezeRowsCount, :short,
    :FreezeColumnsRequest, :short,
    :FreezeColumnsCount, :short,
    :RowCellDataCurrent, :short,
    :DummyDrawChannel, :ushort,
    :Bg2DrawChannelCurrent, :ushort,
    :Bg2DrawChannelUnfrozen, :ushort,
    :NavLayer, :char,
    :IsLayoutLocked, :bool,
    :IsInsideRow, :bool,
    :IsInitializing, :bool,
    :IsSortSpecsDirty, :bool,
    :IsUsingHeaders, :bool,
    :IsContextPopupOpen, :bool,
    :DisableDefaultContextMenu, :bool,
    :IsSettingsRequestLoad, :bool,
    :IsSettingsDirty, :bool,
    :IsDefaultDisplayOrder, :bool,
    :IsResetAllRequest, :bool,
    :IsResetDisplayOrderRequest, :bool,
    :IsUnfrozenRows, :bool,
    :IsDefaultSizingPolicy, :bool,
    :IsActiveIdAliveBeforeTable, :bool,
    :IsActiveIdInTable, :bool,
    :HasScrollbarYCurr, :bool,
    :HasScrollbarYPrev, :bool,
    :MemoryCompacted, :bool,
    :HostSkipItems, :bool
  )
end

class ImGuiTableTempData < FFI::Struct
  layout(
    :WindowID, :uint,
    :TableIndex, :int,
    :LastTimeActive, :float,
    :AngledHeadersExtraWidth, :float,
    :AngledHeadersRequests, ImVector.by_value,
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

class ImGuiTableColumnSettings < FFI::Struct
  layout(
    :WidthOrWeight, :float,
    :UserID, :uint,
    :Index, :short,
    :DisplayOrder, :short,
    :SortOrder, :short,
    :SortDirection, :uchar,
    :IsEnabled, :char,
    :IsStretch, :uchar
  )
end

class ImGuiTableSettings < FFI::Struct
  layout(
    :ID, :uint,
    :SaveFlags, :int,
    :RefScale, :float,
    :ColumnsCount, :short,
    :ColumnsCountMax, :short,
    :WantApply, :bool
  )

  def GetColumnSettings()
    ImGui::ImGuiTableSettings_GetColumnSettings(self)
  end

end

class ImFontLoader < FFI::Struct
  layout(
    :Name, :pointer,
    :LoaderInit, :pointer,
    :LoaderShutdown, :pointer,
    :FontSrcInit, :pointer,
    :FontSrcDestroy, :pointer,
    :FontSrcContainsGlyph, :pointer,
    :FontBakedInit, :pointer,
    :FontBakedDestroy, :pointer,
    :FontBakedLoadGlyph, :pointer,
    :FontBakedSrcLoaderDataSize, :size_t
  )
end

class ImFontAtlasRectEntry < FFI::Struct
  layout(
    :TargetIndex, :int,
    :Generation, :uint,
    :IsUsed, :uint
  )
end

class ImVector_ImFontAtlasRectEntry < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class ImFontAtlasPostProcessData < FFI::Struct
  layout(
    :FontAtlas, :pointer,
    :Font, :pointer,
    :FontSrc, :pointer,
    :FontBaked, :pointer,
    :Glyph, :pointer,
    :Pixels, :pointer,
    :Format, :int,
    :Pitch, :int,
    :Width, :int,
    :Height, :int
  )
end

class ImVector_stbrp_node_im < FFI::Struct
  layout(
    :Size, :int,
    :Capacity, :int,
    :Data, :pointer
  )
end

class Stbrp_context_opaque < FFI::Struct
  layout(
    :data, [:char, 80]
  )
end

class ImFontAtlasBuilder < FFI::Struct
  layout(
    :PackContext, Stbrp_context_opaque.by_value,
    :PackNodes, ImVector.by_value,
    :Rects, ImVector.by_value,
    :RectsIndex, ImVector.by_value,
    :TempBuffer, ImVector.by_value,
    :RectsIndexFreeListStart, :int,
    :RectsPackedCount, :int,
    :RectsPackedSurface, :int,
    :RectsDiscardedCount, :int,
    :RectsDiscardedSurface, :int,
    :FrameCount, :int,
    :MaxRectSize, ImVec2i.by_value,
    :MaxRectBounds, ImVec2i.by_value,
    :LockDisableResize, :bool,
    :PreloadedAllGlyphsRanges, :bool,
    :BakedPool, ImStableVector_ImFontBaked_32.by_value,
    :BakedMap, ImGuiStorage.by_value,
    :BakedDiscardedCount, :int,
    :PackIdMouseCursors, :int,
    :PackIdLinesTexData, :int
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

  def self.load_lib(libpath, output_error = false)
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols(output_error) unless @@imgui_import_done
  end

  def self.import_symbols(output_error = false)
    callback :ImGuiInputTextCallback, [:pointer], :int
    callback :ImGuiSizeCallback, [:pointer], :void
    callback :ImGuiMemAllocFunc, [:size_t, :pointer], :pointer
    callback :ImGuiMemFreeFunc, [:pointer, :pointer], :void
    callback :ImDrawCallback, [:pointer, :pointer], :void
    callback :ImGuiErrorCallback, [:pointer, :pointer, :pointer], :void
    callback :ImGuiContextHookCallback, [:pointer, :pointer], :void
    callback :ImGuiDemoMarkerCallback, [:pointer, :int, :pointer], :void

    entries = [
      [:ImTextureRef_GetTexID, :ImTextureRef_GetTexID, [:pointer], :uint64],
      [:ImGui_CreateContext, :ImGui_CreateContext, [:pointer], :pointer],
      [:ImGui_DestroyContext, :ImGui_DestroyContext, [:pointer], :void],
      [:ImGui_GetCurrentContext, :ImGui_GetCurrentContext, [], :pointer],
      [:ImGui_SetCurrentContext, :ImGui_SetCurrentContext, [:pointer], :void],
      [:ImGui_GetIO, :ImGui_GetIO, [], :pointer],
      [:ImGui_GetPlatformIO, :ImGui_GetPlatformIO, [], :pointer],
      [:ImGui_GetStyle, :ImGui_GetStyle, [], :pointer],
      [:ImGui_NewFrame, :ImGui_NewFrame, [], :void],
      [:ImGui_EndFrame, :ImGui_EndFrame, [], :void],
      [:ImGui_Render, :ImGui_Render, [], :void],
      [:ImGui_GetDrawData, :ImGui_GetDrawData, [], :pointer],
      [:ImGui_ShowDemoWindow, :ImGui_ShowDemoWindow, [:pointer], :void],
      [:ImGui_ShowMetricsWindow, :ImGui_ShowMetricsWindow, [:pointer], :void],
      [:ImGui_ShowDebugLogWindow, :ImGui_ShowDebugLogWindow, [:pointer], :void],
      [:ImGui_ShowIDStackToolWindow, :ImGui_ShowIDStackToolWindow, [], :void],
      [:ImGui_ShowIDStackToolWindowEx, :ImGui_ShowIDStackToolWindowEx, [:pointer], :void],
      [:ImGui_ShowAboutWindow, :ImGui_ShowAboutWindow, [:pointer], :void],
      [:ImGui_ShowStyleEditor, :ImGui_ShowStyleEditor, [:pointer], :void],
      [:ImGui_ShowStyleSelector, :ImGui_ShowStyleSelector, [:pointer], :bool],
      [:ImGui_ShowFontSelector, :ImGui_ShowFontSelector, [:pointer], :void],
      [:ImGui_ShowUserGuide, :ImGui_ShowUserGuide, [], :void],
      [:ImGui_GetVersion, :ImGui_GetVersion, [], :pointer],
      [:ImGui_StyleColorsDark, :ImGui_StyleColorsDark, [:pointer], :void],
      [:ImGui_StyleColorsLight, :ImGui_StyleColorsLight, [:pointer], :void],
      [:ImGui_StyleColorsClassic, :ImGui_StyleColorsClassic, [:pointer], :void],
      [:ImGui_Begin, :ImGui_Begin, [:pointer, :pointer, :int], :bool],
      [:ImGui_End, :ImGui_End, [], :void],
      [:ImGui_BeginChild, :ImGui_BeginChild, [:pointer, ImVec2.by_value, :int, :int], :bool],
      [:ImGui_BeginChildID, :ImGui_BeginChildID, [:uint, ImVec2.by_value, :int, :int], :bool],
      [:ImGui_EndChild, :ImGui_EndChild, [], :void],
      [:ImGui_IsWindowAppearing, :ImGui_IsWindowAppearing, [], :bool],
      [:ImGui_IsWindowCollapsed, :ImGui_IsWindowCollapsed, [], :bool],
      [:ImGui_IsWindowFocused, :ImGui_IsWindowFocused, [:int], :bool],
      [:ImGui_IsWindowHovered, :ImGui_IsWindowHovered, [:int], :bool],
      [:ImGui_GetWindowDrawList, :ImGui_GetWindowDrawList, [], :pointer],
      [:ImGui_GetWindowPos, :ImGui_GetWindowPos, [], ImVec2.by_value],
      [:ImGui_GetWindowSize, :ImGui_GetWindowSize, [], ImVec2.by_value],
      [:ImGui_GetWindowWidth, :ImGui_GetWindowWidth, [], :float],
      [:ImGui_GetWindowHeight, :ImGui_GetWindowHeight, [], :float],
      [:ImGui_SetNextWindowPos, :ImGui_SetNextWindowPos, [ImVec2.by_value, :int], :void],
      [:ImGui_SetNextWindowPosEx, :ImGui_SetNextWindowPosEx, [ImVec2.by_value, :int, ImVec2.by_value], :void],
      [:ImGui_SetNextWindowSize, :ImGui_SetNextWindowSize, [ImVec2.by_value, :int], :void],
      [:ImGui_SetNextWindowSizeConstraints, :ImGui_SetNextWindowSizeConstraints, [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer], :void],
      [:ImGui_SetNextWindowContentSize, :ImGui_SetNextWindowContentSize, [ImVec2.by_value], :void],
      [:ImGui_SetNextWindowCollapsed, :ImGui_SetNextWindowCollapsed, [:bool, :int], :void],
      [:ImGui_SetNextWindowFocus, :ImGui_SetNextWindowFocus, [], :void],
      [:ImGui_SetNextWindowScroll, :ImGui_SetNextWindowScroll, [ImVec2.by_value], :void],
      [:ImGui_SetNextWindowBgAlpha, :ImGui_SetNextWindowBgAlpha, [:float], :void],
      [:ImGui_SetWindowPos, :ImGui_SetWindowPos, [ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowSize, :ImGui_SetWindowSize, [ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowCollapsed, :ImGui_SetWindowCollapsed, [:bool, :int], :void],
      [:ImGui_SetWindowFocus, :ImGui_SetWindowFocus, [], :void],
      [:ImGui_SetWindowPosStr, :ImGui_SetWindowPosStr, [:pointer, ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowSizeStr, :ImGui_SetWindowSizeStr, [:pointer, ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowCollapsedStr, :ImGui_SetWindowCollapsedStr, [:pointer, :bool, :int], :void],
      [:ImGui_SetWindowFocusStr, :ImGui_SetWindowFocusStr, [:pointer], :void],
      [:ImGui_GetScrollX, :ImGui_GetScrollX, [], :float],
      [:ImGui_GetScrollY, :ImGui_GetScrollY, [], :float],
      [:ImGui_SetScrollX, :ImGui_SetScrollX, [:float], :void],
      [:ImGui_SetScrollY, :ImGui_SetScrollY, [:float], :void],
      [:ImGui_GetScrollMaxX, :ImGui_GetScrollMaxX, [], :float],
      [:ImGui_GetScrollMaxY, :ImGui_GetScrollMaxY, [], :float],
      [:ImGui_SetScrollHereX, :ImGui_SetScrollHereX, [:float], :void],
      [:ImGui_SetScrollHereY, :ImGui_SetScrollHereY, [:float], :void],
      [:ImGui_SetScrollFromPosX, :ImGui_SetScrollFromPosX, [:float, :float], :void],
      [:ImGui_SetScrollFromPosY, :ImGui_SetScrollFromPosY, [:float, :float], :void],
      [:ImGui_PushFontFloat, :ImGui_PushFontFloat, [:pointer, :float], :void],
      [:ImGui_PopFont, :ImGui_PopFont, [], :void],
      [:ImGui_GetFont, :ImGui_GetFont, [], :pointer],
      [:ImGui_GetFontSize, :ImGui_GetFontSize, [], :float],
      [:ImGui_GetFontBaked, :ImGui_GetFontBaked, [], :pointer],
      [:ImGui_PushStyleColor, :ImGui_PushStyleColor, [:int, :uint], :void],
      [:ImGui_PushStyleColorImVec4, :ImGui_PushStyleColorImVec4, [:int, ImVec4.by_value], :void],
      [:ImGui_PopStyleColor, :ImGui_PopStyleColor, [], :void],
      [:ImGui_PopStyleColorEx, :ImGui_PopStyleColorEx, [:int], :void],
      [:ImGui_PushStyleVar, :ImGui_PushStyleVar, [:int, :float], :void],
      [:ImGui_PushStyleVarImVec2, :ImGui_PushStyleVarImVec2, [:int, ImVec2.by_value], :void],
      [:ImGui_PushStyleVarX, :ImGui_PushStyleVarX, [:int, :float], :void],
      [:ImGui_PushStyleVarY, :ImGui_PushStyleVarY, [:int, :float], :void],
      [:ImGui_PopStyleVar, :ImGui_PopStyleVar, [], :void],
      [:ImGui_PopStyleVarEx, :ImGui_PopStyleVarEx, [:int], :void],
      [:ImGui_PushItemFlag, :ImGui_PushItemFlag, [:int, :bool], :void],
      [:ImGui_PopItemFlag, :ImGui_PopItemFlag, [], :void],
      [:ImGui_PushItemWidth, :ImGui_PushItemWidth, [:float], :void],
      [:ImGui_PopItemWidth, :ImGui_PopItemWidth, [], :void],
      [:ImGui_SetNextItemWidth, :ImGui_SetNextItemWidth, [:float], :void],
      [:ImGui_CalcItemWidth, :ImGui_CalcItemWidth, [], :float],
      [:ImGui_PushTextWrapPos, :ImGui_PushTextWrapPos, [:float], :void],
      [:ImGui_PopTextWrapPos, :ImGui_PopTextWrapPos, [], :void],
      [:ImGui_GetFontTexUvWhitePixel, :ImGui_GetFontTexUvWhitePixel, [], ImVec2.by_value],
      [:ImGui_GetColorU32, :ImGui_GetColorU32, [:int], :uint],
      [:ImGui_GetColorU32Ex, :ImGui_GetColorU32Ex, [:int, :float], :uint],
      [:ImGui_GetColorU32ImVec4, :ImGui_GetColorU32ImVec4, [ImVec4.by_value], :uint],
      [:ImGui_GetColorU32ImU32, :ImGui_GetColorU32ImU32, [:uint], :uint],
      [:ImGui_GetColorU32ImU32Ex, :ImGui_GetColorU32ImU32Ex, [:uint, :float], :uint],
      [:ImGui_GetStyleColorVec4, :ImGui_GetStyleColorVec4, [:int], :pointer],
      [:ImGui_GetCursorScreenPos, :ImGui_GetCursorScreenPos, [], ImVec2.by_value],
      [:ImGui_SetCursorScreenPos, :ImGui_SetCursorScreenPos, [ImVec2.by_value], :void],
      [:ImGui_GetContentRegionAvail, :ImGui_GetContentRegionAvail, [], ImVec2.by_value],
      [:ImGui_GetCursorPos, :ImGui_GetCursorPos, [], ImVec2.by_value],
      [:ImGui_GetCursorPosX, :ImGui_GetCursorPosX, [], :float],
      [:ImGui_GetCursorPosY, :ImGui_GetCursorPosY, [], :float],
      [:ImGui_SetCursorPos, :ImGui_SetCursorPos, [ImVec2.by_value], :void],
      [:ImGui_SetCursorPosX, :ImGui_SetCursorPosX, [:float], :void],
      [:ImGui_SetCursorPosY, :ImGui_SetCursorPosY, [:float], :void],
      [:ImGui_GetCursorStartPos, :ImGui_GetCursorStartPos, [], ImVec2.by_value],
      [:ImGui_Separator, :ImGui_Separator, [], :void],
      [:ImGui_SameLine, :ImGui_SameLine, [], :void],
      [:ImGui_SameLineEx, :ImGui_SameLineEx, [:float, :float], :void],
      [:ImGui_NewLine, :ImGui_NewLine, [], :void],
      [:ImGui_Spacing, :ImGui_Spacing, [], :void],
      [:ImGui_Dummy, :ImGui_Dummy, [ImVec2.by_value], :void],
      [:ImGui_Indent, :ImGui_Indent, [], :void],
      [:ImGui_IndentEx, :ImGui_IndentEx, [:float], :void],
      [:ImGui_Unindent, :ImGui_Unindent, [], :void],
      [:ImGui_UnindentEx, :ImGui_UnindentEx, [:float], :void],
      [:ImGui_BeginGroup, :ImGui_BeginGroup, [], :void],
      [:ImGui_EndGroup, :ImGui_EndGroup, [], :void],
      [:ImGui_AlignTextToFramePadding, :ImGui_AlignTextToFramePadding, [], :void],
      [:ImGui_GetTextLineHeight, :ImGui_GetTextLineHeight, [], :float],
      [:ImGui_GetTextLineHeightWithSpacing, :ImGui_GetTextLineHeightWithSpacing, [], :float],
      [:ImGui_GetFrameHeight, :ImGui_GetFrameHeight, [], :float],
      [:ImGui_GetFrameHeightWithSpacing, :ImGui_GetFrameHeightWithSpacing, [], :float],
      [:ImGui_PushID, :ImGui_PushID, [:pointer], :void],
      [:ImGui_PushIDStr, :ImGui_PushIDStr, [:pointer, :pointer], :void],
      [:ImGui_PushIDPtr, :ImGui_PushIDPtr, [:pointer], :void],
      [:ImGui_PushIDInt, :ImGui_PushIDInt, [:int], :void],
      [:ImGui_PopID, :ImGui_PopID, [], :void],
      [:ImGui_GetID, :ImGui_GetID, [:pointer], :uint],
      [:ImGui_GetIDStr, :ImGui_GetIDStr, [:pointer, :pointer], :uint],
      [:ImGui_GetIDPtr, :ImGui_GetIDPtr, [:pointer], :uint],
      [:ImGui_GetIDInt, :ImGui_GetIDInt, [:int], :uint],
      [:ImGui_TextUnformatted, :ImGui_TextUnformatted, [:pointer], :void],
      [:ImGui_TextUnformattedEx, :ImGui_TextUnformattedEx, [:pointer, :pointer], :void],
      [:ImGui_Text, :ImGui_Text, [:pointer, :varargs], :void],
      [:ImGui_TextColored, :ImGui_TextColored, [ImVec4.by_value, :pointer, :varargs], :void],
      [:ImGui_TextDisabled, :ImGui_TextDisabled, [:pointer, :varargs], :void],
      [:ImGui_TextWrapped, :ImGui_TextWrapped, [:pointer, :varargs], :void],
      [:ImGui_LabelText, :ImGui_LabelText, [:pointer, :pointer, :varargs], :void],
      [:ImGui_BulletText, :ImGui_BulletText, [:pointer, :varargs], :void],
      [:ImGui_SeparatorText, :ImGui_SeparatorText, [:pointer], :void],
      [:ImGui_Button, :ImGui_Button, [:pointer], :bool],
      [:ImGui_ButtonEx, :ImGui_ButtonEx, [:pointer, ImVec2.by_value], :bool],
      [:ImGui_SmallButton, :ImGui_SmallButton, [:pointer], :bool],
      [:ImGui_InvisibleButton, :ImGui_InvisibleButton, [:pointer, ImVec2.by_value, :int], :bool],
      [:ImGui_ArrowButton, :ImGui_ArrowButton, [:pointer, :int], :bool],
      [:ImGui_Checkbox, :ImGui_Checkbox, [:pointer, :pointer], :bool],
      [:ImGui_CheckboxFlagsIntPtr, :ImGui_CheckboxFlagsIntPtr, [:pointer, :pointer, :int], :bool],
      [:ImGui_CheckboxFlagsUintPtr, :ImGui_CheckboxFlagsUintPtr, [:pointer, :pointer, :uint], :bool],
      [:ImGui_RadioButton, :ImGui_RadioButton, [:pointer, :bool], :bool],
      [:ImGui_RadioButtonIntPtr, :ImGui_RadioButtonIntPtr, [:pointer, :pointer, :int], :bool],
      [:ImGui_ProgressBar, :ImGui_ProgressBar, [:float, ImVec2.by_value, :pointer], :void],
      [:ImGui_Bullet, :ImGui_Bullet, [], :void],
      [:ImGui_TextLink, :ImGui_TextLink, [:pointer], :bool],
      [:ImGui_TextLinkOpenURL, :ImGui_TextLinkOpenURL, [:pointer], :bool],
      [:ImGui_TextLinkOpenURLEx, :ImGui_TextLinkOpenURLEx, [:pointer, :pointer], :bool],
      [:ImGui_Image, :ImGui_Image, [ImTextureRef.by_value, ImVec2.by_value], :void],
      [:ImGui_ImageEx, :ImGui_ImageEx, [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], :void],
      [:ImGui_ImageWithBg, :ImGui_ImageWithBg, [ImTextureRef.by_value, ImVec2.by_value], :void],
      [:ImGui_ImageWithBgEx, :ImGui_ImageWithBgEx, [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void],
      [:ImGui_ImageButton, :ImGui_ImageButton, [:pointer, ImTextureRef.by_value, ImVec2.by_value], :bool],
      [:ImGui_ImageButtonEx, :ImGui_ImageButtonEx, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :bool],
      [:ImGui_BeginCombo, :ImGui_BeginCombo, [:pointer, :pointer, :int], :bool],
      [:ImGui_EndCombo, :ImGui_EndCombo, [], :void],
      [:ImGui_ComboChar, :ImGui_ComboChar, [:pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_ComboCharEx, :ImGui_ComboCharEx, [:pointer, :pointer, :pointer, :int, :int], :bool],
      [:ImGui_Combo, :ImGui_Combo, [:pointer, :pointer, :pointer], :bool],
      [:ImGui_ComboEx, :ImGui_ComboEx, [:pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_ComboCallback, :ImGui_ComboCallback, [:pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_ComboCallbackEx, :ImGui_ComboCallbackEx, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool],
      [:ImGui_DragFloat, :ImGui_DragFloat, [:pointer, :pointer], :bool],
      [:ImGui_DragFloatEx, :ImGui_DragFloatEx, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:ImGui_DragFloat2, :ImGui_DragFloat2, [:pointer, :pointer], :bool],
      [:ImGui_DragFloat2Ex, :ImGui_DragFloat2Ex, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:ImGui_DragFloat3, :ImGui_DragFloat3, [:pointer, :pointer], :bool],
      [:ImGui_DragFloat3Ex, :ImGui_DragFloat3Ex, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:ImGui_DragFloat4, :ImGui_DragFloat4, [:pointer, :pointer], :bool],
      [:ImGui_DragFloat4Ex, :ImGui_DragFloat4Ex, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:ImGui_DragFloatRange2, :ImGui_DragFloatRange2, [:pointer, :pointer, :pointer], :bool],
      [:ImGui_DragFloatRange2Ex, :ImGui_DragFloatRange2Ex, [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :int], :bool],
      [:ImGui_DragInt, :ImGui_DragInt, [:pointer, :pointer], :bool],
      [:ImGui_DragIntEx, :ImGui_DragIntEx, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:ImGui_DragInt2, :ImGui_DragInt2, [:pointer, :pointer], :bool],
      [:ImGui_DragInt2Ex, :ImGui_DragInt2Ex, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:ImGui_DragInt3, :ImGui_DragInt3, [:pointer, :pointer], :bool],
      [:ImGui_DragInt3Ex, :ImGui_DragInt3Ex, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:ImGui_DragInt4, :ImGui_DragInt4, [:pointer, :pointer], :bool],
      [:ImGui_DragInt4Ex, :ImGui_DragInt4Ex, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:ImGui_DragIntRange2, :ImGui_DragIntRange2, [:pointer, :pointer, :pointer], :bool],
      [:ImGui_DragIntRange2Ex, :ImGui_DragIntRange2Ex, [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer, :int], :bool],
      [:ImGui_DragScalar, :ImGui_DragScalar, [:pointer, :int, :pointer], :bool],
      [:ImGui_DragScalarEx, :ImGui_DragScalarEx, [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_DragScalarN, :ImGui_DragScalarN, [:pointer, :int, :pointer, :int], :bool],
      [:ImGui_DragScalarNEx, :ImGui_DragScalarNEx, [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_SliderFloat, :ImGui_SliderFloat, [:pointer, :pointer, :float, :float], :bool],
      [:ImGui_SliderFloatEx, :ImGui_SliderFloatEx, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_SliderFloat2, :ImGui_SliderFloat2, [:pointer, :pointer, :float, :float], :bool],
      [:ImGui_SliderFloat2Ex, :ImGui_SliderFloat2Ex, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_SliderFloat3, :ImGui_SliderFloat3, [:pointer, :pointer, :float, :float], :bool],
      [:ImGui_SliderFloat3Ex, :ImGui_SliderFloat3Ex, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_SliderFloat4, :ImGui_SliderFloat4, [:pointer, :pointer, :float, :float], :bool],
      [:ImGui_SliderFloat4Ex, :ImGui_SliderFloat4Ex, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_SliderAngle, :ImGui_SliderAngle, [:pointer, :pointer], :bool],
      [:ImGui_SliderAngleEx, :ImGui_SliderAngleEx, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_SliderInt, :ImGui_SliderInt, [:pointer, :pointer, :int, :int], :bool],
      [:ImGui_SliderIntEx, :ImGui_SliderIntEx, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:ImGui_SliderInt2, :ImGui_SliderInt2, [:pointer, :pointer, :int, :int], :bool],
      [:ImGui_SliderInt2Ex, :ImGui_SliderInt2Ex, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:ImGui_SliderInt3, :ImGui_SliderInt3, [:pointer, :pointer, :int, :int], :bool],
      [:ImGui_SliderInt3Ex, :ImGui_SliderInt3Ex, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:ImGui_SliderInt4, :ImGui_SliderInt4, [:pointer, :pointer, :int, :int], :bool],
      [:ImGui_SliderInt4Ex, :ImGui_SliderInt4Ex, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:ImGui_SliderScalar, :ImGui_SliderScalar, [:pointer, :int, :pointer, :pointer, :pointer], :bool],
      [:ImGui_SliderScalarEx, :ImGui_SliderScalarEx, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_SliderScalarN, :ImGui_SliderScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer], :bool],
      [:ImGui_SliderScalarNEx, :ImGui_SliderScalarNEx, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_VSliderFloat, :ImGui_VSliderFloat, [:pointer, ImVec2.by_value, :pointer, :float, :float], :bool],
      [:ImGui_VSliderFloatEx, :ImGui_VSliderFloatEx, [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_VSliderInt, :ImGui_VSliderInt, [:pointer, ImVec2.by_value, :pointer, :int, :int], :bool],
      [:ImGui_VSliderIntEx, :ImGui_VSliderIntEx, [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int], :bool],
      [:ImGui_VSliderScalar, :ImGui_VSliderScalar, [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer], :bool],
      [:ImGui_VSliderScalarEx, :ImGui_VSliderScalarEx, [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_InputText, :ImGui_InputText, [:pointer, :pointer, :size_t, :int], :bool],
      [:ImGui_InputTextEx, :ImGui_InputTextEx, [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:ImGui_InputTextMultiline, :ImGui_InputTextMultiline, [:pointer, :pointer, :size_t], :bool],
      [:ImGui_InputTextMultilineEx, :ImGui_InputTextMultilineEx, [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:ImGui_InputTextWithHint, :ImGui_InputTextWithHint, [:pointer, :pointer, :pointer, :size_t, :int], :bool],
      [:ImGui_InputTextWithHintEx, :ImGui_InputTextWithHintEx, [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:ImGui_InputFloat, :ImGui_InputFloat, [:pointer, :pointer], :bool],
      [:ImGui_InputFloatEx, :ImGui_InputFloatEx, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:ImGui_InputFloat2, :ImGui_InputFloat2, [:pointer, :pointer], :bool],
      [:ImGui_InputFloat2Ex, :ImGui_InputFloat2Ex, [:pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_InputFloat3, :ImGui_InputFloat3, [:pointer, :pointer], :bool],
      [:ImGui_InputFloat3Ex, :ImGui_InputFloat3Ex, [:pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_InputFloat4, :ImGui_InputFloat4, [:pointer, :pointer], :bool],
      [:ImGui_InputFloat4Ex, :ImGui_InputFloat4Ex, [:pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_InputInt, :ImGui_InputInt, [:pointer, :pointer], :bool],
      [:ImGui_InputIntEx, :ImGui_InputIntEx, [:pointer, :pointer, :int, :int, :int], :bool],
      [:ImGui_InputInt2, :ImGui_InputInt2, [:pointer, :pointer, :int], :bool],
      [:ImGui_InputInt3, :ImGui_InputInt3, [:pointer, :pointer, :int], :bool],
      [:ImGui_InputInt4, :ImGui_InputInt4, [:pointer, :pointer, :int], :bool],
      [:ImGui_InputDouble, :ImGui_InputDouble, [:pointer, :pointer], :bool],
      [:ImGui_InputDoubleEx, :ImGui_InputDoubleEx, [:pointer, :pointer, :double, :double, :pointer, :int], :bool],
      [:ImGui_InputScalar, :ImGui_InputScalar, [:pointer, :int, :pointer], :bool],
      [:ImGui_InputScalarEx, :ImGui_InputScalarEx, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_InputScalarN, :ImGui_InputScalarN, [:pointer, :int, :pointer, :int], :bool],
      [:ImGui_InputScalarNEx, :ImGui_InputScalarNEx, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_ColorEdit3, :ImGui_ColorEdit3, [:pointer, :pointer, :int], :bool],
      [:ImGui_ColorEdit4, :ImGui_ColorEdit4, [:pointer, :pointer, :int], :bool],
      [:ImGui_ColorPicker3, :ImGui_ColorPicker3, [:pointer, :pointer, :int], :bool],
      [:ImGui_ColorPicker4, :ImGui_ColorPicker4, [:pointer, :pointer, :int, :pointer], :bool],
      [:ImGui_ColorButton, :ImGui_ColorButton, [:pointer, ImVec4.by_value, :int], :bool],
      [:ImGui_ColorButtonEx, :ImGui_ColorButtonEx, [:pointer, ImVec4.by_value, :int, ImVec2.by_value], :bool],
      [:ImGui_SetColorEditOptions, :ImGui_SetColorEditOptions, [:int], :void],
      [:ImGui_TreeNode, :ImGui_TreeNode, [:pointer], :bool],
      [:ImGui_TreeNodeStr, :ImGui_TreeNodeStr, [:pointer, :pointer, :varargs], :bool],
      [:ImGui_TreeNodePtr, :ImGui_TreeNodePtr, [:pointer, :pointer, :varargs], :bool],
      [:ImGui_TreeNodeEx, :ImGui_TreeNodeEx, [:pointer, :int], :bool],
      [:ImGui_TreeNodeExStr, :ImGui_TreeNodeExStr, [:pointer, :int, :pointer, :varargs], :bool],
      [:ImGui_TreeNodeExPtr, :ImGui_TreeNodeExPtr, [:pointer, :int, :pointer, :varargs], :bool],
      [:ImGui_TreePush, :ImGui_TreePush, [:pointer], :void],
      [:ImGui_TreePushPtr, :ImGui_TreePushPtr, [:pointer], :void],
      [:ImGui_TreePop, :ImGui_TreePop, [], :void],
      [:ImGui_GetTreeNodeToLabelSpacing, :ImGui_GetTreeNodeToLabelSpacing, [], :float],
      [:ImGui_CollapsingHeader, :ImGui_CollapsingHeader, [:pointer, :int], :bool],
      [:ImGui_CollapsingHeaderBoolPtr, :ImGui_CollapsingHeaderBoolPtr, [:pointer, :pointer, :int], :bool],
      [:ImGui_SetNextItemOpen, :ImGui_SetNextItemOpen, [:bool, :int], :void],
      [:ImGui_SetNextItemStorageID, :ImGui_SetNextItemStorageID, [:uint], :void],
      [:ImGui_TreeNodeGetOpen, :ImGui_TreeNodeGetOpen, [:uint], :bool],
      [:ImGui_Selectable, :ImGui_Selectable, [:pointer], :bool],
      [:ImGui_SelectableEx, :ImGui_SelectableEx, [:pointer, :bool, :int, ImVec2.by_value], :bool],
      [:ImGui_SelectableBoolPtr, :ImGui_SelectableBoolPtr, [:pointer, :pointer, :int], :bool],
      [:ImGui_SelectableBoolPtrEx, :ImGui_SelectableBoolPtrEx, [:pointer, :pointer, :int, ImVec2.by_value], :bool],
      [:ImGui_BeginMultiSelect, :ImGui_BeginMultiSelect, [:int], :pointer],
      [:ImGui_BeginMultiSelectEx, :ImGui_BeginMultiSelectEx, [:int, :int, :int], :pointer],
      [:ImGui_EndMultiSelect, :ImGui_EndMultiSelect, [], :pointer],
      [:ImGui_SetNextItemSelectionUserData, :ImGui_SetNextItemSelectionUserData, [:int64], :void],
      [:ImGui_IsItemToggledSelection, :ImGui_IsItemToggledSelection, [], :bool],
      [:ImGui_BeginListBox, :ImGui_BeginListBox, [:pointer, ImVec2.by_value], :bool],
      [:ImGui_EndListBox, :ImGui_EndListBox, [], :void],
      [:ImGui_ListBox, :ImGui_ListBox, [:pointer, :pointer, :pointer, :int, :int], :bool],
      [:ImGui_ListBoxCallback, :ImGui_ListBoxCallback, [:pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_ListBoxCallbackEx, :ImGui_ListBoxCallbackEx, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool],
      [:ImGui_PlotLines, :ImGui_PlotLines, [:pointer, :pointer, :int], :void],
      [:ImGui_PlotLinesEx, :ImGui_PlotLinesEx, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void],
      [:ImGui_PlotLinesCallback, :ImGui_PlotLinesCallback, [:pointer, :pointer, :pointer, :int], :void],
      [:ImGui_PlotLinesCallbackEx, :ImGui_PlotLinesCallbackEx, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void],
      [:ImGui_PlotHistogram, :ImGui_PlotHistogram, [:pointer, :pointer, :int], :void],
      [:ImGui_PlotHistogramEx, :ImGui_PlotHistogramEx, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void],
      [:ImGui_PlotHistogramCallback, :ImGui_PlotHistogramCallback, [:pointer, :pointer, :pointer, :int], :void],
      [:ImGui_PlotHistogramCallbackEx, :ImGui_PlotHistogramCallbackEx, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void],
      [:ImGui_BeginMenuBar, :ImGui_BeginMenuBar, [], :bool],
      [:ImGui_EndMenuBar, :ImGui_EndMenuBar, [], :void],
      [:ImGui_BeginMainMenuBar, :ImGui_BeginMainMenuBar, [], :bool],
      [:ImGui_EndMainMenuBar, :ImGui_EndMainMenuBar, [], :void],
      [:ImGui_BeginMenu, :ImGui_BeginMenu, [:pointer], :bool],
      [:ImGui_BeginMenuEx, :ImGui_BeginMenuEx, [:pointer, :bool], :bool],
      [:ImGui_EndMenu, :ImGui_EndMenu, [], :void],
      [:ImGui_MenuItem, :ImGui_MenuItem, [:pointer], :bool],
      [:ImGui_MenuItemEx, :ImGui_MenuItemEx, [:pointer, :pointer, :bool, :bool], :bool],
      [:ImGui_MenuItemBoolPtr, :ImGui_MenuItemBoolPtr, [:pointer, :pointer, :pointer, :bool], :bool],
      [:ImGui_BeginTooltip, :ImGui_BeginTooltip, [], :bool],
      [:ImGui_EndTooltip, :ImGui_EndTooltip, [], :void],
      [:ImGui_SetTooltip, :ImGui_SetTooltip, [:pointer, :varargs], :void],
      [:ImGui_BeginItemTooltip, :ImGui_BeginItemTooltip, [], :bool],
      [:ImGui_SetItemTooltip, :ImGui_SetItemTooltip, [:pointer, :varargs], :void],
      [:ImGui_BeginPopup, :ImGui_BeginPopup, [:pointer, :int], :bool],
      [:ImGui_BeginPopupModal, :ImGui_BeginPopupModal, [:pointer, :pointer, :int], :bool],
      [:ImGui_EndPopup, :ImGui_EndPopup, [], :void],
      [:ImGui_OpenPopup, :ImGui_OpenPopup, [:pointer, :int], :void],
      [:ImGui_OpenPopupID, :ImGui_OpenPopupID, [:uint, :int], :void],
      [:ImGui_OpenPopupOnItemClick, :ImGui_OpenPopupOnItemClick, [:pointer, :int], :void],
      [:ImGui_CloseCurrentPopup, :ImGui_CloseCurrentPopup, [], :void],
      [:ImGui_BeginPopupContextItem, :ImGui_BeginPopupContextItem, [], :bool],
      [:ImGui_BeginPopupContextItemEx, :ImGui_BeginPopupContextItemEx, [:pointer, :int], :bool],
      [:ImGui_BeginPopupContextWindow, :ImGui_BeginPopupContextWindow, [], :bool],
      [:ImGui_BeginPopupContextWindowEx, :ImGui_BeginPopupContextWindowEx, [:pointer, :int], :bool],
      [:ImGui_BeginPopupContextVoid, :ImGui_BeginPopupContextVoid, [], :bool],
      [:ImGui_BeginPopupContextVoidEx, :ImGui_BeginPopupContextVoidEx, [:pointer, :int], :bool],
      [:ImGui_IsPopupOpen, :ImGui_IsPopupOpen, [:pointer, :int], :bool],
      [:ImGui_BeginTable, :ImGui_BeginTable, [:pointer, :int, :int], :bool],
      [:ImGui_BeginTableEx, :ImGui_BeginTableEx, [:pointer, :int, :int, ImVec2.by_value, :float], :bool],
      [:ImGui_EndTable, :ImGui_EndTable, [], :void],
      [:ImGui_TableNextRow, :ImGui_TableNextRow, [], :void],
      [:ImGui_TableNextRowEx, :ImGui_TableNextRowEx, [:int, :float], :void],
      [:ImGui_TableNextColumn, :ImGui_TableNextColumn, [], :bool],
      [:ImGui_TableSetColumnIndex, :ImGui_TableSetColumnIndex, [:int], :bool],
      [:ImGui_TableSetupColumn, :ImGui_TableSetupColumn, [:pointer, :int], :void],
      [:ImGui_TableSetupColumnEx, :ImGui_TableSetupColumnEx, [:pointer, :int, :float, :uint], :void],
      [:ImGui_TableSetupScrollFreeze, :ImGui_TableSetupScrollFreeze, [:int, :int], :void],
      [:ImGui_TableHeader, :ImGui_TableHeader, [:pointer], :void],
      [:ImGui_TableHeadersRow, :ImGui_TableHeadersRow, [], :void],
      [:ImGui_TableAngledHeadersRow, :ImGui_TableAngledHeadersRow, [], :void],
      [:ImGui_TableGetSortSpecs, :ImGui_TableGetSortSpecs, [], :pointer],
      [:ImGui_TableGetColumnCount, :ImGui_TableGetColumnCount, [], :int],
      [:ImGui_TableGetColumnIndex, :ImGui_TableGetColumnIndex, [], :int],
      [:ImGui_TableGetRowIndex, :ImGui_TableGetRowIndex, [], :int],
      [:ImGui_TableGetColumnName, :ImGui_TableGetColumnName, [:int], :pointer],
      [:ImGui_TableGetColumnFlags, :ImGui_TableGetColumnFlags, [:int], :int],
      [:ImGui_TableSetColumnEnabled, :ImGui_TableSetColumnEnabled, [:int, :bool], :void],
      [:ImGui_TableGetHoveredColumn, :ImGui_TableGetHoveredColumn, [], :int],
      [:ImGui_TableSetBgColor, :ImGui_TableSetBgColor, [:int, :uint, :int], :void],
      [:ImGui_Columns, :ImGui_Columns, [], :void],
      [:ImGui_ColumnsEx, :ImGui_ColumnsEx, [:int, :pointer, :bool], :void],
      [:ImGui_NextColumn, :ImGui_NextColumn, [], :void],
      [:ImGui_GetColumnIndex, :ImGui_GetColumnIndex, [], :int],
      [:ImGui_GetColumnWidth, :ImGui_GetColumnWidth, [:int], :float],
      [:ImGui_SetColumnWidth, :ImGui_SetColumnWidth, [:int, :float], :void],
      [:ImGui_GetColumnOffset, :ImGui_GetColumnOffset, [:int], :float],
      [:ImGui_SetColumnOffset, :ImGui_SetColumnOffset, [:int, :float], :void],
      [:ImGui_GetColumnsCount, :ImGui_GetColumnsCount, [], :int],
      [:ImGui_BeginTabBar, :ImGui_BeginTabBar, [:pointer, :int], :bool],
      [:ImGui_EndTabBar, :ImGui_EndTabBar, [], :void],
      [:ImGui_BeginTabItem, :ImGui_BeginTabItem, [:pointer, :pointer, :int], :bool],
      [:ImGui_EndTabItem, :ImGui_EndTabItem, [], :void],
      [:ImGui_TabItemButton, :ImGui_TabItemButton, [:pointer, :int], :bool],
      [:ImGui_SetTabItemClosed, :ImGui_SetTabItemClosed, [:pointer], :void],
      [:ImGui_LogToTTY, :ImGui_LogToTTY, [:int], :void],
      [:ImGui_LogToFile, :ImGui_LogToFile, [:int, :pointer], :void],
      [:ImGui_LogToClipboard, :ImGui_LogToClipboard, [:int], :void],
      [:ImGui_LogFinish, :ImGui_LogFinish, [], :void],
      [:ImGui_LogButtons, :ImGui_LogButtons, [], :void],
      [:ImGui_LogText, :ImGui_LogText, [:pointer, :varargs], :void],
      [:ImGui_BeginDragDropSource, :ImGui_BeginDragDropSource, [:int], :bool],
      [:ImGui_SetDragDropPayload, :ImGui_SetDragDropPayload, [:pointer, :pointer, :size_t, :int], :bool],
      [:ImGui_EndDragDropSource, :ImGui_EndDragDropSource, [], :void],
      [:ImGui_BeginDragDropTarget, :ImGui_BeginDragDropTarget, [], :bool],
      [:ImGui_AcceptDragDropPayload, :ImGui_AcceptDragDropPayload, [:pointer, :int], :pointer],
      [:ImGui_EndDragDropTarget, :ImGui_EndDragDropTarget, [], :void],
      [:ImGui_GetDragDropPayload, :ImGui_GetDragDropPayload, [], :pointer],
      [:ImGui_BeginDisabled, :ImGui_BeginDisabled, [:bool], :void],
      [:ImGui_EndDisabled, :ImGui_EndDisabled, [], :void],
      [:ImGui_PushClipRect, :ImGui_PushClipRect, [ImVec2.by_value, ImVec2.by_value, :bool], :void],
      [:ImGui_PopClipRect, :ImGui_PopClipRect, [], :void],
      [:ImGui_SetItemDefaultFocus, :ImGui_SetItemDefaultFocus, [], :void],
      [:ImGui_SetKeyboardFocusHere, :ImGui_SetKeyboardFocusHere, [], :void],
      [:ImGui_SetKeyboardFocusHereEx, :ImGui_SetKeyboardFocusHereEx, [:int], :void],
      [:ImGui_SetNavCursorVisible, :ImGui_SetNavCursorVisible, [:bool], :void],
      [:ImGui_SetNextItemAllowOverlap, :ImGui_SetNextItemAllowOverlap, [], :void],
      [:ImGui_IsItemHovered, :ImGui_IsItemHovered, [:int], :bool],
      [:ImGui_IsItemActive, :ImGui_IsItemActive, [], :bool],
      [:ImGui_IsItemFocused, :ImGui_IsItemFocused, [], :bool],
      [:ImGui_IsItemClicked, :ImGui_IsItemClicked, [], :bool],
      [:ImGui_IsItemClickedEx, :ImGui_IsItemClickedEx, [:int], :bool],
      [:ImGui_IsItemVisible, :ImGui_IsItemVisible, [], :bool],
      [:ImGui_IsItemEdited, :ImGui_IsItemEdited, [], :bool],
      [:ImGui_IsItemActivated, :ImGui_IsItemActivated, [], :bool],
      [:ImGui_IsItemDeactivated, :ImGui_IsItemDeactivated, [], :bool],
      [:ImGui_IsItemDeactivatedAfterEdit, :ImGui_IsItemDeactivatedAfterEdit, [], :bool],
      [:ImGui_IsItemToggledOpen, :ImGui_IsItemToggledOpen, [], :bool],
      [:ImGui_IsAnyItemHovered, :ImGui_IsAnyItemHovered, [], :bool],
      [:ImGui_IsAnyItemActive, :ImGui_IsAnyItemActive, [], :bool],
      [:ImGui_IsAnyItemFocused, :ImGui_IsAnyItemFocused, [], :bool],
      [:ImGui_GetItemID, :ImGui_GetItemID, [], :uint],
      [:ImGui_GetItemRectMin, :ImGui_GetItemRectMin, [], ImVec2.by_value],
      [:ImGui_GetItemRectMax, :ImGui_GetItemRectMax, [], ImVec2.by_value],
      [:ImGui_GetItemRectSize, :ImGui_GetItemRectSize, [], ImVec2.by_value],
      [:ImGui_GetItemFlags, :ImGui_GetItemFlags, [], :int],
      [:ImGui_GetMainViewport, :ImGui_GetMainViewport, [], :pointer],
      [:ImGui_GetBackgroundDrawList, :ImGui_GetBackgroundDrawList, [], :pointer],
      [:ImGui_GetForegroundDrawList, :ImGui_GetForegroundDrawList, [], :pointer],
      [:ImGui_IsRectVisibleBySize, :ImGui_IsRectVisibleBySize, [ImVec2.by_value], :bool],
      [:ImGui_IsRectVisible, :ImGui_IsRectVisible, [ImVec2.by_value, ImVec2.by_value], :bool],
      [:ImGui_GetTime, :ImGui_GetTime, [], :double],
      [:ImGui_GetFrameCount, :ImGui_GetFrameCount, [], :int],
      [:ImGui_GetDrawListSharedData, :ImGui_GetDrawListSharedData, [], :pointer],
      [:ImGui_GetStyleColorName, :ImGui_GetStyleColorName, [:int], :pointer],
      [:ImGui_SetStateStorage, :ImGui_SetStateStorage, [:pointer], :void],
      [:ImGui_GetStateStorage, :ImGui_GetStateStorage, [], :pointer],
      [:ImGui_CalcTextSize, :ImGui_CalcTextSize, [:pointer], ImVec2.by_value],
      [:ImGui_CalcTextSizeEx, :ImGui_CalcTextSizeEx, [:pointer, :pointer, :bool, :float], ImVec2.by_value],
      [:ImGui_ColorConvertU32ToFloat4, :ImGui_ColorConvertU32ToFloat4, [:uint], ImVec4.by_value],
      [:ImGui_ColorConvertFloat4ToU32, :ImGui_ColorConvertFloat4ToU32, [ImVec4.by_value], :uint],
      [:ImGui_ColorConvertRGBtoHSV, :ImGui_ColorConvertRGBtoHSV, [:float, :float, :float, :pointer, :pointer, :pointer], :void],
      [:ImGui_ColorConvertHSVtoRGB, :ImGui_ColorConvertHSVtoRGB, [:float, :float, :float, :pointer, :pointer, :pointer], :void],
      [:ImGui_IsKeyDown, :ImGui_IsKeyDown, [:int], :bool],
      [:ImGui_IsKeyPressed, :ImGui_IsKeyPressed, [:int], :bool],
      [:ImGui_IsKeyPressedEx, :ImGui_IsKeyPressedEx, [:int, :bool], :bool],
      [:ImGui_IsKeyReleased, :ImGui_IsKeyReleased, [:int], :bool],
      [:ImGui_IsKeyChordPressed, :ImGui_IsKeyChordPressed, [:int], :bool],
      [:ImGui_GetKeyPressedAmount, :ImGui_GetKeyPressedAmount, [:int, :float, :float], :int],
      [:ImGui_GetKeyName, :ImGui_GetKeyName, [:int], :pointer],
      [:ImGui_SetNextFrameWantCaptureKeyboard, :ImGui_SetNextFrameWantCaptureKeyboard, [:bool], :void],
      [:ImGui_Shortcut, :ImGui_Shortcut, [:int, :int], :bool],
      [:ImGui_SetNextItemShortcut, :ImGui_SetNextItemShortcut, [:int, :int], :void],
      [:ImGui_SetItemKeyOwner, :ImGui_SetItemKeyOwner, [:int], :void],
      [:ImGui_IsMouseDown, :ImGui_IsMouseDown, [:int], :bool],
      [:ImGui_IsMouseClicked, :ImGui_IsMouseClicked, [:int], :bool],
      [:ImGui_IsMouseClickedEx, :ImGui_IsMouseClickedEx, [:int, :bool], :bool],
      [:ImGui_IsMouseReleased, :ImGui_IsMouseReleased, [:int], :bool],
      [:ImGui_IsMouseDoubleClicked, :ImGui_IsMouseDoubleClicked, [:int], :bool],
      [:ImGui_IsMouseReleasedWithDelay, :ImGui_IsMouseReleasedWithDelay, [:int, :float], :bool],
      [:ImGui_GetMouseClickedCount, :ImGui_GetMouseClickedCount, [:int], :int],
      [:ImGui_IsMouseHoveringRect, :ImGui_IsMouseHoveringRect, [ImVec2.by_value, ImVec2.by_value], :bool],
      [:ImGui_IsMouseHoveringRectEx, :ImGui_IsMouseHoveringRectEx, [ImVec2.by_value, ImVec2.by_value, :bool], :bool],
      [:ImGui_IsMousePosValid, :ImGui_IsMousePosValid, [:pointer], :bool],
      [:ImGui_IsAnyMouseDown, :ImGui_IsAnyMouseDown, [], :bool],
      [:ImGui_GetMousePos, :ImGui_GetMousePos, [], ImVec2.by_value],
      [:ImGui_GetMousePosOnOpeningCurrentPopup, :ImGui_GetMousePosOnOpeningCurrentPopup, [], ImVec2.by_value],
      [:ImGui_IsMouseDragging, :ImGui_IsMouseDragging, [:int, :float], :bool],
      [:ImGui_GetMouseDragDelta, :ImGui_GetMouseDragDelta, [:int, :float], ImVec2.by_value],
      [:ImGui_ResetMouseDragDelta, :ImGui_ResetMouseDragDelta, [], :void],
      [:ImGui_ResetMouseDragDeltaEx, :ImGui_ResetMouseDragDeltaEx, [:int], :void],
      [:ImGui_GetMouseCursor, :ImGui_GetMouseCursor, [], :int],
      [:ImGui_SetMouseCursor, :ImGui_SetMouseCursor, [:int], :void],
      [:ImGui_SetNextFrameWantCaptureMouse, :ImGui_SetNextFrameWantCaptureMouse, [:bool], :void],
      [:ImGui_GetClipboardText, :ImGui_GetClipboardText, [], :pointer],
      [:ImGui_SetClipboardText, :ImGui_SetClipboardText, [:pointer], :void],
      [:ImGui_LoadIniSettingsFromDisk, :ImGui_LoadIniSettingsFromDisk, [:pointer], :void],
      [:ImGui_LoadIniSettingsFromMemory, :ImGui_LoadIniSettingsFromMemory, [:pointer, :size_t], :void],
      [:ImGui_SaveIniSettingsToDisk, :ImGui_SaveIniSettingsToDisk, [:pointer], :void],
      [:ImGui_SaveIniSettingsToMemory, :ImGui_SaveIniSettingsToMemory, [:pointer], :pointer],
      [:ImGui_DebugTextEncoding, :ImGui_DebugTextEncoding, [:pointer], :void],
      [:ImGui_DebugFlashStyleColor, :ImGui_DebugFlashStyleColor, [:int], :void],
      [:ImGui_DebugStartItemPicker, :ImGui_DebugStartItemPicker, [], :void],
      [:ImGui_DebugCheckVersionAndDataLayout, :ImGui_DebugCheckVersionAndDataLayout, [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t], :bool],
      [:ImGui_DebugLog, :ImGui_DebugLog, [:pointer, :varargs], :void],
      [:ImGui_SetAllocatorFunctions, :ImGui_SetAllocatorFunctions, [:pointer, :pointer, :pointer], :void],
      [:ImGui_GetAllocatorFunctions, :ImGui_GetAllocatorFunctions, [:pointer, :pointer, :pointer], :void],
      [:ImGui_MemAlloc, :ImGui_MemAlloc, [:size_t], :pointer],
      [:ImGui_MemFree, :ImGui_MemFree, [:pointer], :void],
      [:ImVector_Construct, :ImVector_Construct, [:pointer], :void],
      [:ImVector_Destruct, :ImVector_Destruct, [:pointer], :void],
      [:ImGuiStyle_ScaleAllSizes, :ImGuiStyle_ScaleAllSizes, [:pointer, :float], :void],
      [:ImGuiIO_AddKeyEvent, :ImGuiIO_AddKeyEvent, [:pointer, :int, :bool], :void],
      [:ImGuiIO_AddKeyAnalogEvent, :ImGuiIO_AddKeyAnalogEvent, [:pointer, :int, :bool, :float], :void],
      [:ImGuiIO_AddMousePosEvent, :ImGuiIO_AddMousePosEvent, [:pointer, :float, :float], :void],
      [:ImGuiIO_AddMouseButtonEvent, :ImGuiIO_AddMouseButtonEvent, [:pointer, :int, :bool], :void],
      [:ImGuiIO_AddMouseWheelEvent, :ImGuiIO_AddMouseWheelEvent, [:pointer, :float, :float], :void],
      [:ImGuiIO_AddMouseSourceEvent, :ImGuiIO_AddMouseSourceEvent, [:pointer, :int], :void],
      [:ImGuiIO_AddFocusEvent, :ImGuiIO_AddFocusEvent, [:pointer, :bool], :void],
      [:ImGuiIO_AddInputCharacter, :ImGuiIO_AddInputCharacter, [:pointer, :uint], :void],
      [:ImGuiIO_AddInputCharacterUTF16, :ImGuiIO_AddInputCharacterUTF16, [:pointer, :ushort], :void],
      [:ImGuiIO_AddInputCharactersUTF8, :ImGuiIO_AddInputCharactersUTF8, [:pointer, :pointer], :void],
      [:ImGuiIO_SetKeyEventNativeData, :ImGuiIO_SetKeyEventNativeData, [:pointer, :int, :int, :int], :void],
      [:ImGuiIO_SetKeyEventNativeDataEx, :ImGuiIO_SetKeyEventNativeDataEx, [:pointer, :int, :int, :int, :int], :void],
      [:ImGuiIO_SetAppAcceptingEvents, :ImGuiIO_SetAppAcceptingEvents, [:pointer, :bool], :void],
      [:ImGuiIO_ClearEventsQueue, :ImGuiIO_ClearEventsQueue, [:pointer], :void],
      [:ImGuiIO_ClearInputKeys, :ImGuiIO_ClearInputKeys, [:pointer], :void],
      [:ImGuiIO_ClearInputMouse, :ImGuiIO_ClearInputMouse, [:pointer], :void],
      [:ImGuiInputTextCallbackData_DeleteChars, :ImGuiInputTextCallbackData_DeleteChars, [:pointer, :int, :int], :void],
      [:ImGuiInputTextCallbackData_InsertChars, :ImGuiInputTextCallbackData_InsertChars, [:pointer, :int, :pointer, :pointer], :void],
      [:ImGuiInputTextCallbackData_SelectAll, :ImGuiInputTextCallbackData_SelectAll, [:pointer], :void],
      [:ImGuiInputTextCallbackData_SetSelection, :ImGuiInputTextCallbackData_SetSelection, [:pointer, :int, :int], :void],
      [:ImGuiInputTextCallbackData_ClearSelection, :ImGuiInputTextCallbackData_ClearSelection, [:pointer], :void],
      [:ImGuiInputTextCallbackData_HasSelection, :ImGuiInputTextCallbackData_HasSelection, [:pointer], :bool],
      [:ImGuiPayload_Clear, :ImGuiPayload_Clear, [:pointer], :void],
      [:ImGuiPayload_IsDataType, :ImGuiPayload_IsDataType, [:pointer, :pointer], :bool],
      [:ImGuiPayload_IsPreview, :ImGuiPayload_IsPreview, [:pointer], :bool],
      [:ImGuiPayload_IsDelivery, :ImGuiPayload_IsDelivery, [:pointer], :bool],
      [:ImGuiTextFilter_ImGuiTextRange_empty, :ImGuiTextFilter_ImGuiTextRange_empty, [:pointer], :bool],
      [:ImGuiTextFilter_ImGuiTextRange_split, :ImGuiTextFilter_ImGuiTextRange_split, [:pointer, :char, :pointer], :void],
      [:ImGuiTextFilter_Draw, :ImGuiTextFilter_Draw, [:pointer, :pointer, :float], :bool],
      [:ImGuiTextFilter_PassFilter, :ImGuiTextFilter_PassFilter, [:pointer, :pointer, :pointer], :bool],
      [:ImGuiTextFilter_Build, :ImGuiTextFilter_Build, [:pointer], :void],
      [:ImGuiTextFilter_Clear, :ImGuiTextFilter_Clear, [:pointer], :void],
      [:ImGuiTextFilter_IsActive, :ImGuiTextFilter_IsActive, [:pointer], :bool],
      [:ImGuiTextBuffer_begin, :ImGuiTextBuffer_begin, [:pointer], :pointer],
      [:ImGuiTextBuffer_end, :ImGuiTextBuffer_end, [:pointer], :pointer],
      [:ImGuiTextBuffer_size, :ImGuiTextBuffer_size, [:pointer], :int],
      [:ImGuiTextBuffer_empty, :ImGuiTextBuffer_empty, [:pointer], :bool],
      [:ImGuiTextBuffer_clear, :ImGuiTextBuffer_clear, [:pointer], :void],
      [:ImGuiTextBuffer_resize, :ImGuiTextBuffer_resize, [:pointer, :int], :void],
      [:ImGuiTextBuffer_reserve, :ImGuiTextBuffer_reserve, [:pointer, :int], :void],
      [:ImGuiTextBuffer_c_str, :ImGuiTextBuffer_c_str, [:pointer], :pointer],
      [:ImGuiTextBuffer_append, :ImGuiTextBuffer_append, [:pointer, :pointer, :pointer], :void],
      [:ImGuiTextBuffer_appendf, :ImGuiTextBuffer_appendf, [:pointer, :pointer, :varargs], :void],
      [:ImGuiStorage_Clear, :ImGuiStorage_Clear, [:pointer], :void],
      [:ImGuiStorage_GetInt, :ImGuiStorage_GetInt, [:pointer, :uint, :int], :int],
      [:ImGuiStorage_SetInt, :ImGuiStorage_SetInt, [:pointer, :uint, :int], :void],
      [:ImGuiStorage_GetBool, :ImGuiStorage_GetBool, [:pointer, :uint, :bool], :bool],
      [:ImGuiStorage_SetBool, :ImGuiStorage_SetBool, [:pointer, :uint, :bool], :void],
      [:ImGuiStorage_GetFloat, :ImGuiStorage_GetFloat, [:pointer, :uint, :float], :float],
      [:ImGuiStorage_SetFloat, :ImGuiStorage_SetFloat, [:pointer, :uint, :float], :void],
      [:ImGuiStorage_GetVoidPtr, :ImGuiStorage_GetVoidPtr, [:pointer, :uint], :pointer],
      [:ImGuiStorage_SetVoidPtr, :ImGuiStorage_SetVoidPtr, [:pointer, :uint, :pointer], :void],
      [:ImGuiStorage_GetIntRef, :ImGuiStorage_GetIntRef, [:pointer, :uint, :int], :pointer],
      [:ImGuiStorage_GetBoolRef, :ImGuiStorage_GetBoolRef, [:pointer, :uint, :bool], :pointer],
      [:ImGuiStorage_GetFloatRef, :ImGuiStorage_GetFloatRef, [:pointer, :uint, :float], :pointer],
      [:ImGuiStorage_GetVoidPtrRef, :ImGuiStorage_GetVoidPtrRef, [:pointer, :uint, :pointer], :pointer],
      [:ImGuiStorage_BuildSortByKey, :ImGuiStorage_BuildSortByKey, [:pointer], :void],
      [:ImGuiStorage_SetAllInt, :ImGuiStorage_SetAllInt, [:pointer, :int], :void],
      [:ImGuiListClipper_Begin, :ImGuiListClipper_Begin, [:pointer, :int, :float], :void],
      [:ImGuiListClipper_End, :ImGuiListClipper_End, [:pointer], :void],
      [:ImGuiListClipper_Step, :ImGuiListClipper_Step, [:pointer], :bool],
      [:ImGuiListClipper_IncludeItemByIndex, :ImGuiListClipper_IncludeItemByIndex, [:pointer, :int], :void],
      [:ImGuiListClipper_IncludeItemsByIndex, :ImGuiListClipper_IncludeItemsByIndex, [:pointer, :int, :int], :void],
      [:ImGuiListClipper_SeekCursorForItem, :ImGuiListClipper_SeekCursorForItem, [:pointer, :int], :void],
      [:ImColor_SetHSV, :ImColor_SetHSV, [:pointer, :float, :float, :float, :float], :void],
      [:ImColor_HSV, :ImColor_HSV, [:float, :float, :float, :float], ImColor.by_value],
      [:ImGuiSelectionBasicStorage_ApplyRequests, :ImGuiSelectionBasicStorage_ApplyRequests, [:pointer, :pointer], :void],
      [:ImGuiSelectionBasicStorage_Contains, :ImGuiSelectionBasicStorage_Contains, [:pointer, :uint], :bool],
      [:ImGuiSelectionBasicStorage_Clear, :ImGuiSelectionBasicStorage_Clear, [:pointer], :void],
      [:ImGuiSelectionBasicStorage_Swap, :ImGuiSelectionBasicStorage_Swap, [:pointer, :pointer], :void],
      [:ImGuiSelectionBasicStorage_SetItemSelected, :ImGuiSelectionBasicStorage_SetItemSelected, [:pointer, :uint, :bool], :void],
      [:ImGuiSelectionBasicStorage_GetNextSelectedItem, :ImGuiSelectionBasicStorage_GetNextSelectedItem, [:pointer, :pointer, :pointer], :bool],
      [:ImGuiSelectionBasicStorage_GetStorageIdFromIndex, :ImGuiSelectionBasicStorage_GetStorageIdFromIndex, [:pointer, :int], :uint],
      [:ImGuiSelectionExternalStorage_ApplyRequests, :ImGuiSelectionExternalStorage_ApplyRequests, [:pointer, :pointer], :void],
      [:ImDrawCmd_GetTexID, :ImDrawCmd_GetTexID, [:pointer], :uint64],
      [:ImDrawListSplitter_Clear, :ImDrawListSplitter_Clear, [:pointer], :void],
      [:ImDrawListSplitter_ClearFreeMemory, :ImDrawListSplitter_ClearFreeMemory, [:pointer], :void],
      [:ImDrawListSplitter_Split, :ImDrawListSplitter_Split, [:pointer, :pointer, :int], :void],
      [:ImDrawListSplitter_Merge, :ImDrawListSplitter_Merge, [:pointer, :pointer], :void],
      [:ImDrawListSplitter_SetCurrentChannel, :ImDrawListSplitter_SetCurrentChannel, [:pointer, :pointer, :int], :void],
      [:ImDrawList_PushClipRect, :ImDrawList_PushClipRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :bool], :void],
      [:ImDrawList_PushClipRectFullScreen, :ImDrawList_PushClipRectFullScreen, [:pointer], :void],
      [:ImDrawList_PopClipRect, :ImDrawList_PopClipRect, [:pointer], :void],
      [:ImDrawList_PushTexture, :ImDrawList_PushTexture, [:pointer, ImTextureRef.by_value], :void],
      [:ImDrawList_PopTexture, :ImDrawList_PopTexture, [:pointer], :void],
      [:ImDrawList_GetClipRectMin, :ImDrawList_GetClipRectMin, [:pointer], ImVec2.by_value],
      [:ImDrawList_GetClipRectMax, :ImDrawList_GetClipRectMax, [:pointer], ImVec2.by_value],
      [:ImDrawList_AddLine, :ImDrawList_AddLine, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddLineEx, :ImDrawList_AddLineEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddRect, :ImDrawList_AddRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddRectEx, :ImDrawList_AddRectEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float], :void],
      [:ImDrawList_AddRectFilled, :ImDrawList_AddRectFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddRectFilledEx, :ImDrawList_AddRectFilledEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddRectFilledMultiColor, :ImDrawList_AddRectFilledMultiColor, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint], :void],
      [:ImDrawList_AddQuad, :ImDrawList_AddQuad, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddQuadEx, :ImDrawList_AddQuadEx, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddQuadFilled, :ImDrawList_AddQuadFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddTriangle, :ImDrawList_AddTriangle, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddTriangleEx, :ImDrawList_AddTriangleEx, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddTriangleFilled, :ImDrawList_AddTriangleFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddCircle, :ImDrawList_AddCircle, [:pointer, ImVec2.by_value, :float, :uint], :void],
      [:ImDrawList_AddCircleEx, :ImDrawList_AddCircleEx, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void],
      [:ImDrawList_AddCircleFilled, :ImDrawList_AddCircleFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void],
      [:ImDrawList_AddNgon, :ImDrawList_AddNgon, [:pointer, ImVec2.by_value, :float, :uint, :int], :void],
      [:ImDrawList_AddNgonEx, :ImDrawList_AddNgonEx, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void],
      [:ImDrawList_AddNgonFilled, :ImDrawList_AddNgonFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void],
      [:ImDrawList_AddEllipse, :ImDrawList_AddEllipse, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddEllipseEx, :ImDrawList_AddEllipseEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float], :void],
      [:ImDrawList_AddEllipseFilled, :ImDrawList_AddEllipseFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddEllipseFilledEx, :ImDrawList_AddEllipseFilledEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddText, :ImDrawList_AddText, [:pointer, ImVec2.by_value, :uint, :pointer], :void],
      [:ImDrawList_AddTextEx, :ImDrawList_AddTextEx, [:pointer, ImVec2.by_value, :uint, :pointer, :pointer], :void],
      [:ImDrawList_AddTextImFontPtr, :ImDrawList_AddTextImFontPtr, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer], :void],
      [:ImDrawList_AddTextImFontPtrEx, :ImDrawList_AddTextImFontPtrEx, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer], :void],
      [:ImDrawList_AddBezierCubic, :ImDrawList_AddBezierCubic, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddBezierQuadratic, :ImDrawList_AddBezierQuadratic, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddPolyline, :ImDrawList_AddPolyline, [:pointer, :pointer, :int, :uint, :int, :float], :void],
      [:ImDrawList_AddConvexPolyFilled, :ImDrawList_AddConvexPolyFilled, [:pointer, :pointer, :int, :uint], :void],
      [:ImDrawList_AddConcavePolyFilled, :ImDrawList_AddConcavePolyFilled, [:pointer, :pointer, :int, :uint], :void],
      [:ImDrawList_AddImage, :ImDrawList_AddImage, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value], :void],
      [:ImDrawList_AddImageEx, :ImDrawList_AddImageEx, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddImageQuad, :ImDrawList_AddImageQuad, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], :void],
      [:ImDrawList_AddImageQuadEx, :ImDrawList_AddImageQuadEx, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddImageRounded, :ImDrawList_AddImageRounded, [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_PathClear, :ImDrawList_PathClear, [:pointer], :void],
      [:ImDrawList_PathLineTo, :ImDrawList_PathLineTo, [:pointer, ImVec2.by_value], :void],
      [:ImDrawList_PathLineToMergeDuplicate, :ImDrawList_PathLineToMergeDuplicate, [:pointer, ImVec2.by_value], :void],
      [:ImDrawList_PathFillConvex, :ImDrawList_PathFillConvex, [:pointer, :uint], :void],
      [:ImDrawList_PathFillConcave, :ImDrawList_PathFillConcave, [:pointer, :uint], :void],
      [:ImDrawList_PathStroke, :ImDrawList_PathStroke, [:pointer, :uint, :int, :float], :void],
      [:ImDrawList_PathArcTo, :ImDrawList_PathArcTo, [:pointer, ImVec2.by_value, :float, :float, :float, :int], :void],
      [:ImDrawList_PathArcToFast, :ImDrawList_PathArcToFast, [:pointer, ImVec2.by_value, :float, :int, :int], :void],
      [:ImDrawList_PathEllipticalArcTo, :ImDrawList_PathEllipticalArcTo, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :float], :void],
      [:ImDrawList_PathEllipticalArcToEx, :ImDrawList_PathEllipticalArcToEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :float, :int], :void],
      [:ImDrawList_PathBezierCubicCurveTo, :ImDrawList_PathBezierCubicCurveTo, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int], :void],
      [:ImDrawList_PathBezierQuadraticCurveTo, :ImDrawList_PathBezierQuadraticCurveTo, [:pointer, ImVec2.by_value, ImVec2.by_value, :int], :void],
      [:ImDrawList_PathRect, :ImDrawList_PathRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int], :void],
      [:ImDrawList_AddCallback, :ImDrawList_AddCallback, [:pointer, :ImDrawCallback, :pointer], :void],
      [:ImDrawList_AddCallbackEx, :ImDrawList_AddCallbackEx, [:pointer, :ImDrawCallback, :pointer, :size_t], :void],
      [:ImDrawList_AddDrawCmd, :ImDrawList_AddDrawCmd, [:pointer], :void],
      [:ImDrawList_CloneOutput, :ImDrawList_CloneOutput, [:pointer], :pointer],
      [:ImDrawList_ChannelsSplit, :ImDrawList_ChannelsSplit, [:pointer, :int], :void],
      [:ImDrawList_ChannelsMerge, :ImDrawList_ChannelsMerge, [:pointer], :void],
      [:ImDrawList_ChannelsSetCurrent, :ImDrawList_ChannelsSetCurrent, [:pointer, :int], :void],
      [:ImDrawList_PrimReserve, :ImDrawList_PrimReserve, [:pointer, :int, :int], :void],
      [:ImDrawList_PrimUnreserve, :ImDrawList_PrimUnreserve, [:pointer, :int, :int], :void],
      [:ImDrawList_PrimRect, :ImDrawList_PrimRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimRectUV, :ImDrawList_PrimRectUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimQuadUV, :ImDrawList_PrimQuadUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimWriteVtx, :ImDrawList_PrimWriteVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimWriteIdx, :ImDrawList_PrimWriteIdx, [:pointer, :ushort], :void],
      [:ImDrawList_PrimVtx, :ImDrawList_PrimVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PushTextureID, :ImDrawList_PushTextureID, [:pointer, ImTextureRef.by_value], :void],
      [:ImDrawList_PopTextureID, :ImDrawList_PopTextureID, [:pointer], :void],
      [:ImDrawList__SetDrawListSharedData, :ImDrawList__SetDrawListSharedData, [:pointer, :pointer], :void],
      [:ImDrawList__ResetForNewFrame, :ImDrawList__ResetForNewFrame, [:pointer], :void],
      [:ImDrawList__ClearFreeMemory, :ImDrawList__ClearFreeMemory, [:pointer], :void],
      [:ImDrawList__PopUnusedDrawCmd, :ImDrawList__PopUnusedDrawCmd, [:pointer], :void],
      [:ImDrawList__TryMergeDrawCmds, :ImDrawList__TryMergeDrawCmds, [:pointer], :void],
      [:ImDrawList__OnChangedClipRect, :ImDrawList__OnChangedClipRect, [:pointer], :void],
      [:ImDrawList__OnChangedTexture, :ImDrawList__OnChangedTexture, [:pointer], :void],
      [:ImDrawList__OnChangedVtxOffset, :ImDrawList__OnChangedVtxOffset, [:pointer], :void],
      [:ImDrawList__SetTexture, :ImDrawList__SetTexture, [:pointer, ImTextureRef.by_value], :void],
      [:ImDrawList__CalcCircleAutoSegmentCount, :ImDrawList__CalcCircleAutoSegmentCount, [:pointer, :float], :int],
      [:ImDrawList__PathArcToFastEx, :ImDrawList__PathArcToFastEx, [:pointer, ImVec2.by_value, :float, :int, :int, :int], :void],
      [:ImDrawList__PathArcToN, :ImDrawList__PathArcToN, [:pointer, ImVec2.by_value, :float, :float, :float, :int], :void],
      [:ImDrawData_Clear, :ImDrawData_Clear, [:pointer], :void],
      [:ImDrawData_AddDrawList, :ImDrawData_AddDrawList, [:pointer, :pointer], :void],
      [:ImDrawData_DeIndexAllBuffers, :ImDrawData_DeIndexAllBuffers, [:pointer], :void],
      [:ImDrawData_ScaleClipRects, :ImDrawData_ScaleClipRects, [:pointer, ImVec2.by_value], :void],
      [:ImTextureData_Create, :ImTextureData_Create, [:pointer, :int, :int, :int], :void],
      [:ImTextureData_DestroyPixels, :ImTextureData_DestroyPixels, [:pointer], :void],
      [:ImTextureData_GetPixels, :ImTextureData_GetPixels, [:pointer], :pointer],
      [:ImTextureData_GetPixelsAt, :ImTextureData_GetPixelsAt, [:pointer, :int, :int], :pointer],
      [:ImTextureData_GetSizeInBytes, :ImTextureData_GetSizeInBytes, [:pointer], :int],
      [:ImTextureData_GetPitch, :ImTextureData_GetPitch, [:pointer], :int],
      [:ImTextureData_GetTexRef, :ImTextureData_GetTexRef, [:pointer], ImTextureRef.by_value],
      [:ImTextureData_GetTexID, :ImTextureData_GetTexID, [:pointer], :uint64],
      [:ImTextureData_SetTexID, :ImTextureData_SetTexID, [:pointer, :uint64], :void],
      [:ImTextureData_SetStatus, :ImTextureData_SetStatus, [:pointer, :int], :void],
      [:ImFontGlyphRangesBuilder_Clear, :ImFontGlyphRangesBuilder_Clear, [:pointer], :void],
      [:ImFontGlyphRangesBuilder_GetBit, :ImFontGlyphRangesBuilder_GetBit, [:pointer, :size_t], :bool],
      [:ImFontGlyphRangesBuilder_SetBit, :ImFontGlyphRangesBuilder_SetBit, [:pointer, :size_t], :void],
      [:ImFontGlyphRangesBuilder_AddChar, :ImFontGlyphRangesBuilder_AddChar, [:pointer, :ushort], :void],
      [:ImFontGlyphRangesBuilder_AddText, :ImFontGlyphRangesBuilder_AddText, [:pointer, :pointer, :pointer], :void],
      [:ImFontGlyphRangesBuilder_AddRanges, :ImFontGlyphRangesBuilder_AddRanges, [:pointer, :pointer], :void],
      [:ImFontGlyphRangesBuilder_BuildRanges, :ImFontGlyphRangesBuilder_BuildRanges, [:pointer, :pointer], :void],
      [:ImFontAtlas_AddFont, :ImFontAtlas_AddFont, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontDefault, :ImFontAtlas_AddFontDefault, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontDefaultVector, :ImFontAtlas_AddFontDefaultVector, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontDefaultBitmap, :ImFontAtlas_AddFontDefaultBitmap, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromFileTTF, :ImFontAtlas_AddFontFromFileTTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryTTF, :ImFontAtlas_AddFontFromMemoryTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryCompressedTTF, :ImFontAtlas_AddFontFromMemoryCompressedTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_RemoveFont, :ImFontAtlas_RemoveFont, [:pointer, :pointer], :void],
      [:ImFontAtlas_Clear, :ImFontAtlas_Clear, [:pointer], :void],
      [:ImFontAtlas_CompactCache, :ImFontAtlas_CompactCache, [:pointer], :void],
      [:ImFontAtlas_SetFontLoader, :ImFontAtlas_SetFontLoader, [:pointer, :pointer], :void],
      [:ImFontAtlas_ClearInputData, :ImFontAtlas_ClearInputData, [:pointer], :void],
      [:ImFontAtlas_ClearFonts, :ImFontAtlas_ClearFonts, [:pointer], :void],
      [:ImFontAtlas_ClearTexData, :ImFontAtlas_ClearTexData, [:pointer], :void],
      [:ImFontAtlas_Build, :ImFontAtlas_Build, [:pointer], :bool],
      [:ImFontAtlas_GetTexDataAsAlpha8, :ImFontAtlas_GetTexDataAsAlpha8, [:pointer, :pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_GetTexDataAsRGBA32, :ImFontAtlas_GetTexDataAsRGBA32, [:pointer, :pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_SetTexID, :ImFontAtlas_SetTexID, [:pointer, :uint64], :void],
      [:ImFontAtlas_SetTexIDImTextureRef, :ImFontAtlas_SetTexIDImTextureRef, [:pointer, ImTextureRef.by_value], :void],
      [:ImFontAtlas_IsBuilt, :ImFontAtlas_IsBuilt, [:pointer], :bool],
      [:ImFontAtlas_GetGlyphRangesDefault, :ImFontAtlas_GetGlyphRangesDefault, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesGreek, :ImFontAtlas_GetGlyphRangesGreek, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesKorean, :ImFontAtlas_GetGlyphRangesKorean, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesJapanese, :ImFontAtlas_GetGlyphRangesJapanese, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesChineseFull, :ImFontAtlas_GetGlyphRangesChineseFull, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesCyrillic, :ImFontAtlas_GetGlyphRangesCyrillic, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesThai, :ImFontAtlas_GetGlyphRangesThai, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesVietnamese, :ImFontAtlas_GetGlyphRangesVietnamese, [:pointer], :pointer],
      [:ImFontAtlas_AddCustomRect, :ImFontAtlas_AddCustomRect, [:pointer, :int, :int, :pointer], :int],
      [:ImFontAtlas_RemoveCustomRect, :ImFontAtlas_RemoveCustomRect, [:pointer, :int], :void],
      [:ImFontAtlas_GetCustomRect, :ImFontAtlas_GetCustomRect, [:pointer, :int, :pointer], :bool],
      [:ImFontAtlas_AddCustomRectRegular, :ImFontAtlas_AddCustomRectRegular, [:pointer, :int, :int], :int],
      [:ImFontAtlas_GetCustomRectByIndex, :ImFontAtlas_GetCustomRectByIndex, [:pointer, :int], :pointer],
      [:ImFontAtlas_CalcCustomRectUV, :ImFontAtlas_CalcCustomRectUV, [:pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_AddCustomRectFontGlyph, :ImFontAtlas_AddCustomRectFontGlyph, [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value], :int],
      [:ImFontAtlas_AddCustomRectFontGlyphForSize, :ImFontAtlas_AddCustomRectFontGlyphForSize, [:pointer, :pointer, :float, :ushort, :int, :int, :float, ImVec2.by_value], :int],
      [:ImFontBaked_ClearOutputData, :ImFontBaked_ClearOutputData, [:pointer], :void],
      [:ImFontBaked_FindGlyph, :ImFontBaked_FindGlyph, [:pointer, :ushort], :pointer],
      [:ImFontBaked_FindGlyphNoFallback, :ImFontBaked_FindGlyphNoFallback, [:pointer, :ushort], :pointer],
      [:ImFontBaked_GetCharAdvance, :ImFontBaked_GetCharAdvance, [:pointer, :ushort], :float],
      [:ImFontBaked_IsGlyphLoaded, :ImFontBaked_IsGlyphLoaded, [:pointer, :ushort], :bool],
      [:ImFont_IsGlyphInFont, :ImFont_IsGlyphInFont, [:pointer, :ushort], :bool],
      [:ImFont_IsLoaded, :ImFont_IsLoaded, [:pointer], :bool],
      [:ImFont_GetDebugName, :ImFont_GetDebugName, [:pointer], :pointer],
      [:ImFont_GetFontBaked, :ImFont_GetFontBaked, [:pointer, :float], :pointer],
      [:ImFont_GetFontBakedEx, :ImFont_GetFontBakedEx, [:pointer, :float, :float], :pointer],
      [:ImFont_CalcTextSizeA, :ImFont_CalcTextSizeA, [:pointer, :float, :float, :float, :pointer], ImVec2.by_value],
      [:ImFont_CalcTextSizeAEx, :ImFont_CalcTextSizeAEx, [:pointer, :float, :float, :float, :pointer, :pointer, :pointer], ImVec2.by_value],
      [:ImFont_CalcWordWrapPosition, :ImFont_CalcWordWrapPosition, [:pointer, :float, :pointer, :pointer, :float], :pointer],
      [:ImFont_RenderChar, :ImFont_RenderChar, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :ushort], :void],
      [:ImFont_RenderCharEx, :ImFont_RenderCharEx, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :ushort, :pointer], :void],
      [:ImFont_RenderText, :ImFont_RenderText, [:pointer, :pointer, :float, ImVec2.by_value, :uint, ImVec4.by_value, :pointer, :pointer, :float, :int], :void],
      [:ImFont_CalcWordWrapPositionA, :ImFont_CalcWordWrapPositionA, [:pointer, :float, :pointer, :pointer, :float], :pointer],
      [:ImFont_ClearOutputData, :ImFont_ClearOutputData, [:pointer], :void],
      [:ImFont_AddRemapChar, :ImFont_AddRemapChar, [:pointer, :ushort, :ushort], :void],
      [:ImFont_IsGlyphRangeUnused, :ImFont_IsGlyphRangeUnused, [:pointer, :uint, :uint], :bool],
      [:ImGuiViewport_GetCenter, :ImGuiViewport_GetCenter, [:pointer], ImVec2.by_value],
      [:ImGuiViewport_GetWorkCenter, :ImGuiViewport_GetWorkCenter, [:pointer], ImVec2.by_value],
      [:ImGuiPlatformIO_ClearPlatformHandlers, :ImGuiPlatformIO_ClearPlatformHandlers, [:pointer], :void],
      [:ImGuiPlatformIO_ClearRendererHandlers, :ImGuiPlatformIO_ClearRendererHandlers, [:pointer], :void],
      [:ImGui_PushFont, :ImGui_PushFont, [:pointer], :void],
      [:ImGui_SetWindowFontScale, :ImGui_SetWindowFontScale, [:float], :void],
      [:ImGui_ImageImVec4, :ImGui_ImageImVec4, [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void],
      [:ImGui_PushButtonRepeat, :ImGui_PushButtonRepeat, [:bool], :void],
      [:ImGui_PopButtonRepeat, :ImGui_PopButtonRepeat, [], :void],
      [:ImGui_PushTabStop, :ImGui_PushTabStop, [:bool], :void],
      [:ImGui_PopTabStop, :ImGui_PopTabStop, [], :void],
      [:ImGui_GetContentRegionMax, :ImGui_GetContentRegionMax, [], ImVec2.by_value],
      [:ImGui_GetWindowContentRegionMin, :ImGui_GetWindowContentRegionMin, [], ImVec2.by_value],
      [:ImGui_GetWindowContentRegionMax, :ImGui_GetWindowContentRegionMax, [], ImVec2.by_value],
      [:cImHashData, :cImHashData, [:pointer, :size_t], :uint],
      [:cImHashDataEx, :cImHashDataEx, [:pointer, :size_t, :uint], :uint],
      [:cImHashStr, :cImHashStr, [:pointer], :uint],
      [:cImHashStrEx, :cImHashStrEx, [:pointer, :size_t, :uint], :uint],
      [:cImHashSkipUncontributingPrefix, :cImHashSkipUncontributingPrefix, [:pointer], :pointer],
      [:cImAlphaBlendColors, :cImAlphaBlendColors, [:uint, :uint], :uint],
      [:cImIsPowerOfTwo, :cImIsPowerOfTwo, [:int], :bool],
      [:cImIsPowerOfTwoImU64, :cImIsPowerOfTwoImU64, [:uint64], :bool],
      [:cImUpperPowerOfTwo, :cImUpperPowerOfTwo, [:int], :int],
      [:cImCountSetBits, :cImCountSetBits, [:uint], :uint],
      [:cImStricmp, :cImStricmp, [:pointer, :pointer], :int],
      [:cImStrnicmp, :cImStrnicmp, [:pointer, :pointer, :size_t], :int],
      [:cImStrncpy, :cImStrncpy, [:pointer, :pointer, :size_t], :void],
      [:cImStrdup, :cImStrdup, [:pointer], :pointer],
      [:cImMemdup, :cImMemdup, [:pointer, :size_t], :pointer],
      [:cImStrdupcpy, :cImStrdupcpy, [:pointer, :pointer, :pointer], :pointer],
      [:cImStrchrRange, :cImStrchrRange, [:pointer, :pointer, :char], :pointer],
      [:cImStreolRange, :cImStreolRange, [:pointer, :pointer], :pointer],
      [:cImStristr, :cImStristr, [:pointer, :pointer, :pointer, :pointer], :pointer],
      [:cImStrTrimBlanks, :cImStrTrimBlanks, [:pointer], :void],
      [:cImStrSkipBlank, :cImStrSkipBlank, [:pointer], :pointer],
      [:cImStrlenW, :cImStrlenW, [:pointer], :int],
      [:cImStrbol, :cImStrbol, [:pointer, :pointer], :pointer],
      [:cImToUpper, :cImToUpper, [:char], :char],
      [:cImCharIsBlankA, :cImCharIsBlankA, [:char], :bool],
      [:cImCharIsBlankW, :cImCharIsBlankW, [:uint], :bool],
      [:cImCharIsXdigitA, :cImCharIsXdigitA, [:char], :bool],
      [:cImFormatString, :cImFormatString, [:pointer, :size_t, :pointer, :varargs], :int],
      [:cImFormatStringToTempBuffer, :cImFormatStringToTempBuffer, [:pointer, :pointer, :pointer, :varargs], :void],
      [:cImParseFormatFindStart, :cImParseFormatFindStart, [:pointer], :pointer],
      [:cImParseFormatFindEnd, :cImParseFormatFindEnd, [:pointer], :pointer],
      [:cImParseFormatTrimDecorations, :cImParseFormatTrimDecorations, [:pointer, :pointer, :size_t], :pointer],
      [:cImParseFormatSanitizeForPrinting, :cImParseFormatSanitizeForPrinting, [:pointer, :pointer, :size_t], :void],
      [:cImParseFormatSanitizeForScanning, :cImParseFormatSanitizeForScanning, [:pointer, :pointer, :size_t], :pointer],
      [:cImParseFormatPrecision, :cImParseFormatPrecision, [:pointer, :int], :int],
      [:cImTextCharToUtf8, :cImTextCharToUtf8, [:pointer, :uint], :int],
      [:cImTextStrToUtf8, :cImTextStrToUtf8, [:pointer, :int, :pointer, :pointer], :int],
      [:cImTextCharFromUtf8, :cImTextCharFromUtf8, [:pointer, :pointer, :pointer], :int],
      [:cImTextStrFromUtf8, :cImTextStrFromUtf8, [:pointer, :int, :pointer, :pointer], :int],
      [:cImTextStrFromUtf8Ex, :cImTextStrFromUtf8Ex, [:pointer, :int, :pointer, :pointer, :pointer], :int],
      [:cImTextCountCharsFromUtf8, :cImTextCountCharsFromUtf8, [:pointer, :pointer], :int],
      [:cImTextCountUtf8BytesFromChar, :cImTextCountUtf8BytesFromChar, [:pointer, :pointer], :int],
      [:cImTextCountUtf8BytesFromStr, :cImTextCountUtf8BytesFromStr, [:pointer, :pointer], :int],
      [:cImTextFindPreviousUtf8Codepoint, :cImTextFindPreviousUtf8Codepoint, [:pointer, :pointer], :pointer],
      [:cImTextFindValidUtf8CodepointEnd, :cImTextFindValidUtf8CodepointEnd, [:pointer, :pointer, :pointer], :pointer],
      [:cImTextCountLines, :cImTextCountLines, [:pointer, :pointer], :int],
      [:cImFontCalcTextSizeEx, :cImFontCalcTextSizeEx, [:pointer, :float, :float, :float, :pointer, :pointer, :pointer, :pointer, :pointer, :int], ImVec2.by_value],
      [:cImFontCalcWordWrapPositionEx, :cImFontCalcWordWrapPositionEx, [:pointer, :float, :pointer, :pointer, :float, :int], :pointer],
      [:cImTextCalcWordWrapNextLineStart, :cImTextCalcWordWrapNextLineStart, [:pointer, :pointer, :int], :pointer],
      [:cImTextInitClassifiers, :cImTextInitClassifiers, [], :void],
      [:cImTextClassifierClear, :cImTextClassifierClear, [:pointer, :uint, :uint, :int], :void],
      [:cImTextClassifierSetCharClass, :cImTextClassifierSetCharClass, [:pointer, :uint, :uint, :int, :uint], :void],
      [:cImTextClassifierSetCharClassFromStr, :cImTextClassifierSetCharClassFromStr, [:pointer, :uint, :uint, :int, :pointer], :void],
      [:cImFileOpen, :cImFileOpen, [:pointer, :pointer], :pointer],
      [:cImFileClose, :cImFileClose, [:pointer], :bool],
      [:cImFileGetSize, :cImFileGetSize, [:pointer], :uint64],
      [:cImFileRead, :cImFileRead, [:pointer, :uint64, :uint64, :pointer], :uint64],
      [:cImFileWrite, :cImFileWrite, [:pointer, :uint64, :uint64, :pointer], :uint64],
      [:cImFileLoadToMemory, :cImFileLoadToMemory, [:pointer, :pointer], :pointer],
      [:cImFileLoadToMemoryEx, :cImFileLoadToMemoryEx, [:pointer, :pointer, :pointer, :int], :pointer],
      [:cImPow, :cImPow, [:float, :float], :float],
      [:cImPowDouble, :cImPowDouble, [:double, :double], :double],
      [:cImLog, :cImLog, [:float], :float],
      [:cImLogDouble, :cImLogDouble, [:double], :double],
      [:cImAbs, :cImAbs, [:int], :int],
      [:cImAbsFloat, :cImAbsFloat, [:float], :float],
      [:cImAbsDouble, :cImAbsDouble, [:double], :double],
      [:cImSign, :cImSign, [:float], :float],
      [:cImSignDouble, :cImSignDouble, [:double], :double],
      [:cImRsqrt, :cImRsqrt, [:float], :float],
      [:cImRsqrtFloat, :cImRsqrtFloat, [:float], :float],
      [:cImRsqrtDouble, :cImRsqrtDouble, [:double], :double],
      [:cImMin, :cImMin, [ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImMax, :cImMax, [ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImClamp, :cImClamp, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImLerp, :cImLerp, [ImVec2.by_value, ImVec2.by_value, :float], ImVec2.by_value],
      [:cImLerpImVec2, :cImLerpImVec2, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImLerpImVec4, :cImLerpImVec4, [ImVec4.by_value, ImVec4.by_value, :float], ImVec4.by_value],
      [:cImSaturate, :cImSaturate, [:float], :float],
      [:cImLengthSqr, :cImLengthSqr, [ImVec2.by_value], :float],
      [:cImLengthSqrImVec4, :cImLengthSqrImVec4, [ImVec4.by_value], :float],
      [:cImInvLength, :cImInvLength, [ImVec2.by_value, :float], :float],
      [:cImTrunc, :cImTrunc, [:float], :float],
      [:cImTruncImVec2, :cImTruncImVec2, [ImVec2.by_value], ImVec2.by_value],
      [:cImFloor, :cImFloor, [:float], :float],
      [:cImFloorImVec2, :cImFloorImVec2, [ImVec2.by_value], ImVec2.by_value],
      [:cImTrunc64, :cImTrunc64, [:float], :float],
      [:cImRound64, :cImRound64, [:float], :float],
      [:cImModPositive, :cImModPositive, [:int, :int], :int],
      [:cImDot, :cImDot, [ImVec2.by_value, ImVec2.by_value], :float],
      [:cImRotate, :cImRotate, [ImVec2.by_value, :float, :float], ImVec2.by_value],
      [:cImLinearSweep, :cImLinearSweep, [:float, :float, :float], :float],
      [:cImLinearRemapClamp, :cImLinearRemapClamp, [:float, :float, :float, :float, :float], :float],
      [:cImMul, :cImMul, [ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImIsFloatAboveGuaranteedIntegerPrecision, :cImIsFloatAboveGuaranteedIntegerPrecision, [:float], :bool],
      [:cImExponentialMovingAverage, :cImExponentialMovingAverage, [:float, :float, :int], :float],
      [:cImBezierCubicCalc, :cImBezierCubicCalc, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float], ImVec2.by_value],
      [:cImBezierCubicClosestPoint, :cImBezierCubicClosestPoint, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int], ImVec2.by_value],
      [:cImBezierCubicClosestPointCasteljau, :cImBezierCubicClosestPointCasteljau, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float], ImVec2.by_value],
      [:cImBezierQuadraticCalc, :cImBezierQuadraticCalc, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :float], ImVec2.by_value],
      [:cImLineClosestPoint, :cImLineClosestPoint, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImTriangleContainsPoint, :cImTriangleContainsPoint, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], :bool],
      [:cImTriangleClosestPoint, :cImTriangleClosestPoint, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:cImTriangleBarycentricCoords, :cImTriangleBarycentricCoords, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer], :void],
      [:cImTriangleArea, :cImTriangleArea, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], :float],
      [:cImTriangleIsClockwise, :cImTriangleIsClockwise, [ImVec2.by_value, ImVec2.by_value, ImVec2.by_value], :bool],
      [:ImRect_GetCenter, :ImRect_GetCenter, [:pointer], ImVec2.by_value],
      [:ImRect_GetSize, :ImRect_GetSize, [:pointer], ImVec2.by_value],
      [:ImRect_GetWidth, :ImRect_GetWidth, [:pointer], :float],
      [:ImRect_GetHeight, :ImRect_GetHeight, [:pointer], :float],
      [:ImRect_GetArea, :ImRect_GetArea, [:pointer], :float],
      [:ImRect_GetTL, :ImRect_GetTL, [:pointer], ImVec2.by_value],
      [:ImRect_GetTR, :ImRect_GetTR, [:pointer], ImVec2.by_value],
      [:ImRect_GetBL, :ImRect_GetBL, [:pointer], ImVec2.by_value],
      [:ImRect_GetBR, :ImRect_GetBR, [:pointer], ImVec2.by_value],
      [:ImRect_Contains, :ImRect_Contains, [:pointer, ImVec2.by_value], :bool],
      [:ImRect_ContainsImRect, :ImRect_ContainsImRect, [:pointer, ImRect.by_value], :bool],
      [:ImRect_ContainsWithPad, :ImRect_ContainsWithPad, [:pointer, ImVec2.by_value, ImVec2.by_value], :bool],
      [:ImRect_Overlaps, :ImRect_Overlaps, [:pointer, ImRect.by_value], :bool],
      [:ImRect_Add, :ImRect_Add, [:pointer, ImVec2.by_value], :void],
      [:ImRect_AddImRect, :ImRect_AddImRect, [:pointer, ImRect.by_value], :void],
      [:ImRect_Expand, :ImRect_Expand, [:pointer, :float], :void],
      [:ImRect_ExpandImVec2, :ImRect_ExpandImVec2, [:pointer, ImVec2.by_value], :void],
      [:ImRect_Translate, :ImRect_Translate, [:pointer, ImVec2.by_value], :void],
      [:ImRect_TranslateX, :ImRect_TranslateX, [:pointer, :float], :void],
      [:ImRect_TranslateY, :ImRect_TranslateY, [:pointer, :float], :void],
      [:ImRect_ClipWith, :ImRect_ClipWith, [:pointer, ImRect.by_value], :void],
      [:ImRect_ClipWithFull, :ImRect_ClipWithFull, [:pointer, ImRect.by_value], :void],
      [:ImRect_IsInverted, :ImRect_IsInverted, [:pointer], :bool],
      [:ImRect_ToVec4, :ImRect_ToVec4, [:pointer], ImVec4.by_value],
      [:cImBitArrayGetStorageSizeInBytes, :cImBitArrayGetStorageSizeInBytes, [:int], :size_t],
      [:cImBitArrayClearAllBits, :cImBitArrayClearAllBits, [:pointer, :int], :void],
      [:cImBitArrayTestBit, :cImBitArrayTestBit, [:pointer, :int], :bool],
      [:cImBitArrayClearBit, :cImBitArrayClearBit, [:pointer, :int], :void],
      [:cImBitArraySetBit, :cImBitArraySetBit, [:pointer, :int], :void],
      [:cImBitArraySetBitRange, :cImBitArraySetBitRange, [:pointer, :int, :int], :void],
      [:ImBitVector_Create, :ImBitVector_Create, [:pointer, :int], :void],
      [:ImBitVector_Clear, :ImBitVector_Clear, [:pointer], :void],
      [:ImBitVector_TestBit, :ImBitVector_TestBit, [:pointer, :int], :bool],
      [:ImBitVector_SetBit, :ImBitVector_SetBit, [:pointer, :int], :void],
      [:ImBitVector_ClearBit, :ImBitVector_ClearBit, [:pointer, :int], :void],
      [:ImStableVector_ImFontBaked_32_clear, :ImStableVector_ImFontBaked_32_clear, [:pointer], :void],
      [:ImStableVector_ImFontBaked_32_resize, :ImStableVector_ImFontBaked_32_resize, [:pointer, :int], :void],
      [:ImStableVector_ImFontBaked_32_reserve, :ImStableVector_ImFontBaked_32_reserve, [:pointer, :int], :void],
      [:ImGuiTextIndex_clear, :ImGuiTextIndex_clear, [:pointer], :void],
      [:ImGuiTextIndex_size, :ImGuiTextIndex_size, [:pointer], :int],
      [:ImGuiTextIndex_get_line_begin, :ImGuiTextIndex_get_line_begin, [:pointer, :pointer, :int], :pointer],
      [:ImGuiTextIndex_get_line_end, :ImGuiTextIndex_get_line_end, [:pointer, :pointer, :int], :pointer],
      [:ImGuiTextIndex_append, :ImGuiTextIndex_append, [:pointer, :pointer, :int, :int], :void],
      [:cImLowerBound, :cImLowerBound, [:pointer, :pointer, :uint], :pointer],
      [:ImDrawListSharedData_SetCircleTessellationMaxError, :ImDrawListSharedData_SetCircleTessellationMaxError, [:pointer, :float], :void],
      [:ImGuiStyleVarInfo_GetVarPtr, :ImGuiStyleVarInfo_GetVarPtr, [:pointer, :pointer], :pointer],
      [:ImGuiMenuColumns_Update, :ImGuiMenuColumns_Update, [:pointer, :float, :bool], :void],
      [:ImGuiMenuColumns_DeclColumns, :ImGuiMenuColumns_DeclColumns, [:pointer, :float, :float, :float, :float], :float],
      [:ImGuiMenuColumns_CalcNextTotalWidth, :ImGuiMenuColumns_CalcNextTotalWidth, [:pointer, :bool], :void],
      [:ImGuiInputTextDeactivatedState_ClearFreeMemory, :ImGuiInputTextDeactivatedState_ClearFreeMemory, [:pointer], :void],
      [:ImGuiInputTextState_ClearText, :ImGuiInputTextState_ClearText, [:pointer], :void],
      [:ImGuiInputTextState_ClearFreeMemory, :ImGuiInputTextState_ClearFreeMemory, [:pointer], :void],
      [:ImGuiInputTextState_OnKeyPressed, :ImGuiInputTextState_OnKeyPressed, [:pointer, :int], :void],
      [:ImGuiInputTextState_OnCharPressed, :ImGuiInputTextState_OnCharPressed, [:pointer, :uint], :void],
      [:ImGuiInputTextState_GetPreferredOffsetX, :ImGuiInputTextState_GetPreferredOffsetX, [:pointer], :float],
      [:ImGuiInputTextState_GetText, :ImGuiInputTextState_GetText, [:pointer], :pointer],
      [:ImGuiInputTextState_CursorAnimReset, :ImGuiInputTextState_CursorAnimReset, [:pointer], :void],
      [:ImGuiInputTextState_CursorClamp, :ImGuiInputTextState_CursorClamp, [:pointer], :void],
      [:ImGuiInputTextState_HasSelection, :ImGuiInputTextState_HasSelection, [:pointer], :bool],
      [:ImGuiInputTextState_ClearSelection, :ImGuiInputTextState_ClearSelection, [:pointer], :void],
      [:ImGuiInputTextState_GetCursorPos, :ImGuiInputTextState_GetCursorPos, [:pointer], :int],
      [:ImGuiInputTextState_GetSelectionStart, :ImGuiInputTextState_GetSelectionStart, [:pointer], :int],
      [:ImGuiInputTextState_GetSelectionEnd, :ImGuiInputTextState_GetSelectionEnd, [:pointer], :int],
      [:ImGuiInputTextState_SetSelection, :ImGuiInputTextState_SetSelection, [:pointer, :int, :int], :void],
      [:ImGuiInputTextState_SelectAll, :ImGuiInputTextState_SelectAll, [:pointer], :void],
      [:ImGuiInputTextState_ReloadUserBufAndSelectAll, :ImGuiInputTextState_ReloadUserBufAndSelectAll, [:pointer], :void],
      [:ImGuiInputTextState_ReloadUserBufAndKeepSelection, :ImGuiInputTextState_ReloadUserBufAndKeepSelection, [:pointer], :void],
      [:ImGuiInputTextState_ReloadUserBufAndMoveToEnd, :ImGuiInputTextState_ReloadUserBufAndMoveToEnd, [:pointer], :void],
      [:ImGuiNextWindowData_ClearFlags, :ImGuiNextWindowData_ClearFlags, [:pointer], :void],
      [:ImGuiNextItemData_ClearFlags, :ImGuiNextItemData_ClearFlags, [:pointer], :void],
      [:ImGuiKeyRoutingTable_Clear, :ImGuiKeyRoutingTable_Clear, [:pointer], :void],
      [:ImGuiListClipperRange_FromIndices, :ImGuiListClipperRange_FromIndices, [:int, :int], ImGuiListClipperRange.by_value],
      [:ImGuiListClipperRange_FromPositions, :ImGuiListClipperRange_FromPositions, [:float, :float, :int, :int], ImGuiListClipperRange.by_value],
      [:ImGuiListClipperData_Reset, :ImGuiListClipperData_Reset, [:pointer, :pointer], :void],
      [:ImGuiNavItemData_Clear, :ImGuiNavItemData_Clear, [:pointer], :void],
      [:ImGuiTypingSelectState_Clear, :ImGuiTypingSelectState_Clear, [:pointer], :void],
      [:ImGuiMultiSelectTempData_Clear, :ImGuiMultiSelectTempData_Clear, [:pointer], :void],
      [:ImGuiMultiSelectTempData_ClearIO, :ImGuiMultiSelectTempData_ClearIO, [:pointer], :void],
      [:ImGuiViewportP_CalcWorkRectPos, :ImGuiViewportP_CalcWorkRectPos, [:pointer, ImVec2.by_value], ImVec2.by_value],
      [:ImGuiViewportP_CalcWorkRectSize, :ImGuiViewportP_CalcWorkRectSize, [:pointer, ImVec2.by_value, ImVec2.by_value], ImVec2.by_value],
      [:ImGuiViewportP_UpdateWorkRect, :ImGuiViewportP_UpdateWorkRect, [:pointer], :void],
      [:ImGuiViewportP_GetMainRect, :ImGuiViewportP_GetMainRect, [:pointer], ImRect.by_value],
      [:ImGuiViewportP_GetWorkRect, :ImGuiViewportP_GetWorkRect, [:pointer], ImRect.by_value],
      [:ImGuiViewportP_GetBuildWorkRect, :ImGuiViewportP_GetBuildWorkRect, [:pointer], ImRect.by_value],
      [:ImGuiWindowSettings_GetName, :ImGuiWindowSettings_GetName, [:pointer], :pointer],
      [:ImGuiWindow_GetIDStr, :ImGuiWindow_GetIDStr, [:pointer, :pointer], :uint],
      [:ImGuiWindow_GetIDStrEx, :ImGuiWindow_GetIDStrEx, [:pointer, :pointer, :pointer], :uint],
      [:ImGuiWindow_GetID, :ImGuiWindow_GetID, [:pointer, :pointer], :uint],
      [:ImGuiWindow_GetIDInt, :ImGuiWindow_GetIDInt, [:pointer, :int], :uint],
      [:ImGuiWindow_GetIDFromPos, :ImGuiWindow_GetIDFromPos, [:pointer, ImVec2.by_value], :uint],
      [:ImGuiWindow_GetIDFromRectangle, :ImGuiWindow_GetIDFromRectangle, [:pointer, ImRect.by_value], :uint],
      [:ImGuiWindow_Rect, :ImGuiWindow_Rect, [:pointer], ImRect.by_value],
      [:ImGuiWindow_TitleBarRect, :ImGuiWindow_TitleBarRect, [:pointer], ImRect.by_value],
      [:ImGuiWindow_MenuBarRect, :ImGuiWindow_MenuBarRect, [:pointer], ImRect.by_value],
      [:ImGuiTableSettings_GetColumnSettings, :ImGuiTableSettings_GetColumnSettings, [:pointer], :pointer],
      [:ImGui_GetIOImGuiContextPtr, :ImGui_GetIOImGuiContextPtr, [:pointer], :pointer],
      [:ImGui_GetPlatformIOImGuiContextPtr, :ImGui_GetPlatformIOImGuiContextPtr, [:pointer], :pointer],
      [:ImGui_GetScale, :ImGui_GetScale, [], :float],
      [:ImGui_GetCurrentWindowRead, :ImGui_GetCurrentWindowRead, [], :pointer],
      [:ImGui_GetCurrentWindow, :ImGui_GetCurrentWindow, [], :pointer],
      [:ImGui_FindWindowByID, :ImGui_FindWindowByID, [:uint], :pointer],
      [:ImGui_FindWindowByName, :ImGui_FindWindowByName, [:pointer], :pointer],
      [:ImGui_UpdateWindowParentAndRootLinks, :ImGui_UpdateWindowParentAndRootLinks, [:pointer, :int, :pointer], :void],
      [:ImGui_UpdateWindowSkipRefresh, :ImGui_UpdateWindowSkipRefresh, [:pointer], :void],
      [:ImGui_CalcWindowNextAutoFitSize, :ImGui_CalcWindowNextAutoFitSize, [:pointer], ImVec2.by_value],
      [:ImGui_IsWindowChildOf, :ImGui_IsWindowChildOf, [:pointer, :pointer, :bool], :bool],
      [:ImGui_IsWindowInBeginStack, :ImGui_IsWindowInBeginStack, [:pointer], :bool],
      [:ImGui_IsWindowWithinBeginStackOf, :ImGui_IsWindowWithinBeginStackOf, [:pointer, :pointer], :bool],
      [:ImGui_IsWindowAbove, :ImGui_IsWindowAbove, [:pointer, :pointer], :bool],
      [:ImGui_IsWindowNavFocusable, :ImGui_IsWindowNavFocusable, [:pointer], :bool],
      [:ImGui_SetWindowPosImGuiWindowPtr, :ImGui_SetWindowPosImGuiWindowPtr, [:pointer, ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowSizeImGuiWindowPtr, :ImGui_SetWindowSizeImGuiWindowPtr, [:pointer, ImVec2.by_value, :int], :void],
      [:ImGui_SetWindowCollapsedImGuiWindowPtr, :ImGui_SetWindowCollapsedImGuiWindowPtr, [:pointer, :bool, :int], :void],
      [:ImGui_SetWindowHitTestHole, :ImGui_SetWindowHitTestHole, [:pointer, ImVec2.by_value, ImVec2.by_value], :void],
      [:ImGui_SetWindowHiddenAndSkipItemsForCurrentFrame, :ImGui_SetWindowHiddenAndSkipItemsForCurrentFrame, [:pointer], :void],
      [:ImGui_SetWindowParentWindowForFocusRoute, :ImGui_SetWindowParentWindowForFocusRoute, [:pointer, :pointer], :void],
      [:ImGui_WindowRectAbsToRel, :ImGui_WindowRectAbsToRel, [:pointer, ImRect.by_value], ImRect.by_value],
      [:ImGui_WindowRectRelToAbs, :ImGui_WindowRectRelToAbs, [:pointer, ImRect.by_value], ImRect.by_value],
      [:ImGui_WindowPosAbsToRel, :ImGui_WindowPosAbsToRel, [:pointer, ImVec2.by_value], ImVec2.by_value],
      [:ImGui_WindowPosRelToAbs, :ImGui_WindowPosRelToAbs, [:pointer, ImVec2.by_value], ImVec2.by_value],
      [:ImGui_FocusWindow, :ImGui_FocusWindow, [:pointer, :int], :void],
      [:ImGui_FocusTopMostWindowUnderOne, :ImGui_FocusTopMostWindowUnderOne, [:pointer, :pointer, :pointer, :int], :void],
      [:ImGui_BringWindowToFocusFront, :ImGui_BringWindowToFocusFront, [:pointer], :void],
      [:ImGui_BringWindowToDisplayFront, :ImGui_BringWindowToDisplayFront, [:pointer], :void],
      [:ImGui_BringWindowToDisplayBack, :ImGui_BringWindowToDisplayBack, [:pointer], :void],
      [:ImGui_BringWindowToDisplayBehind, :ImGui_BringWindowToDisplayBehind, [:pointer, :pointer], :void],
      [:ImGui_FindWindowDisplayIndex, :ImGui_FindWindowDisplayIndex, [:pointer], :int],
      [:ImGui_FindBottomMostVisibleWindowWithinBeginStack, :ImGui_FindBottomMostVisibleWindowWithinBeginStack, [:pointer], :pointer],
      [:ImGui_SetNextWindowRefreshPolicy, :ImGui_SetNextWindowRefreshPolicy, [:int], :void],
      [:ImGui_RegisterUserTexture, :ImGui_RegisterUserTexture, [:pointer], :void],
      [:ImGui_UnregisterUserTexture, :ImGui_UnregisterUserTexture, [:pointer], :void],
      [:ImGui_RegisterFontAtlas, :ImGui_RegisterFontAtlas, [:pointer], :void],
      [:ImGui_UnregisterFontAtlas, :ImGui_UnregisterFontAtlas, [:pointer], :void],
      [:ImGui_SetCurrentFont, :ImGui_SetCurrentFont, [:pointer, :float, :float], :void],
      [:ImGui_UpdateCurrentFontSize, :ImGui_UpdateCurrentFontSize, [:float], :void],
      [:ImGui_SetFontRasterizerDensity, :ImGui_SetFontRasterizerDensity, [:float], :void],
      [:ImGui_GetFontRasterizerDensity, :ImGui_GetFontRasterizerDensity, [], :float],
      [:ImGui_GetRoundedFontSize, :ImGui_GetRoundedFontSize, [:float], :float],
      [:ImGui_GetDefaultFont, :ImGui_GetDefaultFont, [], :pointer],
      [:ImGui_PushPasswordFont, :ImGui_PushPasswordFont, [], :void],
      [:ImGui_PopPasswordFont, :ImGui_PopPasswordFont, [], :void],
      [:ImGui_GetForegroundDrawListImGuiWindowPtr, :ImGui_GetForegroundDrawListImGuiWindowPtr, [:pointer], :pointer],
      [:ImGui_GetBackgroundDrawListImGuiViewportPtr, :ImGui_GetBackgroundDrawListImGuiViewportPtr, [:pointer], :pointer],
      [:ImGui_GetForegroundDrawListImGuiViewportPtr, :ImGui_GetForegroundDrawListImGuiViewportPtr, [:pointer], :pointer],
      [:ImGui_AddDrawListToDrawDataEx, :ImGui_AddDrawListToDrawDataEx, [:pointer, :pointer, :pointer], :void],
      [:ImGui_Initialize, :ImGui_Initialize, [], :void],
      [:ImGui_Shutdown, :ImGui_Shutdown, [], :void],
      [:ImGui_SetContextName, :ImGui_SetContextName, [:pointer, :pointer], :void],
      [:ImGui_AddContextHook, :ImGui_AddContextHook, [:pointer, :pointer], :uint],
      [:ImGui_RemoveContextHook, :ImGui_RemoveContextHook, [:pointer, :uint], :void],
      [:ImGui_CallContextHooks, :ImGui_CallContextHooks, [:pointer, :int], :void],
      [:ImGui_UpdateInputEvents, :ImGui_UpdateInputEvents, [:bool], :void],
      [:ImGui_UpdateHoveredWindowAndCaptureFlags, :ImGui_UpdateHoveredWindowAndCaptureFlags, [ImVec2.by_value], :void],
      [:ImGui_FindHoveredWindowEx, :ImGui_FindHoveredWindowEx, [ImVec2.by_value, :bool, :pointer, :pointer], :void],
      [:ImGui_StartMouseMovingWindow, :ImGui_StartMouseMovingWindow, [:pointer], :void],
      [:ImGui_StopMouseMovingWindow, :ImGui_StopMouseMovingWindow, [], :void],
      [:ImGui_UpdateMouseMovingWindowNewFrame, :ImGui_UpdateMouseMovingWindowNewFrame, [], :void],
      [:ImGui_UpdateMouseMovingWindowEndFrame, :ImGui_UpdateMouseMovingWindowEndFrame, [], :void],
      [:ImGui_GetWindowViewport, :ImGui_GetWindowViewport, [], :pointer],
      [:ImGui_ScaleWindowsInViewport, :ImGui_ScaleWindowsInViewport, [:pointer, :float], :void],
      [:ImGui_SetWindowViewport, :ImGui_SetWindowViewport, [:pointer, :pointer], :void],
      [:ImGui_MarkIniSettingsDirty, :ImGui_MarkIniSettingsDirty, [], :void],
      [:ImGui_MarkIniSettingsDirtyImGuiWindowPtr, :ImGui_MarkIniSettingsDirtyImGuiWindowPtr, [:pointer], :void],
      [:ImGui_ClearIniSettings, :ImGui_ClearIniSettings, [], :void],
      [:ImGui_AddSettingsHandler, :ImGui_AddSettingsHandler, [:pointer], :void],
      [:ImGui_RemoveSettingsHandler, :ImGui_RemoveSettingsHandler, [:pointer], :void],
      [:ImGui_FindSettingsHandler, :ImGui_FindSettingsHandler, [:pointer], :pointer],
      [:ImGui_CreateNewWindowSettings, :ImGui_CreateNewWindowSettings, [:pointer], :pointer],
      [:ImGui_FindWindowSettingsByID, :ImGui_FindWindowSettingsByID, [:uint], :pointer],
      [:ImGui_FindWindowSettingsByWindow, :ImGui_FindWindowSettingsByWindow, [:pointer], :pointer],
      [:ImGui_ClearWindowSettings, :ImGui_ClearWindowSettings, [:pointer], :void],
      [:ImGui_LocalizeRegisterEntries, :ImGui_LocalizeRegisterEntries, [:pointer, :int], :void],
      [:ImGui_LocalizeGetMsg, :ImGui_LocalizeGetMsg, [:int], :pointer],
      [:ImGui_SetScrollXImGuiWindowPtr, :ImGui_SetScrollXImGuiWindowPtr, [:pointer, :float], :void],
      [:ImGui_SetScrollYImGuiWindowPtr, :ImGui_SetScrollYImGuiWindowPtr, [:pointer, :float], :void],
      [:ImGui_SetScrollFromPosXImGuiWindowPtr, :ImGui_SetScrollFromPosXImGuiWindowPtr, [:pointer, :float, :float], :void],
      [:ImGui_SetScrollFromPosYImGuiWindowPtr, :ImGui_SetScrollFromPosYImGuiWindowPtr, [:pointer, :float, :float], :void],
      [:ImGui_ScrollToItem, :ImGui_ScrollToItem, [:int], :void],
      [:ImGui_ScrollToRect, :ImGui_ScrollToRect, [:pointer, ImRect.by_value, :int], :void],
      [:ImGui_ScrollToRectEx, :ImGui_ScrollToRectEx, [:pointer, ImRect.by_value, :int], ImVec2.by_value],
      [:ImGui_ScrollToBringRectIntoView, :ImGui_ScrollToBringRectIntoView, [:pointer, ImRect.by_value], :void],
      [:ImGui_GetItemStatusFlags, :ImGui_GetItemStatusFlags, [], :int],
      [:ImGui_GetActiveID, :ImGui_GetActiveID, [], :uint],
      [:ImGui_GetFocusID, :ImGui_GetFocusID, [], :uint],
      [:ImGui_SetActiveID, :ImGui_SetActiveID, [:uint, :pointer], :void],
      [:ImGui_SetFocusID, :ImGui_SetFocusID, [:uint, :pointer], :void],
      [:ImGui_ClearActiveID, :ImGui_ClearActiveID, [], :void],
      [:ImGui_GetHoveredID, :ImGui_GetHoveredID, [], :uint],
      [:ImGui_SetHoveredID, :ImGui_SetHoveredID, [:uint], :void],
      [:ImGui_KeepAliveID, :ImGui_KeepAliveID, [:uint], :void],
      [:ImGui_MarkItemEdited, :ImGui_MarkItemEdited, [:uint], :void],
      [:ImGui_PushOverrideID, :ImGui_PushOverrideID, [:uint], :void],
      [:ImGui_GetIDWithSeedStr, :ImGui_GetIDWithSeedStr, [:pointer, :pointer, :uint], :uint],
      [:ImGui_GetIDWithSeed, :ImGui_GetIDWithSeed, [:int, :uint], :uint],
      [:ImGui_ItemSize, :ImGui_ItemSize, [ImVec2.by_value], :void],
      [:ImGui_ItemSizeEx, :ImGui_ItemSizeEx, [ImVec2.by_value, :float], :void],
      [:ImGui_ItemSizeImRect, :ImGui_ItemSizeImRect, [ImRect.by_value], :void],
      [:ImGui_ItemSizeImRectEx, :ImGui_ItemSizeImRectEx, [ImRect.by_value, :float], :void],
      [:ImGui_ItemAdd, :ImGui_ItemAdd, [ImRect.by_value, :uint], :bool],
      [:ImGui_ItemAddEx, :ImGui_ItemAddEx, [ImRect.by_value, :uint, :pointer, :int], :bool],
      [:ImGui_ItemHoverable, :ImGui_ItemHoverable, [ImRect.by_value, :uint, :int], :bool],
      [:ImGui_IsWindowContentHoverable, :ImGui_IsWindowContentHoverable, [:pointer, :int], :bool],
      [:ImGui_IsClippedEx, :ImGui_IsClippedEx, [ImRect.by_value, :uint], :bool],
      [:ImGui_SetLastItemData, :ImGui_SetLastItemData, [:uint, :int, :int, ImRect.by_value], :void],
      [:ImGui_CalcItemSize, :ImGui_CalcItemSize, [ImVec2.by_value, :float, :float], ImVec2.by_value],
      [:ImGui_CalcWrapWidthForPos, :ImGui_CalcWrapWidthForPos, [ImVec2.by_value, :float], :float],
      [:ImGui_PushMultiItemsWidths, :ImGui_PushMultiItemsWidths, [:int, :float], :void],
      [:ImGui_ShrinkWidths, :ImGui_ShrinkWidths, [:pointer, :int, :float, :float], :void],
      [:ImGui_CalcClipRectVisibleItemsY, :ImGui_CalcClipRectVisibleItemsY, [ImRect.by_value, ImVec2.by_value, :float, :pointer, :pointer], :void],
      [:ImGui_GetStyleVarInfo, :ImGui_GetStyleVarInfo, [:int], :pointer],
      [:ImGui_BeginDisabledOverrideReenable, :ImGui_BeginDisabledOverrideReenable, [], :void],
      [:ImGui_EndDisabledOverrideReenable, :ImGui_EndDisabledOverrideReenable, [], :void],
      [:ImGui_LogBegin, :ImGui_LogBegin, [:int, :int], :void],
      [:ImGui_LogToBuffer, :ImGui_LogToBuffer, [], :void],
      [:ImGui_LogToBufferEx, :ImGui_LogToBufferEx, [:int], :void],
      [:ImGui_LogRenderedText, :ImGui_LogRenderedText, [:pointer, :pointer], :void],
      [:ImGui_LogRenderedTextEx, :ImGui_LogRenderedTextEx, [:pointer, :pointer, :pointer], :void],
      [:ImGui_LogSetNextTextDecoration, :ImGui_LogSetNextTextDecoration, [:pointer, :pointer], :void],
      [:ImGui_BeginChildEx, :ImGui_BeginChildEx, [:pointer, :uint, ImVec2.by_value, :int, :int], :bool],
      [:ImGui_BeginPopupEx, :ImGui_BeginPopupEx, [:uint, :int], :bool],
      [:ImGui_BeginPopupMenuEx, :ImGui_BeginPopupMenuEx, [:uint, :pointer, :int], :bool],
      [:ImGui_OpenPopupEx, :ImGui_OpenPopupEx, [:uint], :void],
      [:ImGui_OpenPopupExEx, :ImGui_OpenPopupExEx, [:uint, :int], :void],
      [:ImGui_ClosePopupToLevel, :ImGui_ClosePopupToLevel, [:int, :bool], :void],
      [:ImGui_ClosePopupsOverWindow, :ImGui_ClosePopupsOverWindow, [:pointer, :bool], :void],
      [:ImGui_ClosePopupsExceptModals, :ImGui_ClosePopupsExceptModals, [], :void],
      [:ImGui_IsPopupOpenID, :ImGui_IsPopupOpenID, [:uint, :int], :bool],
      [:ImGui_GetPopupAllowedExtentRect, :ImGui_GetPopupAllowedExtentRect, [:pointer], ImRect.by_value],
      [:ImGui_GetTopMostPopupModal, :ImGui_GetTopMostPopupModal, [], :pointer],
      [:ImGui_GetTopMostAndVisiblePopupModal, :ImGui_GetTopMostAndVisiblePopupModal, [], :pointer],
      [:ImGui_FindBlockingModal, :ImGui_FindBlockingModal, [:pointer], :pointer],
      [:ImGui_FindBestWindowPosForPopup, :ImGui_FindBestWindowPosForPopup, [:pointer], ImVec2.by_value],
      [:ImGui_FindBestWindowPosForPopupEx, :ImGui_FindBestWindowPosForPopupEx, [ImVec2.by_value, ImVec2.by_value, :pointer, ImRect.by_value, ImRect.by_value, :int], ImVec2.by_value],
      [:ImGui_GetMouseButtonFromPopupFlags, :ImGui_GetMouseButtonFromPopupFlags, [:int], :int],
      [:ImGui_IsPopupOpenRequestForItem, :ImGui_IsPopupOpenRequestForItem, [:int, :uint], :bool],
      [:ImGui_IsPopupOpenRequestForWindow, :ImGui_IsPopupOpenRequestForWindow, [:int], :bool],
      [:ImGui_BeginTooltipEx, :ImGui_BeginTooltipEx, [:int, :int], :bool],
      [:ImGui_BeginTooltipHidden, :ImGui_BeginTooltipHidden, [], :bool],
      [:ImGui_BeginViewportSideBar, :ImGui_BeginViewportSideBar, [:pointer, :pointer, :int, :float, :int], :bool],
      [:ImGui_BeginMenuWithIcon, :ImGui_BeginMenuWithIcon, [:pointer, :pointer], :bool],
      [:ImGui_BeginMenuWithIconEx, :ImGui_BeginMenuWithIconEx, [:pointer, :pointer, :bool], :bool],
      [:ImGui_MenuItemWithIcon, :ImGui_MenuItemWithIcon, [:pointer, :pointer], :bool],
      [:ImGui_MenuItemWithIconEx, :ImGui_MenuItemWithIconEx, [:pointer, :pointer, :pointer, :bool, :bool], :bool],
      [:ImGui_BeginComboPopup, :ImGui_BeginComboPopup, [:uint, ImRect.by_value, :int], :bool],
      [:ImGui_BeginComboPreview, :ImGui_BeginComboPreview, [], :bool],
      [:ImGui_EndComboPreview, :ImGui_EndComboPreview, [], :void],
      [:ImGui_NavInitWindow, :ImGui_NavInitWindow, [:pointer, :bool], :void],
      [:ImGui_NavInitRequestApplyResult, :ImGui_NavInitRequestApplyResult, [], :void],
      [:ImGui_NavMoveRequestButNoResultYet, :ImGui_NavMoveRequestButNoResultYet, [], :bool],
      [:ImGui_NavMoveRequestSubmit, :ImGui_NavMoveRequestSubmit, [:int, :int, :int, :int], :void],
      [:ImGui_NavMoveRequestForward, :ImGui_NavMoveRequestForward, [:int, :int, :int, :int], :void],
      [:ImGui_NavMoveRequestResolveWithLastItem, :ImGui_NavMoveRequestResolveWithLastItem, [:pointer], :void],
      [:ImGui_NavMoveRequestResolveWithPastTreeNode, :ImGui_NavMoveRequestResolveWithPastTreeNode, [:pointer, :pointer], :void],
      [:ImGui_NavMoveRequestCancel, :ImGui_NavMoveRequestCancel, [], :void],
      [:ImGui_NavMoveRequestApplyResult, :ImGui_NavMoveRequestApplyResult, [], :void],
      [:ImGui_NavMoveRequestTryWrapping, :ImGui_NavMoveRequestTryWrapping, [:pointer, :int], :void],
      [:ImGui_NavHighlightActivated, :ImGui_NavHighlightActivated, [:uint], :void],
      [:ImGui_NavClearPreferredPosForAxis, :ImGui_NavClearPreferredPosForAxis, [:int], :void],
      [:ImGui_SetNavCursorVisibleAfterMove, :ImGui_SetNavCursorVisibleAfterMove, [], :void],
      [:ImGui_NavUpdateCurrentWindowIsScrollPushableX, :ImGui_NavUpdateCurrentWindowIsScrollPushableX, [], :void],
      [:ImGui_SetNavWindow, :ImGui_SetNavWindow, [:pointer], :void],
      [:ImGui_SetNavID, :ImGui_SetNavID, [:uint, :int, :uint, ImRect.by_value], :void],
      [:ImGui_SetNavFocusScope, :ImGui_SetNavFocusScope, [:uint], :void],
      [:ImGui_FocusItem, :ImGui_FocusItem, [], :void],
      [:ImGui_ActivateItemByID, :ImGui_ActivateItemByID, [:uint], :void],
      [:ImGui_IsNamedKey, :ImGui_IsNamedKey, [:int], :bool],
      [:ImGui_IsNamedKeyOrMod, :ImGui_IsNamedKeyOrMod, [:int], :bool],
      [:ImGui_IsLegacyKey, :ImGui_IsLegacyKey, [:int], :bool],
      [:ImGui_IsKeyboardKey, :ImGui_IsKeyboardKey, [:int], :bool],
      [:ImGui_IsGamepadKey, :ImGui_IsGamepadKey, [:int], :bool],
      [:ImGui_IsMouseKey, :ImGui_IsMouseKey, [:int], :bool],
      [:ImGui_IsAliasKey, :ImGui_IsAliasKey, [:int], :bool],
      [:ImGui_IsLRModKey, :ImGui_IsLRModKey, [:int], :bool],
      [:ImGui_FixupKeyChord, :ImGui_FixupKeyChord, [:int], :int],
      [:ImGui_ConvertSingleModFlagToKey, :ImGui_ConvertSingleModFlagToKey, [:int], :int],
      [:ImGui_GetKeyDataImGuiContextPtr, :ImGui_GetKeyDataImGuiContextPtr, [:pointer, :int], :pointer],
      [:ImGui_GetKeyData, :ImGui_GetKeyData, [:int], :pointer],
      [:ImGui_GetKeyChordName, :ImGui_GetKeyChordName, [:int], :pointer],
      [:ImGui_MouseButtonToKey, :ImGui_MouseButtonToKey, [:int], :int],
      [:ImGui_IsMouseDragPastThreshold, :ImGui_IsMouseDragPastThreshold, [:int], :bool],
      [:ImGui_IsMouseDragPastThresholdEx, :ImGui_IsMouseDragPastThresholdEx, [:int, :float], :bool],
      [:ImGui_GetKeyMagnitude2d, :ImGui_GetKeyMagnitude2d, [:int, :int, :int, :int], ImVec2.by_value],
      [:ImGui_GetNavTweakPressedAmount, :ImGui_GetNavTweakPressedAmount, [:int], :float],
      [:ImGui_CalcTypematicRepeatAmount, :ImGui_CalcTypematicRepeatAmount, [:float, :float, :float, :float], :int],
      [:ImGui_GetTypematicRepeatRate, :ImGui_GetTypematicRepeatRate, [:int, :pointer, :pointer], :void],
      [:ImGui_TeleportMousePos, :ImGui_TeleportMousePos, [ImVec2.by_value], :void],
      [:ImGui_SetActiveIdUsingAllKeyboardKeys, :ImGui_SetActiveIdUsingAllKeyboardKeys, [], :void],
      [:ImGui_IsActiveIdUsingNavDir, :ImGui_IsActiveIdUsingNavDir, [:int], :bool],
      [:ImGui_GetKeyOwner, :ImGui_GetKeyOwner, [:int], :uint],
      [:ImGui_SetKeyOwner, :ImGui_SetKeyOwner, [:int, :uint, :int], :void],
      [:ImGui_SetKeyOwnersForKeyChord, :ImGui_SetKeyOwnersForKeyChord, [:int, :uint, :int], :void],
      [:ImGui_SetItemKeyOwnerImGuiInputFlags, :ImGui_SetItemKeyOwnerImGuiInputFlags, [:int, :int], :void],
      [:ImGui_TestKeyOwner, :ImGui_TestKeyOwner, [:int, :uint], :bool],
      [:ImGui_GetKeyOwnerData, :ImGui_GetKeyOwnerData, [:pointer, :int], :pointer],
      [:ImGui_IsKeyDownID, :ImGui_IsKeyDownID, [:int, :uint], :bool],
      [:ImGui_IsKeyPressedImGuiInputFlags, :ImGui_IsKeyPressedImGuiInputFlags, [:int, :int], :bool],
      [:ImGui_IsKeyPressedImGuiInputFlagsEx, :ImGui_IsKeyPressedImGuiInputFlagsEx, [:int, :int, :uint], :bool],
      [:ImGui_IsKeyReleasedID, :ImGui_IsKeyReleasedID, [:int, :uint], :bool],
      [:ImGui_IsKeyChordPressedImGuiInputFlags, :ImGui_IsKeyChordPressedImGuiInputFlags, [:int, :int], :bool],
      [:ImGui_IsKeyChordPressedImGuiInputFlagsEx, :ImGui_IsKeyChordPressedImGuiInputFlagsEx, [:int, :int, :uint], :bool],
      [:ImGui_IsMouseDownID, :ImGui_IsMouseDownID, [:int, :uint], :bool],
      [:ImGui_IsMouseClickedImGuiInputFlags, :ImGui_IsMouseClickedImGuiInputFlags, [:int, :int], :bool],
      [:ImGui_IsMouseClickedImGuiInputFlagsEx, :ImGui_IsMouseClickedImGuiInputFlagsEx, [:int, :int, :uint], :bool],
      [:ImGui_IsMouseReleasedID, :ImGui_IsMouseReleasedID, [:int, :uint], :bool],
      [:ImGui_IsMouseDoubleClickedID, :ImGui_IsMouseDoubleClickedID, [:int, :uint], :bool],
      [:ImGui_ShortcutID, :ImGui_ShortcutID, [:int, :int, :uint], :bool],
      [:ImGui_SetShortcutRouting, :ImGui_SetShortcutRouting, [:int, :int, :uint], :bool],
      [:ImGui_TestShortcutRouting, :ImGui_TestShortcutRouting, [:int, :uint], :bool],
      [:ImGui_GetShortcutRoutingData, :ImGui_GetShortcutRoutingData, [:int], :pointer],
      [:ImGui_PushFocusScope, :ImGui_PushFocusScope, [:uint], :void],
      [:ImGui_PopFocusScope, :ImGui_PopFocusScope, [], :void],
      [:ImGui_GetCurrentFocusScope, :ImGui_GetCurrentFocusScope, [], :uint],
      [:ImGui_IsDragDropActive, :ImGui_IsDragDropActive, [], :bool],
      [:ImGui_BeginDragDropTargetCustom, :ImGui_BeginDragDropTargetCustom, [ImRect.by_value, :uint], :bool],
      [:ImGui_BeginDragDropTargetViewport, :ImGui_BeginDragDropTargetViewport, [:pointer], :bool],
      [:ImGui_BeginDragDropTargetViewportEx, :ImGui_BeginDragDropTargetViewportEx, [:pointer, :pointer], :bool],
      [:ImGui_ClearDragDrop, :ImGui_ClearDragDrop, [], :void],
      [:ImGui_IsDragDropPayloadBeingAccepted, :ImGui_IsDragDropPayloadBeingAccepted, [], :bool],
      [:ImGui_RenderDragDropTargetRectForItem, :ImGui_RenderDragDropTargetRectForItem, [ImRect.by_value], :void],
      [:ImGui_RenderDragDropTargetRectEx, :ImGui_RenderDragDropTargetRectEx, [:pointer, ImRect.by_value], :void],
      [:ImGui_GetTypingSelectRequest, :ImGui_GetTypingSelectRequest, [], :pointer],
      [:ImGui_GetTypingSelectRequestEx, :ImGui_GetTypingSelectRequestEx, [:int], :pointer],
      [:ImGui_TypingSelectFindMatch, :ImGui_TypingSelectFindMatch, [:pointer, :int, :pointer, :pointer, :int], :int],
      [:ImGui_TypingSelectFindNextSingleCharMatch, :ImGui_TypingSelectFindNextSingleCharMatch, [:pointer, :int, :pointer, :pointer, :int], :int],
      [:ImGui_TypingSelectFindBestLeadingMatch, :ImGui_TypingSelectFindBestLeadingMatch, [:pointer, :int, :pointer, :pointer], :int],
      [:ImGui_BeginBoxSelect, :ImGui_BeginBoxSelect, [ImRect.by_value, :pointer, :uint, :int], :bool],
      [:ImGui_EndBoxSelect, :ImGui_EndBoxSelect, [ImRect.by_value, :int], :void],
      [:ImGui_MultiSelectItemHeader, :ImGui_MultiSelectItemHeader, [:uint, :pointer, :pointer], :void],
      [:ImGui_MultiSelectItemFooter, :ImGui_MultiSelectItemFooter, [:uint, :pointer, :pointer], :void],
      [:ImGui_MultiSelectAddSetAll, :ImGui_MultiSelectAddSetAll, [:pointer, :bool], :void],
      [:ImGui_MultiSelectAddSetRange, :ImGui_MultiSelectAddSetRange, [:pointer, :bool, :int, :int64, :int64], :void],
      [:ImGui_GetBoxSelectState, :ImGui_GetBoxSelectState, [:uint], :pointer],
      [:ImGui_GetMultiSelectState, :ImGui_GetMultiSelectState, [:uint], :pointer],
      [:ImGui_SetWindowClipRectBeforeSetChannel, :ImGui_SetWindowClipRectBeforeSetChannel, [:pointer, ImRect.by_value], :void],
      [:ImGui_BeginColumns, :ImGui_BeginColumns, [:pointer, :int, :int], :void],
      [:ImGui_EndColumns, :ImGui_EndColumns, [], :void],
      [:ImGui_PushColumnClipRect, :ImGui_PushColumnClipRect, [:int], :void],
      [:ImGui_PushColumnsBackground, :ImGui_PushColumnsBackground, [], :void],
      [:ImGui_PopColumnsBackground, :ImGui_PopColumnsBackground, [], :void],
      [:ImGui_GetColumnsID, :ImGui_GetColumnsID, [:pointer, :int], :uint],
      [:ImGui_FindOrCreateColumns, :ImGui_FindOrCreateColumns, [:pointer, :uint], :pointer],
      [:ImGui_GetColumnOffsetFromNorm, :ImGui_GetColumnOffsetFromNorm, [:pointer, :float], :float],
      [:ImGui_GetColumnNormFromOffset, :ImGui_GetColumnNormFromOffset, [:pointer, :float], :float],
      [:ImGui_TableOpenContextMenu, :ImGui_TableOpenContextMenu, [], :void],
      [:ImGui_TableOpenContextMenuEx, :ImGui_TableOpenContextMenuEx, [:int], :void],
      [:ImGui_TableSetColumnWidth, :ImGui_TableSetColumnWidth, [:int, :float], :void],
      [:ImGui_TableSetColumnSortDirection, :ImGui_TableSetColumnSortDirection, [:int, :uchar, :bool], :void],
      [:ImGui_TableGetHoveredRow, :ImGui_TableGetHoveredRow, [], :int],
      [:ImGui_TableGetHeaderRowHeight, :ImGui_TableGetHeaderRowHeight, [], :float],
      [:ImGui_TableGetHeaderAngledMaxLabelWidth, :ImGui_TableGetHeaderAngledMaxLabelWidth, [], :float],
      [:ImGui_TablePushBackgroundChannel, :ImGui_TablePushBackgroundChannel, [], :void],
      [:ImGui_TablePopBackgroundChannel, :ImGui_TablePopBackgroundChannel, [], :void],
      [:ImGui_TablePushColumnChannel, :ImGui_TablePushColumnChannel, [:int], :void],
      [:ImGui_TablePopColumnChannel, :ImGui_TablePopColumnChannel, [], :void],
      [:ImGui_TableAngledHeadersRowEx, :ImGui_TableAngledHeadersRowEx, [:uint, :float, :float, :pointer, :int], :void],
      [:ImGui_GetCurrentTable, :ImGui_GetCurrentTable, [], :pointer],
      [:ImGui_TableFindByID, :ImGui_TableFindByID, [:uint], :pointer],
      [:ImGui_BeginTableWithID, :ImGui_BeginTableWithID, [:pointer, :uint, :int, :int], :bool],
      [:ImGui_BeginTableWithIDEx, :ImGui_BeginTableWithIDEx, [:pointer, :uint, :int, :int, ImVec2.by_value, :float], :bool],
      [:ImGui_TableBeginInitMemory, :ImGui_TableBeginInitMemory, [:pointer, :int], :void],
      [:ImGui_TableBeginApplyRequests, :ImGui_TableBeginApplyRequests, [:pointer], :void],
      [:ImGui_TableSetupDrawChannels, :ImGui_TableSetupDrawChannels, [:pointer], :void],
      [:ImGui_TableUpdateLayout, :ImGui_TableUpdateLayout, [:pointer], :void],
      [:ImGui_TableUpdateBorders, :ImGui_TableUpdateBorders, [:pointer], :void],
      [:ImGui_TableUpdateColumnsWeightFromWidth, :ImGui_TableUpdateColumnsWeightFromWidth, [:pointer], :void],
      [:ImGui_TableDrawBorders, :ImGui_TableDrawBorders, [:pointer], :void],
      [:ImGui_TableDrawDefaultContextMenu, :ImGui_TableDrawDefaultContextMenu, [:pointer, :int], :void],
      [:ImGui_TableBeginContextMenuPopup, :ImGui_TableBeginContextMenuPopup, [:pointer], :bool],
      [:ImGui_TableMergeDrawChannels, :ImGui_TableMergeDrawChannels, [:pointer], :void],
      [:ImGui_TableGetInstanceData, :ImGui_TableGetInstanceData, [:pointer, :int], :pointer],
      [:ImGui_TableGetInstanceID, :ImGui_TableGetInstanceID, [:pointer, :int], :uint],
      [:ImGui_TableFixDisplayOrder, :ImGui_TableFixDisplayOrder, [:pointer], :void],
      [:ImGui_TableSortSpecsSanitize, :ImGui_TableSortSpecsSanitize, [:pointer], :void],
      [:ImGui_TableSortSpecsBuild, :ImGui_TableSortSpecsBuild, [:pointer], :void],
      [:ImGui_TableGetColumnNextSortDirection, :ImGui_TableGetColumnNextSortDirection, [:pointer], :uchar],
      [:ImGui_TableFixColumnSortDirection, :ImGui_TableFixColumnSortDirection, [:pointer, :pointer], :void],
      [:ImGui_TableGetColumnWidthAuto, :ImGui_TableGetColumnWidthAuto, [:pointer, :pointer], :float],
      [:ImGui_TableBeginRow, :ImGui_TableBeginRow, [:pointer], :void],
      [:ImGui_TableEndRow, :ImGui_TableEndRow, [:pointer], :void],
      [:ImGui_TableBeginCell, :ImGui_TableBeginCell, [:pointer, :int], :void],
      [:ImGui_TableEndCell, :ImGui_TableEndCell, [:pointer], :void],
      [:ImGui_TableGetCellBgRect, :ImGui_TableGetCellBgRect, [:pointer, :int], ImRect.by_value],
      [:ImGui_TableGetColumnNameImGuiTablePtr, :ImGui_TableGetColumnNameImGuiTablePtr, [:pointer, :int], :pointer],
      [:ImGui_TableGetColumnResizeID, :ImGui_TableGetColumnResizeID, [:pointer, :int], :uint],
      [:ImGui_TableGetColumnResizeIDEx, :ImGui_TableGetColumnResizeIDEx, [:pointer, :int, :int], :uint],
      [:ImGui_TableCalcMaxColumnWidth, :ImGui_TableCalcMaxColumnWidth, [:pointer, :int], :float],
      [:ImGui_TableSetColumnWidthAutoSingle, :ImGui_TableSetColumnWidthAutoSingle, [:pointer, :int], :void],
      [:ImGui_TableSetColumnWidthAutoAll, :ImGui_TableSetColumnWidthAutoAll, [:pointer], :void],
      [:ImGui_TableSetColumnDisplayOrder, :ImGui_TableSetColumnDisplayOrder, [:pointer, :int, :int], :void],
      [:ImGui_TableQueueSetColumnDisplayOrder, :ImGui_TableQueueSetColumnDisplayOrder, [:pointer, :int, :int], :void],
      [:ImGui_TableRemove, :ImGui_TableRemove, [:pointer], :void],
      [:ImGui_TableGcCompactTransientBuffers, :ImGui_TableGcCompactTransientBuffers, [:pointer], :void],
      [:ImGui_TableGcCompactTransientBuffersImGuiTableTempDataPtr, :ImGui_TableGcCompactTransientBuffersImGuiTableTempDataPtr, [:pointer], :void],
      [:ImGui_TableGcCompactSettings, :ImGui_TableGcCompactSettings, [], :void],
      [:ImGui_TableLoadSettings, :ImGui_TableLoadSettings, [:pointer], :void],
      [:ImGui_TableSaveSettings, :ImGui_TableSaveSettings, [:pointer], :void],
      [:ImGui_TableResetSettings, :ImGui_TableResetSettings, [:pointer], :void],
      [:ImGui_TableGetBoundSettings, :ImGui_TableGetBoundSettings, [:pointer], :pointer],
      [:ImGui_TableSettingsAddSettingsHandler, :ImGui_TableSettingsAddSettingsHandler, [], :void],
      [:ImGui_TableSettingsCreate, :ImGui_TableSettingsCreate, [:uint, :int], :pointer],
      [:ImGui_TableSettingsFindByID, :ImGui_TableSettingsFindByID, [:uint], :pointer],
      [:ImGui_GetCurrentTabBar, :ImGui_GetCurrentTabBar, [], :pointer],
      [:ImGui_TabBarFindByID, :ImGui_TabBarFindByID, [:uint], :pointer],
      [:ImGui_TabBarRemove, :ImGui_TabBarRemove, [:pointer], :void],
      [:ImGui_BeginTabBarEx, :ImGui_BeginTabBarEx, [:pointer, ImRect.by_value, :int], :bool],
      [:ImGui_TabBarFindTabByID, :ImGui_TabBarFindTabByID, [:pointer, :uint], :pointer],
      [:ImGui_TabBarFindTabByOrder, :ImGui_TabBarFindTabByOrder, [:pointer, :int], :pointer],
      [:ImGui_TabBarGetCurrentTab, :ImGui_TabBarGetCurrentTab, [:pointer], :pointer],
      [:ImGui_TabBarGetTabOrder, :ImGui_TabBarGetTabOrder, [:pointer, :pointer], :int],
      [:ImGui_TabBarGetTabName, :ImGui_TabBarGetTabName, [:pointer, :pointer], :pointer],
      [:ImGui_TabBarRemoveTab, :ImGui_TabBarRemoveTab, [:pointer, :uint], :void],
      [:ImGui_TabBarCloseTab, :ImGui_TabBarCloseTab, [:pointer, :pointer], :void],
      [:ImGui_TabBarQueueFocus, :ImGui_TabBarQueueFocus, [:pointer, :pointer], :void],
      [:ImGui_TabBarQueueFocusStr, :ImGui_TabBarQueueFocusStr, [:pointer, :pointer], :void],
      [:ImGui_TabBarQueueReorder, :ImGui_TabBarQueueReorder, [:pointer, :pointer, :int], :void],
      [:ImGui_TabBarQueueReorderFromMousePos, :ImGui_TabBarQueueReorderFromMousePos, [:pointer, :pointer, ImVec2.by_value], :void],
      [:ImGui_TabBarProcessReorder, :ImGui_TabBarProcessReorder, [:pointer], :bool],
      [:ImGui_TabItemEx, :ImGui_TabItemEx, [:pointer, :pointer, :pointer, :int, :pointer], :bool],
      [:ImGui_TabItemSpacing, :ImGui_TabItemSpacing, [:pointer, :int, :float], :void],
      [:ImGui_TabItemCalcSizeStr, :ImGui_TabItemCalcSizeStr, [:pointer, :bool], ImVec2.by_value],
      [:ImGui_TabItemCalcSize, :ImGui_TabItemCalcSize, [:pointer], ImVec2.by_value],
      [:ImGui_TabItemBackground, :ImGui_TabItemBackground, [:pointer, ImRect.by_value, :int, :uint], :void],
      [:ImGui_TabItemLabelAndCloseButton, :ImGui_TabItemLabelAndCloseButton, [:pointer, ImRect.by_value, :int, ImVec2.by_value, :pointer, :uint, :uint, :bool, :pointer, :pointer], :void],
      [:ImGui_RenderText, :ImGui_RenderText, [ImVec2.by_value, :pointer], :void],
      [:ImGui_RenderTextEx, :ImGui_RenderTextEx, [ImVec2.by_value, :pointer, :pointer, :bool], :void],
      [:ImGui_RenderTextWrapped, :ImGui_RenderTextWrapped, [ImVec2.by_value, :pointer, :pointer, :float], :void],
      [:ImGui_RenderTextClipped, :ImGui_RenderTextClipped, [ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer], :void],
      [:ImGui_RenderTextClippedEx, :ImGui_RenderTextClippedEx, [ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer, ImVec2.by_value, :pointer], :void],
      [:ImGui_RenderTextClippedWithDrawList, :ImGui_RenderTextClippedWithDrawList, [:pointer, ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer], :void],
      [:ImGui_RenderTextClippedWithDrawListEx, :ImGui_RenderTextClippedWithDrawListEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :pointer, :pointer, :pointer, ImVec2.by_value, :pointer], :void],
      [:ImGui_RenderTextEllipsis, :ImGui_RenderTextEllipsis, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :pointer, :pointer, :pointer], :void],
      [:ImGui_RenderFrame, :ImGui_RenderFrame, [ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImGui_RenderFrameEx, :ImGui_RenderFrameEx, [ImVec2.by_value, ImVec2.by_value, :uint, :bool, :float], :void],
      [:ImGui_RenderFrameBorder, :ImGui_RenderFrameBorder, [ImVec2.by_value, ImVec2.by_value], :void],
      [:ImGui_RenderFrameBorderEx, :ImGui_RenderFrameBorderEx, [ImVec2.by_value, ImVec2.by_value, :float], :void],
      [:ImGui_RenderColorComponentMarker, :ImGui_RenderColorComponentMarker, [ImRect.by_value, :uint, :float], :void],
      [:ImGui_RenderColorRectWithAlphaCheckerboard, :ImGui_RenderColorRectWithAlphaCheckerboard, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, ImVec2.by_value], :void],
      [:ImGui_RenderColorRectWithAlphaCheckerboardEx, :ImGui_RenderColorRectWithAlphaCheckerboardEx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, ImVec2.by_value, :float, :int], :void],
      [:ImGui_RenderNavCursor, :ImGui_RenderNavCursor, [ImRect.by_value, :uint], :void],
      [:ImGui_RenderNavCursorEx, :ImGui_RenderNavCursorEx, [ImRect.by_value, :uint, :int], :void],
      [:ImGui_RenderNavHighlight, :ImGui_RenderNavHighlight, [ImRect.by_value, :uint], :void],
      [:ImGui_RenderNavHighlightEx, :ImGui_RenderNavHighlightEx, [ImRect.by_value, :uint, :int], :void],
      [:ImGui_FindRenderedTextEnd, :ImGui_FindRenderedTextEnd, [:pointer], :pointer],
      [:ImGui_FindRenderedTextEndEx, :ImGui_FindRenderedTextEndEx, [:pointer, :pointer], :pointer],
      [:ImGui_RenderMouseCursor, :ImGui_RenderMouseCursor, [ImVec2.by_value, :float, :int, :uint, :uint, :uint], :void],
      [:ImGui_RenderArrow, :ImGui_RenderArrow, [:pointer, ImVec2.by_value, :uint, :int], :void],
      [:ImGui_RenderArrowEx, :ImGui_RenderArrowEx, [:pointer, ImVec2.by_value, :uint, :int, :float], :void],
      [:ImGui_RenderBullet, :ImGui_RenderBullet, [:pointer, ImVec2.by_value, :uint], :void],
      [:ImGui_RenderCheckMark, :ImGui_RenderCheckMark, [:pointer, ImVec2.by_value, :uint, :float], :void],
      [:ImGui_RenderArrowPointingAt, :ImGui_RenderArrowPointingAt, [:pointer, ImVec2.by_value, ImVec2.by_value, :int, :uint], :void],
      [:ImGui_RenderRectFilledInRangeH, :ImGui_RenderRectFilledInRangeH, [:pointer, ImRect.by_value, :uint, :float, :float, :float], :void],
      [:ImGui_RenderRectFilledWithHole, :ImGui_RenderRectFilledWithHole, [:pointer, ImRect.by_value, ImRect.by_value, :uint, :float], :void],
      [:ImGui_CalcRoundingFlagsForRectInRect, :ImGui_CalcRoundingFlagsForRectInRect, [ImRect.by_value, ImRect.by_value, :float], :int],
      [:ImGui_TextEx, :ImGui_TextEx, [:pointer], :void],
      [:ImGui_TextExEx, :ImGui_TextExEx, [:pointer, :pointer, :int], :void],
      [:ImGui_TextAligned, :ImGui_TextAligned, [:float, :float, :pointer, :varargs], :void],
      [:ImGui_ButtonWithFlags, :ImGui_ButtonWithFlags, [:pointer], :bool],
      [:ImGui_ButtonWithFlagsEx, :ImGui_ButtonWithFlagsEx, [:pointer, ImVec2.by_value, :int], :bool],
      [:ImGui_ArrowButtonEx, :ImGui_ArrowButtonEx, [:pointer, :int, ImVec2.by_value, :int], :bool],
      [:ImGui_ImageButtonWithFlags, :ImGui_ImageButtonWithFlags, [:uint, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value, :int], :bool],
      [:ImGui_SeparatorEx, :ImGui_SeparatorEx, [:int], :void],
      [:ImGui_SeparatorExEx, :ImGui_SeparatorExEx, [:int, :float], :void],
      [:ImGui_SeparatorTextEx, :ImGui_SeparatorTextEx, [:uint, :pointer, :pointer, :float], :void],
      [:ImGui_CheckboxFlagsImS64Ptr, :ImGui_CheckboxFlagsImS64Ptr, [:pointer, :pointer, :int64], :bool],
      [:ImGui_CheckboxFlagsImU64Ptr, :ImGui_CheckboxFlagsImU64Ptr, [:pointer, :pointer, :uint64], :bool],
      [:ImGui_CloseButton, :ImGui_CloseButton, [:uint, ImVec2.by_value], :bool],
      [:ImGui_CollapseButton, :ImGui_CollapseButton, [:uint, ImVec2.by_value], :bool],
      [:ImGui_Scrollbar, :ImGui_Scrollbar, [:int], :void],
      [:ImGui_ScrollbarEx, :ImGui_ScrollbarEx, [ImRect.by_value, :uint, :int, :pointer, :int64, :int64], :bool],
      [:ImGui_ScrollbarExEx, :ImGui_ScrollbarExEx, [ImRect.by_value, :uint, :int, :pointer, :int64, :int64, :int], :bool],
      [:ImGui_GetWindowScrollbarRect, :ImGui_GetWindowScrollbarRect, [:pointer, :int], ImRect.by_value],
      [:ImGui_GetWindowScrollbarID, :ImGui_GetWindowScrollbarID, [:pointer, :int], :uint],
      [:ImGui_GetWindowResizeCornerID, :ImGui_GetWindowResizeCornerID, [:pointer, :int], :uint],
      [:ImGui_GetWindowResizeBorderID, :ImGui_GetWindowResizeBorderID, [:pointer, :int], :uint],
      [:ImGui_ExtendHitBoxWhenNearViewportEdge, :ImGui_ExtendHitBoxWhenNearViewportEdge, [:pointer, :pointer, :float, :int], :void],
      [:ImGui_ButtonBehavior, :ImGui_ButtonBehavior, [ImRect.by_value, :uint, :pointer, :pointer, :int], :bool],
      [:ImGui_DragBehavior, :ImGui_DragBehavior, [:uint, :int, :pointer, :float, :pointer, :pointer, :pointer, :int], :bool],
      [:ImGui_SliderBehavior, :ImGui_SliderBehavior, [ImRect.by_value, :uint, :int, :pointer, :pointer, :pointer, :pointer, :int, :pointer], :bool],
      [:ImGui_SplitterBehavior, :ImGui_SplitterBehavior, [ImRect.by_value, :uint, :int, :pointer, :pointer, :float, :float], :bool],
      [:ImGui_SplitterBehaviorEx, :ImGui_SplitterBehaviorEx, [ImRect.by_value, :uint, :int, :pointer, :pointer, :float, :float, :float, :float, :uint], :bool],
      [:ImGui_TreeNodeBehavior, :ImGui_TreeNodeBehavior, [:uint, :int, :pointer], :bool],
      [:ImGui_TreeNodeBehaviorEx, :ImGui_TreeNodeBehaviorEx, [:uint, :int, :pointer, :pointer], :bool],
      [:ImGui_TreeNodeDrawLineToChildNode, :ImGui_TreeNodeDrawLineToChildNode, [ImVec2.by_value], :void],
      [:ImGui_TreeNodeDrawLineToTreePop, :ImGui_TreeNodeDrawLineToTreePop, [:pointer], :void],
      [:ImGui_TreePushOverrideID, :ImGui_TreePushOverrideID, [:uint], :void],
      [:ImGui_TreeNodeSetOpen, :ImGui_TreeNodeSetOpen, [:uint, :bool], :void],
      [:ImGui_TreeNodeUpdateNextOpen, :ImGui_TreeNodeUpdateNextOpen, [:uint, :int], :bool],
      [:ImGui_DataTypeGetInfo, :ImGui_DataTypeGetInfo, [:int], :pointer],
      [:ImGui_DataTypeFormatString, :ImGui_DataTypeFormatString, [:pointer, :int, :int, :pointer, :pointer], :int],
      [:ImGui_DataTypeApplyOp, :ImGui_DataTypeApplyOp, [:int, :int, :pointer, :pointer, :pointer], :void],
      [:ImGui_DataTypeApplyFromText, :ImGui_DataTypeApplyFromText, [:pointer, :int, :pointer, :pointer], :bool],
      [:ImGui_DataTypeApplyFromTextEx, :ImGui_DataTypeApplyFromTextEx, [:pointer, :int, :pointer, :pointer, :pointer], :bool],
      [:ImGui_DataTypeCompare, :ImGui_DataTypeCompare, [:int, :pointer, :pointer], :int],
      [:ImGui_DataTypeClamp, :ImGui_DataTypeClamp, [:int, :pointer, :pointer, :pointer], :bool],
      [:ImGui_DataTypeIsZero, :ImGui_DataTypeIsZero, [:int, :pointer], :bool],
      [:ImGui_InputTextWithHintAndSize, :ImGui_InputTextWithHintAndSize, [:pointer, :pointer, :pointer, :int, ImVec2.by_value, :int], :bool],
      [:ImGui_InputTextWithHintAndSizeEx, :ImGui_InputTextWithHintAndSizeEx, [:pointer, :pointer, :pointer, :int, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:ImGui_InputTextDeactivateHook, :ImGui_InputTextDeactivateHook, [:uint], :void],
      [:ImGui_TempInputText, :ImGui_TempInputText, [ImRect.by_value, :uint, :pointer, :pointer, :size_t, :int], :bool],
      [:ImGui_TempInputTextEx, :ImGui_TempInputTextEx, [ImRect.by_value, :uint, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:ImGui_TempInputScalar, :ImGui_TempInputScalar, [ImRect.by_value, :uint, :pointer, :int, :pointer, :pointer], :bool],
      [:ImGui_TempInputScalarEx, :ImGui_TempInputScalarEx, [ImRect.by_value, :uint, :pointer, :int, :pointer, :pointer, :pointer, :pointer], :bool],
      [:ImGui_TempInputIsActive, :ImGui_TempInputIsActive, [:uint], :bool],
      [:ImGui_SetNextItemRefVal, :ImGui_SetNextItemRefVal, [:int, :pointer], :void],
      [:ImGui_IsItemActiveAsInputText, :ImGui_IsItemActiveAsInputText, [], :bool],
      [:ImGui_ColorTooltip, :ImGui_ColorTooltip, [:pointer, :pointer, :int], :void],
      [:ImGui_ColorEditOptionsPopup, :ImGui_ColorEditOptionsPopup, [:pointer, :int], :void],
      [:ImGui_ColorPickerOptionsPopup, :ImGui_ColorPickerOptionsPopup, [:pointer, :int], :void],
      [:ImGui_SetNextItemColorMarker, :ImGui_SetNextItemColorMarker, [:uint], :void],
      [:ImGui_PlotEx, :ImGui_PlotEx, [:int, :pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :int],
      [:ImGui_ShadeVertsLinearColorGradientKeepAlpha, :ImGui_ShadeVertsLinearColorGradientKeepAlpha, [:pointer, :int, :int, ImVec2.by_value, ImVec2.by_value, :uint, :uint], :void],
      [:ImGui_ShadeVertsLinearUV, :ImGui_ShadeVertsLinearUV, [:pointer, :int, :int, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :bool], :void],
      [:ImGui_ShadeVertsTransformPos, :ImGui_ShadeVertsTransformPos, [:pointer, :int, :int, ImVec2.by_value, :float, :float, ImVec2.by_value], :void],
      [:ImGui_GcCompactTransientMiscBuffers, :ImGui_GcCompactTransientMiscBuffers, [], :void],
      [:ImGui_GcCompactTransientWindowBuffers, :ImGui_GcCompactTransientWindowBuffers, [:pointer], :void],
      [:ImGui_GcAwakeTransientWindowBuffers, :ImGui_GcAwakeTransientWindowBuffers, [:pointer], :void],
      [:ImGui_ErrorLog, :ImGui_ErrorLog, [:pointer], :bool],
      [:ImGui_ErrorRecoveryStoreState, :ImGui_ErrorRecoveryStoreState, [:pointer], :void],
      [:ImGui_ErrorRecoveryTryToRecoverState, :ImGui_ErrorRecoveryTryToRecoverState, [:pointer], :void],
      [:ImGui_ErrorRecoveryTryToRecoverWindowState, :ImGui_ErrorRecoveryTryToRecoverWindowState, [:pointer], :void],
      [:ImGui_ErrorCheckUsingSetCursorPosToExtendParentBoundaries, :ImGui_ErrorCheckUsingSetCursorPosToExtendParentBoundaries, [], :void],
      [:ImGui_ErrorCheckEndFrameFinalizeErrorTooltip, :ImGui_ErrorCheckEndFrameFinalizeErrorTooltip, [], :void],
      [:ImGui_BeginErrorTooltip, :ImGui_BeginErrorTooltip, [], :bool],
      [:ImGui_EndErrorTooltip, :ImGui_EndErrorTooltip, [], :void],
      [:ImGui_DemoMarker, :ImGui_DemoMarker, [:pointer, :int, :pointer], :void],
      [:ImGui_DebugAllocHook, :ImGui_DebugAllocHook, [:pointer, :int, :pointer, :size_t], :void],
      [:ImGui_DebugDrawCursorPos, :ImGui_DebugDrawCursorPos, [], :void],
      [:ImGui_DebugDrawCursorPosEx, :ImGui_DebugDrawCursorPosEx, [:uint], :void],
      [:ImGui_DebugDrawLineExtents, :ImGui_DebugDrawLineExtents, [], :void],
      [:ImGui_DebugDrawLineExtentsEx, :ImGui_DebugDrawLineExtentsEx, [:uint], :void],
      [:ImGui_DebugDrawItemRect, :ImGui_DebugDrawItemRect, [], :void],
      [:ImGui_DebugDrawItemRectEx, :ImGui_DebugDrawItemRectEx, [:uint], :void],
      [:ImGui_DebugTextUnformattedWithLocateItem, :ImGui_DebugTextUnformattedWithLocateItem, [:pointer, :pointer], :void],
      [:ImGui_DebugLocateItem, :ImGui_DebugLocateItem, [:uint], :void],
      [:ImGui_DebugLocateItemOnHover, :ImGui_DebugLocateItemOnHover, [:uint], :void],
      [:ImGui_DebugLocateItemResolveWithLastItem, :ImGui_DebugLocateItemResolveWithLastItem, [], :void],
      [:ImGui_DebugBreakClearData, :ImGui_DebugBreakClearData, [], :void],
      [:ImGui_DebugBreakButton, :ImGui_DebugBreakButton, [:pointer, :pointer], :bool],
      [:ImGui_DebugBreakButtonTooltip, :ImGui_DebugBreakButtonTooltip, [:bool, :pointer], :void],
      [:ImGui_ShowFontAtlas, :ImGui_ShowFontAtlas, [:pointer], :void],
      [:ImGui_DebugTextureIDToU64, :ImGui_DebugTextureIDToU64, [:uint64], :uint64],
      [:ImGui_DebugHookIdInfo, :ImGui_DebugHookIdInfo, [:uint, :int, :pointer, :pointer], :void],
      [:ImGui_DebugNodeColumns, :ImGui_DebugNodeColumns, [:pointer], :void],
      [:ImGui_DebugNodeDrawList, :ImGui_DebugNodeDrawList, [:pointer, :pointer, :pointer, :pointer], :void],
      [:ImGui_DebugNodeDrawCmdShowMeshAndBoundingBox, :ImGui_DebugNodeDrawCmdShowMeshAndBoundingBox, [:pointer, :pointer, :pointer, :bool, :bool], :void],
      [:ImGui_DebugNodeFont, :ImGui_DebugNodeFont, [:pointer], :void],
      [:ImGui_DebugNodeFontGlyphsForSrcMask, :ImGui_DebugNodeFontGlyphsForSrcMask, [:pointer, :pointer, :int], :void],
      [:ImGui_DebugNodeFontGlyph, :ImGui_DebugNodeFontGlyph, [:pointer, :pointer], :void],
      [:ImGui_DebugNodeTexture, :ImGui_DebugNodeTexture, [:pointer, :int], :void],
      [:ImGui_DebugNodeTextureEx, :ImGui_DebugNodeTextureEx, [:pointer, :int, :pointer], :void],
      [:ImGui_DebugNodeStorage, :ImGui_DebugNodeStorage, [:pointer, :pointer], :void],
      [:ImGui_DebugNodeTabBar, :ImGui_DebugNodeTabBar, [:pointer, :pointer], :void],
      [:ImGui_DebugNodeTable, :ImGui_DebugNodeTable, [:pointer], :void],
      [:ImGui_DebugNodeTableSettings, :ImGui_DebugNodeTableSettings, [:pointer], :void],
      [:ImGui_DebugNodeTypingSelectState, :ImGui_DebugNodeTypingSelectState, [:pointer], :void],
      [:ImGui_DebugNodeMultiSelectState, :ImGui_DebugNodeMultiSelectState, [:pointer], :void],
      [:ImGui_DebugNodeWindow, :ImGui_DebugNodeWindow, [:pointer, :pointer], :void],
      [:ImGui_DebugNodeWindowSettings, :ImGui_DebugNodeWindowSettings, [:pointer], :void],
      [:ImGui_DebugNodeWindowsList, :ImGui_DebugNodeWindowsList, [:pointer, :pointer], :void],
      [:ImGui_DebugNodeWindowsListByBeginStackParent, :ImGui_DebugNodeWindowsListByBeginStackParent, [:pointer, :int, :pointer], :void],
      [:ImGui_DebugNodeViewport, :ImGui_DebugNodeViewport, [:pointer], :void],
      [:ImGui_DebugRenderKeyboardPreview, :ImGui_DebugRenderKeyboardPreview, [:pointer], :void],
      [:ImGui_DebugRenderViewportThumbnail, :ImGui_DebugRenderViewportThumbnail, [:pointer, :pointer, ImRect.by_value], :void],
      [:cImFontAtlasRectId_GetIndex, :cImFontAtlasRectId_GetIndex, [:int], :int],
      [:cImFontAtlasRectId_GetGeneration, :cImFontAtlasRectId_GetGeneration, [:int], :uint],
      [:cImFontAtlasRectId_Make, :cImFontAtlasRectId_Make, [:int, :int], :int],
      [:cImFontAtlasBuildInit, :cImFontAtlasBuildInit, [:pointer], :void],
      [:cImFontAtlasBuildDestroy, :cImFontAtlasBuildDestroy, [:pointer], :void],
      [:cImFontAtlasBuildMain, :cImFontAtlasBuildMain, [:pointer], :void],
      [:cImFontAtlasBuildSetupFontLoader, :cImFontAtlasBuildSetupFontLoader, [:pointer, :pointer], :void],
      [:cImFontAtlasBuildNotifySetFont, :cImFontAtlasBuildNotifySetFont, [:pointer, :pointer, :pointer], :void],
      [:cImFontAtlasBuildUpdatePointers, :cImFontAtlasBuildUpdatePointers, [:pointer], :void],
      [:cImFontAtlasBuildRenderBitmapFromString, :cImFontAtlasBuildRenderBitmapFromString, [:pointer, :int, :int, :int, :int, :pointer, :char], :void],
      [:cImFontAtlasBuildClear, :cImFontAtlasBuildClear, [:pointer], :void],
      [:cImFontAtlasTextureAdd, :cImFontAtlasTextureAdd, [:pointer, :int, :int], :pointer],
      [:cImFontAtlasTextureMakeSpace, :cImFontAtlasTextureMakeSpace, [:pointer], :void],
      [:cImFontAtlasTextureRepack, :cImFontAtlasTextureRepack, [:pointer, :int, :int], :void],
      [:cImFontAtlasTextureGrow, :cImFontAtlasTextureGrow, [:pointer], :void],
      [:cImFontAtlasTextureGrowEx, :cImFontAtlasTextureGrowEx, [:pointer, :int, :int], :void],
      [:cImFontAtlasTextureCompact, :cImFontAtlasTextureCompact, [:pointer], :void],
      [:cImFontAtlasTextureGetSizeEstimate, :cImFontAtlasTextureGetSizeEstimate, [:pointer], ImVec2i.by_value],
      [:cImFontAtlasBuildSetupFontSpecialGlyphs, :cImFontAtlasBuildSetupFontSpecialGlyphs, [:pointer, :pointer, :pointer], :void],
      [:cImFontAtlasBuildLegacyPreloadAllGlyphRanges, :cImFontAtlasBuildLegacyPreloadAllGlyphRanges, [:pointer], :void],
      [:cImFontAtlasBuildGetOversampleFactors, :cImFontAtlasBuildGetOversampleFactors, [:pointer, :pointer, :pointer, :pointer], :void],
      [:cImFontAtlasBuildDiscardBakes, :cImFontAtlasBuildDiscardBakes, [:pointer, :int], :void],
      [:cImFontAtlasFontSourceInit, :cImFontAtlasFontSourceInit, [:pointer, :pointer], :bool],
      [:cImFontAtlasFontSourceAddToFont, :cImFontAtlasFontSourceAddToFont, [:pointer, :pointer, :pointer], :void],
      [:cImFontAtlasFontDestroySourceData, :cImFontAtlasFontDestroySourceData, [:pointer, :pointer], :void],
      [:cImFontAtlasFontInitOutput, :cImFontAtlasFontInitOutput, [:pointer, :pointer], :bool],
      [:cImFontAtlasFontDestroyOutput, :cImFontAtlasFontDestroyOutput, [:pointer, :pointer], :void],
      [:cImFontAtlasFontRebuildOutput, :cImFontAtlasFontRebuildOutput, [:pointer, :pointer], :void],
      [:cImFontAtlasFontDiscardBakes, :cImFontAtlasFontDiscardBakes, [:pointer, :pointer, :int], :void],
      [:cImFontAtlasBakedGetId, :cImFontAtlasBakedGetId, [:uint, :float, :float], :uint],
      [:cImFontAtlasBakedGetOrAdd, :cImFontAtlasBakedGetOrAdd, [:pointer, :pointer, :float, :float], :pointer],
      [:cImFontAtlasBakedGetClosestMatch, :cImFontAtlasBakedGetClosestMatch, [:pointer, :pointer, :float, :float], :pointer],
      [:cImFontAtlasBakedAdd, :cImFontAtlasBakedAdd, [:pointer, :pointer, :float, :float, :uint], :pointer],
      [:cImFontAtlasBakedDiscard, :cImFontAtlasBakedDiscard, [:pointer, :pointer, :pointer], :void],
      [:cImFontAtlasBakedAddFontGlyph, :cImFontAtlasBakedAddFontGlyph, [:pointer, :pointer, :pointer, :pointer], :pointer],
      [:cImFontAtlasBakedAddFontGlyphAdvancedX, :cImFontAtlasBakedAddFontGlyphAdvancedX, [:pointer, :pointer, :pointer, :ushort, :float], :void],
      [:cImFontAtlasBakedDiscardFontGlyph, :cImFontAtlasBakedDiscardFontGlyph, [:pointer, :pointer, :pointer, :pointer], :void],
      [:cImFontAtlasBakedSetFontGlyphBitmap, :cImFontAtlasBakedSetFontGlyphBitmap, [:pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :int, :int], :void],
      [:cImFontAtlasPackInit, :cImFontAtlasPackInit, [:pointer], :void],
      [:cImFontAtlasPackAddRect, :cImFontAtlasPackAddRect, [:pointer, :int, :int], :int],
      [:cImFontAtlasPackAddRectEx, :cImFontAtlasPackAddRectEx, [:pointer, :int, :int, :pointer], :int],
      [:cImFontAtlasPackGetRect, :cImFontAtlasPackGetRect, [:pointer, :int], :pointer],
      [:cImFontAtlasPackGetRectSafe, :cImFontAtlasPackGetRectSafe, [:pointer, :int], :pointer],
      [:cImFontAtlasPackDiscardRect, :cImFontAtlasPackDiscardRect, [:pointer, :int], :void],
      [:cImFontAtlasUpdateNewFrame, :cImFontAtlasUpdateNewFrame, [:pointer, :int, :bool], :void],
      [:cImFontAtlasAddDrawListSharedData, :cImFontAtlasAddDrawListSharedData, [:pointer, :pointer], :void],
      [:cImFontAtlasRemoveDrawListSharedData, :cImFontAtlasRemoveDrawListSharedData, [:pointer, :pointer], :void],
      [:cImFontAtlasUpdateDrawListsTextures, :cImFontAtlasUpdateDrawListsTextures, [:pointer, ImTextureRef.by_value, ImTextureRef.by_value], :void],
      [:cImFontAtlasUpdateDrawListsSharedData, :cImFontAtlasUpdateDrawListsSharedData, [:pointer], :void],
      [:cImFontAtlasTextureBlockConvert, :cImFontAtlasTextureBlockConvert, [:pointer, :int, :int, :pointer, :int, :int, :int, :int], :void],
      [:cImFontAtlasTextureBlockPostProcess, :cImFontAtlasTextureBlockPostProcess, [:pointer], :void],
      [:cImFontAtlasTextureBlockPostProcessMultiply, :cImFontAtlasTextureBlockPostProcessMultiply, [:pointer, :float], :void],
      [:cImFontAtlasTextureBlockFill, :cImFontAtlasTextureBlockFill, [:pointer, :int, :int, :int, :int, :uint], :void],
      [:cImFontAtlasTextureBlockCopy, :cImFontAtlasTextureBlockCopy, [:pointer, :int, :int, :pointer, :int, :int, :int, :int], :void],
      [:cImFontAtlasTextureBlockQueueUpload, :cImFontAtlasTextureBlockQueueUpload, [:pointer, :pointer, :int, :int, :int, :int], :void],
      [:cImTextureDataGetFormatBytesPerPixel, :cImTextureDataGetFormatBytesPerPixel, [:int], :int],
      [:cImTextureDataGetStatusName, :cImTextureDataGetStatusName, [:int], :pointer],
      [:cImTextureDataGetFormatName, :cImTextureDataGetFormatName, [:int], :pointer],
      [:cImFontAtlasDebugLogTextureRequests, :cImFontAtlasDebugLogTextureRequests, [:pointer], :void],
      [:cImFontAtlasGetMouseCursorTexData, :cImFontAtlasGetMouseCursorTexData, [:pointer, :int, :pointer, :pointer, :pointer, :pointer], :bool],
    ]
    entries.each do |entry|
      attach_function entry[0], entry[1], entry[2], entry[3]
    rescue FFI::NotFoundError => e
      warn "[Warning] Failed to import #{entry[0]}."
    end
    @@imgui_import_done = true

  end # self.import_symbols

  # arg: shared_font_atlas(ImFontAtlas*)
  # ret: pointer
  def self.CreateContext(shared_font_atlas = nil)
    ImGui_CreateContext(shared_font_atlas)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.DestroyContext(ctx = nil)
    ImGui_DestroyContext(ctx)
  end

  # ret: pointer
  def self.GetCurrentContext()
    ImGui_GetCurrentContext()
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.SetCurrentContext(ctx)
    ImGui_SetCurrentContext(ctx)
  end

  # ret: pointer
  def self.GetIO()
    ImGui_GetIO()
  end

  # ret: pointer
  def self.GetPlatformIO()
    ImGui_GetPlatformIO()
  end

  # ret: pointer
  def self.GetStyle()
    ImGui_GetStyle()
  end

  # ret: void
  def self.NewFrame()
    ImGui_NewFrame()
  end

  # ret: void
  def self.EndFrame()
    ImGui_EndFrame()
  end

  # ret: void
  def self.Render()
    ImGui_Render()
  end

  # ret: pointer
  def self.GetDrawData()
    ImGui_GetDrawData()
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDemoWindow(p_open = nil)
    ImGui_ShowDemoWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowMetricsWindow(p_open = nil)
    ImGui_ShowMetricsWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDebugLogWindow(p_open = nil)
    ImGui_ShowDebugLogWindow(p_open)
  end

  # ret: void
  def self.ShowIDStackToolWindow()
    ImGui_ShowIDStackToolWindow()
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowIDStackToolWindowEx(p_open = nil)
    ImGui_ShowIDStackToolWindowEx(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowAboutWindow(p_open = nil)
    ImGui_ShowAboutWindow(p_open)
  end

  # arg: ref(ImGuiStyle*)
  # ret: void
  def self.ShowStyleEditor(ref = nil)
    ImGui_ShowStyleEditor(ref)
  end

  # arg: label(const char*)
  # ret: bool
  def self.ShowStyleSelector(label)
    ImGui_ShowStyleSelector(label)
  end

  # arg: label(const char*)
  # ret: void
  def self.ShowFontSelector(label)
    ImGui_ShowFontSelector(label)
  end

  # ret: void
  def self.ShowUserGuide()
    ImGui_ShowUserGuide()
  end

  # ret: pointer
  def self.GetVersion()
    ImGui_GetVersion()
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsDark(dst = nil)
    ImGui_StyleColorsDark(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsLight(dst = nil)
    ImGui_StyleColorsLight(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsClassic(dst = nil)
    ImGui_StyleColorsClassic(dst)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.Begin(name, p_open = nil, flags = 0)
    ImGui_Begin(name, p_open, flags)
  end

  # ret: void
  def self.End()
    ImGui_End()
  end

  # arg: str_id(const char*), size(ImVec2), child_flags(ImGuiChildFlags), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChild(str_id, size = ImVec2.create(0,0), child_flags = 0, window_flags = 0)
    ImGui_BeginChild(str_id, size, child_flags, window_flags)
  end

  # arg: id(ImGuiID), size(ImVec2), child_flags(ImGuiChildFlags), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildID(id, size = ImVec2.create(0,0), child_flags = 0, window_flags = 0)
    ImGui_BeginChildID(id, size, child_flags, window_flags)
  end

  # ret: void
  def self.EndChild()
    ImGui_EndChild()
  end

  # ret: bool
  def self.IsWindowAppearing()
    ImGui_IsWindowAppearing()
  end

  # ret: bool
  def self.IsWindowCollapsed()
    ImGui_IsWindowCollapsed()
  end

  # arg: flags(ImGuiFocusedFlags)
  # ret: bool
  def self.IsWindowFocused(flags = 0)
    ImGui_IsWindowFocused(flags)
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsWindowHovered(flags = 0)
    ImGui_IsWindowHovered(flags)
  end

  # ret: pointer
  def self.GetWindowDrawList()
    ImGui_GetWindowDrawList()
  end

  # ret: ImVec2.by_value
  def self.GetWindowPos()
    ImGui_GetWindowPos()
  end

  # ret: ImVec2.by_value
  def self.GetWindowSize()
    ImGui_GetWindowSize()
  end

  # ret: float
  def self.GetWindowWidth()
    ImGui_GetWindowWidth()
  end

  # ret: float
  def self.GetWindowHeight()
    ImGui_GetWindowHeight()
  end

  # arg: pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowPos(pos, cond = 0)
    ImGui_SetNextWindowPos(pos, cond)
  end

  # arg: pos(ImVec2), cond(ImGuiCond), pivot(ImVec2)
  # ret: void
  def self.SetNextWindowPosEx(pos, cond = 0, pivot = ImVec2.create(0,0))
    ImGui_SetNextWindowPosEx(pos, cond, pivot)
  end

  # arg: size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowSize(size, cond = 0)
    ImGui_SetNextWindowSize(size, cond)
  end

  # arg: size_min(ImVec2), size_max(ImVec2), custom_callback(ImGuiSizeCallback), custom_callback_data(void*)
  # ret: void
  def self.SetNextWindowSizeConstraints(size_min, size_max, custom_callback = nil, custom_callback_data = nil)
    ImGui_SetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.SetNextWindowContentSize(size)
    ImGui_SetNextWindowContentSize(size)
  end

  # arg: collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowCollapsed(collapsed, cond = 0)
    ImGui_SetNextWindowCollapsed(collapsed, cond)
  end

  # ret: void
  def self.SetNextWindowFocus()
    ImGui_SetNextWindowFocus()
  end

  # arg: scroll(ImVec2)
  # ret: void
  def self.SetNextWindowScroll(scroll)
    ImGui_SetNextWindowScroll(scroll)
  end

  # arg: alpha(float)
  # ret: void
  def self.SetNextWindowBgAlpha(alpha)
    ImGui_SetNextWindowBgAlpha(alpha)
  end

  # arg: pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPos(pos, cond = 0)
    ImGui_SetWindowPos(pos, cond)
  end

  # arg: size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSize(size, cond = 0)
    ImGui_SetWindowSize(size, cond)
  end

  # arg: collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsed(collapsed, cond = 0)
    ImGui_SetWindowCollapsed(collapsed, cond)
  end

  # ret: void
  def self.SetWindowFocus()
    ImGui_SetWindowFocus()
  end

  # arg: name(const char*), pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPosStr(name, pos, cond = 0)
    ImGui_SetWindowPosStr(name, pos, cond)
  end

  # arg: name(const char*), size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSizeStr(name, size, cond = 0)
    ImGui_SetWindowSizeStr(name, size, cond)
  end

  # arg: name(const char*), collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsedStr(name, collapsed, cond = 0)
    ImGui_SetWindowCollapsedStr(name, collapsed, cond)
  end

  # arg: name(const char*)
  # ret: void
  def self.SetWindowFocusStr(name)
    ImGui_SetWindowFocusStr(name)
  end

  # ret: float
  def self.GetScrollX()
    ImGui_GetScrollX()
  end

  # ret: float
  def self.GetScrollY()
    ImGui_GetScrollY()
  end

  # arg: scroll_x(float)
  # ret: void
  def self.SetScrollX(scroll_x)
    ImGui_SetScrollX(scroll_x)
  end

  # arg: scroll_y(float)
  # ret: void
  def self.SetScrollY(scroll_y)
    ImGui_SetScrollY(scroll_y)
  end

  # ret: float
  def self.GetScrollMaxX()
    ImGui_GetScrollMaxX()
  end

  # ret: float
  def self.GetScrollMaxY()
    ImGui_GetScrollMaxY()
  end

  # arg: center_x_ratio(float)
  # ret: void
  def self.SetScrollHereX(center_x_ratio = 0.5)
    ImGui_SetScrollHereX(center_x_ratio)
  end

  # arg: center_y_ratio(float)
  # ret: void
  def self.SetScrollHereY(center_y_ratio = 0.5)
    ImGui_SetScrollHereY(center_y_ratio)
  end

  # arg: local_x(float), center_x_ratio(float)
  # ret: void
  def self.SetScrollFromPosX(local_x, center_x_ratio = 0.5)
    ImGui_SetScrollFromPosX(local_x, center_x_ratio)
  end

  # arg: local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosY(local_y, center_y_ratio = 0.5)
    ImGui_SetScrollFromPosY(local_y, center_y_ratio)
  end

  # arg: font(ImFont*), font_size_base_unscaled(float)
  # ret: void
  def self.PushFontFloat(font, font_size_base_unscaled)
    ImGui_PushFontFloat(font, font_size_base_unscaled)
  end

  # ret: void
  def self.PopFont()
    ImGui_PopFont()
  end

  # ret: pointer
  def self.GetFont()
    ImGui_GetFont()
  end

  # ret: float
  def self.GetFontSize()
    ImGui_GetFontSize()
  end

  # ret: pointer
  def self.GetFontBaked()
    ImGui_GetFontBaked()
  end

  # arg: idx(ImGuiCol), col(ImU32)
  # ret: void
  def self.PushStyleColor(idx, col)
    ImGui_PushStyleColor(idx, col)
  end

  # arg: idx(ImGuiCol), col(ImVec4)
  # ret: void
  def self.PushStyleColorImVec4(idx, col)
    ImGui_PushStyleColorImVec4(idx, col)
  end

  # ret: void
  def self.PopStyleColor()
    ImGui_PopStyleColor()
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleColorEx(count = 1)
    ImGui_PopStyleColorEx(count)
  end

  # arg: idx(ImGuiStyleVar), val(float)
  # ret: void
  def self.PushStyleVar(idx, val)
    ImGui_PushStyleVar(idx, val)
  end

  # arg: idx(ImGuiStyleVar), val(ImVec2)
  # ret: void
  def self.PushStyleVarImVec2(idx, val)
    ImGui_PushStyleVarImVec2(idx, val)
  end

  # arg: idx(ImGuiStyleVar), val_x(float)
  # ret: void
  def self.PushStyleVarX(idx, val_x)
    ImGui_PushStyleVarX(idx, val_x)
  end

  # arg: idx(ImGuiStyleVar), val_y(float)
  # ret: void
  def self.PushStyleVarY(idx, val_y)
    ImGui_PushStyleVarY(idx, val_y)
  end

  # ret: void
  def self.PopStyleVar()
    ImGui_PopStyleVar()
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleVarEx(count = 1)
    ImGui_PopStyleVarEx(count)
  end

  # arg: option(ImGuiItemFlags), enabled(bool)
  # ret: void
  def self.PushItemFlag(option, enabled)
    ImGui_PushItemFlag(option, enabled)
  end

  # ret: void
  def self.PopItemFlag()
    ImGui_PopItemFlag()
  end

  # arg: item_width(float)
  # ret: void
  def self.PushItemWidth(item_width)
    ImGui_PushItemWidth(item_width)
  end

  # ret: void
  def self.PopItemWidth()
    ImGui_PopItemWidth()
  end

  # arg: item_width(float)
  # ret: void
  def self.SetNextItemWidth(item_width)
    ImGui_SetNextItemWidth(item_width)
  end

  # ret: float
  def self.CalcItemWidth()
    ImGui_CalcItemWidth()
  end

  # arg: wrap_local_pos_x(float)
  # ret: void
  def self.PushTextWrapPos(wrap_local_pos_x = 0.0)
    ImGui_PushTextWrapPos(wrap_local_pos_x)
  end

  # ret: void
  def self.PopTextWrapPos()
    ImGui_PopTextWrapPos()
  end

  # ret: ImVec2.by_value
  def self.GetFontTexUvWhitePixel()
    ImGui_GetFontTexUvWhitePixel()
  end

  # arg: idx(ImGuiCol)
  # ret: uint
  def self.GetColorU32(idx)
    ImGui_GetColorU32(idx)
  end

  # arg: idx(ImGuiCol), alpha_mul(float)
  # ret: uint
  def self.GetColorU32Ex(idx, alpha_mul = 1.0)
    ImGui_GetColorU32Ex(idx, alpha_mul)
  end

  # arg: col(ImVec4)
  # ret: uint
  def self.GetColorU32ImVec4(col)
    ImGui_GetColorU32ImVec4(col)
  end

  # arg: col(ImU32)
  # ret: uint
  def self.GetColorU32ImU32(col)
    ImGui_GetColorU32ImU32(col)
  end

  # arg: col(ImU32), alpha_mul(float)
  # ret: uint
  def self.GetColorU32ImU32Ex(col, alpha_mul = 1.0)
    ImGui_GetColorU32ImU32Ex(col, alpha_mul)
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorVec4(idx)
    ImGui_GetStyleColorVec4(idx)
  end

  # ret: ImVec2.by_value
  def self.GetCursorScreenPos()
    ImGui_GetCursorScreenPos()
  end

  # arg: pos(ImVec2)
  # ret: void
  def self.SetCursorScreenPos(pos)
    ImGui_SetCursorScreenPos(pos)
  end

  # ret: ImVec2.by_value
  def self.GetContentRegionAvail()
    ImGui_GetContentRegionAvail()
  end

  # ret: ImVec2.by_value
  def self.GetCursorPos()
    ImGui_GetCursorPos()
  end

  # ret: float
  def self.GetCursorPosX()
    ImGui_GetCursorPosX()
  end

  # ret: float
  def self.GetCursorPosY()
    ImGui_GetCursorPosY()
  end

  # arg: local_pos(ImVec2)
  # ret: void
  def self.SetCursorPos(local_pos)
    ImGui_SetCursorPos(local_pos)
  end

  # arg: local_x(float)
  # ret: void
  def self.SetCursorPosX(local_x)
    ImGui_SetCursorPosX(local_x)
  end

  # arg: local_y(float)
  # ret: void
  def self.SetCursorPosY(local_y)
    ImGui_SetCursorPosY(local_y)
  end

  # ret: ImVec2.by_value
  def self.GetCursorStartPos()
    ImGui_GetCursorStartPos()
  end

  # ret: void
  def self.Separator()
    ImGui_Separator()
  end

  # ret: void
  def self.SameLine()
    ImGui_SameLine()
  end

  # arg: offset_from_start_x(float), spacing(float)
  # ret: void
  def self.SameLineEx(offset_from_start_x = 0.0, spacing = -1.0)
    ImGui_SameLineEx(offset_from_start_x, spacing)
  end

  # ret: void
  def self.NewLine()
    ImGui_NewLine()
  end

  # ret: void
  def self.Spacing()
    ImGui_Spacing()
  end

  # arg: size(ImVec2)
  # ret: void
  def self.Dummy(size)
    ImGui_Dummy(size)
  end

  # ret: void
  def self.Indent()
    ImGui_Indent()
  end

  # arg: indent_w(float)
  # ret: void
  def self.IndentEx(indent_w = 0.0)
    ImGui_IndentEx(indent_w)
  end

  # ret: void
  def self.Unindent()
    ImGui_Unindent()
  end

  # arg: indent_w(float)
  # ret: void
  def self.UnindentEx(indent_w = 0.0)
    ImGui_UnindentEx(indent_w)
  end

  # ret: void
  def self.BeginGroup()
    ImGui_BeginGroup()
  end

  # ret: void
  def self.EndGroup()
    ImGui_EndGroup()
  end

  # ret: void
  def self.AlignTextToFramePadding()
    ImGui_AlignTextToFramePadding()
  end

  # ret: float
  def self.GetTextLineHeight()
    ImGui_GetTextLineHeight()
  end

  # ret: float
  def self.GetTextLineHeightWithSpacing()
    ImGui_GetTextLineHeightWithSpacing()
  end

  # ret: float
  def self.GetFrameHeight()
    ImGui_GetFrameHeight()
  end

  # ret: float
  def self.GetFrameHeightWithSpacing()
    ImGui_GetFrameHeightWithSpacing()
  end

  # arg: str_id(const char*)
  # ret: void
  def self.PushID(str_id)
    ImGui_PushID(str_id)
  end

  # arg: str_id_begin(const char*), str_id_end(const char*)
  # ret: void
  def self.PushIDStr(str_id_begin, str_id_end)
    ImGui_PushIDStr(str_id_begin, str_id_end)
  end

  # arg: ptr_id(const void*)
  # ret: void
  def self.PushIDPtr(ptr_id)
    ImGui_PushIDPtr(ptr_id)
  end

  # arg: int_id(int)
  # ret: void
  def self.PushIDInt(int_id)
    ImGui_PushIDInt(int_id)
  end

  # ret: void
  def self.PopID()
    ImGui_PopID()
  end

  # arg: str_id(const char*)
  # ret: uint
  def self.GetID(str_id)
    ImGui_GetID(str_id)
  end

  # arg: str_id_begin(const char*), str_id_end(const char*)
  # ret: uint
  def self.GetIDStr(str_id_begin, str_id_end)
    ImGui_GetIDStr(str_id_begin, str_id_end)
  end

  # arg: ptr_id(const void*)
  # ret: uint
  def self.GetIDPtr(ptr_id)
    ImGui_GetIDPtr(ptr_id)
  end

  # arg: int_id(int)
  # ret: uint
  def self.GetIDInt(int_id)
    ImGui_GetIDInt(int_id)
  end

  # arg: text(const char*)
  # ret: void
  def self.TextUnformatted(text)
    ImGui_TextUnformatted(text)
  end

  # arg: text(const char*), text_end(const char*)
  # ret: void
  def self.TextUnformattedEx(text, text_end = nil)
    ImGui_TextUnformattedEx(text, text_end)
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.Text(fmt, *varargs)
    ImGui_Text(fmt, *varargs)
  end

  # arg: col(ImVec4), fmt(const char*), __unnamed_arg2__(...)
  # ret: void
  def self.TextColored(col, fmt, *varargs)
    ImGui_TextColored(col, fmt, *varargs)
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.TextDisabled(fmt, *varargs)
    ImGui_TextDisabled(fmt, *varargs)
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.TextWrapped(fmt, *varargs)
    ImGui_TextWrapped(fmt, *varargs)
  end

  # arg: label(const char*), fmt(const char*), __unnamed_arg2__(...)
  # ret: void
  def self.LabelText(label, fmt, *varargs)
    ImGui_LabelText(label, fmt, *varargs)
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.BulletText(fmt, *varargs)
    ImGui_BulletText(fmt, *varargs)
  end

  # arg: label(const char*)
  # ret: void
  def self.SeparatorText(label)
    ImGui_SeparatorText(label)
  end

  # arg: label(const char*)
  # ret: bool
  def self.Button(label)
    ImGui_Button(label)
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  def self.ButtonEx(label, size = ImVec2.create(0,0))
    ImGui_ButtonEx(label, size)
  end

  # arg: label(const char*)
  # ret: bool
  def self.SmallButton(label)
    ImGui_SmallButton(label)
  end

  # arg: str_id(const char*), size(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.InvisibleButton(str_id, size, flags = 0)
    ImGui_InvisibleButton(str_id, size, flags)
  end

  # arg: str_id(const char*), dir(ImGuiDir)
  # ret: bool
  def self.ArrowButton(str_id, dir)
    ImGui_ArrowButton(str_id, dir)
  end

  # arg: label(const char*), v(bool*)
  # ret: bool
  def self.Checkbox(label, v)
    ImGui_Checkbox(label, v)
  end

  # arg: label(const char*), flags(int*), flags_value(int)
  # ret: bool
  def self.CheckboxFlagsIntPtr(label, flags, flags_value)
    ImGui_CheckboxFlagsIntPtr(label, flags, flags_value)
  end

  # arg: label(const char*), flags(unsigned int*), flags_value(unsigned int)
  # ret: bool
  def self.CheckboxFlagsUintPtr(label, flags, flags_value)
    ImGui_CheckboxFlagsUintPtr(label, flags, flags_value)
  end

  # arg: label(const char*), active(bool)
  # ret: bool
  def self.RadioButton(label, active)
    ImGui_RadioButton(label, active)
  end

  # arg: label(const char*), v(int*), v_button(int)
  # ret: bool
  def self.RadioButtonIntPtr(label, v, v_button)
    ImGui_RadioButtonIntPtr(label, v, v_button)
  end

  # arg: fraction(float), size_arg(ImVec2), overlay(const char*)
  # ret: void
  def self.ProgressBar(fraction, size_arg = ImVec2.create(-FLT_MIN,0), overlay = nil)
    ImGui_ProgressBar(fraction, size_arg, overlay)
  end

  # ret: void
  def self.Bullet()
    ImGui_Bullet()
  end

  # arg: label(const char*)
  # ret: bool
  def self.TextLink(label)
    ImGui_TextLink(label)
  end

  # arg: label(const char*)
  # ret: bool
  def self.TextLinkOpenURL(label)
    ImGui_TextLinkOpenURL(label)
  end

  # arg: label(const char*), url(const char*)
  # ret: bool
  def self.TextLinkOpenURLEx(label, url = nil)
    ImGui_TextLinkOpenURLEx(label, url)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2)
  # ret: void
  def self.Image(tex_ref, image_size)
    ImGui_Image(tex_ref, image_size)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2)
  # ret: void
  def self.ImageEx(tex_ref, image_size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1))
    ImGui_ImageEx(tex_ref, image_size, uv0, uv1)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2)
  # ret: void
  def self.ImageWithBg(tex_ref, image_size)
    ImGui_ImageWithBg(tex_ref, image_size)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2), bg_col(ImVec4), tint_col(ImVec4)
  # ret: void
  def self.ImageWithBgEx(tex_ref, image_size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))
    ImGui_ImageWithBgEx(tex_ref, image_size, uv0, uv1, bg_col, tint_col)
  end

  # arg: str_id(const char*), tex_ref(ImTextureRef), image_size(ImVec2)
  # ret: bool
  def self.ImageButton(str_id, tex_ref, image_size)
    ImGui_ImageButton(str_id, tex_ref, image_size)
  end

  # arg: str_id(const char*), tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2), bg_col(ImVec4), tint_col(ImVec4)
  # ret: bool
  def self.ImageButtonEx(str_id, tex_ref, image_size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))
    ImGui_ImageButtonEx(str_id, tex_ref, image_size, uv0, uv1, bg_col, tint_col)
  end

  # arg: label(const char*), preview_value(const char*), flags(ImGuiComboFlags)
  # ret: bool
  def self.BeginCombo(label, preview_value, flags = 0)
    ImGui_BeginCombo(label, preview_value, flags)
  end

  # ret: void
  def self.EndCombo()
    ImGui_EndCombo()
  end

  # arg: label(const char*), current_item(int*), items(const char*const[]), items_count(int)
  # ret: bool
  def self.ComboChar(label, current_item, items, items_count)
    ImGui_ComboChar(label, current_item, items, items_count)
  end

  # arg: label(const char*), current_item(int*), items(const char*const[]), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboCharEx(label, current_item, items, items_count, popup_max_height_in_items = -1)
    ImGui_ComboCharEx(label, current_item, items, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), items_separated_by_zeros(const char*)
  # ret: bool
  def self.Combo(label, current_item, items_separated_by_zeros)
    ImGui_Combo(label, current_item, items_separated_by_zeros)
  end

  # arg: label(const char*), current_item(int*), items_separated_by_zeros(const char*), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboEx(label, current_item, items_separated_by_zeros, popup_max_height_in_items = -1)
    ImGui_ComboEx(label, current_item, items_separated_by_zeros, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int)
  # ret: bool
  def self.ComboCallback(label, current_item, getter, user_data, items_count)
    ImGui_ComboCallback(label, current_item, getter, user_data, items_count)
  end

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboCallbackEx(label, current_item, getter, user_data, items_count, popup_max_height_in_items = -1)
    ImGui_ComboCallbackEx(label, current_item, getter, user_data, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), v(float*)
  # ret: bool
  def self.DragFloat(label, v)
    ImGui_DragFloat(label, v)
  end

  # arg: label(const char*), v(float*), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatEx(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloatEx(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2])
  # ret: bool
  def self.DragFloat2(label, v)
    ImGui_DragFloat2(label, v)
  end

  # arg: label(const char*), v(float[2]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat2Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat2Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3])
  # ret: bool
  def self.DragFloat3(label, v)
    ImGui_DragFloat3(label, v)
  end

  # arg: label(const char*), v(float[3]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat3Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat3Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4])
  # ret: bool
  def self.DragFloat4(label, v)
    ImGui_DragFloat4(label, v)
  end

  # arg: label(const char*), v(float[4]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat4Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat4Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(float*), v_current_max(float*)
  # ret: bool
  def self.DragFloatRange2(label, v_current_min, v_current_max)
    ImGui_DragFloatRange2(label, v_current_min, v_current_max)
  end

  # arg: label(const char*), v_current_min(float*), v_current_max(float*), v_speed(float), v_min(float), v_max(float), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatRange2Ex(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", format_max = nil, flags = 0)
    ImGui_DragFloatRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), v(int*)
  # ret: bool
  def self.DragInt(label, v)
    ImGui_DragInt(label, v)
  end

  # arg: label(const char*), v(int*), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntEx(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragIntEx(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2])
  # ret: bool
  def self.DragInt2(label, v)
    ImGui_DragInt2(label, v)
  end

  # arg: label(const char*), v(int[2]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt2Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt2Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3])
  # ret: bool
  def self.DragInt3(label, v)
    ImGui_DragInt3(label, v)
  end

  # arg: label(const char*), v(int[3]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt3Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt3Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4])
  # ret: bool
  def self.DragInt4(label, v)
    ImGui_DragInt4(label, v)
  end

  # arg: label(const char*), v(int[4]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt4Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt4Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(int*), v_current_max(int*)
  # ret: bool
  def self.DragIntRange2(label, v_current_min, v_current_max)
    ImGui_DragIntRange2(label, v_current_min, v_current_max)
  end

  # arg: label(const char*), v_current_min(int*), v_current_max(int*), v_speed(float), v_min(int), v_max(int), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntRange2Ex(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", format_max = nil, flags = 0)
    ImGui_DragIntRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*)
  # ret: bool
  def self.DragScalar(label, data_type, p_data)
    ImGui_DragScalar(label, data_type, p_data)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarEx(label, data_type, p_data, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    ImGui_DragScalarEx(label, data_type, p_data, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int)
  # ret: bool
  def self.DragScalarN(label, data_type, p_data, components)
    ImGui_DragScalarN(label, data_type, p_data, components)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarNEx(label, data_type, p_data, components, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    ImGui_DragScalarNEx(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), v(float*), v_min(float), v_max(float)
  # ret: bool
  def self.SliderFloat(label, v, v_min, v_max)
    ImGui_SliderFloat(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloatEx(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloatEx(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_min(float), v_max(float)
  # ret: bool
  def self.SliderFloat2(label, v, v_min, v_max)
    ImGui_SliderFloat2(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(float[2]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat2Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat2Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_min(float), v_max(float)
  # ret: bool
  def self.SliderFloat3(label, v, v_min, v_max)
    ImGui_SliderFloat3(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(float[3]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat3Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat3Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_min(float), v_max(float)
  # ret: bool
  def self.SliderFloat4(label, v, v_min, v_max)
    ImGui_SliderFloat4(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(float[4]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat4Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat4Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_rad(float*)
  # ret: bool
  def self.SliderAngle(label, v_rad)
    ImGui_SliderAngle(label, v_rad)
  end

  # arg: label(const char*), v_rad(float*), v_degrees_min(float), v_degrees_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderAngleEx(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg", flags = 0)
    ImGui_SliderAngleEx(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
  end

  # arg: label(const char*), v(int*), v_min(int), v_max(int)
  # ret: bool
  def self.SliderInt(label, v, v_min, v_max)
    ImGui_SliderInt(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderIntEx(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderIntEx(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_min(int), v_max(int)
  # ret: bool
  def self.SliderInt2(label, v, v_min, v_max)
    ImGui_SliderInt2(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(int[2]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt2Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt2Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_min(int), v_max(int)
  # ret: bool
  def self.SliderInt3(label, v, v_min, v_max)
    ImGui_SliderInt3(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(int[3]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt3Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt3Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_min(int), v_max(int)
  # ret: bool
  def self.SliderInt4(label, v, v_min, v_max)
    ImGui_SliderInt4(label, v, v_min, v_max)
  end

  # arg: label(const char*), v(int[4]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt4Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt4Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*)
  # ret: bool
  def self.SliderScalar(label, data_type, p_data, p_min, p_max)
    ImGui_SliderScalar(label, data_type, p_data, p_min, p_max)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarEx(label, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    ImGui_SliderScalarEx(label, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_min(const void*), p_max(const void*)
  # ret: bool
  def self.SliderScalarN(label, data_type, p_data, components, p_min, p_max)
    ImGui_SliderScalarN(label, data_type, p_data, components, p_min, p_max)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarNEx(label, data_type, p_data, components, p_min, p_max, format = nil, flags = 0)
    ImGui_SliderScalarNEx(label, data_type, p_data, components, p_min, p_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(float*), v_min(float), v_max(float)
  # ret: bool
  def self.VSliderFloat(label, size, v, v_min, v_max)
    ImGui_VSliderFloat(label, size, v, v_min, v_max)
  end

  # arg: label(const char*), size(ImVec2), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderFloatEx(label, size, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_VSliderFloatEx(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(int*), v_min(int), v_max(int)
  # ret: bool
  def self.VSliderInt(label, size, v, v_min, v_max)
    ImGui_VSliderInt(label, size, v, v_min, v_max)
  end

  # arg: label(const char*), size(ImVec2), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderIntEx(label, size, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_VSliderIntEx(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*)
  # ret: bool
  def self.VSliderScalar(label, size, data_type, p_data, p_min, p_max)
    ImGui_VSliderScalar(label, size, data_type, p_data, p_min, p_max)
  end

  # arg: label(const char*), size(ImVec2), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderScalarEx(label, size, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    ImGui_VSliderScalarEx(label, size, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputText(label, buf, buf_size, flags = 0)
    ImGui_InputText(label, buf, buf_size, flags)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextEx(label, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextEx(label, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t)
  # ret: bool
  def self.InputTextMultiline(label, buf, buf_size)
    ImGui_InputTextMultiline(label, buf, buf_size)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), size(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextMultilineEx(label, buf, buf_size, size = ImVec2.create(0,0), flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextMultilineEx(label, buf, buf_size, size, flags, callback, user_data)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputTextWithHint(label, hint, buf, buf_size, flags = 0)
    ImGui_InputTextWithHint(label, hint, buf, buf_size, flags)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextWithHintEx(label, hint, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextWithHintEx(label, hint, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), v(float*)
  # ret: bool
  def self.InputFloat(label, v)
    ImGui_InputFloat(label, v)
  end

  # arg: label(const char*), v(float*), step(float), step_fast(float), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloatEx(label, v, step = 0.0, step_fast = 0.0, format = "%.3f", flags = 0)
    ImGui_InputFloatEx(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float[2])
  # ret: bool
  def self.InputFloat2(label, v)
    ImGui_InputFloat2(label, v)
  end

  # arg: label(const char*), v(float[2]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat2Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat2Ex(label, v, format, flags)
  end

  # arg: label(const char*), v(float[3])
  # ret: bool
  def self.InputFloat3(label, v)
    ImGui_InputFloat3(label, v)
  end

  # arg: label(const char*), v(float[3]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat3Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat3Ex(label, v, format, flags)
  end

  # arg: label(const char*), v(float[4])
  # ret: bool
  def self.InputFloat4(label, v)
    ImGui_InputFloat4(label, v)
  end

  # arg: label(const char*), v(float[4]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat4Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat4Ex(label, v, format, flags)
  end

  # arg: label(const char*), v(int*)
  # ret: bool
  def self.InputInt(label, v)
    ImGui_InputInt(label, v)
  end

  # arg: label(const char*), v(int*), step(int), step_fast(int), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputIntEx(label, v, step = 1, step_fast = 100, flags = 0)
    ImGui_InputIntEx(label, v, step, step_fast, flags)
  end

  # arg: label(const char*), v(int[2]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt2(label, v, flags = 0)
    ImGui_InputInt2(label, v, flags)
  end

  # arg: label(const char*), v(int[3]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt3(label, v, flags = 0)
    ImGui_InputInt3(label, v, flags)
  end

  # arg: label(const char*), v(int[4]), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt4(label, v, flags = 0)
    ImGui_InputInt4(label, v, flags)
  end

  # arg: label(const char*), v(double*)
  # ret: bool
  def self.InputDouble(label, v)
    ImGui_InputDouble(label, v)
  end

  # arg: label(const char*), v(double*), step(double), step_fast(double), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputDoubleEx(label, v, step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0)
    ImGui_InputDoubleEx(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*)
  # ret: bool
  def self.InputScalar(label, data_type, p_data)
    ImGui_InputScalar(label, data_type, p_data)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalarEx(label, data_type, p_data, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    ImGui_InputScalarEx(label, data_type, p_data, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int)
  # ret: bool
  def self.InputScalarN(label, data_type, p_data, components)
    ImGui_InputScalarN(label, data_type, p_data, components)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalarNEx(label, data_type, p_data, components, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    ImGui_InputScalarNEx(label, data_type, p_data, components, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), col(float[3]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorEdit3(label, col, flags = 0)
    ImGui_ColorEdit3(label, col, flags)
  end

  # arg: label(const char*), col(float[4]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorEdit4(label, col, flags = 0)
    ImGui_ColorEdit4(label, col, flags)
  end

  # arg: label(const char*), col(float[3]), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorPicker3(label, col, flags = 0)
    ImGui_ColorPicker3(label, col, flags)
  end

  # arg: label(const char*), col(float[4]), flags(ImGuiColorEditFlags), ref_col(const float*)
  # ret: bool
  def self.ColorPicker4(label, col, flags = 0, ref_col = nil)
    ImGui_ColorPicker4(label, col, flags, ref_col)
  end

  # arg: desc_id(const char*), col(ImVec4), flags(ImGuiColorEditFlags)
  # ret: bool
  def self.ColorButton(desc_id, col, flags = 0)
    ImGui_ColorButton(desc_id, col, flags)
  end

  # arg: desc_id(const char*), col(ImVec4), flags(ImGuiColorEditFlags), size(ImVec2)
  # ret: bool
  def self.ColorButtonEx(desc_id, col, flags = 0, size = ImVec2.create(0,0))
    ImGui_ColorButtonEx(desc_id, col, flags, size)
  end

  # arg: flags(ImGuiColorEditFlags)
  # ret: void
  def self.SetColorEditOptions(flags)
    ImGui_SetColorEditOptions(flags)
  end

  # arg: label(const char*)
  # ret: bool
  def self.TreeNode(label)
    ImGui_TreeNode(label)
  end

  # arg: str_id(const char*), fmt(const char*), __unnamed_arg2__(...)
  # ret: bool
  def self.TreeNodeStr(str_id, fmt, *varargs)
    ImGui_TreeNodeStr(str_id, fmt, *varargs)
  end

  # arg: ptr_id(const void*), fmt(const char*), __unnamed_arg2__(...)
  # ret: bool
  def self.TreeNodePtr(ptr_id, fmt, *varargs)
    ImGui_TreeNodePtr(ptr_id, fmt, *varargs)
  end

  # arg: label(const char*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.TreeNodeEx(label, flags = 0)
    ImGui_TreeNodeEx(label, flags)
  end

  # arg: str_id(const char*), flags(ImGuiTreeNodeFlags), fmt(const char*), __unnamed_arg3__(...)
  # ret: bool
  def self.TreeNodeExStr(str_id, flags, fmt, *varargs)
    ImGui_TreeNodeExStr(str_id, flags, fmt, *varargs)
  end

  # arg: ptr_id(const void*), flags(ImGuiTreeNodeFlags), fmt(const char*), __unnamed_arg3__(...)
  # ret: bool
  def self.TreeNodeExPtr(ptr_id, flags, fmt, *varargs)
    ImGui_TreeNodeExPtr(ptr_id, flags, fmt, *varargs)
  end

  # arg: str_id(const char*)
  # ret: void
  def self.TreePush(str_id)
    ImGui_TreePush(str_id)
  end

  # arg: ptr_id(const void*)
  # ret: void
  def self.TreePushPtr(ptr_id)
    ImGui_TreePushPtr(ptr_id)
  end

  # ret: void
  def self.TreePop()
    ImGui_TreePop()
  end

  # ret: float
  def self.GetTreeNodeToLabelSpacing()
    ImGui_GetTreeNodeToLabelSpacing()
  end

  # arg: label(const char*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.CollapsingHeader(label, flags = 0)
    ImGui_CollapsingHeader(label, flags)
  end

  # arg: label(const char*), p_visible(bool*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.CollapsingHeaderBoolPtr(label, p_visible, flags = 0)
    ImGui_CollapsingHeaderBoolPtr(label, p_visible, flags)
  end

  # arg: is_open(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextItemOpen(is_open, cond = 0)
    ImGui_SetNextItemOpen(is_open, cond)
  end

  # arg: storage_id(ImGuiID)
  # ret: void
  def self.SetNextItemStorageID(storage_id)
    ImGui_SetNextItemStorageID(storage_id)
  end

  # arg: storage_id(ImGuiID)
  # ret: bool
  def self.TreeNodeGetOpen(storage_id)
    ImGui_TreeNodeGetOpen(storage_id)
  end

  # arg: label(const char*)
  # ret: bool
  def self.Selectable(label)
    ImGui_Selectable(label)
  end

  # arg: label(const char*), selected(bool), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.SelectableEx(label, selected = false, flags = 0, size = ImVec2.create(0,0))
    ImGui_SelectableEx(label, selected, flags, size)
  end

  # arg: label(const char*), p_selected(bool*), flags(ImGuiSelectableFlags)
  # ret: bool
  def self.SelectableBoolPtr(label, p_selected, flags = 0)
    ImGui_SelectableBoolPtr(label, p_selected, flags)
  end

  # arg: label(const char*), p_selected(bool*), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.SelectableBoolPtrEx(label, p_selected, flags = 0, size = ImVec2.create(0,0))
    ImGui_SelectableBoolPtrEx(label, p_selected, flags, size)
  end

  # arg: flags(ImGuiMultiSelectFlags)
  # ret: pointer
  def self.BeginMultiSelect(flags)
    ImGui_BeginMultiSelect(flags)
  end

  # arg: flags(ImGuiMultiSelectFlags), selection_size(int), items_count(int)
  # ret: pointer
  def self.BeginMultiSelectEx(flags, selection_size = -1, items_count = -1)
    ImGui_BeginMultiSelectEx(flags, selection_size, items_count)
  end

  # ret: pointer
  def self.EndMultiSelect()
    ImGui_EndMultiSelect()
  end

  # arg: selection_user_data(ImGuiSelectionUserData)
  # ret: void
  def self.SetNextItemSelectionUserData(selection_user_data)
    ImGui_SetNextItemSelectionUserData(selection_user_data)
  end

  # ret: bool
  def self.IsItemToggledSelection()
    ImGui_IsItemToggledSelection()
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  def self.BeginListBox(label, size = ImVec2.create(0,0))
    ImGui_BeginListBox(label, size)
  end

  # ret: void
  def self.EndListBox()
    ImGui_EndListBox()
  end

  # arg: label(const char*), current_item(int*), items(const char*const[]), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBox(label, current_item, items, items_count, height_in_items = -1)
    ImGui_ListBox(label, current_item, items, items_count, height_in_items)
  end

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int)
  # ret: bool
  def self.ListBoxCallback(label, current_item, getter, user_data, items_count)
    ImGui_ListBoxCallback(label, current_item, getter, user_data, items_count)
  end

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBoxCallbackEx(label, current_item, getter, user_data, items_count, height_in_items = -1)
    ImGui_ListBoxCallbackEx(label, current_item, getter, user_data, items_count, height_in_items)
  end

  # arg: label(const char*), values(const float*), values_count(int)
  # ret: void
  def self.PlotLines(label, values, values_count)
    ImGui_PlotLines(label, values, values_count)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotLinesEx(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    ImGui_PlotLinesEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  # arg: label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int)
  # ret: void
  def self.PlotLinesCallback(label, values_getter, data, values_count)
    ImGui_PlotLinesCallback(label, values_getter, data, values_count)
  end

  # arg: label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2)
  # ret: void
  def self.PlotLinesCallbackEx(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    ImGui_PlotLinesCallbackEx(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  # arg: label(const char*), values(const float*), values_count(int)
  # ret: void
  def self.PlotHistogram(label, values, values_count)
    ImGui_PlotHistogram(label, values, values_count)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotHistogramEx(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    ImGui_PlotHistogramEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  # arg: label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int)
  # ret: void
  def self.PlotHistogramCallback(label, values_getter, data, values_count)
    ImGui_PlotHistogramCallback(label, values_getter, data, values_count)
  end

  # arg: label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2)
  # ret: void
  def self.PlotHistogramCallbackEx(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    ImGui_PlotHistogramCallbackEx(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  # ret: bool
  def self.BeginMenuBar()
    ImGui_BeginMenuBar()
  end

  # ret: void
  def self.EndMenuBar()
    ImGui_EndMenuBar()
  end

  # ret: bool
  def self.BeginMainMenuBar()
    ImGui_BeginMainMenuBar()
  end

  # ret: void
  def self.EndMainMenuBar()
    ImGui_EndMainMenuBar()
  end

  # arg: label(const char*)
  # ret: bool
  def self.BeginMenu(label)
    ImGui_BeginMenu(label)
  end

  # arg: label(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenuEx(label, enabled = true)
    ImGui_BeginMenuEx(label, enabled)
  end

  # ret: void
  def self.EndMenu()
    ImGui_EndMenu()
  end

  # arg: label(const char*)
  # ret: bool
  def self.MenuItem(label)
    ImGui_MenuItem(label)
  end

  # arg: label(const char*), shortcut(const char*), selected(bool), enabled(bool)
  # ret: bool
  def self.MenuItemEx(label, shortcut = nil, selected = false, enabled = true)
    ImGui_MenuItemEx(label, shortcut, selected, enabled)
  end

  # arg: label(const char*), shortcut(const char*), p_selected(bool*), enabled(bool)
  # ret: bool
  def self.MenuItemBoolPtr(label, shortcut, p_selected, enabled = true)
    ImGui_MenuItemBoolPtr(label, shortcut, p_selected, enabled)
  end

  # ret: bool
  def self.BeginTooltip()
    ImGui_BeginTooltip()
  end

  # ret: void
  def self.EndTooltip()
    ImGui_EndTooltip()
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.SetTooltip(fmt, *varargs)
    ImGui_SetTooltip(fmt, *varargs)
  end

  # ret: bool
  def self.BeginItemTooltip()
    ImGui_BeginItemTooltip()
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.SetItemTooltip(fmt, *varargs)
    ImGui_SetItemTooltip(fmt, *varargs)
  end

  # arg: str_id(const char*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopup(str_id, flags = 0)
    ImGui_BeginPopup(str_id, flags)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupModal(name, p_open = nil, flags = 0)
    ImGui_BeginPopupModal(name, p_open, flags)
  end

  # ret: void
  def self.EndPopup()
    ImGui_EndPopup()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopup(str_id, popup_flags = 0)
    ImGui_OpenPopup(str_id, popup_flags)
  end

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupID(id, popup_flags = 0)
    ImGui_OpenPopupID(id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupOnItemClick(str_id = nil, popup_flags = 0)
    ImGui_OpenPopupOnItemClick(str_id, popup_flags)
  end

  # ret: void
  def self.CloseCurrentPopup()
    ImGui_CloseCurrentPopup()
  end

  # ret: bool
  def self.BeginPopupContextItem()
    ImGui_BeginPopupContextItem()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextItemEx(str_id = nil, popup_flags = 0)
    ImGui_BeginPopupContextItemEx(str_id, popup_flags)
  end

  # ret: bool
  def self.BeginPopupContextWindow()
    ImGui_BeginPopupContextWindow()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextWindowEx(str_id = nil, popup_flags = 0)
    ImGui_BeginPopupContextWindowEx(str_id, popup_flags)
  end

  # ret: bool
  def self.BeginPopupContextVoid()
    ImGui_BeginPopupContextVoid()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextVoidEx(str_id = nil, popup_flags = 0)
    ImGui_BeginPopupContextVoidEx(str_id, popup_flags)
  end

  # arg: str_id(const char*), flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpen(str_id, flags = 0)
    ImGui_IsPopupOpen(str_id, flags)
  end

  # arg: str_id(const char*), columns(int), flags(ImGuiTableFlags)
  # ret: bool
  def self.BeginTable(str_id, columns, flags = 0)
    ImGui_BeginTable(str_id, columns, flags)
  end

  # arg: str_id(const char*), columns(int), flags(ImGuiTableFlags), outer_size(ImVec2), inner_width(float)
  # ret: bool
  def self.BeginTableEx(str_id, columns, flags = 0, outer_size = ImVec2.create(0.0,0.0), inner_width = 0.0)
    ImGui_BeginTableEx(str_id, columns, flags, outer_size, inner_width)
  end

  # ret: void
  def self.EndTable()
    ImGui_EndTable()
  end

  # ret: void
  def self.TableNextRow()
    ImGui_TableNextRow()
  end

  # arg: row_flags(ImGuiTableRowFlags), min_row_height(float)
  # ret: void
  def self.TableNextRowEx(row_flags = 0, min_row_height = 0.0)
    ImGui_TableNextRowEx(row_flags, min_row_height)
  end

  # ret: bool
  def self.TableNextColumn()
    ImGui_TableNextColumn()
  end

  # arg: column_n(int)
  # ret: bool
  def self.TableSetColumnIndex(column_n)
    ImGui_TableSetColumnIndex(column_n)
  end

  # arg: label(const char*), flags(ImGuiTableColumnFlags)
  # ret: void
  def self.TableSetupColumn(label, flags = 0)
    ImGui_TableSetupColumn(label, flags)
  end

  # arg: label(const char*), flags(ImGuiTableColumnFlags), init_width_or_weight(float), user_id(ImGuiID)
  # ret: void
  def self.TableSetupColumnEx(label, flags = 0, init_width_or_weight = 0.0, user_id = 0)
    ImGui_TableSetupColumnEx(label, flags, init_width_or_weight, user_id)
  end

  # arg: cols(int), rows(int)
  # ret: void
  def self.TableSetupScrollFreeze(cols, rows)
    ImGui_TableSetupScrollFreeze(cols, rows)
  end

  # arg: label(const char*)
  # ret: void
  def self.TableHeader(label)
    ImGui_TableHeader(label)
  end

  # ret: void
  def self.TableHeadersRow()
    ImGui_TableHeadersRow()
  end

  # ret: void
  def self.TableAngledHeadersRow()
    ImGui_TableAngledHeadersRow()
  end

  # ret: pointer
  def self.TableGetSortSpecs()
    ImGui_TableGetSortSpecs()
  end

  # ret: int
  def self.TableGetColumnCount()
    ImGui_TableGetColumnCount()
  end

  # ret: int
  def self.TableGetColumnIndex()
    ImGui_TableGetColumnIndex()
  end

  # ret: int
  def self.TableGetRowIndex()
    ImGui_TableGetRowIndex()
  end

  # arg: column_n(int)
  # ret: pointer
  def self.TableGetColumnName(column_n = -1)
    ImGui_TableGetColumnName(column_n)
  end

  # arg: column_n(int)
  # ret: int
  def self.TableGetColumnFlags(column_n = -1)
    ImGui_TableGetColumnFlags(column_n)
  end

  # arg: column_n(int), v(bool)
  # ret: void
  def self.TableSetColumnEnabled(column_n, v)
    ImGui_TableSetColumnEnabled(column_n, v)
  end

  # ret: int
  def self.TableGetHoveredColumn()
    ImGui_TableGetHoveredColumn()
  end

  # arg: target(ImGuiTableBgTarget), color(ImU32), column_n(int)
  # ret: void
  def self.TableSetBgColor(target, color, column_n = -1)
    ImGui_TableSetBgColor(target, color, column_n)
  end

  # ret: void
  def self.Columns()
    ImGui_Columns()
  end

  # arg: count(int), id(const char*), borders(bool)
  # ret: void
  def self.ColumnsEx(count = 1, id = nil, borders = true)
    ImGui_ColumnsEx(count, id, borders)
  end

  # ret: void
  def self.NextColumn()
    ImGui_NextColumn()
  end

  # ret: int
  def self.GetColumnIndex()
    ImGui_GetColumnIndex()
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnWidth(column_index = -1)
    ImGui_GetColumnWidth(column_index)
  end

  # arg: column_index(int), width(float)
  # ret: void
  def self.SetColumnWidth(column_index, width)
    ImGui_SetColumnWidth(column_index, width)
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnOffset(column_index = -1)
    ImGui_GetColumnOffset(column_index)
  end

  # arg: column_index(int), offset_x(float)
  # ret: void
  def self.SetColumnOffset(column_index, offset_x)
    ImGui_SetColumnOffset(column_index, offset_x)
  end

  # ret: int
  def self.GetColumnsCount()
    ImGui_GetColumnsCount()
  end

  # arg: str_id(const char*), flags(ImGuiTabBarFlags)
  # ret: bool
  def self.BeginTabBar(str_id, flags = 0)
    ImGui_BeginTabBar(str_id, flags)
  end

  # ret: void
  def self.EndTabBar()
    ImGui_EndTabBar()
  end

  # arg: label(const char*), p_open(bool*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.BeginTabItem(label, p_open = nil, flags = 0)
    ImGui_BeginTabItem(label, p_open, flags)
  end

  # ret: void
  def self.EndTabItem()
    ImGui_EndTabItem()
  end

  # arg: label(const char*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.TabItemButton(label, flags = 0)
    ImGui_TabItemButton(label, flags)
  end

  # arg: tab_or_docked_window_label(const char*)
  # ret: void
  def self.SetTabItemClosed(tab_or_docked_window_label)
    ImGui_SetTabItemClosed(tab_or_docked_window_label)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToTTY(auto_open_depth = -1)
    ImGui_LogToTTY(auto_open_depth)
  end

  # arg: auto_open_depth(int), filename(const char*)
  # ret: void
  def self.LogToFile(auto_open_depth = -1, filename = nil)
    ImGui_LogToFile(auto_open_depth, filename)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToClipboard(auto_open_depth = -1)
    ImGui_LogToClipboard(auto_open_depth)
  end

  # ret: void
  def self.LogFinish()
    ImGui_LogFinish()
  end

  # ret: void
  def self.LogButtons()
    ImGui_LogButtons()
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.LogText(fmt, *varargs)
    ImGui_LogText(fmt, *varargs)
  end

  # arg: flags(ImGuiDragDropFlags)
  # ret: bool
  def self.BeginDragDropSource(flags = 0)
    ImGui_BeginDragDropSource(flags)
  end

  # arg: type(const char*), data(const void*), sz(size_t), cond(ImGuiCond)
  # ret: bool
  def self.SetDragDropPayload(type, data, sz, cond = 0)
    ImGui_SetDragDropPayload(type, data, sz, cond)
  end

  # ret: void
  def self.EndDragDropSource()
    ImGui_EndDragDropSource()
  end

  # ret: bool
  def self.BeginDragDropTarget()
    ImGui_BeginDragDropTarget()
  end

  # arg: type(const char*), flags(ImGuiDragDropFlags)
  # ret: pointer
  def self.AcceptDragDropPayload(type, flags = 0)
    ImGui_AcceptDragDropPayload(type, flags)
  end

  # ret: void
  def self.EndDragDropTarget()
    ImGui_EndDragDropTarget()
  end

  # ret: pointer
  def self.GetDragDropPayload()
    ImGui_GetDragDropPayload()
  end

  # arg: disabled(bool)
  # ret: void
  def self.BeginDisabled(disabled = true)
    ImGui_BeginDisabled(disabled)
  end

  # ret: void
  def self.EndDisabled()
    ImGui_EndDisabled()
  end

  # arg: clip_rect_min(ImVec2), clip_rect_max(ImVec2), intersect_with_current_clip_rect(bool)
  # ret: void
  def self.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
    ImGui_PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  # ret: void
  def self.PopClipRect()
    ImGui_PopClipRect()
  end

  # ret: void
  def self.SetItemDefaultFocus()
    ImGui_SetItemDefaultFocus()
  end

  # ret: void
  def self.SetKeyboardFocusHere()
    ImGui_SetKeyboardFocusHere()
  end

  # arg: offset(int)
  # ret: void
  def self.SetKeyboardFocusHereEx(offset = 0)
    ImGui_SetKeyboardFocusHereEx(offset)
  end

  # arg: visible(bool)
  # ret: void
  def self.SetNavCursorVisible(visible)
    ImGui_SetNavCursorVisible(visible)
  end

  # ret: void
  def self.SetNextItemAllowOverlap()
    ImGui_SetNextItemAllowOverlap()
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsItemHovered(flags = 0)
    ImGui_IsItemHovered(flags)
  end

  # ret: bool
  def self.IsItemActive()
    ImGui_IsItemActive()
  end

  # ret: bool
  def self.IsItemFocused()
    ImGui_IsItemFocused()
  end

  # ret: bool
  def self.IsItemClicked()
    ImGui_IsItemClicked()
  end

  # arg: mouse_button(ImGuiMouseButton)
  # ret: bool
  def self.IsItemClickedEx(mouse_button = 0)
    ImGui_IsItemClickedEx(mouse_button)
  end

  # ret: bool
  def self.IsItemVisible()
    ImGui_IsItemVisible()
  end

  # ret: bool
  def self.IsItemEdited()
    ImGui_IsItemEdited()
  end

  # ret: bool
  def self.IsItemActivated()
    ImGui_IsItemActivated()
  end

  # ret: bool
  def self.IsItemDeactivated()
    ImGui_IsItemDeactivated()
  end

  # ret: bool
  def self.IsItemDeactivatedAfterEdit()
    ImGui_IsItemDeactivatedAfterEdit()
  end

  # ret: bool
  def self.IsItemToggledOpen()
    ImGui_IsItemToggledOpen()
  end

  # ret: bool
  def self.IsAnyItemHovered()
    ImGui_IsAnyItemHovered()
  end

  # ret: bool
  def self.IsAnyItemActive()
    ImGui_IsAnyItemActive()
  end

  # ret: bool
  def self.IsAnyItemFocused()
    ImGui_IsAnyItemFocused()
  end

  # ret: uint
  def self.GetItemID()
    ImGui_GetItemID()
  end

  # ret: ImVec2.by_value
  def self.GetItemRectMin()
    ImGui_GetItemRectMin()
  end

  # ret: ImVec2.by_value
  def self.GetItemRectMax()
    ImGui_GetItemRectMax()
  end

  # ret: ImVec2.by_value
  def self.GetItemRectSize()
    ImGui_GetItemRectSize()
  end

  # ret: int
  def self.GetItemFlags()
    ImGui_GetItemFlags()
  end

  # ret: pointer
  def self.GetMainViewport()
    ImGui_GetMainViewport()
  end

  # ret: pointer
  def self.GetBackgroundDrawList()
    ImGui_GetBackgroundDrawList()
  end

  # ret: pointer
  def self.GetForegroundDrawList()
    ImGui_GetForegroundDrawList()
  end

  # arg: size(ImVec2)
  # ret: bool
  def self.IsRectVisibleBySize(size)
    ImGui_IsRectVisibleBySize(size)
  end

  # arg: rect_min(ImVec2), rect_max(ImVec2)
  # ret: bool
  def self.IsRectVisible(rect_min, rect_max)
    ImGui_IsRectVisible(rect_min, rect_max)
  end

  # ret: double
  def self.GetTime()
    ImGui_GetTime()
  end

  # ret: int
  def self.GetFrameCount()
    ImGui_GetFrameCount()
  end

  # ret: pointer
  def self.GetDrawListSharedData()
    ImGui_GetDrawListSharedData()
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorName(idx)
    ImGui_GetStyleColorName(idx)
  end

  # arg: storage(ImGuiStorage*)
  # ret: void
  def self.SetStateStorage(storage)
    ImGui_SetStateStorage(storage)
  end

  # ret: pointer
  def self.GetStateStorage()
    ImGui_GetStateStorage()
  end

  # arg: text(const char*)
  # ret: ImVec2.by_value
  def self.CalcTextSize(text)
    ImGui_CalcTextSize(text)
  end

  # arg: text(const char*), text_end(const char*), hide_text_after_double_hash(bool), wrap_width(float)
  # ret: ImVec2.by_value
  def self.CalcTextSizeEx(text, text_end = nil, hide_text_after_double_hash = false, wrap_width = -1.0)
    ImGui_CalcTextSizeEx(text, text_end, hide_text_after_double_hash, wrap_width)
  end

  # arg: in(ImU32)
  # ret: ImVec4.by_value
  def self.ColorConvertU32ToFloat4(_in_)
    ImGui_ColorConvertU32ToFloat4(_in_)
  end

  # arg: in(ImVec4)
  # ret: uint
  def self.ColorConvertFloat4ToU32(_in_)
    ImGui_ColorConvertFloat4ToU32(_in_)
  end

  # arg: r(float), g(float), b(float), out_h(float*), out_s(float*), out_v(float*)
  # ret: void
  def self.ColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
    ImGui_ColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v)
  end

  # arg: h(float), s(float), v(float), out_r(float*), out_g(float*), out_b(float*)
  # ret: void
  def self.ColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
    ImGui_ColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyDown(key)
    ImGui_IsKeyDown(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyPressed(key)
    ImGui_IsKeyPressed(key)
  end

  # arg: key(ImGuiKey), repeat(bool)
  # ret: bool
  def self.IsKeyPressedEx(key, repeat = true)
    ImGui_IsKeyPressedEx(key, repeat)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyReleased(key)
    ImGui_IsKeyReleased(key)
  end

  # arg: key_chord(ImGuiKeyChord)
  # ret: bool
  def self.IsKeyChordPressed(key_chord)
    ImGui_IsKeyChordPressed(key_chord)
  end

  # arg: key(ImGuiKey), repeat_delay(float), rate(float)
  # ret: int
  def self.GetKeyPressedAmount(key, repeat_delay, rate)
    ImGui_GetKeyPressedAmount(key, repeat_delay, rate)
  end

  # arg: key(ImGuiKey)
  # ret: pointer
  def self.GetKeyName(key)
    ImGui_GetKeyName(key)
  end

  # arg: want_capture_keyboard(bool)
  # ret: void
  def self.SetNextFrameWantCaptureKeyboard(want_capture_keyboard)
    ImGui_SetNextFrameWantCaptureKeyboard(want_capture_keyboard)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags)
  # ret: bool
  def self.Shortcut(key_chord, flags = 0)
    ImGui_Shortcut(key_chord, flags)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags)
  # ret: void
  def self.SetNextItemShortcut(key_chord, flags = 0)
    ImGui_SetNextItemShortcut(key_chord, flags)
  end

  # arg: key(ImGuiKey)
  # ret: void
  def self.SetItemKeyOwner(key)
    ImGui_SetItemKeyOwner(key)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDown(button)
    ImGui_IsMouseDown(button)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseClicked(button)
    ImGui_IsMouseClicked(button)
  end

  # arg: button(ImGuiMouseButton), repeat(bool)
  # ret: bool
  def self.IsMouseClickedEx(button, repeat = false)
    ImGui_IsMouseClickedEx(button, repeat)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseReleased(button)
    ImGui_IsMouseReleased(button)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDoubleClicked(button)
    ImGui_IsMouseDoubleClicked(button)
  end

  # arg: button(ImGuiMouseButton), delay(float)
  # ret: bool
  def self.IsMouseReleasedWithDelay(button, delay)
    ImGui_IsMouseReleasedWithDelay(button, delay)
  end

  # arg: button(ImGuiMouseButton)
  # ret: int
  def self.GetMouseClickedCount(button)
    ImGui_GetMouseClickedCount(button)
  end

  # arg: r_min(ImVec2), r_max(ImVec2)
  # ret: bool
  def self.IsMouseHoveringRect(r_min, r_max)
    ImGui_IsMouseHoveringRect(r_min, r_max)
  end

  # arg: r_min(ImVec2), r_max(ImVec2), clip(bool)
  # ret: bool
  def self.IsMouseHoveringRectEx(r_min, r_max, clip = true)
    ImGui_IsMouseHoveringRectEx(r_min, r_max, clip)
  end

  # arg: mouse_pos(const ImVec2*)
  # ret: bool
  def self.IsMousePosValid(mouse_pos = nil)
    ImGui_IsMousePosValid(mouse_pos)
  end

  # ret: bool
  def self.IsAnyMouseDown()
    ImGui_IsAnyMouseDown()
  end

  # ret: ImVec2.by_value
  def self.GetMousePos()
    ImGui_GetMousePos()
  end

  # ret: ImVec2.by_value
  def self.GetMousePosOnOpeningCurrentPopup()
    ImGui_GetMousePosOnOpeningCurrentPopup()
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: bool
  def self.IsMouseDragging(button, lock_threshold = -1.0)
    ImGui_IsMouseDragging(button, lock_threshold)
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: ImVec2.by_value
  def self.GetMouseDragDelta(button = 0, lock_threshold = -1.0)
    ImGui_GetMouseDragDelta(button, lock_threshold)
  end

  # ret: void
  def self.ResetMouseDragDelta()
    ImGui_ResetMouseDragDelta()
  end

  # arg: button(ImGuiMouseButton)
  # ret: void
  def self.ResetMouseDragDeltaEx(button = 0)
    ImGui_ResetMouseDragDeltaEx(button)
  end

  # ret: int
  def self.GetMouseCursor()
    ImGui_GetMouseCursor()
  end

  # arg: cursor_type(ImGuiMouseCursor)
  # ret: void
  def self.SetMouseCursor(cursor_type)
    ImGui_SetMouseCursor(cursor_type)
  end

  # arg: want_capture_mouse(bool)
  # ret: void
  def self.SetNextFrameWantCaptureMouse(want_capture_mouse)
    ImGui_SetNextFrameWantCaptureMouse(want_capture_mouse)
  end

  # ret: pointer
  def self.GetClipboardText()
    ImGui_GetClipboardText()
  end

  # arg: text(const char*)
  # ret: void
  def self.SetClipboardText(text)
    ImGui_SetClipboardText(text)
  end

  # arg: ini_filename(const char*)
  # ret: void
  def self.LoadIniSettingsFromDisk(ini_filename)
    ImGui_LoadIniSettingsFromDisk(ini_filename)
  end

  # arg: ini_data(const char*), ini_size(size_t)
  # ret: void
  def self.LoadIniSettingsFromMemory(ini_data, ini_size = 0)
    ImGui_LoadIniSettingsFromMemory(ini_data, ini_size)
  end

  # arg: ini_filename(const char*)
  # ret: void
  def self.SaveIniSettingsToDisk(ini_filename)
    ImGui_SaveIniSettingsToDisk(ini_filename)
  end

  # arg: out_ini_size(size_t*)
  # ret: pointer
  def self.SaveIniSettingsToMemory(out_ini_size = nil)
    ImGui_SaveIniSettingsToMemory(out_ini_size)
  end

  # arg: text(const char*)
  # ret: void
  def self.DebugTextEncoding(text)
    ImGui_DebugTextEncoding(text)
  end

  # arg: idx(ImGuiCol)
  # ret: void
  def self.DebugFlashStyleColor(idx)
    ImGui_DebugFlashStyleColor(idx)
  end

  # ret: void
  def self.DebugStartItemPicker()
    ImGui_DebugStartItemPicker()
  end

  # arg: version_str(const char*), sz_io(size_t), sz_style(size_t), sz_vec2(size_t), sz_vec4(size_t), sz_drawvert(size_t), sz_drawidx(size_t)
  # ret: bool
  def self.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
    ImGui_DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
  end

  # arg: fmt(const char*), __unnamed_arg1__(...)
  # ret: void
  def self.DebugLog(fmt, *varargs)
    ImGui_DebugLog(fmt, *varargs)
  end

  # arg: alloc_func(ImGuiMemAllocFunc), free_func(ImGuiMemFreeFunc), user_data(void*)
  # ret: void
  def self.SetAllocatorFunctions(alloc_func, free_func, user_data = nil)
    ImGui_SetAllocatorFunctions(alloc_func, free_func, user_data)
  end

  # arg: p_alloc_func(ImGuiMemAllocFunc*), p_free_func(ImGuiMemFreeFunc*), p_user_data(void**)
  # ret: void
  def self.GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
    ImGui_GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data)
  end

  # arg: size(size_t)
  # ret: pointer
  def self.MemAlloc(size)
    ImGui_MemAlloc(size)
  end

  # arg: ptr(void*)
  # ret: void
  def self.MemFree(ptr)
    ImGui_MemFree(ptr)
  end

  # arg: font(ImFont*)
  # ret: void
  def self.PushFont(font)
    ImGui_PushFont(font)
  end

  # arg: scale(float)
  # ret: void
  def self.SetWindowFontScale(scale)
    ImGui_SetWindowFontScale(scale)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2), tint_col(ImVec4), border_col(ImVec4)
  # ret: void
  def self.ImageImVec4(tex_ref, image_size, uv0, uv1, tint_col, border_col)
    ImGui_ImageImVec4(tex_ref, image_size, uv0, uv1, tint_col, border_col)
  end

  # arg: repeat(bool)
  # ret: void
  def self.PushButtonRepeat(repeat)
    ImGui_PushButtonRepeat(repeat)
  end

  # ret: void
  def self.PopButtonRepeat()
    ImGui_PopButtonRepeat()
  end

  # arg: tab_stop(bool)
  # ret: void
  def self.PushTabStop(tab_stop)
    ImGui_PushTabStop(tab_stop)
  end

  # ret: void
  def self.PopTabStop()
    ImGui_PopTabStop()
  end

  # ret: ImVec2.by_value
  def self.GetContentRegionMax()
    ImGui_GetContentRegionMax()
  end

  # ret: ImVec2.by_value
  def self.GetWindowContentRegionMin()
    ImGui_GetWindowContentRegionMin()
  end

  # ret: ImVec2.by_value
  def self.GetWindowContentRegionMax()
    ImGui_GetWindowContentRegionMax()
  end

  # arg: ctx(ImGuiContext*)
  # ret: pointer
  def self.GetIOImGuiContextPtr(ctx)
    ImGui_GetIOImGuiContextPtr(ctx)
  end

  # arg: ctx(ImGuiContext*)
  # ret: pointer
  def self.GetPlatformIOImGuiContextPtr(ctx)
    ImGui_GetPlatformIOImGuiContextPtr(ctx)
  end

  # ret: float
  def self.GetScale()
    ImGui_GetScale()
  end

  # ret: pointer
  def self.GetCurrentWindowRead()
    ImGui_GetCurrentWindowRead()
  end

  # ret: pointer
  def self.GetCurrentWindow()
    ImGui_GetCurrentWindow()
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.FindWindowByID(id)
    ImGui_FindWindowByID(id)
  end

  # arg: name(const char*)
  # ret: pointer
  def self.FindWindowByName(name)
    ImGui_FindWindowByName(name)
  end

  # arg: window(ImGuiWindow*), flags(ImGuiWindowFlags), parent_window(ImGuiWindow*)
  # ret: void
  def self.UpdateWindowParentAndRootLinks(window, flags, parent_window)
    ImGui_UpdateWindowParentAndRootLinks(window, flags, parent_window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.UpdateWindowSkipRefresh(window)
    ImGui_UpdateWindowSkipRefresh(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: ImVec2.by_value
  def self.CalcWindowNextAutoFitSize(window)
    ImGui_CalcWindowNextAutoFitSize(window)
  end

  # arg: window(ImGuiWindow*), potential_parent(ImGuiWindow*), popup_hierarchy(bool)
  # ret: bool
  def self.IsWindowChildOf(window, potential_parent, popup_hierarchy)
    ImGui_IsWindowChildOf(window, potential_parent, popup_hierarchy)
  end

  # arg: window(ImGuiWindow*)
  # ret: bool
  def self.IsWindowInBeginStack(window)
    ImGui_IsWindowInBeginStack(window)
  end

  # arg: window(ImGuiWindow*), potential_parent(ImGuiWindow*)
  # ret: bool
  def self.IsWindowWithinBeginStackOf(window, potential_parent)
    ImGui_IsWindowWithinBeginStackOf(window, potential_parent)
  end

  # arg: potential_above(ImGuiWindow*), potential_below(ImGuiWindow*)
  # ret: bool
  def self.IsWindowAbove(potential_above, potential_below)
    ImGui_IsWindowAbove(potential_above, potential_below)
  end

  # arg: window(ImGuiWindow*)
  # ret: bool
  def self.IsWindowNavFocusable(window)
    ImGui_IsWindowNavFocusable(window)
  end

  # arg: window(ImGuiWindow*), pos(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowPosImGuiWindowPtr(window, pos, cond = 0)
    ImGui_SetWindowPosImGuiWindowPtr(window, pos, cond)
  end

  # arg: window(ImGuiWindow*), size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetWindowSizeImGuiWindowPtr(window, size, cond = 0)
    ImGui_SetWindowSizeImGuiWindowPtr(window, size, cond)
  end

  # arg: window(ImGuiWindow*), collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetWindowCollapsedImGuiWindowPtr(window, collapsed, cond = 0)
    ImGui_SetWindowCollapsedImGuiWindowPtr(window, collapsed, cond)
  end

  # arg: window(ImGuiWindow*), pos(ImVec2), size(ImVec2)
  # ret: void
  def self.SetWindowHitTestHole(window, pos, size)
    ImGui_SetWindowHitTestHole(window, pos, size)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.SetWindowHiddenAndSkipItemsForCurrentFrame(window)
    ImGui_SetWindowHiddenAndSkipItemsForCurrentFrame(window)
  end

  # arg: window(ImGuiWindow*), parent_window(ImGuiWindow*)
  # ret: void
  def self.SetWindowParentWindowForFocusRoute(window, parent_window)
    ImGui_SetWindowParentWindowForFocusRoute(window, parent_window)
  end

  # arg: window(ImGuiWindow*), r(ImRect)
  # ret: ImRect.by_value
  def self.WindowRectAbsToRel(window, r)
    ImGui_WindowRectAbsToRel(window, r)
  end

  # arg: window(ImGuiWindow*), r(ImRect)
  # ret: ImRect.by_value
  def self.WindowRectRelToAbs(window, r)
    ImGui_WindowRectRelToAbs(window, r)
  end

  # arg: window(ImGuiWindow*), p(ImVec2)
  # ret: ImVec2.by_value
  def self.WindowPosAbsToRel(window, p)
    ImGui_WindowPosAbsToRel(window, p)
  end

  # arg: window(ImGuiWindow*), p(ImVec2)
  # ret: ImVec2.by_value
  def self.WindowPosRelToAbs(window, p)
    ImGui_WindowPosRelToAbs(window, p)
  end

  # arg: window(ImGuiWindow*), flags(ImGuiFocusRequestFlags)
  # ret: void
  def self.FocusWindow(window, flags = 0)
    ImGui_FocusWindow(window, flags)
  end

  # arg: under_this_window(ImGuiWindow*), ignore_window(ImGuiWindow*), filter_viewport(ImGuiViewport*), flags(ImGuiFocusRequestFlags)
  # ret: void
  def self.FocusTopMostWindowUnderOne(under_this_window, ignore_window, filter_viewport, flags)
    ImGui_FocusTopMostWindowUnderOne(under_this_window, ignore_window, filter_viewport, flags)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToFocusFront(window)
    ImGui_BringWindowToFocusFront(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayFront(window)
    ImGui_BringWindowToDisplayFront(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayBack(window)
    ImGui_BringWindowToDisplayBack(window)
  end

  # arg: window(ImGuiWindow*), above_window(ImGuiWindow*)
  # ret: void
  def self.BringWindowToDisplayBehind(window, above_window)
    ImGui_BringWindowToDisplayBehind(window, above_window)
  end

  # arg: window(ImGuiWindow*)
  # ret: int
  def self.FindWindowDisplayIndex(window)
    ImGui_FindWindowDisplayIndex(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.FindBottomMostVisibleWindowWithinBeginStack(window)
    ImGui_FindBottomMostVisibleWindowWithinBeginStack(window)
  end

  # arg: flags(ImGuiWindowRefreshFlags)
  # ret: void
  def self.SetNextWindowRefreshPolicy(flags)
    ImGui_SetNextWindowRefreshPolicy(flags)
  end

  # arg: tex(ImTextureData*)
  # ret: void
  def self.RegisterUserTexture(tex)
    ImGui_RegisterUserTexture(tex)
  end

  # arg: tex(ImTextureData*)
  # ret: void
  def self.UnregisterUserTexture(tex)
    ImGui_UnregisterUserTexture(tex)
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.RegisterFontAtlas(atlas)
    ImGui_RegisterFontAtlas(atlas)
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.UnregisterFontAtlas(atlas)
    ImGui_UnregisterFontAtlas(atlas)
  end

  # arg: font(ImFont*), font_size_before_scaling(float), font_size_after_scaling(float)
  # ret: void
  def self.SetCurrentFont(font, font_size_before_scaling, font_size_after_scaling)
    ImGui_SetCurrentFont(font, font_size_before_scaling, font_size_after_scaling)
  end

  # arg: restore_font_size_after_scaling(float)
  # ret: void
  def self.UpdateCurrentFontSize(restore_font_size_after_scaling)
    ImGui_UpdateCurrentFontSize(restore_font_size_after_scaling)
  end

  # arg: rasterizer_density(float)
  # ret: void
  def self.SetFontRasterizerDensity(rasterizer_density)
    ImGui_SetFontRasterizerDensity(rasterizer_density)
  end

  # ret: float
  def self.GetFontRasterizerDensity()
    ImGui_GetFontRasterizerDensity()
  end

  # arg: size(float)
  # ret: float
  def self.GetRoundedFontSize(size)
    ImGui_GetRoundedFontSize(size)
  end

  # ret: pointer
  def self.GetDefaultFont()
    ImGui_GetDefaultFont()
  end

  # ret: void
  def self.PushPasswordFont()
    ImGui_PushPasswordFont()
  end

  # ret: void
  def self.PopPasswordFont()
    ImGui_PopPasswordFont()
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.GetForegroundDrawListImGuiWindowPtr(window)
    ImGui_GetForegroundDrawListImGuiWindowPtr(window)
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetBackgroundDrawListImGuiViewportPtr(viewport)
    ImGui_GetBackgroundDrawListImGuiViewportPtr(viewport)
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetForegroundDrawListImGuiViewportPtr(viewport)
    ImGui_GetForegroundDrawListImGuiViewportPtr(viewport)
  end

  # arg: draw_data(ImDrawData*), out_list(ImVector_ImDrawListPtr*), draw_list(ImDrawList*)
  # ret: void
  def self.AddDrawListToDrawDataEx(draw_data, out_list, draw_list)
    ImGui_AddDrawListToDrawDataEx(draw_data, out_list, draw_list)
  end

  # ret: void
  def self.Initialize()
    ImGui_Initialize()
  end

  # ret: void
  def self.Shutdown()
    ImGui_Shutdown()
  end

  # arg: ctx(ImGuiContext*), name(const char*)
  # ret: void
  def self.SetContextName(ctx, name)
    ImGui_SetContextName(ctx, name)
  end

  # arg: ctx(ImGuiContext*), hook(const ImGuiContextHook*)
  # ret: uint
  def self.AddContextHook(ctx, hook)
    ImGui_AddContextHook(ctx, hook)
  end

  # arg: ctx(ImGuiContext*), hook_to_remove(ImGuiID)
  # ret: void
  def self.RemoveContextHook(ctx, hook_to_remove)
    ImGui_RemoveContextHook(ctx, hook_to_remove)
  end

  # arg: ctx(ImGuiContext*), type(ImGuiContextHookType)
  # ret: void
  def self.CallContextHooks(ctx, type)
    ImGui_CallContextHooks(ctx, type)
  end

  # arg: trickle_fast_inputs(bool)
  # ret: void
  def self.UpdateInputEvents(trickle_fast_inputs)
    ImGui_UpdateInputEvents(trickle_fast_inputs)
  end

  # arg: mouse_pos(ImVec2)
  # ret: void
  def self.UpdateHoveredWindowAndCaptureFlags(mouse_pos)
    ImGui_UpdateHoveredWindowAndCaptureFlags(mouse_pos)
  end

  # arg: pos(ImVec2), find_first_and_in_any_viewport(bool), out_hovered_window(ImGuiWindow**), out_hovered_window_under_moving_window(ImGuiWindow**)
  # ret: void
  def self.FindHoveredWindowEx(pos, find_first_and_in_any_viewport, out_hovered_window, out_hovered_window_under_moving_window)
    ImGui_FindHoveredWindowEx(pos, find_first_and_in_any_viewport, out_hovered_window, out_hovered_window_under_moving_window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.StartMouseMovingWindow(window)
    ImGui_StartMouseMovingWindow(window)
  end

  # ret: void
  def self.StopMouseMovingWindow()
    ImGui_StopMouseMovingWindow()
  end

  # ret: void
  def self.UpdateMouseMovingWindowNewFrame()
    ImGui_UpdateMouseMovingWindowNewFrame()
  end

  # ret: void
  def self.UpdateMouseMovingWindowEndFrame()
    ImGui_UpdateMouseMovingWindowEndFrame()
  end

  # ret: pointer
  def self.GetWindowViewport()
    ImGui_GetWindowViewport()
  end

  # arg: viewport(ImGuiViewportP*), scale(float)
  # ret: void
  def self.ScaleWindowsInViewport(viewport, scale)
    ImGui_ScaleWindowsInViewport(viewport, scale)
  end

  # arg: window(ImGuiWindow*), viewport(ImGuiViewportP*)
  # ret: void
  def self.SetWindowViewport(window, viewport)
    ImGui_SetWindowViewport(window, viewport)
  end

  # ret: void
  def self.MarkIniSettingsDirty()
    ImGui_MarkIniSettingsDirty()
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.MarkIniSettingsDirtyImGuiWindowPtr(window)
    ImGui_MarkIniSettingsDirtyImGuiWindowPtr(window)
  end

  # ret: void
  def self.ClearIniSettings()
    ImGui_ClearIniSettings()
  end

  # arg: handler(const ImGuiSettingsHandler*)
  # ret: void
  def self.AddSettingsHandler(handler)
    ImGui_AddSettingsHandler(handler)
  end

  # arg: type_name(const char*)
  # ret: void
  def self.RemoveSettingsHandler(type_name)
    ImGui_RemoveSettingsHandler(type_name)
  end

  # arg: type_name(const char*)
  # ret: pointer
  def self.FindSettingsHandler(type_name)
    ImGui_FindSettingsHandler(type_name)
  end

  # arg: name(const char*)
  # ret: pointer
  def self.CreateNewWindowSettings(name)
    ImGui_CreateNewWindowSettings(name)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.FindWindowSettingsByID(id)
    ImGui_FindWindowSettingsByID(id)
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.FindWindowSettingsByWindow(window)
    ImGui_FindWindowSettingsByWindow(window)
  end

  # arg: name(const char*)
  # ret: void
  def self.ClearWindowSettings(name)
    ImGui_ClearWindowSettings(name)
  end

  # arg: entries(const ImGuiLocEntry*), count(int)
  # ret: void
  def self.LocalizeRegisterEntries(entries, count)
    ImGui_LocalizeRegisterEntries(entries, count)
  end

  # arg: key(ImGuiLocKey)
  # ret: pointer
  def self.LocalizeGetMsg(key)
    ImGui_LocalizeGetMsg(key)
  end

  # arg: window(ImGuiWindow*), scroll_x(float)
  # ret: void
  def self.SetScrollXImGuiWindowPtr(window, scroll_x)
    ImGui_SetScrollXImGuiWindowPtr(window, scroll_x)
  end

  # arg: window(ImGuiWindow*), scroll_y(float)
  # ret: void
  def self.SetScrollYImGuiWindowPtr(window, scroll_y)
    ImGui_SetScrollYImGuiWindowPtr(window, scroll_y)
  end

  # arg: window(ImGuiWindow*), local_x(float), center_x_ratio(float)
  # ret: void
  def self.SetScrollFromPosXImGuiWindowPtr(window, local_x, center_x_ratio)
    ImGui_SetScrollFromPosXImGuiWindowPtr(window, local_x, center_x_ratio)
  end

  # arg: window(ImGuiWindow*), local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosYImGuiWindowPtr(window, local_y, center_y_ratio)
    ImGui_SetScrollFromPosYImGuiWindowPtr(window, local_y, center_y_ratio)
  end

  # arg: flags(ImGuiScrollFlags)
  # ret: void
  def self.ScrollToItem(flags = 0)
    ImGui_ScrollToItem(flags)
  end

  # arg: window(ImGuiWindow*), rect(ImRect), flags(ImGuiScrollFlags)
  # ret: void
  def self.ScrollToRect(window, rect, flags = 0)
    ImGui_ScrollToRect(window, rect, flags)
  end

  # arg: window(ImGuiWindow*), rect(ImRect), flags(ImGuiScrollFlags)
  # ret: ImVec2.by_value
  def self.ScrollToRectEx(window, rect, flags = 0)
    ImGui_ScrollToRectEx(window, rect, flags)
  end

  # arg: window(ImGuiWindow*), rect(ImRect)
  # ret: void
  def self.ScrollToBringRectIntoView(window, rect)
    ImGui_ScrollToBringRectIntoView(window, rect)
  end

  # ret: int
  def self.GetItemStatusFlags()
    ImGui_GetItemStatusFlags()
  end

  # ret: uint
  def self.GetActiveID()
    ImGui_GetActiveID()
  end

  # ret: uint
  def self.GetFocusID()
    ImGui_GetFocusID()
  end

  # arg: id(ImGuiID), window(ImGuiWindow*)
  # ret: void
  def self.SetActiveID(id, window)
    ImGui_SetActiveID(id, window)
  end

  # arg: id(ImGuiID), window(ImGuiWindow*)
  # ret: void
  def self.SetFocusID(id, window)
    ImGui_SetFocusID(id, window)
  end

  # ret: void
  def self.ClearActiveID()
    ImGui_ClearActiveID()
  end

  # ret: uint
  def self.GetHoveredID()
    ImGui_GetHoveredID()
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.SetHoveredID(id)
    ImGui_SetHoveredID(id)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.KeepAliveID(id)
    ImGui_KeepAliveID(id)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.MarkItemEdited(id)
    ImGui_MarkItemEdited(id)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.PushOverrideID(id)
    ImGui_PushOverrideID(id)
  end

  # arg: str_id_begin(const char*), str_id_end(const char*), seed(ImGuiID)
  # ret: uint
  def self.GetIDWithSeedStr(str_id_begin, str_id_end, seed)
    ImGui_GetIDWithSeedStr(str_id_begin, str_id_end, seed)
  end

  # arg: n(int), seed(ImGuiID)
  # ret: uint
  def self.GetIDWithSeed(n, seed)
    ImGui_GetIDWithSeed(n, seed)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.ItemSize(size)
    ImGui_ItemSize(size)
  end

  # arg: size(ImVec2), text_baseline_y(float)
  # ret: void
  def self.ItemSizeEx(size, text_baseline_y = -1.0)
    ImGui_ItemSizeEx(size, text_baseline_y)
  end

  # arg: bb(ImRect)
  # ret: void
  def self.ItemSizeImRect(bb)
    ImGui_ItemSizeImRect(bb)
  end

  # arg: bb(ImRect), text_baseline_y(float)
  # ret: void
  def self.ItemSizeImRectEx(bb, text_baseline_y = -1.0)
    ImGui_ItemSizeImRectEx(bb, text_baseline_y)
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.ItemAdd(bb, id)
    ImGui_ItemAdd(bb, id)
  end

  # arg: bb(ImRect), id(ImGuiID), nav_bb(const ImRect*), extra_flags(ImGuiItemFlags)
  # ret: bool
  def self.ItemAddEx(bb, id, nav_bb = nil, extra_flags = 0)
    ImGui_ItemAddEx(bb, id, nav_bb, extra_flags)
  end

  # arg: bb(ImRect), id(ImGuiID), item_flags(ImGuiItemFlags)
  # ret: bool
  def self.ItemHoverable(bb, id, item_flags)
    ImGui_ItemHoverable(bb, id, item_flags)
  end

  # arg: window(ImGuiWindow*), flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsWindowContentHoverable(window, flags = 0)
    ImGui_IsWindowContentHoverable(window, flags)
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.IsClippedEx(bb, id)
    ImGui_IsClippedEx(bb, id)
  end

  # arg: item_id(ImGuiID), item_flags(ImGuiItemFlags), status_flags(ImGuiItemStatusFlags), item_rect(ImRect)
  # ret: void
  def self.SetLastItemData(item_id, item_flags, status_flags, item_rect)
    ImGui_SetLastItemData(item_id, item_flags, status_flags, item_rect)
  end

  # arg: size(ImVec2), default_w(float), default_h(float)
  # ret: ImVec2.by_value
  def self.CalcItemSize(size, default_w, default_h)
    ImGui_CalcItemSize(size, default_w, default_h)
  end

  # arg: pos(ImVec2), wrap_pos_x(float)
  # ret: float
  def self.CalcWrapWidthForPos(pos, wrap_pos_x)
    ImGui_CalcWrapWidthForPos(pos, wrap_pos_x)
  end

  # arg: components(int), width_full(float)
  # ret: void
  def self.PushMultiItemsWidths(components, width_full)
    ImGui_PushMultiItemsWidths(components, width_full)
  end

  # arg: items(ImGuiShrinkWidthItem*), count(int), width_excess(float), width_min(float)
  # ret: void
  def self.ShrinkWidths(items, count, width_excess, width_min)
    ImGui_ShrinkWidths(items, count, width_excess, width_min)
  end

  # arg: clip_rect(ImRect), pos(ImVec2), items_height(float), out_visible_start(int*), out_visible_end(int*)
  # ret: void
  def self.CalcClipRectVisibleItemsY(clip_rect, pos, items_height, out_visible_start, out_visible_end)
    ImGui_CalcClipRectVisibleItemsY(clip_rect, pos, items_height, out_visible_start, out_visible_end)
  end

  # arg: idx(ImGuiStyleVar)
  # ret: pointer
  def self.GetStyleVarInfo(idx)
    ImGui_GetStyleVarInfo(idx)
  end

  # ret: void
  def self.BeginDisabledOverrideReenable()
    ImGui_BeginDisabledOverrideReenable()
  end

  # ret: void
  def self.EndDisabledOverrideReenable()
    ImGui_EndDisabledOverrideReenable()
  end

  # arg: flags(ImGuiLogFlags), auto_open_depth(int)
  # ret: void
  def self.LogBegin(flags, auto_open_depth)
    ImGui_LogBegin(flags, auto_open_depth)
  end

  # ret: void
  def self.LogToBuffer()
    ImGui_LogToBuffer()
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToBufferEx(auto_open_depth = -1)
    ImGui_LogToBufferEx(auto_open_depth)
  end

  # arg: ref_pos(const ImVec2*), text(const char*)
  # ret: void
  def self.LogRenderedText(ref_pos, text)
    ImGui_LogRenderedText(ref_pos, text)
  end

  # arg: ref_pos(const ImVec2*), text(const char*), text_end(const char*)
  # ret: void
  def self.LogRenderedTextEx(ref_pos, text, text_end = nil)
    ImGui_LogRenderedTextEx(ref_pos, text, text_end)
  end

  # arg: prefix(const char*), suffix(const char*)
  # ret: void
  def self.LogSetNextTextDecoration(prefix, suffix)
    ImGui_LogSetNextTextDecoration(prefix, suffix)
  end

  # arg: name(const char*), id(ImGuiID), size_arg(ImVec2), child_flags(ImGuiChildFlags), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildEx(name, id, size_arg, child_flags, window_flags)
    ImGui_BeginChildEx(name, id, size_arg, child_flags, window_flags)
  end

  # arg: id(ImGuiID), extra_window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupEx(id, extra_window_flags)
    ImGui_BeginPopupEx(id, extra_window_flags)
  end

  # arg: id(ImGuiID), label(const char*), extra_window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupMenuEx(id, label, extra_window_flags)
    ImGui_BeginPopupMenuEx(id, label, extra_window_flags)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.OpenPopupEx(id)
    ImGui_OpenPopupEx(id)
  end

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: void
  def self.OpenPopupExEx(id, popup_flags = ImGuiPopupFlags_None)
    ImGui_OpenPopupExEx(id, popup_flags)
  end

  # arg: remaining(int), restore_focus_to_window_under_popup(bool)
  # ret: void
  def self.ClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
    ImGui_ClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
  end

  # arg: ref_window(ImGuiWindow*), restore_focus_to_window_under_popup(bool)
  # ret: void
  def self.ClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
    ImGui_ClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
  end

  # ret: void
  def self.ClosePopupsExceptModals()
    ImGui_ClosePopupsExceptModals()
  end

  # arg: id(ImGuiID), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpenID(id, popup_flags)
    ImGui_IsPopupOpenID(id, popup_flags)
  end

  # arg: window(ImGuiWindow*)
  # ret: ImRect.by_value
  def self.GetPopupAllowedExtentRect(window)
    ImGui_GetPopupAllowedExtentRect(window)
  end

  # ret: pointer
  def self.GetTopMostPopupModal()
    ImGui_GetTopMostPopupModal()
  end

  # ret: pointer
  def self.GetTopMostAndVisiblePopupModal()
    ImGui_GetTopMostAndVisiblePopupModal()
  end

  # arg: window(ImGuiWindow*)
  # ret: pointer
  def self.FindBlockingModal(window)
    ImGui_FindBlockingModal(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: ImVec2.by_value
  def self.FindBestWindowPosForPopup(window)
    ImGui_FindBestWindowPosForPopup(window)
  end

  # arg: ref_pos(ImVec2), size(ImVec2), last_dir(ImGuiDir*), r_outer(ImRect), r_avoid(ImRect), policy(ImGuiPopupPositionPolicy)
  # ret: ImVec2.by_value
  def self.FindBestWindowPosForPopupEx(ref_pos, size, last_dir, r_outer, r_avoid, policy)
    ImGui_FindBestWindowPosForPopupEx(ref_pos, size, last_dir, r_outer, r_avoid, policy)
  end

  # arg: flags(ImGuiPopupFlags)
  # ret: int
  def self.GetMouseButtonFromPopupFlags(flags)
    ImGui_GetMouseButtonFromPopupFlags(flags)
  end

  # arg: flags(ImGuiPopupFlags), id(ImGuiID)
  # ret: bool
  def self.IsPopupOpenRequestForItem(flags, id)
    ImGui_IsPopupOpenRequestForItem(flags, id)
  end

  # arg: flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpenRequestForWindow(flags)
    ImGui_IsPopupOpenRequestForWindow(flags)
  end

  # arg: tooltip_flags(ImGuiTooltipFlags), extra_window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginTooltipEx(tooltip_flags, extra_window_flags)
    ImGui_BeginTooltipEx(tooltip_flags, extra_window_flags)
  end

  # ret: bool
  def self.BeginTooltipHidden()
    ImGui_BeginTooltipHidden()
  end

  # arg: name(const char*), viewport(ImGuiViewport*), dir(ImGuiDir), size(float), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginViewportSideBar(name, viewport, dir, size, window_flags)
    ImGui_BeginViewportSideBar(name, viewport, dir, size, window_flags)
  end

  # arg: label(const char*), icon(const char*)
  # ret: bool
  def self.BeginMenuWithIcon(label, icon)
    ImGui_BeginMenuWithIcon(label, icon)
  end

  # arg: label(const char*), icon(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenuWithIconEx(label, icon, enabled = true)
    ImGui_BeginMenuWithIconEx(label, icon, enabled)
  end

  # arg: label(const char*), icon(const char*)
  # ret: bool
  def self.MenuItemWithIcon(label, icon)
    ImGui_MenuItemWithIcon(label, icon)
  end

  # arg: label(const char*), icon(const char*), shortcut(const char*), selected(bool), enabled(bool)
  # ret: bool
  def self.MenuItemWithIconEx(label, icon, shortcut = nil, selected = false, enabled = true)
    ImGui_MenuItemWithIconEx(label, icon, shortcut, selected, enabled)
  end

  # arg: popup_id(ImGuiID), bb(ImRect), flags(ImGuiComboFlags)
  # ret: bool
  def self.BeginComboPopup(popup_id, bb, flags)
    ImGui_BeginComboPopup(popup_id, bb, flags)
  end

  # ret: bool
  def self.BeginComboPreview()
    ImGui_BeginComboPreview()
  end

  # ret: void
  def self.EndComboPreview()
    ImGui_EndComboPreview()
  end

  # arg: window(ImGuiWindow*), force_reinit(bool)
  # ret: void
  def self.NavInitWindow(window, force_reinit)
    ImGui_NavInitWindow(window, force_reinit)
  end

  # ret: void
  def self.NavInitRequestApplyResult()
    ImGui_NavInitRequestApplyResult()
  end

  # ret: bool
  def self.NavMoveRequestButNoResultYet()
    ImGui_NavMoveRequestButNoResultYet()
  end

  # arg: move_dir(ImGuiDir), clip_dir(ImGuiDir), move_flags(ImGuiNavMoveFlags), scroll_flags(ImGuiScrollFlags)
  # ret: void
  def self.NavMoveRequestSubmit(move_dir, clip_dir, move_flags, scroll_flags)
    ImGui_NavMoveRequestSubmit(move_dir, clip_dir, move_flags, scroll_flags)
  end

  # arg: move_dir(ImGuiDir), clip_dir(ImGuiDir), move_flags(ImGuiNavMoveFlags), scroll_flags(ImGuiScrollFlags)
  # ret: void
  def self.NavMoveRequestForward(move_dir, clip_dir, move_flags, scroll_flags)
    ImGui_NavMoveRequestForward(move_dir, clip_dir, move_flags, scroll_flags)
  end

  # arg: result(ImGuiNavItemData*)
  # ret: void
  def self.NavMoveRequestResolveWithLastItem(result)
    ImGui_NavMoveRequestResolveWithLastItem(result)
  end

  # arg: result(ImGuiNavItemData*), tree_node_data(const ImGuiTreeNodeStackData*)
  # ret: void
  def self.NavMoveRequestResolveWithPastTreeNode(result, tree_node_data)
    ImGui_NavMoveRequestResolveWithPastTreeNode(result, tree_node_data)
  end

  # ret: void
  def self.NavMoveRequestCancel()
    ImGui_NavMoveRequestCancel()
  end

  # ret: void
  def self.NavMoveRequestApplyResult()
    ImGui_NavMoveRequestApplyResult()
  end

  # arg: window(ImGuiWindow*), move_flags(ImGuiNavMoveFlags)
  # ret: void
  def self.NavMoveRequestTryWrapping(window, move_flags)
    ImGui_NavMoveRequestTryWrapping(window, move_flags)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.NavHighlightActivated(id)
    ImGui_NavHighlightActivated(id)
  end

  # arg: axis(ImGuiAxis)
  # ret: void
  def self.NavClearPreferredPosForAxis(axis)
    ImGui_NavClearPreferredPosForAxis(axis)
  end

  # ret: void
  def self.SetNavCursorVisibleAfterMove()
    ImGui_SetNavCursorVisibleAfterMove()
  end

  # ret: void
  def self.NavUpdateCurrentWindowIsScrollPushableX()
    ImGui_NavUpdateCurrentWindowIsScrollPushableX()
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.SetNavWindow(window)
    ImGui_SetNavWindow(window)
  end

  # arg: id(ImGuiID), nav_layer(ImGuiNavLayer), focus_scope_id(ImGuiID), rect_rel(ImRect)
  # ret: void
  def self.SetNavID(id, nav_layer, focus_scope_id, rect_rel)
    ImGui_SetNavID(id, nav_layer, focus_scope_id, rect_rel)
  end

  # arg: focus_scope_id(ImGuiID)
  # ret: void
  def self.SetNavFocusScope(focus_scope_id)
    ImGui_SetNavFocusScope(focus_scope_id)
  end

  # ret: void
  def self.FocusItem()
    ImGui_FocusItem()
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.ActivateItemByID(id)
    ImGui_ActivateItemByID(id)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsNamedKey(key)
    ImGui_IsNamedKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsNamedKeyOrMod(key)
    ImGui_IsNamedKeyOrMod(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsLegacyKey(key)
    ImGui_IsLegacyKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyboardKey(key)
    ImGui_IsKeyboardKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsGamepadKey(key)
    ImGui_IsGamepadKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsMouseKey(key)
    ImGui_IsMouseKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsAliasKey(key)
    ImGui_IsAliasKey(key)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsLRModKey(key)
    ImGui_IsLRModKey(key)
  end

  # arg: key_chord(ImGuiKeyChord)
  # ret: int
  def self.FixupKeyChord(key_chord)
    ImGui_FixupKeyChord(key_chord)
  end

  # arg: key(ImGuiKey)
  # ret: int
  def self.ConvertSingleModFlagToKey(key)
    ImGui_ConvertSingleModFlagToKey(key)
  end

  # arg: ctx(ImGuiContext*), key(ImGuiKey)
  # ret: pointer
  def self.GetKeyDataImGuiContextPtr(ctx, key)
    ImGui_GetKeyDataImGuiContextPtr(ctx, key)
  end

  # arg: key(ImGuiKey)
  # ret: pointer
  def self.GetKeyData(key)
    ImGui_GetKeyData(key)
  end

  # arg: key_chord(ImGuiKeyChord)
  # ret: pointer
  def self.GetKeyChordName(key_chord)
    ImGui_GetKeyChordName(key_chord)
  end

  # arg: button(ImGuiMouseButton)
  # ret: int
  def self.MouseButtonToKey(button)
    ImGui_MouseButtonToKey(button)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDragPastThreshold(button)
    ImGui_IsMouseDragPastThreshold(button)
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: bool
  def self.IsMouseDragPastThresholdEx(button, lock_threshold = -1.0)
    ImGui_IsMouseDragPastThresholdEx(button, lock_threshold)
  end

  # arg: key_left(ImGuiKey), key_right(ImGuiKey), key_up(ImGuiKey), key_down(ImGuiKey)
  # ret: ImVec2.by_value
  def self.GetKeyMagnitude2d(key_left, key_right, key_up, key_down)
    ImGui_GetKeyMagnitude2d(key_left, key_right, key_up, key_down)
  end

  # arg: axis(ImGuiAxis)
  # ret: float
  def self.GetNavTweakPressedAmount(axis)
    ImGui_GetNavTweakPressedAmount(axis)
  end

  # arg: t0(float), t1(float), repeat_delay(float), repeat_rate(float)
  # ret: int
  def self.CalcTypematicRepeatAmount(t0, t1, repeat_delay, repeat_rate)
    ImGui_CalcTypematicRepeatAmount(t0, t1, repeat_delay, repeat_rate)
  end

  # arg: flags(ImGuiInputFlags), repeat_delay(float*), repeat_rate(float*)
  # ret: void
  def self.GetTypematicRepeatRate(flags, repeat_delay, repeat_rate)
    ImGui_GetTypematicRepeatRate(flags, repeat_delay, repeat_rate)
  end

  # arg: pos(ImVec2)
  # ret: void
  def self.TeleportMousePos(pos)
    ImGui_TeleportMousePos(pos)
  end

  # ret: void
  def self.SetActiveIdUsingAllKeyboardKeys()
    ImGui_SetActiveIdUsingAllKeyboardKeys()
  end

  # arg: dir(ImGuiDir)
  # ret: bool
  def self.IsActiveIdUsingNavDir(dir)
    ImGui_IsActiveIdUsingNavDir(dir)
  end

  # arg: key(ImGuiKey)
  # ret: uint
  def self.GetKeyOwner(key)
    ImGui_GetKeyOwner(key)
  end

  # arg: key(ImGuiKey), owner_id(ImGuiID), flags(ImGuiInputFlags)
  # ret: void
  def self.SetKeyOwner(key, owner_id, flags = 0)
    ImGui_SetKeyOwner(key, owner_id, flags)
  end

  # arg: key(ImGuiKeyChord), owner_id(ImGuiID), flags(ImGuiInputFlags)
  # ret: void
  def self.SetKeyOwnersForKeyChord(key, owner_id, flags = 0)
    ImGui_SetKeyOwnersForKeyChord(key, owner_id, flags)
  end

  # arg: key(ImGuiKey), flags(ImGuiInputFlags)
  # ret: void
  def self.SetItemKeyOwnerImGuiInputFlags(key, flags)
    ImGui_SetItemKeyOwnerImGuiInputFlags(key, flags)
  end

  # arg: key(ImGuiKey), owner_id(ImGuiID)
  # ret: bool
  def self.TestKeyOwner(key, owner_id)
    ImGui_TestKeyOwner(key, owner_id)
  end

  # arg: ctx(ImGuiContext*), key(ImGuiKey)
  # ret: pointer
  def self.GetKeyOwnerData(ctx, key)
    ImGui_GetKeyOwnerData(ctx, key)
  end

  # arg: key(ImGuiKey), owner_id(ImGuiID)
  # ret: bool
  def self.IsKeyDownID(key, owner_id)
    ImGui_IsKeyDownID(key, owner_id)
  end

  # arg: key(ImGuiKey), flags(ImGuiInputFlags)
  # ret: bool
  def self.IsKeyPressedImGuiInputFlags(key, flags)
    ImGui_IsKeyPressedImGuiInputFlags(key, flags)
  end

  # arg: key(ImGuiKey), flags(ImGuiInputFlags), owner_id(ImGuiID)
  # ret: bool
  def self.IsKeyPressedImGuiInputFlagsEx(key, flags, owner_id = 0)
    ImGui_IsKeyPressedImGuiInputFlagsEx(key, flags, owner_id)
  end

  # arg: key(ImGuiKey), owner_id(ImGuiID)
  # ret: bool
  def self.IsKeyReleasedID(key, owner_id)
    ImGui_IsKeyReleasedID(key, owner_id)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags)
  # ret: bool
  def self.IsKeyChordPressedImGuiInputFlags(key_chord, flags)
    ImGui_IsKeyChordPressedImGuiInputFlags(key_chord, flags)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags), owner_id(ImGuiID)
  # ret: bool
  def self.IsKeyChordPressedImGuiInputFlagsEx(key_chord, flags, owner_id = 0)
    ImGui_IsKeyChordPressedImGuiInputFlagsEx(key_chord, flags, owner_id)
  end

  # arg: button(ImGuiMouseButton), owner_id(ImGuiID)
  # ret: bool
  def self.IsMouseDownID(button, owner_id)
    ImGui_IsMouseDownID(button, owner_id)
  end

  # arg: button(ImGuiMouseButton), flags(ImGuiInputFlags)
  # ret: bool
  def self.IsMouseClickedImGuiInputFlags(button, flags)
    ImGui_IsMouseClickedImGuiInputFlags(button, flags)
  end

  # arg: button(ImGuiMouseButton), flags(ImGuiInputFlags), owner_id(ImGuiID)
  # ret: bool
  def self.IsMouseClickedImGuiInputFlagsEx(button, flags, owner_id = 0)
    ImGui_IsMouseClickedImGuiInputFlagsEx(button, flags, owner_id)
  end

  # arg: button(ImGuiMouseButton), owner_id(ImGuiID)
  # ret: bool
  def self.IsMouseReleasedID(button, owner_id)
    ImGui_IsMouseReleasedID(button, owner_id)
  end

  # arg: button(ImGuiMouseButton), owner_id(ImGuiID)
  # ret: bool
  def self.IsMouseDoubleClickedID(button, owner_id)
    ImGui_IsMouseDoubleClickedID(button, owner_id)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags), owner_id(ImGuiID)
  # ret: bool
  def self.ShortcutID(key_chord, flags, owner_id)
    ImGui_ShortcutID(key_chord, flags, owner_id)
  end

  # arg: key_chord(ImGuiKeyChord), flags(ImGuiInputFlags), owner_id(ImGuiID)
  # ret: bool
  def self.SetShortcutRouting(key_chord, flags, owner_id)
    ImGui_SetShortcutRouting(key_chord, flags, owner_id)
  end

  # arg: key_chord(ImGuiKeyChord), owner_id(ImGuiID)
  # ret: bool
  def self.TestShortcutRouting(key_chord, owner_id)
    ImGui_TestShortcutRouting(key_chord, owner_id)
  end

  # arg: key_chord(ImGuiKeyChord)
  # ret: pointer
  def self.GetShortcutRoutingData(key_chord)
    ImGui_GetShortcutRoutingData(key_chord)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.PushFocusScope(id)
    ImGui_PushFocusScope(id)
  end

  # ret: void
  def self.PopFocusScope()
    ImGui_PopFocusScope()
  end

  # ret: uint
  def self.GetCurrentFocusScope()
    ImGui_GetCurrentFocusScope()
  end

  # ret: bool
  def self.IsDragDropActive()
    ImGui_IsDragDropActive()
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: bool
  def self.BeginDragDropTargetCustom(bb, id)
    ImGui_BeginDragDropTargetCustom(bb, id)
  end

  # arg: viewport(ImGuiViewport*)
  # ret: bool
  def self.BeginDragDropTargetViewport(viewport)
    ImGui_BeginDragDropTargetViewport(viewport)
  end

  # arg: viewport(ImGuiViewport*), p_bb(const ImRect*)
  # ret: bool
  def self.BeginDragDropTargetViewportEx(viewport, p_bb = nil)
    ImGui_BeginDragDropTargetViewportEx(viewport, p_bb)
  end

  # ret: void
  def self.ClearDragDrop()
    ImGui_ClearDragDrop()
  end

  # ret: bool
  def self.IsDragDropPayloadBeingAccepted()
    ImGui_IsDragDropPayloadBeingAccepted()
  end

  # arg: bb(ImRect)
  # ret: void
  def self.RenderDragDropTargetRectForItem(bb)
    ImGui_RenderDragDropTargetRectForItem(bb)
  end

  # arg: draw_list(ImDrawList*), bb(ImRect)
  # ret: void
  def self.RenderDragDropTargetRectEx(draw_list, bb)
    ImGui_RenderDragDropTargetRectEx(draw_list, bb)
  end

  # ret: pointer
  def self.GetTypingSelectRequest()
    ImGui_GetTypingSelectRequest()
  end

  # arg: flags(ImGuiTypingSelectFlags)
  # ret: pointer
  def self.GetTypingSelectRequestEx(flags = ImGuiTypingSelectFlags_None)
    ImGui_GetTypingSelectRequestEx(flags)
  end

  # arg: req(ImGuiTypingSelectRequest*), items_count(int), get_item_name_func(const char* (*get_item_name_func)(void*, int)), user_data(void*), nav_item_idx(int)
  # ret: int
  def self.TypingSelectFindMatch(req, items_count, get_item_name_func, user_data, nav_item_idx)
    ImGui_TypingSelectFindMatch(req, items_count, get_item_name_func, user_data, nav_item_idx)
  end

  # arg: req(ImGuiTypingSelectRequest*), items_count(int), get_item_name_func(const char* (*get_item_name_func)(void*, int)), user_data(void*), nav_item_idx(int)
  # ret: int
  def self.TypingSelectFindNextSingleCharMatch(req, items_count, get_item_name_func, user_data, nav_item_idx)
    ImGui_TypingSelectFindNextSingleCharMatch(req, items_count, get_item_name_func, user_data, nav_item_idx)
  end

  # arg: req(ImGuiTypingSelectRequest*), items_count(int), get_item_name_func(const char* (*get_item_name_func)(void*, int)), user_data(void*)
  # ret: int
  def self.TypingSelectFindBestLeadingMatch(req, items_count, get_item_name_func, user_data)
    ImGui_TypingSelectFindBestLeadingMatch(req, items_count, get_item_name_func, user_data)
  end

  # arg: scope_rect(ImRect), window(ImGuiWindow*), box_select_id(ImGuiID), ms_flags(ImGuiMultiSelectFlags)
  # ret: bool
  def self.BeginBoxSelect(scope_rect, window, box_select_id, ms_flags)
    ImGui_BeginBoxSelect(scope_rect, window, box_select_id, ms_flags)
  end

  # arg: scope_rect(ImRect), ms_flags(ImGuiMultiSelectFlags)
  # ret: void
  def self.EndBoxSelect(scope_rect, ms_flags)
    ImGui_EndBoxSelect(scope_rect, ms_flags)
  end

  # arg: id(ImGuiID), p_selected(bool*), p_button_flags(ImGuiButtonFlags*)
  # ret: void
  def self.MultiSelectItemHeader(id, p_selected, p_button_flags)
    ImGui_MultiSelectItemHeader(id, p_selected, p_button_flags)
  end

  # arg: id(ImGuiID), p_selected(bool*), p_pressed(bool*)
  # ret: void
  def self.MultiSelectItemFooter(id, p_selected, p_pressed)
    ImGui_MultiSelectItemFooter(id, p_selected, p_pressed)
  end

  # arg: ms(ImGuiMultiSelectTempData*), selected(bool)
  # ret: void
  def self.MultiSelectAddSetAll(ms, selected)
    ImGui_MultiSelectAddSetAll(ms, selected)
  end

  # arg: ms(ImGuiMultiSelectTempData*), selected(bool), range_dir(int), first_item(ImGuiSelectionUserData), last_item(ImGuiSelectionUserData)
  # ret: void
  def self.MultiSelectAddSetRange(ms, selected, range_dir, first_item, last_item)
    ImGui_MultiSelectAddSetRange(ms, selected, range_dir, first_item, last_item)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.GetBoxSelectState(id)
    ImGui_GetBoxSelectState(id)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.GetMultiSelectState(id)
    ImGui_GetMultiSelectState(id)
  end

  # arg: window(ImGuiWindow*), clip_rect(ImRect)
  # ret: void
  def self.SetWindowClipRectBeforeSetChannel(window, clip_rect)
    ImGui_SetWindowClipRectBeforeSetChannel(window, clip_rect)
  end

  # arg: str_id(const char*), count(int), flags(ImGuiOldColumnFlags)
  # ret: void
  def self.BeginColumns(str_id, count, flags = 0)
    ImGui_BeginColumns(str_id, count, flags)
  end

  # ret: void
  def self.EndColumns()
    ImGui_EndColumns()
  end

  # arg: column_index(int)
  # ret: void
  def self.PushColumnClipRect(column_index)
    ImGui_PushColumnClipRect(column_index)
  end

  # ret: void
  def self.PushColumnsBackground()
    ImGui_PushColumnsBackground()
  end

  # ret: void
  def self.PopColumnsBackground()
    ImGui_PopColumnsBackground()
  end

  # arg: str_id(const char*), count(int)
  # ret: uint
  def self.GetColumnsID(str_id, count)
    ImGui_GetColumnsID(str_id, count)
  end

  # arg: window(ImGuiWindow*), id(ImGuiID)
  # ret: pointer
  def self.FindOrCreateColumns(window, id)
    ImGui_FindOrCreateColumns(window, id)
  end

  # arg: columns(const ImGuiOldColumns*), offset_norm(float)
  # ret: float
  def self.GetColumnOffsetFromNorm(columns, offset_norm)
    ImGui_GetColumnOffsetFromNorm(columns, offset_norm)
  end

  # arg: columns(const ImGuiOldColumns*), offset(float)
  # ret: float
  def self.GetColumnNormFromOffset(columns, offset)
    ImGui_GetColumnNormFromOffset(columns, offset)
  end

  # ret: void
  def self.TableOpenContextMenu()
    ImGui_TableOpenContextMenu()
  end

  # arg: column_n(int)
  # ret: void
  def self.TableOpenContextMenuEx(column_n = -1)
    ImGui_TableOpenContextMenuEx(column_n)
  end

  # arg: column_n(int), width(float)
  # ret: void
  def self.TableSetColumnWidth(column_n, width)
    ImGui_TableSetColumnWidth(column_n, width)
  end

  # arg: column_n(int), sort_direction(ImGuiSortDirection), append_to_sort_specs(bool)
  # ret: void
  def self.TableSetColumnSortDirection(column_n, sort_direction, append_to_sort_specs)
    ImGui_TableSetColumnSortDirection(column_n, sort_direction, append_to_sort_specs)
  end

  # ret: int
  def self.TableGetHoveredRow()
    ImGui_TableGetHoveredRow()
  end

  # ret: float
  def self.TableGetHeaderRowHeight()
    ImGui_TableGetHeaderRowHeight()
  end

  # ret: float
  def self.TableGetHeaderAngledMaxLabelWidth()
    ImGui_TableGetHeaderAngledMaxLabelWidth()
  end

  # ret: void
  def self.TablePushBackgroundChannel()
    ImGui_TablePushBackgroundChannel()
  end

  # ret: void
  def self.TablePopBackgroundChannel()
    ImGui_TablePopBackgroundChannel()
  end

  # arg: column_n(int)
  # ret: void
  def self.TablePushColumnChannel(column_n)
    ImGui_TablePushColumnChannel(column_n)
  end

  # ret: void
  def self.TablePopColumnChannel()
    ImGui_TablePopColumnChannel()
  end

  # arg: row_id(ImGuiID), angle(float), max_label_width(float), data(const ImGuiTableHeaderData*), data_count(int)
  # ret: void
  def self.TableAngledHeadersRowEx(row_id, angle, max_label_width, data, data_count)
    ImGui_TableAngledHeadersRowEx(row_id, angle, max_label_width, data, data_count)
  end

  # ret: pointer
  def self.GetCurrentTable()
    ImGui_GetCurrentTable()
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.TableFindByID(id)
    ImGui_TableFindByID(id)
  end

  # arg: name(const char*), id(ImGuiID), columns_count(int), flags(ImGuiTableFlags)
  # ret: bool
  def self.BeginTableWithID(name, id, columns_count, flags = 0)
    ImGui_BeginTableWithID(name, id, columns_count, flags)
  end

  # arg: name(const char*), id(ImGuiID), columns_count(int), flags(ImGuiTableFlags), outer_size(ImVec2), inner_width(float)
  # ret: bool
  def self.BeginTableWithIDEx(name, id, columns_count, flags = 0, outer_size = ImVec2.create(0,0), inner_width = 0.0)
    ImGui_BeginTableWithIDEx(name, id, columns_count, flags, outer_size, inner_width)
  end

  # arg: table(ImGuiTable*), columns_count(int)
  # ret: void
  def self.TableBeginInitMemory(table, columns_count)
    ImGui_TableBeginInitMemory(table, columns_count)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableBeginApplyRequests(table)
    ImGui_TableBeginApplyRequests(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSetupDrawChannels(table)
    ImGui_TableSetupDrawChannels(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateLayout(table)
    ImGui_TableUpdateLayout(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateBorders(table)
    ImGui_TableUpdateBorders(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableUpdateColumnsWeightFromWidth(table)
    ImGui_TableUpdateColumnsWeightFromWidth(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableDrawBorders(table)
    ImGui_TableDrawBorders(table)
  end

  # arg: table(ImGuiTable*), flags_for_section_to_display(ImGuiTableFlags)
  # ret: void
  def self.TableDrawDefaultContextMenu(table, flags_for_section_to_display)
    ImGui_TableDrawDefaultContextMenu(table, flags_for_section_to_display)
  end

  # arg: table(ImGuiTable*)
  # ret: bool
  def self.TableBeginContextMenuPopup(table)
    ImGui_TableBeginContextMenuPopup(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableMergeDrawChannels(table)
    ImGui_TableMergeDrawChannels(table)
  end

  # arg: table(ImGuiTable*), instance_no(int)
  # ret: pointer
  def self.TableGetInstanceData(table, instance_no)
    ImGui_TableGetInstanceData(table, instance_no)
  end

  # arg: table(ImGuiTable*), instance_no(int)
  # ret: uint
  def self.TableGetInstanceID(table, instance_no)
    ImGui_TableGetInstanceID(table, instance_no)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableFixDisplayOrder(table)
    ImGui_TableFixDisplayOrder(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSortSpecsSanitize(table)
    ImGui_TableSortSpecsSanitize(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSortSpecsBuild(table)
    ImGui_TableSortSpecsBuild(table)
  end

  # arg: column(ImGuiTableColumn*)
  # ret: uchar
  def self.TableGetColumnNextSortDirection(column)
    ImGui_TableGetColumnNextSortDirection(column)
  end

  # arg: table(ImGuiTable*), column(ImGuiTableColumn*)
  # ret: void
  def self.TableFixColumnSortDirection(table, column)
    ImGui_TableFixColumnSortDirection(table, column)
  end

  # arg: table(ImGuiTable*), column(ImGuiTableColumn*)
  # ret: float
  def self.TableGetColumnWidthAuto(table, column)
    ImGui_TableGetColumnWidthAuto(table, column)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableBeginRow(table)
    ImGui_TableBeginRow(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableEndRow(table)
    ImGui_TableEndRow(table)
  end

  # arg: table(ImGuiTable*), column_n(int)
  # ret: void
  def self.TableBeginCell(table, column_n)
    ImGui_TableBeginCell(table, column_n)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableEndCell(table)
    ImGui_TableEndCell(table)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: ImRect.by_value
  def self.TableGetCellBgRect(table, column_n)
    ImGui_TableGetCellBgRect(table, column_n)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: pointer
  def self.TableGetColumnNameImGuiTablePtr(table, column_n)
    ImGui_TableGetColumnNameImGuiTablePtr(table, column_n)
  end

  # arg: table(ImGuiTable*), column_n(int)
  # ret: uint
  def self.TableGetColumnResizeID(table, column_n)
    ImGui_TableGetColumnResizeID(table, column_n)
  end

  # arg: table(ImGuiTable*), column_n(int), instance_no(int)
  # ret: uint
  def self.TableGetColumnResizeIDEx(table, column_n, instance_no = 0)
    ImGui_TableGetColumnResizeIDEx(table, column_n, instance_no)
  end

  # arg: table(const ImGuiTable*), column_n(int)
  # ret: float
  def self.TableCalcMaxColumnWidth(table, column_n)
    ImGui_TableCalcMaxColumnWidth(table, column_n)
  end

  # arg: table(ImGuiTable*), column_n(int)
  # ret: void
  def self.TableSetColumnWidthAutoSingle(table, column_n)
    ImGui_TableSetColumnWidthAutoSingle(table, column_n)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSetColumnWidthAutoAll(table)
    ImGui_TableSetColumnWidthAutoAll(table)
  end

  # arg: table(ImGuiTable*), column_n(int), dst_order(int)
  # ret: void
  def self.TableSetColumnDisplayOrder(table, column_n, dst_order)
    ImGui_TableSetColumnDisplayOrder(table, column_n, dst_order)
  end

  # arg: table(ImGuiTable*), column_n(int), dst_order(int)
  # ret: void
  def self.TableQueueSetColumnDisplayOrder(table, column_n, dst_order)
    ImGui_TableQueueSetColumnDisplayOrder(table, column_n, dst_order)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableRemove(table)
    ImGui_TableRemove(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableGcCompactTransientBuffers(table)
    ImGui_TableGcCompactTransientBuffers(table)
  end

  # arg: table(ImGuiTableTempData*)
  # ret: void
  def self.TableGcCompactTransientBuffersImGuiTableTempDataPtr(table)
    ImGui_TableGcCompactTransientBuffersImGuiTableTempDataPtr(table)
  end

  # ret: void
  def self.TableGcCompactSettings()
    ImGui_TableGcCompactSettings()
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableLoadSettings(table)
    ImGui_TableLoadSettings(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableSaveSettings(table)
    ImGui_TableSaveSettings(table)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.TableResetSettings(table)
    ImGui_TableResetSettings(table)
  end

  # arg: table(ImGuiTable*)
  # ret: pointer
  def self.TableGetBoundSettings(table)
    ImGui_TableGetBoundSettings(table)
  end

  # ret: void
  def self.TableSettingsAddSettingsHandler()
    ImGui_TableSettingsAddSettingsHandler()
  end

  # arg: id(ImGuiID), columns_count(int)
  # ret: pointer
  def self.TableSettingsCreate(id, columns_count)
    ImGui_TableSettingsCreate(id, columns_count)
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.TableSettingsFindByID(id)
    ImGui_TableSettingsFindByID(id)
  end

  # ret: pointer
  def self.GetCurrentTabBar()
    ImGui_GetCurrentTabBar()
  end

  # arg: id(ImGuiID)
  # ret: pointer
  def self.TabBarFindByID(id)
    ImGui_TabBarFindByID(id)
  end

  # arg: tab_bar(ImGuiTabBar*)
  # ret: void
  def self.TabBarRemove(tab_bar)
    ImGui_TabBarRemove(tab_bar)
  end

  # arg: tab_bar(ImGuiTabBar*), bb(ImRect), flags(ImGuiTabBarFlags)
  # ret: bool
  def self.BeginTabBarEx(tab_bar, bb, flags)
    ImGui_BeginTabBarEx(tab_bar, bb, flags)
  end

  # arg: tab_bar(ImGuiTabBar*), tab_id(ImGuiID)
  # ret: pointer
  def self.TabBarFindTabByID(tab_bar, tab_id)
    ImGui_TabBarFindTabByID(tab_bar, tab_id)
  end

  # arg: tab_bar(ImGuiTabBar*), order(int)
  # ret: pointer
  def self.TabBarFindTabByOrder(tab_bar, order)
    ImGui_TabBarFindTabByOrder(tab_bar, order)
  end

  # arg: tab_bar(ImGuiTabBar*)
  # ret: pointer
  def self.TabBarGetCurrentTab(tab_bar)
    ImGui_TabBarGetCurrentTab(tab_bar)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*)
  # ret: int
  def self.TabBarGetTabOrder(tab_bar, tab)
    ImGui_TabBarGetTabOrder(tab_bar, tab)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*)
  # ret: pointer
  def self.TabBarGetTabName(tab_bar, tab)
    ImGui_TabBarGetTabName(tab_bar, tab)
  end

  # arg: tab_bar(ImGuiTabBar*), tab_id(ImGuiID)
  # ret: void
  def self.TabBarRemoveTab(tab_bar, tab_id)
    ImGui_TabBarRemoveTab(tab_bar, tab_id)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*)
  # ret: void
  def self.TabBarCloseTab(tab_bar, tab)
    ImGui_TabBarCloseTab(tab_bar, tab)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*)
  # ret: void
  def self.TabBarQueueFocus(tab_bar, tab)
    ImGui_TabBarQueueFocus(tab_bar, tab)
  end

  # arg: tab_bar(ImGuiTabBar*), tab_name(const char*)
  # ret: void
  def self.TabBarQueueFocusStr(tab_bar, tab_name)
    ImGui_TabBarQueueFocusStr(tab_bar, tab_name)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*), offset(int)
  # ret: void
  def self.TabBarQueueReorder(tab_bar, tab, offset)
    ImGui_TabBarQueueReorder(tab_bar, tab, offset)
  end

  # arg: tab_bar(ImGuiTabBar*), tab(ImGuiTabItem*), mouse_pos(ImVec2)
  # ret: void
  def self.TabBarQueueReorderFromMousePos(tab_bar, tab, mouse_pos)
    ImGui_TabBarQueueReorderFromMousePos(tab_bar, tab, mouse_pos)
  end

  # arg: tab_bar(ImGuiTabBar*)
  # ret: bool
  def self.TabBarProcessReorder(tab_bar)
    ImGui_TabBarProcessReorder(tab_bar)
  end

  # arg: tab_bar(ImGuiTabBar*), label(const char*), p_open(bool*), flags(ImGuiTabItemFlags), docked_window(ImGuiWindow*)
  # ret: bool
  def self.TabItemEx(tab_bar, label, p_open, flags, docked_window)
    ImGui_TabItemEx(tab_bar, label, p_open, flags, docked_window)
  end

  # arg: str_id(const char*), flags(ImGuiTabItemFlags), width(float)
  # ret: void
  def self.TabItemSpacing(str_id, flags, width)
    ImGui_TabItemSpacing(str_id, flags, width)
  end

  # arg: label(const char*), has_close_button_or_unsaved_marker(bool)
  # ret: ImVec2.by_value
  def self.TabItemCalcSizeStr(label, has_close_button_or_unsaved_marker)
    ImGui_TabItemCalcSizeStr(label, has_close_button_or_unsaved_marker)
  end

  # arg: window(ImGuiWindow*)
  # ret: ImVec2.by_value
  def self.TabItemCalcSize(window)
    ImGui_TabItemCalcSize(window)
  end

  # arg: draw_list(ImDrawList*), bb(ImRect), flags(ImGuiTabItemFlags), col(ImU32)
  # ret: void
  def self.TabItemBackground(draw_list, bb, flags, col)
    ImGui_TabItemBackground(draw_list, bb, flags, col)
  end

  # arg: draw_list(ImDrawList*), bb(ImRect), flags(ImGuiTabItemFlags), frame_padding(ImVec2), label(const char*), tab_id(ImGuiID), close_button_id(ImGuiID), is_contents_visible(bool), out_just_closed(bool*), out_text_clipped(bool*)
  # ret: void
  def self.TabItemLabelAndCloseButton(draw_list, bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, out_just_closed, out_text_clipped)
    ImGui_TabItemLabelAndCloseButton(draw_list, bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, out_just_closed, out_text_clipped)
  end

  # arg: pos(ImVec2), text(const char*)
  # ret: void
  def self.RenderText(pos, text)
    ImGui_RenderText(pos, text)
  end

  # arg: pos(ImVec2), text(const char*), text_end(const char*), hide_text_after_hash(bool)
  # ret: void
  def self.RenderTextEx(pos, text, text_end = nil, hide_text_after_hash = true)
    ImGui_RenderTextEx(pos, text, text_end, hide_text_after_hash)
  end

  # arg: pos(ImVec2), text(const char*), text_end(const char*), wrap_width(float)
  # ret: void
  def self.RenderTextWrapped(pos, text, text_end, wrap_width)
    ImGui_RenderTextWrapped(pos, text, text_end, wrap_width)
  end

  # arg: pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*)
  # ret: void
  def self.RenderTextClipped(pos_min, pos_max, text, text_end, text_size_if_known)
    ImGui_RenderTextClipped(pos_min, pos_max, text, text_end, text_size_if_known)
  end

  # arg: pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*), align(ImVec2), clip_rect(const ImRect*)
  # ret: void
  def self.RenderTextClippedEx(pos_min, pos_max, text, text_end, text_size_if_known, align = ImVec2.create(0,0), clip_rect = nil)
    ImGui_RenderTextClippedEx(pos_min, pos_max, text, text_end, text_size_if_known, align, clip_rect)
  end

  # arg: draw_list(ImDrawList*), pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*)
  # ret: void
  def self.RenderTextClippedWithDrawList(draw_list, pos_min, pos_max, text, text_end, text_size_if_known)
    ImGui_RenderTextClippedWithDrawList(draw_list, pos_min, pos_max, text, text_end, text_size_if_known)
  end

  # arg: draw_list(ImDrawList*), pos_min(ImVec2), pos_max(ImVec2), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*), align(ImVec2), clip_rect(const ImRect*)
  # ret: void
  def self.RenderTextClippedWithDrawListEx(draw_list, pos_min, pos_max, text, text_end, text_size_if_known, align = ImVec2.create(0,0), clip_rect = nil)
    ImGui_RenderTextClippedWithDrawListEx(draw_list, pos_min, pos_max, text, text_end, text_size_if_known, align, clip_rect)
  end

  # arg: draw_list(ImDrawList*), pos_min(ImVec2), pos_max(ImVec2), ellipsis_max_x(float), text(const char*), text_end(const char*), text_size_if_known(const ImVec2*)
  # ret: void
  def self.RenderTextEllipsis(draw_list, pos_min, pos_max, ellipsis_max_x, text, text_end, text_size_if_known)
    ImGui_RenderTextEllipsis(draw_list, pos_min, pos_max, ellipsis_max_x, text, text_end, text_size_if_known)
  end

  # arg: p_min(ImVec2), p_max(ImVec2), fill_col(ImU32)
  # ret: void
  def self.RenderFrame(p_min, p_max, fill_col)
    ImGui_RenderFrame(p_min, p_max, fill_col)
  end

  # arg: p_min(ImVec2), p_max(ImVec2), fill_col(ImU32), borders(bool), rounding(float)
  # ret: void
  def self.RenderFrameEx(p_min, p_max, fill_col, borders = true, rounding = 0.0)
    ImGui_RenderFrameEx(p_min, p_max, fill_col, borders, rounding)
  end

  # arg: p_min(ImVec2), p_max(ImVec2)
  # ret: void
  def self.RenderFrameBorder(p_min, p_max)
    ImGui_RenderFrameBorder(p_min, p_max)
  end

  # arg: p_min(ImVec2), p_max(ImVec2), rounding(float)
  # ret: void
  def self.RenderFrameBorderEx(p_min, p_max, rounding = 0.0)
    ImGui_RenderFrameBorderEx(p_min, p_max, rounding)
  end

  # arg: bb(ImRect), col(ImU32), rounding(float)
  # ret: void
  def self.RenderColorComponentMarker(bb, col, rounding)
    ImGui_RenderColorComponentMarker(bb, col, rounding)
  end

  # arg: draw_list(ImDrawList*), p_min(ImVec2), p_max(ImVec2), fill_col(ImU32), grid_step(float), grid_off(ImVec2)
  # ret: void
  def self.RenderColorRectWithAlphaCheckerboard(draw_list, p_min, p_max, fill_col, grid_step, grid_off)
    ImGui_RenderColorRectWithAlphaCheckerboard(draw_list, p_min, p_max, fill_col, grid_step, grid_off)
  end

  # arg: draw_list(ImDrawList*), p_min(ImVec2), p_max(ImVec2), fill_col(ImU32), grid_step(float), grid_off(ImVec2), rounding(float), flags(ImDrawFlags)
  # ret: void
  def self.RenderColorRectWithAlphaCheckerboardEx(draw_list, p_min, p_max, fill_col, grid_step, grid_off, rounding = 0.0, flags = 0)
    ImGui_RenderColorRectWithAlphaCheckerboardEx(draw_list, p_min, p_max, fill_col, grid_step, grid_off, rounding, flags)
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: void
  def self.RenderNavCursor(bb, id)
    ImGui_RenderNavCursor(bb, id)
  end

  # arg: bb(ImRect), id(ImGuiID), flags(ImGuiNavRenderCursorFlags)
  # ret: void
  def self.RenderNavCursorEx(bb, id, flags = ImGuiNavRenderCursorFlags_None)
    ImGui_RenderNavCursorEx(bb, id, flags)
  end

  # arg: bb(ImRect), id(ImGuiID)
  # ret: void
  def self.RenderNavHighlight(bb, id)
    ImGui_RenderNavHighlight(bb, id)
  end

  # arg: bb(ImRect), id(ImGuiID), flags(ImGuiNavRenderCursorFlags)
  # ret: void
  def self.RenderNavHighlightEx(bb, id, flags = ImGuiNavRenderCursorFlags_None)
    ImGui_RenderNavHighlightEx(bb, id, flags)
  end

  # arg: text(const char*)
  # ret: pointer
  def self.FindRenderedTextEnd(text)
    ImGui_FindRenderedTextEnd(text)
  end

  # arg: text(const char*), text_end(const char*)
  # ret: pointer
  def self.FindRenderedTextEndEx(text, text_end = nil)
    ImGui_FindRenderedTextEndEx(text, text_end)
  end

  # arg: pos(ImVec2), scale(float), mouse_cursor(ImGuiMouseCursor), col_fill(ImU32), col_border(ImU32), col_shadow(ImU32)
  # ret: void
  def self.RenderMouseCursor(pos, scale, mouse_cursor, col_fill, col_border, col_shadow)
    ImGui_RenderMouseCursor(pos, scale, mouse_cursor, col_fill, col_border, col_shadow)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32), dir(ImGuiDir)
  # ret: void
  def self.RenderArrow(draw_list, pos, col, dir)
    ImGui_RenderArrow(draw_list, pos, col, dir)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32), dir(ImGuiDir), scale(float)
  # ret: void
  def self.RenderArrowEx(draw_list, pos, col, dir, scale = 1.0)
    ImGui_RenderArrowEx(draw_list, pos, col, dir, scale)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32)
  # ret: void
  def self.RenderBullet(draw_list, pos, col)
    ImGui_RenderBullet(draw_list, pos, col)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), col(ImU32), sz(float)
  # ret: void
  def self.RenderCheckMark(draw_list, pos, col, sz)
    ImGui_RenderCheckMark(draw_list, pos, col, sz)
  end

  # arg: draw_list(ImDrawList*), pos(ImVec2), half_sz(ImVec2), direction(ImGuiDir), col(ImU32)
  # ret: void
  def self.RenderArrowPointingAt(draw_list, pos, half_sz, direction, col)
    ImGui_RenderArrowPointingAt(draw_list, pos, half_sz, direction, col)
  end

  # arg: draw_list(ImDrawList*), rect(ImRect), col(ImU32), fill_x0(float), fill_x1(float), rounding(float)
  # ret: void
  def self.RenderRectFilledInRangeH(draw_list, rect, col, fill_x0, fill_x1, rounding)
    ImGui_RenderRectFilledInRangeH(draw_list, rect, col, fill_x0, fill_x1, rounding)
  end

  # arg: draw_list(ImDrawList*), outer(ImRect), inner(ImRect), col(ImU32), rounding(float)
  # ret: void
  def self.RenderRectFilledWithHole(draw_list, outer, inner, col, rounding)
    ImGui_RenderRectFilledWithHole(draw_list, outer, inner, col, rounding)
  end

  # arg: r_in(ImRect), r_outer(ImRect), threshold(float)
  # ret: int
  def self.CalcRoundingFlagsForRectInRect(r_in, r_outer, threshold)
    ImGui_CalcRoundingFlagsForRectInRect(r_in, r_outer, threshold)
  end

  # arg: text(const char*)
  # ret: void
  def self.TextEx(text)
    ImGui_TextEx(text)
  end

  # arg: text(const char*), text_end(const char*), flags(ImGuiTextFlags)
  # ret: void
  def self.TextExEx(text, text_end = nil, flags = 0)
    ImGui_TextExEx(text, text_end, flags)
  end

  # arg: align_x(float), size_x(float), fmt(const char*), __unnamed_arg3__(...)
  # ret: void
  def self.TextAligned(align_x, size_x, fmt, *varargs)
    ImGui_TextAligned(align_x, size_x, fmt, *varargs)
  end

  # arg: label(const char*)
  # ret: bool
  def self.ButtonWithFlags(label)
    ImGui_ButtonWithFlags(label)
  end

  # arg: label(const char*), size_arg(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ButtonWithFlagsEx(label, size_arg = ImVec2.create(0,0), flags = 0)
    ImGui_ButtonWithFlagsEx(label, size_arg, flags)
  end

  # arg: str_id(const char*), dir(ImGuiDir), size_arg(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ArrowButtonEx(str_id, dir, size_arg, flags = 0)
    ImGui_ArrowButtonEx(str_id, dir, size_arg, flags)
  end

  # arg: id(ImGuiID), tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2), bg_col(ImVec4), tint_col(ImVec4), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ImageButtonWithFlags(id, tex_ref, image_size, uv0, uv1, bg_col, tint_col, flags = 0)
    ImGui_ImageButtonWithFlags(id, tex_ref, image_size, uv0, uv1, bg_col, tint_col, flags)
  end

  # arg: flags(ImGuiSeparatorFlags)
  # ret: void
  def self.SeparatorEx(flags)
    ImGui_SeparatorEx(flags)
  end

  # arg: flags(ImGuiSeparatorFlags), thickness(float)
  # ret: void
  def self.SeparatorExEx(flags, thickness = 1.0)
    ImGui_SeparatorExEx(flags, thickness)
  end

  # arg: id(ImGuiID), label(const char*), label_end(const char*), extra_width(float)
  # ret: void
  def self.SeparatorTextEx(id, label, label_end, extra_width)
    ImGui_SeparatorTextEx(id, label, label_end, extra_width)
  end

  # arg: label(const char*), flags(ImS64*), flags_value(ImS64)
  # ret: bool
  def self.CheckboxFlagsImS64Ptr(label, flags, flags_value)
    ImGui_CheckboxFlagsImS64Ptr(label, flags, flags_value)
  end

  # arg: label(const char*), flags(ImU64*), flags_value(ImU64)
  # ret: bool
  def self.CheckboxFlagsImU64Ptr(label, flags, flags_value)
    ImGui_CheckboxFlagsImU64Ptr(label, flags, flags_value)
  end

  # arg: id(ImGuiID), pos(ImVec2)
  # ret: bool
  def self.CloseButton(id, pos)
    ImGui_CloseButton(id, pos)
  end

  # arg: id(ImGuiID), pos(ImVec2)
  # ret: bool
  def self.CollapseButton(id, pos)
    ImGui_CollapseButton(id, pos)
  end

  # arg: axis(ImGuiAxis)
  # ret: void
  def self.Scrollbar(axis)
    ImGui_Scrollbar(axis)
  end

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), p_scroll_v(ImS64*), avail_v(ImS64), contents_v(ImS64)
  # ret: bool
  def self.ScrollbarEx(bb, id, axis, p_scroll_v, avail_v, contents_v)
    ImGui_ScrollbarEx(bb, id, axis, p_scroll_v, avail_v, contents_v)
  end

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), p_scroll_v(ImS64*), avail_v(ImS64), contents_v(ImS64), draw_rounding_flags(ImDrawFlags)
  # ret: bool
  def self.ScrollbarExEx(bb, id, axis, p_scroll_v, avail_v, contents_v, draw_rounding_flags = 0)
    ImGui_ScrollbarExEx(bb, id, axis, p_scroll_v, avail_v, contents_v, draw_rounding_flags)
  end

  # arg: window(ImGuiWindow*), axis(ImGuiAxis)
  # ret: ImRect.by_value
  def self.GetWindowScrollbarRect(window, axis)
    ImGui_GetWindowScrollbarRect(window, axis)
  end

  # arg: window(ImGuiWindow*), axis(ImGuiAxis)
  # ret: uint
  def self.GetWindowScrollbarID(window, axis)
    ImGui_GetWindowScrollbarID(window, axis)
  end

  # arg: window(ImGuiWindow*), n(int)
  # ret: uint
  def self.GetWindowResizeCornerID(window, n)
    ImGui_GetWindowResizeCornerID(window, n)
  end

  # arg: window(ImGuiWindow*), dir(ImGuiDir)
  # ret: uint
  def self.GetWindowResizeBorderID(window, dir)
    ImGui_GetWindowResizeBorderID(window, dir)
  end

  # arg: window(ImGuiWindow*), bb(ImRect*), threshold(float), axis(ImGuiAxis)
  # ret: void
  def self.ExtendHitBoxWhenNearViewportEdge(window, bb, threshold, axis)
    ImGui_ExtendHitBoxWhenNearViewportEdge(window, bb, threshold, axis)
  end

  # arg: bb(ImRect), id(ImGuiID), out_hovered(bool*), out_held(bool*), flags(ImGuiButtonFlags)
  # ret: bool
  def self.ButtonBehavior(bb, id, out_hovered, out_held, flags = 0)
    ImGui_ButtonBehavior(bb, id, out_hovered, out_held, flags)
  end

  # arg: id(ImGuiID), data_type(ImGuiDataType), p_v(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragBehavior(id, data_type, p_v, v_speed, p_min, p_max, format, flags)
    ImGui_DragBehavior(id, data_type, p_v, v_speed, p_min, p_max, format, flags)
  end

  # arg: bb(ImRect), id(ImGuiID), data_type(ImGuiDataType), p_v(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags), out_grab_bb(ImRect*)
  # ret: bool
  def self.SliderBehavior(bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb)
    ImGui_SliderBehavior(bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb)
  end

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), size1(float*), size2(float*), min_size1(float), min_size2(float)
  # ret: bool
  def self.SplitterBehavior(bb, id, axis, size1, size2, min_size1, min_size2)
    ImGui_SplitterBehavior(bb, id, axis, size1, size2, min_size1, min_size2)
  end

  # arg: bb(ImRect), id(ImGuiID), axis(ImGuiAxis), size1(float*), size2(float*), min_size1(float), min_size2(float), hover_extend(float), hover_visibility_delay(float), bg_col(ImU32)
  # ret: bool
  def self.SplitterBehaviorEx(bb, id, axis, size1, size2, min_size1, min_size2, hover_extend = 0.0, hover_visibility_delay = 0.0, bg_col = 0)
    ImGui_SplitterBehaviorEx(bb, id, axis, size1, size2, min_size1, min_size2, hover_extend, hover_visibility_delay, bg_col)
  end

  # arg: id(ImGuiID), flags(ImGuiTreeNodeFlags), label(const char*)
  # ret: bool
  def self.TreeNodeBehavior(id, flags, label)
    ImGui_TreeNodeBehavior(id, flags, label)
  end

  # arg: id(ImGuiID), flags(ImGuiTreeNodeFlags), label(const char*), label_end(const char*)
  # ret: bool
  def self.TreeNodeBehaviorEx(id, flags, label, label_end = nil)
    ImGui_TreeNodeBehaviorEx(id, flags, label, label_end)
  end

  # arg: target_pos(ImVec2)
  # ret: void
  def self.TreeNodeDrawLineToChildNode(target_pos)
    ImGui_TreeNodeDrawLineToChildNode(target_pos)
  end

  # arg: data(const ImGuiTreeNodeStackData*)
  # ret: void
  def self.TreeNodeDrawLineToTreePop(data)
    ImGui_TreeNodeDrawLineToTreePop(data)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.TreePushOverrideID(id)
    ImGui_TreePushOverrideID(id)
  end

  # arg: storage_id(ImGuiID), open(bool)
  # ret: void
  def self.TreeNodeSetOpen(storage_id, open)
    ImGui_TreeNodeSetOpen(storage_id, open)
  end

  # arg: storage_id(ImGuiID), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.TreeNodeUpdateNextOpen(storage_id, flags)
    ImGui_TreeNodeUpdateNextOpen(storage_id, flags)
  end

  # arg: data_type(ImGuiDataType)
  # ret: pointer
  def self.DataTypeGetInfo(data_type)
    ImGui_DataTypeGetInfo(data_type)
  end

  # arg: buf(char*), buf_size(int), data_type(ImGuiDataType), p_data(const void*), format(const char*)
  # ret: int
  def self.DataTypeFormatString(buf, buf_size, data_type, p_data, format)
    ImGui_DataTypeFormatString(buf, buf_size, data_type, p_data, format)
  end

  # arg: data_type(ImGuiDataType), op(int), output(void*), arg_1(const void*), arg_2(const void*)
  # ret: void
  def self.DataTypeApplyOp(data_type, op, output, arg_1, arg_2)
    ImGui_DataTypeApplyOp(data_type, op, output, arg_1, arg_2)
  end

  # arg: buf(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*)
  # ret: bool
  def self.DataTypeApplyFromText(buf, data_type, p_data, format)
    ImGui_DataTypeApplyFromText(buf, data_type, p_data, format)
  end

  # arg: buf(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*), p_data_when_empty(void*)
  # ret: bool
  def self.DataTypeApplyFromTextEx(buf, data_type, p_data, format, p_data_when_empty = nil)
    ImGui_DataTypeApplyFromTextEx(buf, data_type, p_data, format, p_data_when_empty)
  end

  # arg: data_type(ImGuiDataType), arg_1(const void*), arg_2(const void*)
  # ret: int
  def self.DataTypeCompare(data_type, arg_1, arg_2)
    ImGui_DataTypeCompare(data_type, arg_1, arg_2)
  end

  # arg: data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*)
  # ret: bool
  def self.DataTypeClamp(data_type, p_data, p_min, p_max)
    ImGui_DataTypeClamp(data_type, p_data, p_min, p_max)
  end

  # arg: data_type(ImGuiDataType), p_data(const void*)
  # ret: bool
  def self.DataTypeIsZero(data_type, p_data)
    ImGui_DataTypeIsZero(data_type, p_data)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(int), size_arg(ImVec2), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputTextWithHintAndSize(label, hint, buf, buf_size, size_arg, flags)
    ImGui_InputTextWithHintAndSize(label, hint, buf, buf_size, size_arg, flags)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(int), size_arg(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextWithHintAndSizeEx(label, hint, buf, buf_size, size_arg, flags, callback = nil, user_data = nil)
    ImGui_InputTextWithHintAndSizeEx(label, hint, buf, buf_size, size_arg, flags, callback, user_data)
  end

  # arg: id(ImGuiID)
  # ret: void
  def self.InputTextDeactivateHook(id)
    ImGui_InputTextDeactivateHook(id)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.TempInputText(bb, id, label, buf, buf_size, flags = 0)
    ImGui_TempInputText(bb, id, label, buf, buf_size, flags)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.TempInputTextEx(bb, id, label, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    ImGui_TempInputTextEx(bb, id, label, buf, buf_size, flags, callback, user_data)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*)
  # ret: bool
  def self.TempInputScalar(bb, id, label, data_type, p_data, format)
    ImGui_TempInputScalar(bb, id, label, data_type, p_data, format)
  end

  # arg: bb(ImRect), id(ImGuiID), label(const char*), data_type(ImGuiDataType), p_data(void*), format(const char*), p_clamp_min(const void*), p_clamp_max(const void*)
  # ret: bool
  def self.TempInputScalarEx(bb, id, label, data_type, p_data, format, p_clamp_min = nil, p_clamp_max = nil)
    ImGui_TempInputScalarEx(bb, id, label, data_type, p_data, format, p_clamp_min, p_clamp_max)
  end

  # arg: id(ImGuiID)
  # ret: bool
  def self.TempInputIsActive(id)
    ImGui_TempInputIsActive(id)
  end

  # arg: data_type(ImGuiDataType), p_data(void*)
  # ret: void
  def self.SetNextItemRefVal(data_type, p_data)
    ImGui_SetNextItemRefVal(data_type, p_data)
  end

  # ret: bool
  def self.IsItemActiveAsInputText()
    ImGui_IsItemActiveAsInputText()
  end

  # arg: text(const char*), col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorTooltip(text, col, flags)
    ImGui_ColorTooltip(text, col, flags)
  end

  # arg: col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorEditOptionsPopup(col, flags)
    ImGui_ColorEditOptionsPopup(col, flags)
  end

  # arg: ref_col(const float*), flags(ImGuiColorEditFlags)
  # ret: void
  def self.ColorPickerOptionsPopup(ref_col, flags)
    ImGui_ColorPickerOptionsPopup(ref_col, flags)
  end

  # arg: col(ImU32)
  # ret: void
  def self.SetNextItemColorMarker(col)
    ImGui_SetNextItemColorMarker(col)
  end

  # arg: plot_type(ImGuiPlotType), label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), size_arg(ImVec2)
  # ret: int
  def self.PlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, size_arg)
    ImGui_PlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, size_arg)
  end

  # arg: draw_list(ImDrawList*), vert_start_idx(int), vert_end_idx(int), gradient_p0(ImVec2), gradient_p1(ImVec2), col0(ImU32), col1(ImU32)
  # ret: void
  def self.ShadeVertsLinearColorGradientKeepAlpha(draw_list, vert_start_idx, vert_end_idx, gradient_p0, gradient_p1, col0, col1)
    ImGui_ShadeVertsLinearColorGradientKeepAlpha(draw_list, vert_start_idx, vert_end_idx, gradient_p0, gradient_p1, col0, col1)
  end

  # arg: draw_list(ImDrawList*), vert_start_idx(int), vert_end_idx(int), a(ImVec2), b(ImVec2), uv_a(ImVec2), uv_b(ImVec2), clamp(bool)
  # ret: void
  def self.ShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, a, b, uv_a, uv_b, clamp)
    ImGui_ShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, a, b, uv_a, uv_b, clamp)
  end

  # arg: draw_list(ImDrawList*), vert_start_idx(int), vert_end_idx(int), pivot_in(ImVec2), cos_a(float), sin_a(float), pivot_out(ImVec2)
  # ret: void
  def self.ShadeVertsTransformPos(draw_list, vert_start_idx, vert_end_idx, pivot_in, cos_a, sin_a, pivot_out)
    ImGui_ShadeVertsTransformPos(draw_list, vert_start_idx, vert_end_idx, pivot_in, cos_a, sin_a, pivot_out)
  end

  # ret: void
  def self.GcCompactTransientMiscBuffers()
    ImGui_GcCompactTransientMiscBuffers()
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.GcCompactTransientWindowBuffers(window)
    ImGui_GcCompactTransientWindowBuffers(window)
  end

  # arg: window(ImGuiWindow*)
  # ret: void
  def self.GcAwakeTransientWindowBuffers(window)
    ImGui_GcAwakeTransientWindowBuffers(window)
  end

  # arg: msg(const char*)
  # ret: bool
  def self.ErrorLog(msg)
    ImGui_ErrorLog(msg)
  end

  # arg: state_out(ImGuiErrorRecoveryState*)
  # ret: void
  def self.ErrorRecoveryStoreState(state_out)
    ImGui_ErrorRecoveryStoreState(state_out)
  end

  # arg: state_in(const ImGuiErrorRecoveryState*)
  # ret: void
  def self.ErrorRecoveryTryToRecoverState(state_in)
    ImGui_ErrorRecoveryTryToRecoverState(state_in)
  end

  # arg: state_in(const ImGuiErrorRecoveryState*)
  # ret: void
  def self.ErrorRecoveryTryToRecoverWindowState(state_in)
    ImGui_ErrorRecoveryTryToRecoverWindowState(state_in)
  end

  # ret: void
  def self.ErrorCheckUsingSetCursorPosToExtendParentBoundaries()
    ImGui_ErrorCheckUsingSetCursorPosToExtendParentBoundaries()
  end

  # ret: void
  def self.ErrorCheckEndFrameFinalizeErrorTooltip()
    ImGui_ErrorCheckEndFrameFinalizeErrorTooltip()
  end

  # ret: bool
  def self.BeginErrorTooltip()
    ImGui_BeginErrorTooltip()
  end

  # ret: void
  def self.EndErrorTooltip()
    ImGui_EndErrorTooltip()
  end

  # arg: file(const char*), line(int), section(const char*)
  # ret: void
  def self.DemoMarker(file, line, section)
    ImGui_DemoMarker(file, line, section)
  end

  # arg: info(ImGuiDebugAllocInfo*), frame_count(int), ptr(void*), size(size_t)
  # ret: void
  def self.DebugAllocHook(info, frame_count, ptr, size)
    ImGui_DebugAllocHook(info, frame_count, ptr, size)
  end

  # ret: void
  def self.DebugDrawCursorPos()
    ImGui_DebugDrawCursorPos()
  end

  # arg: col(ImU32)
  # ret: void
  def self.DebugDrawCursorPosEx(col = IM_COL32(255, 0, 0, 255))
    ImGui_DebugDrawCursorPosEx(col)
  end

  # ret: void
  def self.DebugDrawLineExtents()
    ImGui_DebugDrawLineExtents()
  end

  # arg: col(ImU32)
  # ret: void
  def self.DebugDrawLineExtentsEx(col = IM_COL32(255, 0, 0, 255))
    ImGui_DebugDrawLineExtentsEx(col)
  end

  # ret: void
  def self.DebugDrawItemRect()
    ImGui_DebugDrawItemRect()
  end

  # arg: col(ImU32)
  # ret: void
  def self.DebugDrawItemRectEx(col = IM_COL32(255, 0, 0, 255))
    ImGui_DebugDrawItemRectEx(col)
  end

  # arg: line_begin(const char*), line_end(const char*)
  # ret: void
  def self.DebugTextUnformattedWithLocateItem(line_begin, line_end)
    ImGui_DebugTextUnformattedWithLocateItem(line_begin, line_end)
  end

  # arg: target_id(ImGuiID)
  # ret: void
  def self.DebugLocateItem(target_id)
    ImGui_DebugLocateItem(target_id)
  end

  # arg: target_id(ImGuiID)
  # ret: void
  def self.DebugLocateItemOnHover(target_id)
    ImGui_DebugLocateItemOnHover(target_id)
  end

  # ret: void
  def self.DebugLocateItemResolveWithLastItem()
    ImGui_DebugLocateItemResolveWithLastItem()
  end

  # ret: void
  def self.DebugBreakClearData()
    ImGui_DebugBreakClearData()
  end

  # arg: label(const char*), description_of_location(const char*)
  # ret: bool
  def self.DebugBreakButton(label, description_of_location)
    ImGui_DebugBreakButton(label, description_of_location)
  end

  # arg: keyboard_only(bool), description_of_location(const char*)
  # ret: void
  def self.DebugBreakButtonTooltip(keyboard_only, description_of_location)
    ImGui_DebugBreakButtonTooltip(keyboard_only, description_of_location)
  end

  # arg: atlas(ImFontAtlas*)
  # ret: void
  def self.ShowFontAtlas(atlas)
    ImGui_ShowFontAtlas(atlas)
  end

  # arg: tex_id(ImTextureID)
  # ret: uint64
  def self.DebugTextureIDToU64(tex_id)
    ImGui_DebugTextureIDToU64(tex_id)
  end

  # arg: id(ImGuiID), data_type(ImGuiDataType), data_id(const void*), data_id_end(const void*)
  # ret: void
  def self.DebugHookIdInfo(id, data_type, data_id, data_id_end)
    ImGui_DebugHookIdInfo(id, data_type, data_id, data_id_end)
  end

  # arg: columns(ImGuiOldColumns*)
  # ret: void
  def self.DebugNodeColumns(columns)
    ImGui_DebugNodeColumns(columns)
  end

  # arg: window(ImGuiWindow*), viewport(ImGuiViewportP*), draw_list(const ImDrawList*), label(const char*)
  # ret: void
  def self.DebugNodeDrawList(window, viewport, draw_list, label)
    ImGui_DebugNodeDrawList(window, viewport, draw_list, label)
  end

  # arg: out_draw_list(ImDrawList*), draw_list(const ImDrawList*), draw_cmd(const ImDrawCmd*), show_mesh(bool), show_aabb(bool)
  # ret: void
  def self.DebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list, draw_list, draw_cmd, show_mesh, show_aabb)
    ImGui_DebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list, draw_list, draw_cmd, show_mesh, show_aabb)
  end

  # arg: font(ImFont*)
  # ret: void
  def self.DebugNodeFont(font)
    ImGui_DebugNodeFont(font)
  end

  # arg: font(ImFont*), baked(ImFontBaked*), src_mask(int)
  # ret: void
  def self.DebugNodeFontGlyphsForSrcMask(font, baked, src_mask)
    ImGui_DebugNodeFontGlyphsForSrcMask(font, baked, src_mask)
  end

  # arg: font(ImFont*), glyph(const ImFontGlyph*)
  # ret: void
  def self.DebugNodeFontGlyph(font, glyph)
    ImGui_DebugNodeFontGlyph(font, glyph)
  end

  # arg: tex(ImTextureData*), int_id(int)
  # ret: void
  def self.DebugNodeTexture(tex, int_id)
    ImGui_DebugNodeTexture(tex, int_id)
  end

  # arg: tex(ImTextureData*), int_id(int), highlight_rect(const ImFontAtlasRect*)
  # ret: void
  def self.DebugNodeTextureEx(tex, int_id, highlight_rect = nil)
    ImGui_DebugNodeTextureEx(tex, int_id, highlight_rect)
  end

  # arg: storage(ImGuiStorage*), label(const char*)
  # ret: void
  def self.DebugNodeStorage(storage, label)
    ImGui_DebugNodeStorage(storage, label)
  end

  # arg: tab_bar(ImGuiTabBar*), label(const char*)
  # ret: void
  def self.DebugNodeTabBar(tab_bar, label)
    ImGui_DebugNodeTabBar(tab_bar, label)
  end

  # arg: table(ImGuiTable*)
  # ret: void
  def self.DebugNodeTable(table)
    ImGui_DebugNodeTable(table)
  end

  # arg: settings(ImGuiTableSettings*)
  # ret: void
  def self.DebugNodeTableSettings(settings)
    ImGui_DebugNodeTableSettings(settings)
  end

  # arg: state(ImGuiTypingSelectState*)
  # ret: void
  def self.DebugNodeTypingSelectState(state)
    ImGui_DebugNodeTypingSelectState(state)
  end

  # arg: state(ImGuiMultiSelectState*)
  # ret: void
  def self.DebugNodeMultiSelectState(state)
    ImGui_DebugNodeMultiSelectState(state)
  end

  # arg: window(ImGuiWindow*), label(const char*)
  # ret: void
  def self.DebugNodeWindow(window, label)
    ImGui_DebugNodeWindow(window, label)
  end

  # arg: settings(ImGuiWindowSettings*)
  # ret: void
  def self.DebugNodeWindowSettings(settings)
    ImGui_DebugNodeWindowSettings(settings)
  end

  # arg: windows(ImVector_ImGuiWindowPtr*), label(const char*)
  # ret: void
  def self.DebugNodeWindowsList(windows, label)
    ImGui_DebugNodeWindowsList(windows, label)
  end

  # arg: windows(ImGuiWindow**), windows_size(int), parent_in_begin_stack(ImGuiWindow*)
  # ret: void
  def self.DebugNodeWindowsListByBeginStackParent(windows, windows_size, parent_in_begin_stack)
    ImGui_DebugNodeWindowsListByBeginStackParent(windows, windows_size, parent_in_begin_stack)
  end

  # arg: viewport(ImGuiViewportP*)
  # ret: void
  def self.DebugNodeViewport(viewport)
    ImGui_DebugNodeViewport(viewport)
  end

  # arg: draw_list(ImDrawList*)
  # ret: void
  def self.DebugRenderKeyboardPreview(draw_list)
    ImGui_DebugRenderKeyboardPreview(draw_list)
  end

  # arg: draw_list(ImDrawList*), viewport(ImGuiViewportP*), bb(ImRect)
  # ret: void
  def self.DebugRenderViewportThumbnail(draw_list, viewport, bb)
    ImGui_DebugRenderViewportThumbnail(draw_list, viewport, bb)
  end

  # Overload functions

  def self.GetIO(*arg)
    # arg: 
    # ret: pointer
    return ImGui_GetIO() if arg.empty?
    # arg: 0:ctx(ImGuiContext*)
    # ret: pointer
    return ImGui_GetIOImGuiContextPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::GetIO : No matching functions found (#{arg})")
  end

  def self.GetPlatformIO(*arg)
    # arg: 
    # ret: pointer
    return ImGui_GetPlatformIO() if arg.empty?
    # arg: 0:ctx(ImGuiContext*)
    # ret: pointer
    return ImGui_GetPlatformIOImGuiContextPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::GetPlatformIO : No matching functions found (#{arg})")
  end

  def self.ShowIDStackToolWindow(*arg)
    # arg: 
    # ret: void
    return ImGui_ShowIDStackToolWindow() if arg.empty?
    # arg: 0:p_open(bool*)
    # ret: void
    return ImGui_ShowIDStackToolWindowEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::ShowIDStackToolWindow : No matching functions found (#{arg})")
  end

  def self.BeginChild(*arg)
    # arg: 0:str_id(const char*), 1:size(ImVec2), 2:child_flags(ImGuiChildFlags), 3:window_flags(ImGuiWindowFlags)
    # ret: bool
    return ImGui_BeginChild(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:size(ImVec2), 2:child_flags(ImGuiChildFlags), 3:window_flags(ImGuiWindowFlags)
    # ret: bool
    return ImGui_BeginChildID(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginChild : No matching functions found (#{arg})")
  end

  def self.SetNextWindowPos(*arg)
    # arg: 0:pos(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetNextWindowPos(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:pos(ImVec2), 1:cond(ImGuiCond), 2:pivot(ImVec2)
    # ret: void
    return ImGui_SetNextWindowPosEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer) && arg[2].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::SetNextWindowPos : No matching functions found (#{arg})")
  end

  def self.SetWindowPos(*arg)
    # arg: 0:pos(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowPos(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:pos(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowPosStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    # arg: 0:window(ImGuiWindow*), 1:pos(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowPosImGuiWindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetWindowPos : No matching functions found (#{arg})")
  end

  def self.SetWindowSize(*arg)
    # arg: 0:size(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowSize(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowSizeStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    # arg: 0:window(ImGuiWindow*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowSizeImGuiWindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetWindowSize : No matching functions found (#{arg})")
  end

  def self.SetWindowCollapsed(*arg)
    # arg: 0:collapsed(bool), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowCollapsed(arg[0], arg[1]) if arg.length == 2 && ((arg[0].is_a?(TrueClass) || arg[0].is_a?(FalseClass)) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowCollapsedStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
    # arg: 0:window(ImGuiWindow*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowCollapsedImGuiWindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetWindowCollapsed : No matching functions found (#{arg})")
  end

  def self.SetWindowFocus(*arg)
    # arg: 
    # ret: void
    return ImGui_SetWindowFocus() if arg.empty?
    # arg: 0:name(const char*)
    # ret: void
    return ImGui_SetWindowFocusStr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    $stderr.puts("[Warning] ImGui::SetWindowFocus : No matching functions found (#{arg})")
  end

  def self.SetScrollX(*arg)
    # arg: 0:scroll_x(float)
    # ret: void
    return ImGui_SetScrollX(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:scroll_x(float)
    # ret: void
    return ImGui_SetScrollXImGuiWindowPtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SetScrollX : No matching functions found (#{arg})")
  end

  def self.SetScrollY(*arg)
    # arg: 0:scroll_y(float)
    # ret: void
    return ImGui_SetScrollY(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:scroll_y(float)
    # ret: void
    return ImGui_SetScrollYImGuiWindowPtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SetScrollY : No matching functions found (#{arg})")
  end

  def self.SetScrollFromPosX(*arg)
    # arg: 0:local_x(float), 1:center_x_ratio(float)
    # ret: void
    return ImGui_SetScrollFromPosX(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:local_x(float), 2:center_x_ratio(float)
    # ret: void
    return ImGui_SetScrollFromPosXImGuiWindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float) && arg[2].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SetScrollFromPosX : No matching functions found (#{arg})")
  end

  def self.SetScrollFromPosY(*arg)
    # arg: 0:local_y(float), 1:center_y_ratio(float)
    # ret: void
    return ImGui_SetScrollFromPosY(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    # arg: 0:window(ImGuiWindow*), 1:local_y(float), 2:center_y_ratio(float)
    # ret: void
    return ImGui_SetScrollFromPosYImGuiWindowPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float) && arg[2].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SetScrollFromPosY : No matching functions found (#{arg})")
  end

  def self.PushFont(*arg)
    # arg: 0:font(ImFont*), 1:font_size_base_unscaled(float)
    # ret: void
    return ImGui_PushFontFloat(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Float))
    # arg: 0:font(ImFont*)
    # ret: void
    return ImGui_PushFont(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::PushFont : No matching functions found (#{arg})")
  end

  def self.PushStyleColor(*arg)
    # arg: 0:idx(ImGuiCol), 1:col(ImU32)
    # ret: void
    return ImGui_PushStyleColor(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:idx(ImGuiCol), 1:col(ImVec4)
    # ret: void
    return ImGui_PushStyleColorImVec4(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImGui::PushStyleColor : No matching functions found (#{arg})")
  end

  def self.PopStyleColor(*arg)
    # arg: 
    # ret: void
    return ImGui_PopStyleColor() if arg.empty?
    # arg: 0:count(int)
    # ret: void
    return ImGui_PopStyleColorEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::PopStyleColor : No matching functions found (#{arg})")
  end

  def self.PushStyleVar(*arg)
    # arg: 0:idx(ImGuiStyleVar), 1:val(float)
    # ret: void
    return ImGui_PushStyleVar(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:idx(ImGuiStyleVar), 1:val(ImVec2)
    # ret: void
    return ImGui_PushStyleVarImVec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PushStyleVar : No matching functions found (#{arg})")
  end

  def self.PopStyleVar(*arg)
    # arg: 
    # ret: void
    return ImGui_PopStyleVar() if arg.empty?
    # arg: 0:count(int)
    # ret: void
    return ImGui_PopStyleVarEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::PopStyleVar : No matching functions found (#{arg})")
  end

  def self.GetColorU32(*arg)
    # arg: 0:idx(ImGuiCol)
    # ret: uint
    return ImGui_GetColorU32(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:idx(ImGuiCol), 1:alpha_mul(float)
    # ret: uint
    return ImGui_GetColorU32Ex(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:col(ImVec4)
    # ret: uint
    return ImGui_GetColorU32ImVec4(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec4))
    # arg: 0:col(ImU32)
    # ret: uint
    return ImGui_GetColorU32ImU32(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:col(ImU32), 1:alpha_mul(float)
    # ret: uint
    return ImGui_GetColorU32ImU32Ex(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::GetColorU32 : No matching functions found (#{arg})")
  end

  def self.SameLine(*arg)
    # arg: 
    # ret: void
    return ImGui_SameLine() if arg.empty?
    # arg: 0:offset_from_start_x(float), 1:spacing(float)
    # ret: void
    return ImGui_SameLineEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Float) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SameLine : No matching functions found (#{arg})")
  end

  def self.Indent(*arg)
    # arg: 
    # ret: void
    return ImGui_Indent() if arg.empty?
    # arg: 0:indent_w(float)
    # ret: void
    return ImGui_IndentEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::Indent : No matching functions found (#{arg})")
  end

  def self.Unindent(*arg)
    # arg: 
    # ret: void
    return ImGui_Unindent() if arg.empty?
    # arg: 0:indent_w(float)
    # ret: void
    return ImGui_UnindentEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::Unindent : No matching functions found (#{arg})")
  end

  def self.PushID(*arg)
    # arg: 0:str_id(const char*)
    # ret: void
    return ImGui_PushID(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id_begin(const char*), 1:str_id_end(const char*)
    # ret: void
    return ImGui_PushIDStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: void
    return ImGui_PushIDPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:int_id(int)
    # ret: void
    return ImGui_PushIDInt(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::PushID : No matching functions found (#{arg})")
  end

  def self.GetID(*arg)
    # arg: 0:str_id(const char*)
    # ret: uint
    return ImGui_GetID(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id_begin(const char*), 1:str_id_end(const char*)
    # ret: uint
    return ImGui_GetIDStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: uint
    return ImGui_GetIDPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:int_id(int)
    # ret: uint
    return ImGui_GetIDInt(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::GetID : No matching functions found (#{arg})")
  end

  def self.TextUnformatted(*arg)
    # arg: 0:text(const char*)
    # ret: void
    return ImGui_TextUnformatted(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:text(const char*), 1:text_end(const char*)
    # ret: void
    return ImGui_TextUnformattedEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TextUnformatted : No matching functions found (#{arg})")
  end

  def self.Button(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_Button(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:size(ImVec2)
    # ret: bool
    return ImGui_ButtonEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::Button : No matching functions found (#{arg})")
  end

  def self.CheckboxFlags(*arg)
    # arg: 0:label(const char*), 1:flags(int*), 2:flags_value(int)
    # ret: bool
    return ImGui_CheckboxFlagsIntPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(unsigned int*), 2:flags_value(unsigned int)
    # ret: bool
    return ImGui_CheckboxFlagsUintPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(ImS64*), 2:flags_value(ImS64)
    # ret: bool
    return ImGui_CheckboxFlagsImS64Ptr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(ImU64*), 2:flags_value(ImU64)
    # ret: bool
    return ImGui_CheckboxFlagsImU64Ptr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::CheckboxFlags : No matching functions found (#{arg})")
  end

  def self.RadioButton(*arg)
    # arg: 0:label(const char*), 1:active(bool)
    # ret: bool
    return ImGui_RadioButton(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:label(const char*), 1:v(int*), 2:v_button(int)
    # ret: bool
    return ImGui_RadioButtonIntPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::RadioButton : No matching functions found (#{arg})")
  end

  def self.TextLinkOpenURL(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_TextLinkOpenURL(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:url(const char*)
    # ret: bool
    return ImGui_TextLinkOpenURLEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TextLinkOpenURL : No matching functions found (#{arg})")
  end

  def self.Image(*arg)
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2)
    # ret: void
    return ImGui_Image(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2))
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2), 2:uv0(ImVec2), 3:uv1(ImVec2)
    # ret: void
    return ImGui_ImageEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2))
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2), 2:uv0(ImVec2), 3:uv1(ImVec2), 4:tint_col(ImVec4), 5:border_col(ImVec4)
    # ret: void
    return ImGui_ImageImVec4(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(ImVec4) && arg[5].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImGui::Image : No matching functions found (#{arg})")
  end

  def self.ImageWithBg(*arg)
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2)
    # ret: void
    return ImGui_ImageWithBg(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2))
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2), 2:uv0(ImVec2), 3:uv1(ImVec2), 4:bg_col(ImVec4), 5:tint_col(ImVec4)
    # ret: void
    return ImGui_ImageWithBgEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(ImVec4) && arg[5].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImGui::ImageWithBg : No matching functions found (#{arg})")
  end

  def self.ImageButton(*arg)
    # arg: 0:str_id(const char*), 1:tex_ref(ImTextureRef), 2:image_size(ImVec2)
    # ret: bool
    return ImGui_ImageButton(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImTextureRef) && arg[2].kind_of?(ImVec2))
    # arg: 0:str_id(const char*), 1:tex_ref(ImTextureRef), 2:image_size(ImVec2), 3:uv0(ImVec2), 4:uv1(ImVec2), 5:bg_col(ImVec4), 6:tint_col(ImVec4)
    # ret: bool
    return ImGui_ImageButtonEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImTextureRef) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(ImVec2) && arg[5].kind_of?(ImVec4) && arg[6].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImGui::ImageButton : No matching functions found (#{arg})")
  end

  def self.Combo(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char*const[]), 3:items_count(int)
    # ret: bool
    return ImGui_ComboChar(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char*const[]), 3:items_count(int), 4:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboCharEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_separated_by_zeros(const char*)
    # ret: bool
    return ImGui_Combo(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_separated_by_zeros(const char*), 3:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int)
    # ret: bool
    return ImGui_ComboCallback(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int), 5:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::Combo : No matching functions found (#{arg})")
  end

  def self.DragFloat(*arg)
    # arg: 0:label(const char*), 1:v(float*)
    # ret: bool
    return ImGui_DragFloat(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float*), 2:v_speed(float), 3:v_min(float), 4:v_max(float), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragFloatEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragFloat : No matching functions found (#{arg})")
  end

  def self.DragFloat2(*arg)
    # arg: 0:label(const char*), 1:v(float[2])
    # ret: bool
    return ImGui_DragFloat2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[2]), 2:v_speed(float), 3:v_min(float), 4:v_max(float), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragFloat2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragFloat2 : No matching functions found (#{arg})")
  end

  def self.DragFloat3(*arg)
    # arg: 0:label(const char*), 1:v(float[3])
    # ret: bool
    return ImGui_DragFloat3(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[3]), 2:v_speed(float), 3:v_min(float), 4:v_max(float), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragFloat3Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragFloat3 : No matching functions found (#{arg})")
  end

  def self.DragFloat4(*arg)
    # arg: 0:label(const char*), 1:v(float[4])
    # ret: bool
    return ImGui_DragFloat4(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[4]), 2:v_speed(float), 3:v_min(float), 4:v_max(float), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragFloat4Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragFloat4 : No matching functions found (#{arg})")
  end

  def self.DragFloatRange2(*arg)
    # arg: 0:label(const char*), 1:v_current_min(float*), 2:v_current_max(float*)
    # ret: bool
    return ImGui_DragFloatRange2(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v_current_min(float*), 2:v_current_max(float*), 3:v_speed(float), 4:v_min(float), 5:v_max(float), 6:format(const char*), 7:format_max(const char*), 8:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragFloatRange2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(Float) && arg[6].kind_of?(String) && arg[7].kind_of?(String) && arg[8].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragFloatRange2 : No matching functions found (#{arg})")
  end

  def self.DragInt(*arg)
    # arg: 0:label(const char*), 1:v(int*)
    # ret: bool
    return ImGui_DragInt(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(int*), 2:v_speed(float), 3:v_min(int), 4:v_max(int), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragIntEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragInt : No matching functions found (#{arg})")
  end

  def self.DragInt2(*arg)
    # arg: 0:label(const char*), 1:v(int[2])
    # ret: bool
    return ImGui_DragInt2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(int[2]), 2:v_speed(float), 3:v_min(int), 4:v_max(int), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragInt2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragInt2 : No matching functions found (#{arg})")
  end

  def self.DragInt3(*arg)
    # arg: 0:label(const char*), 1:v(int[3])
    # ret: bool
    return ImGui_DragInt3(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(int[3]), 2:v_speed(float), 3:v_min(int), 4:v_max(int), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragInt3Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragInt3 : No matching functions found (#{arg})")
  end

  def self.DragInt4(*arg)
    # arg: 0:label(const char*), 1:v(int[4])
    # ret: bool
    return ImGui_DragInt4(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(int[4]), 2:v_speed(float), 3:v_min(int), 4:v_max(int), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragInt4Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragInt4 : No matching functions found (#{arg})")
  end

  def self.DragIntRange2(*arg)
    # arg: 0:label(const char*), 1:v_current_min(int*), 2:v_current_max(int*)
    # ret: bool
    return ImGui_DragIntRange2(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v_current_min(int*), 2:v_current_max(int*), 3:v_speed(float), 4:v_min(int), 5:v_max(int), 6:format(const char*), 7:format_max(const char*), 8:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragIntRange2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Float) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(String) && arg[7].kind_of?(String) && arg[8].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragIntRange2 : No matching functions found (#{arg})")
  end

  def self.DragScalar(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*)
    # ret: bool
    return ImGui_DragScalar(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:v_speed(float), 4:p_min(const void*), 5:p_max(const void*), 6:format(const char*), 7:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragScalarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Float) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(String) && arg[7].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragScalar : No matching functions found (#{arg})")
  end

  def self.DragScalarN(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int)
    # ret: bool
    return ImGui_DragScalarN(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int), 4:v_speed(float), 5:p_min(const void*), 6:p_max(const void*), 7:format(const char*), 8:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_DragScalarNEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Float) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(FFI::Pointer) && arg[7].kind_of?(String) && arg[8].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DragScalarN : No matching functions found (#{arg})")
  end

  def self.SliderFloat(*arg)
    # arg: 0:label(const char*), 1:v(float*), 2:v_min(float), 3:v_max(float)
    # ret: bool
    return ImGui_SliderFloat(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float))
    # arg: 0:label(const char*), 1:v(float*), 2:v_min(float), 3:v_max(float), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderFloatEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderFloat : No matching functions found (#{arg})")
  end

  def self.SliderFloat2(*arg)
    # arg: 0:label(const char*), 1:v(float[2]), 2:v_min(float), 3:v_max(float)
    # ret: bool
    return ImGui_SliderFloat2(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float))
    # arg: 0:label(const char*), 1:v(float[2]), 2:v_min(float), 3:v_max(float), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderFloat2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderFloat2 : No matching functions found (#{arg})")
  end

  def self.SliderFloat3(*arg)
    # arg: 0:label(const char*), 1:v(float[3]), 2:v_min(float), 3:v_max(float)
    # ret: bool
    return ImGui_SliderFloat3(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float))
    # arg: 0:label(const char*), 1:v(float[3]), 2:v_min(float), 3:v_max(float), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderFloat3Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderFloat3 : No matching functions found (#{arg})")
  end

  def self.SliderFloat4(*arg)
    # arg: 0:label(const char*), 1:v(float[4]), 2:v_min(float), 3:v_max(float)
    # ret: bool
    return ImGui_SliderFloat4(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float))
    # arg: 0:label(const char*), 1:v(float[4]), 2:v_min(float), 3:v_max(float), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderFloat4Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderFloat4 : No matching functions found (#{arg})")
  end

  def self.SliderAngle(*arg)
    # arg: 0:label(const char*), 1:v_rad(float*)
    # ret: bool
    return ImGui_SliderAngle(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v_rad(float*), 2:v_degrees_min(float), 3:v_degrees_max(float), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderAngleEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderAngle : No matching functions found (#{arg})")
  end

  def self.SliderInt(*arg)
    # arg: 0:label(const char*), 1:v(int*), 2:v_min(int), 3:v_max(int)
    # ret: bool
    return ImGui_SliderInt(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:v(int*), 2:v_min(int), 3:v_max(int), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderIntEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderInt : No matching functions found (#{arg})")
  end

  def self.SliderInt2(*arg)
    # arg: 0:label(const char*), 1:v(int[2]), 2:v_min(int), 3:v_max(int)
    # ret: bool
    return ImGui_SliderInt2(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:v(int[2]), 2:v_min(int), 3:v_max(int), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderInt2Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderInt2 : No matching functions found (#{arg})")
  end

  def self.SliderInt3(*arg)
    # arg: 0:label(const char*), 1:v(int[3]), 2:v_min(int), 3:v_max(int)
    # ret: bool
    return ImGui_SliderInt3(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:v(int[3]), 2:v_min(int), 3:v_max(int), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderInt3Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderInt3 : No matching functions found (#{arg})")
  end

  def self.SliderInt4(*arg)
    # arg: 0:label(const char*), 1:v(int[4]), 2:v_min(int), 3:v_max(int)
    # ret: bool
    return ImGui_SliderInt4(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:v(int[4]), 2:v_min(int), 3:v_max(int), 4:format(const char*), 5:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderInt4Ex(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderInt4 : No matching functions found (#{arg})")
  end

  def self.SliderScalar(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:p_min(const void*), 4:p_max(const void*)
    # ret: bool
    return ImGui_SliderScalar(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:p_min(const void*), 4:p_max(const void*), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderScalarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderScalar : No matching functions found (#{arg})")
  end

  def self.SliderScalarN(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int), 4:p_min(const void*), 5:p_max(const void*)
    # ret: bool
    return ImGui_SliderScalarN(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int), 4:p_min(const void*), 5:p_max(const void*), 6:format(const char*), 7:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_SliderScalarNEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(String) && arg[7].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SliderScalarN : No matching functions found (#{arg})")
  end

  def self.VSliderFloat(*arg)
    # arg: 0:label(const char*), 1:size(ImVec2), 2:v(float*), 3:v_min(float), 4:v_max(float)
    # ret: bool
    return ImGui_VSliderFloat(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float))
    # arg: 0:label(const char*), 1:size(ImVec2), 2:v(float*), 3:v_min(float), 4:v_max(float), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_VSliderFloatEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Float) && arg[4].kind_of?(Float) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::VSliderFloat : No matching functions found (#{arg})")
  end

  def self.VSliderInt(*arg)
    # arg: 0:label(const char*), 1:size(ImVec2), 2:v(int*), 3:v_min(int), 4:v_max(int)
    # ret: bool
    return ImGui_VSliderInt(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:size(ImVec2), 2:v(int*), 3:v_min(int), 4:v_max(int), 5:format(const char*), 6:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_VSliderIntEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::VSliderInt : No matching functions found (#{arg})")
  end

  def self.VSliderScalar(*arg)
    # arg: 0:label(const char*), 1:size(ImVec2), 2:data_type(ImGuiDataType), 3:p_data(void*), 4:p_min(const void*), 5:p_max(const void*)
    # ret: bool
    return ImGui_VSliderScalar(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:size(ImVec2), 2:data_type(ImGuiDataType), 3:p_data(void*), 4:p_min(const void*), 5:p_max(const void*), 6:format(const char*), 7:flags(ImGuiSliderFlags)
    # ret: bool
    return ImGui_VSliderScalarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(String) && arg[7].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::VSliderScalar : No matching functions found (#{arg})")
  end

  def self.InputText(*arg)
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t), 3:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputText(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t), 3:flags(ImGuiInputTextFlags), 4:callback(ImGuiInputTextCallback), 5:user_data(void*)
    # ret: bool
    return ImGui_InputTextEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputText : No matching functions found (#{arg})")
  end

  def self.InputTextMultiline(*arg)
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t)
    # ret: bool
    return ImGui_InputTextMultiline(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t), 3:size(ImVec2), 4:flags(ImGuiInputTextFlags), 5:callback(ImGuiInputTextCallback), 6:user_data(void*)
    # ret: bool
    return ImGui_InputTextMultilineEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputTextMultiline : No matching functions found (#{arg})")
  end

  def self.InputTextWithHint(*arg)
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(size_t), 4:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputTextWithHint(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(size_t), 4:flags(ImGuiInputTextFlags), 5:callback(ImGuiInputTextCallback), 6:user_data(void*)
    # ret: bool
    return ImGui_InputTextWithHintEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputTextWithHint : No matching functions found (#{arg})")
  end

  def self.InputFloat(*arg)
    # arg: 0:label(const char*), 1:v(float*)
    # ret: bool
    return ImGui_InputFloat(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float*), 2:step(float), 3:step_fast(float), 4:format(const char*), 5:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputFloatEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputFloat : No matching functions found (#{arg})")
  end

  def self.InputFloat2(*arg)
    # arg: 0:label(const char*), 1:v(float[2])
    # ret: bool
    return ImGui_InputFloat2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[2]), 2:format(const char*), 3:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputFloat2Ex(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputFloat2 : No matching functions found (#{arg})")
  end

  def self.InputFloat3(*arg)
    # arg: 0:label(const char*), 1:v(float[3])
    # ret: bool
    return ImGui_InputFloat3(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[3]), 2:format(const char*), 3:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputFloat3Ex(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputFloat3 : No matching functions found (#{arg})")
  end

  def self.InputFloat4(*arg)
    # arg: 0:label(const char*), 1:v(float[4])
    # ret: bool
    return ImGui_InputFloat4(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(float[4]), 2:format(const char*), 3:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputFloat4Ex(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputFloat4 : No matching functions found (#{arg})")
  end

  def self.InputInt(*arg)
    # arg: 0:label(const char*), 1:v(int*)
    # ret: bool
    return ImGui_InputInt(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(int*), 2:step(int), 3:step_fast(int), 4:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputIntEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputInt : No matching functions found (#{arg})")
  end

  def self.InputDouble(*arg)
    # arg: 0:label(const char*), 1:v(double*)
    # ret: bool
    return ImGui_InputDouble(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:v(double*), 2:step(double), 3:step_fast(double), 4:format(const char*), 5:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputDoubleEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Float) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputDouble : No matching functions found (#{arg})")
  end

  def self.InputScalar(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*)
    # ret: bool
    return ImGui_InputScalar(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:p_step(const void*), 4:p_step_fast(const void*), 5:format(const char*), 6:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputScalarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(String) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputScalar : No matching functions found (#{arg})")
  end

  def self.InputScalarN(*arg)
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int)
    # ret: bool
    return ImGui_InputScalarN(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:components(int), 4:p_step(const void*), 5:p_step_fast(const void*), 6:format(const char*), 7:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputScalarNEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(String) && arg[7].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::InputScalarN : No matching functions found (#{arg})")
  end

  def self.ColorButton(*arg)
    # arg: 0:desc_id(const char*), 1:col(ImVec4), 2:flags(ImGuiColorEditFlags)
    # ret: bool
    return ImGui_ColorButton(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec4) && arg[2].kind_of?(Integer))
    # arg: 0:desc_id(const char*), 1:col(ImVec4), 2:flags(ImGuiColorEditFlags), 3:size(ImVec2)
    # ret: bool
    return ImGui_ColorButtonEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec4) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::ColorButton : No matching functions found (#{arg})")
  end

  def self.TreeNode(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_TreeNode(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:str_id(const char*), 1:fmt(const char*), 2:__unnamed_arg2__(...)
    # ret: bool
    return ImGui_TreeNodeStr(arg[0], arg[1], *arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:fmt(const char*), 2:__unnamed_arg2__(...)
    # ret: bool
    return ImGui_TreeNodePtr(arg[0], arg[1], *arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TreeNode : No matching functions found (#{arg})")
  end

  def self.TreeNodeEx(*arg)
    # arg: 0:label(const char*), 1:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return ImGui_TreeNodeEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:str_id(const char*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:__unnamed_arg3__(...)
    # ret: bool
    return ImGui_TreeNodeExStr(arg[0], arg[1], arg[2], *arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:__unnamed_arg3__(...)
    # ret: bool
    return ImGui_TreeNodeExPtr(arg[0], arg[1], arg[2], *arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TreeNodeEx : No matching functions found (#{arg})")
  end

  def self.TreePush(*arg)
    # arg: 0:str_id(const char*)
    # ret: void
    return ImGui_TreePush(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:ptr_id(const void*)
    # ret: void
    return ImGui_TreePushPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::TreePush : No matching functions found (#{arg})")
  end

  def self.CollapsingHeader(*arg)
    # arg: 0:label(const char*), 1:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return ImGui_CollapsingHeader(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:label(const char*), 1:p_visible(bool*), 2:flags(ImGuiTreeNodeFlags)
    # ret: bool
    return ImGui_CollapsingHeaderBoolPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::CollapsingHeader : No matching functions found (#{arg})")
  end

  def self.Selectable(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_Selectable(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:selected(bool), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return ImGui_SelectableEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    # arg: 0:label(const char*), 1:p_selected(bool*), 2:flags(ImGuiSelectableFlags)
    # ret: bool
    return ImGui_SelectableBoolPtr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:p_selected(bool*), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return ImGui_SelectableBoolPtrEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::Selectable : No matching functions found (#{arg})")
  end

  def self.BeginMultiSelect(*arg)
    # arg: 0:flags(ImGuiMultiSelectFlags)
    # ret: pointer
    return ImGui_BeginMultiSelect(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:flags(ImGuiMultiSelectFlags), 1:selection_size(int), 2:items_count(int)
    # ret: pointer
    return ImGui_BeginMultiSelectEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginMultiSelect : No matching functions found (#{arg})")
  end

  def self.ListBox(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char*const[]), 3:items_count(int), 4:height_in_items(int)
    # ret: bool
    return ImGui_ListBox(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int)
    # ret: bool
    return ImGui_ListBoxCallback(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int), 5:height_in_items(int)
    # ret: bool
    return ImGui_ListBoxCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ListBox : No matching functions found (#{arg})")
  end

  def self.PlotLines(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int)
    # ret: void
    return ImGui_PlotLines(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return ImGui_PlotLinesEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int)
    # ret: void
    return ImGui_PlotLinesCallback(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return ImGui_PlotLinesCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PlotLines : No matching functions found (#{arg})")
  end

  def self.PlotHistogram(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int)
    # ret: void
    return ImGui_PlotHistogram(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return ImGui_PlotHistogramEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int)
    # ret: void
    return ImGui_PlotHistogramCallback(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return ImGui_PlotHistogramCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PlotHistogram : No matching functions found (#{arg})")
  end

  def self.BeginMenu(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_BeginMenu(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:enabled(bool)
    # ret: bool
    return ImGui_BeginMenuEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::BeginMenu : No matching functions found (#{arg})")
  end

  def self.MenuItem(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_MenuItem(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:shortcut(const char*), 2:selected(bool), 3:enabled(bool)
    # ret: bool
    return ImGui_MenuItemEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)))
    # arg: 0:label(const char*), 1:shortcut(const char*), 2:p_selected(bool*), 3:enabled(bool)
    # ret: bool
    return ImGui_MenuItemBoolPtr(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(FFI::Pointer) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::MenuItem : No matching functions found (#{arg})")
  end

  def self.OpenPopup(*arg)
    # arg: 0:str_id(const char*), 1:popup_flags(ImGuiPopupFlags)
    # ret: void
    return ImGui_OpenPopup(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:popup_flags(ImGuiPopupFlags)
    # ret: void
    return ImGui_OpenPopupID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::OpenPopup : No matching functions found (#{arg})")
  end

  def self.BeginPopupContextItem(*arg)
    # arg: 
    # ret: bool
    return ImGui_BeginPopupContextItem() if arg.empty?
    # arg: 0:str_id(const char*), 1:popup_flags(ImGuiPopupFlags)
    # ret: bool
    return ImGui_BeginPopupContextItemEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginPopupContextItem : No matching functions found (#{arg})")
  end

  def self.BeginPopupContextWindow(*arg)
    # arg: 
    # ret: bool
    return ImGui_BeginPopupContextWindow() if arg.empty?
    # arg: 0:str_id(const char*), 1:popup_flags(ImGuiPopupFlags)
    # ret: bool
    return ImGui_BeginPopupContextWindowEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginPopupContextWindow : No matching functions found (#{arg})")
  end

  def self.BeginPopupContextVoid(*arg)
    # arg: 
    # ret: bool
    return ImGui_BeginPopupContextVoid() if arg.empty?
    # arg: 0:str_id(const char*), 1:popup_flags(ImGuiPopupFlags)
    # ret: bool
    return ImGui_BeginPopupContextVoidEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginPopupContextVoid : No matching functions found (#{arg})")
  end

  def self.IsPopupOpen(*arg)
    # arg: 0:str_id(const char*), 1:flags(ImGuiPopupFlags)
    # ret: bool
    return ImGui_IsPopupOpen(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:popup_flags(ImGuiPopupFlags)
    # ret: bool
    return ImGui_IsPopupOpenID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsPopupOpen : No matching functions found (#{arg})")
  end

  def self.BeginTable(*arg)
    # arg: 0:str_id(const char*), 1:columns(int), 2:flags(ImGuiTableFlags)
    # ret: bool
    return ImGui_BeginTable(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    # arg: 0:str_id(const char*), 1:columns(int), 2:flags(ImGuiTableFlags), 3:outer_size(ImVec2), 4:inner_width(float)
    # ret: bool
    return ImGui_BeginTableEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::BeginTable : No matching functions found (#{arg})")
  end

  def self.TableNextRow(*arg)
    # arg: 
    # ret: void
    return ImGui_TableNextRow() if arg.empty?
    # arg: 0:row_flags(ImGuiTableRowFlags), 1:min_row_height(float)
    # ret: void
    return ImGui_TableNextRowEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::TableNextRow : No matching functions found (#{arg})")
  end

  def self.TableSetupColumn(*arg)
    # arg: 0:label(const char*), 1:flags(ImGuiTableColumnFlags)
    # ret: void
    return ImGui_TableSetupColumn(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer))
    # arg: 0:label(const char*), 1:flags(ImGuiTableColumnFlags), 2:init_width_or_weight(float), 3:user_id(ImGuiID)
    # ret: void
    return ImGui_TableSetupColumnEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Float) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::TableSetupColumn : No matching functions found (#{arg})")
  end

  def self.TableGetColumnName(*arg)
    # arg: 0:column_n(int)
    # ret: pointer
    return ImGui_TableGetColumnName(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:table(const ImGuiTable*), 1:column_n(int)
    # ret: pointer
    return ImGui_TableGetColumnNameImGuiTablePtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::TableGetColumnName : No matching functions found (#{arg})")
  end

  def self.Columns(*arg)
    # arg: 
    # ret: void
    return ImGui_Columns() if arg.empty?
    # arg: 0:count(int), 1:id(const char*), 2:borders(bool)
    # ret: void
    return ImGui_ColumnsEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(String) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::Columns : No matching functions found (#{arg})")
  end

  def self.SetKeyboardFocusHere(*arg)
    # arg: 
    # ret: void
    return ImGui_SetKeyboardFocusHere() if arg.empty?
    # arg: 0:offset(int)
    # ret: void
    return ImGui_SetKeyboardFocusHereEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetKeyboardFocusHere : No matching functions found (#{arg})")
  end

  def self.IsItemClicked(*arg)
    # arg: 
    # ret: bool
    return ImGui_IsItemClicked() if arg.empty?
    # arg: 0:mouse_button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsItemClickedEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsItemClicked : No matching functions found (#{arg})")
  end

  def self.GetBackgroundDrawList(*arg)
    # arg: 
    # ret: pointer
    return ImGui_GetBackgroundDrawList() if arg.empty?
    # arg: 0:viewport(ImGuiViewport*)
    # ret: pointer
    return ImGui_GetBackgroundDrawListImGuiViewportPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::GetBackgroundDrawList : No matching functions found (#{arg})")
  end

  def self.GetForegroundDrawList(*arg)
    # arg: 
    # ret: pointer
    return ImGui_GetForegroundDrawList() if arg.empty?
    # arg: 0:window(ImGuiWindow*)
    # ret: pointer
    return ImGui_GetForegroundDrawListImGuiWindowPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:viewport(ImGuiViewport*)
    # ret: pointer
    return ImGui_GetForegroundDrawListImGuiViewportPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::GetForegroundDrawList : No matching functions found (#{arg})")
  end

  def self.IsRectVisible(*arg)
    # arg: 0:size(ImVec2)
    # ret: bool
    return ImGui_IsRectVisibleBySize(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec2))
    # arg: 0:rect_min(ImVec2), 1:rect_max(ImVec2)
    # ret: bool
    return ImGui_IsRectVisible(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::IsRectVisible : No matching functions found (#{arg})")
  end

  def self.CalcTextSize(*arg)
    # arg: 0:text(const char*)
    # ret: ImVec2.by_value
    return ImGui_CalcTextSize(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:text(const char*), 1:text_end(const char*), 2:hide_text_after_double_hash(bool), 3:wrap_width(float)
    # ret: ImVec2.by_value
    return ImGui_CalcTextSizeEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)) && arg[3].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::CalcTextSize : No matching functions found (#{arg})")
  end

  def self.IsKeyDown(*arg)
    # arg: 0:key(ImGuiKey)
    # ret: bool
    return ImGui_IsKeyDown(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsKeyDownID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsKeyDown : No matching functions found (#{arg})")
  end

  def self.IsKeyPressed(*arg)
    # arg: 0:key(ImGuiKey)
    # ret: bool
    return ImGui_IsKeyPressed(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:repeat(bool)
    # ret: bool
    return ImGui_IsKeyPressedEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:key(ImGuiKey), 1:flags(ImGuiInputFlags)
    # ret: bool
    return ImGui_IsKeyPressedImGuiInputFlags(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:flags(ImGuiInputFlags), 2:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsKeyPressedImGuiInputFlagsEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsKeyPressed : No matching functions found (#{arg})")
  end

  def self.IsKeyReleased(*arg)
    # arg: 0:key(ImGuiKey)
    # ret: bool
    return ImGui_IsKeyReleased(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsKeyReleasedID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsKeyReleased : No matching functions found (#{arg})")
  end

  def self.IsKeyChordPressed(*arg)
    # arg: 0:key_chord(ImGuiKeyChord)
    # ret: bool
    return ImGui_IsKeyChordPressed(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key_chord(ImGuiKeyChord), 1:flags(ImGuiInputFlags)
    # ret: bool
    return ImGui_IsKeyChordPressedImGuiInputFlags(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:key_chord(ImGuiKeyChord), 1:flags(ImGuiInputFlags), 2:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsKeyChordPressedImGuiInputFlagsEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsKeyChordPressed : No matching functions found (#{arg})")
  end

  def self.Shortcut(*arg)
    # arg: 0:key_chord(ImGuiKeyChord), 1:flags(ImGuiInputFlags)
    # ret: bool
    return ImGui_Shortcut(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:key_chord(ImGuiKeyChord), 1:flags(ImGuiInputFlags), 2:owner_id(ImGuiID)
    # ret: bool
    return ImGui_ShortcutID(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::Shortcut : No matching functions found (#{arg})")
  end

  def self.SetItemKeyOwner(*arg)
    # arg: 0:key(ImGuiKey)
    # ret: void
    return ImGui_SetItemKeyOwner(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:flags(ImGuiInputFlags)
    # ret: void
    return ImGui_SetItemKeyOwnerImGuiInputFlags(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetItemKeyOwner : No matching functions found (#{arg})")
  end

  def self.IsMouseDown(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseDown(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsMouseDownID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsMouseDown : No matching functions found (#{arg})")
  end

  def self.IsMouseClicked(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseClicked(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:repeat(bool)
    # ret: bool
    return ImGui_IsMouseClickedEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:button(ImGuiMouseButton), 1:flags(ImGuiInputFlags)
    # ret: bool
    return ImGui_IsMouseClickedImGuiInputFlags(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:flags(ImGuiInputFlags), 2:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsMouseClickedImGuiInputFlagsEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsMouseClicked : No matching functions found (#{arg})")
  end

  def self.IsMouseReleased(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseReleased(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsMouseReleasedID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsMouseReleased : No matching functions found (#{arg})")
  end

  def self.IsMouseDoubleClicked(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseDoubleClicked(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:owner_id(ImGuiID)
    # ret: bool
    return ImGui_IsMouseDoubleClickedID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::IsMouseDoubleClicked : No matching functions found (#{arg})")
  end

  def self.IsMouseHoveringRect(*arg)
    # arg: 0:r_min(ImVec2), 1:r_max(ImVec2)
    # ret: bool
    return ImGui_IsMouseHoveringRect(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2))
    # arg: 0:r_min(ImVec2), 1:r_max(ImVec2), 2:clip(bool)
    # ret: bool
    return ImGui_IsMouseHoveringRectEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::IsMouseHoveringRect : No matching functions found (#{arg})")
  end

  def self.ResetMouseDragDelta(*arg)
    # arg: 
    # ret: void
    return ImGui_ResetMouseDragDelta() if arg.empty?
    # arg: 0:button(ImGuiMouseButton)
    # ret: void
    return ImGui_ResetMouseDragDeltaEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ResetMouseDragDelta : No matching functions found (#{arg})")
  end

  def self.MarkIniSettingsDirty(*arg)
    # arg: 
    # ret: void
    return ImGui_MarkIniSettingsDirty() if arg.empty?
    # arg: 0:window(ImGuiWindow*)
    # ret: void
    return ImGui_MarkIniSettingsDirtyImGuiWindowPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::MarkIniSettingsDirty : No matching functions found (#{arg})")
  end

  def self.GetIDWithSeed(*arg)
    # arg: 0:str_id_begin(const char*), 1:str_id_end(const char*), 2:seed(ImGuiID)
    # ret: uint
    return ImGui_GetIDWithSeedStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer))
    # arg: 0:n(int), 1:seed(ImGuiID)
    # ret: uint
    return ImGui_GetIDWithSeed(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::GetIDWithSeed : No matching functions found (#{arg})")
  end

  def self.ItemSize(*arg)
    # arg: 0:size(ImVec2)
    # ret: void
    return ImGui_ItemSize(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec2))
    # arg: 0:size(ImVec2), 1:text_baseline_y(float)
    # ret: void
    return ImGui_ItemSizeEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Float))
    # arg: 0:bb(ImRect)
    # ret: void
    return ImGui_ItemSizeImRect(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImRect))
    # arg: 0:bb(ImRect), 1:text_baseline_y(float)
    # ret: void
    return ImGui_ItemSizeImRectEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::ItemSize : No matching functions found (#{arg})")
  end

  def self.ItemAdd(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID)
    # ret: bool
    return ImGui_ItemAdd(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:nav_bb(const ImRect*), 3:extra_flags(ImGuiItemFlags)
    # ret: bool
    return ImGui_ItemAddEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ItemAdd : No matching functions found (#{arg})")
  end

  def self.LogToBuffer(*arg)
    # arg: 
    # ret: void
    return ImGui_LogToBuffer() if arg.empty?
    # arg: 0:auto_open_depth(int)
    # ret: void
    return ImGui_LogToBufferEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::LogToBuffer : No matching functions found (#{arg})")
  end

  def self.LogRenderedText(*arg)
    # arg: 0:ref_pos(const ImVec2*), 1:text(const char*)
    # ret: void
    return ImGui_LogRenderedText(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String))
    # arg: 0:ref_pos(const ImVec2*), 1:text(const char*), 2:text_end(const char*)
    # ret: void
    return ImGui_LogRenderedTextEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String) && arg[2].kind_of?(String))
    $stderr.puts("[Warning] ImGui::LogRenderedText : No matching functions found (#{arg})")
  end

  def self.OpenPopupEx(*arg)
    # arg: 0:id(ImGuiID)
    # ret: void
    return ImGui_OpenPopupEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:popup_flags(ImGuiPopupFlags)
    # ret: void
    return ImGui_OpenPopupExEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::OpenPopupEx : No matching functions found (#{arg})")
  end

  def self.BeginMenuEx(*arg)
    # arg: 0:label(const char*), 1:icon(const char*)
    # ret: bool
    return ImGui_BeginMenuWithIcon(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:label(const char*), 1:icon(const char*), 2:enabled(bool)
    # ret: bool
    return ImGui_BeginMenuWithIconEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && (arg[2].is_a?(TrueClass) || arg[2].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::BeginMenuEx : No matching functions found (#{arg})")
  end

  def self.MenuItemEx(*arg)
    # arg: 0:label(const char*), 1:icon(const char*)
    # ret: bool
    return ImGui_MenuItemWithIcon(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:label(const char*), 1:icon(const char*), 2:shortcut(const char*), 3:selected(bool), 4:enabled(bool)
    # ret: bool
    return ImGui_MenuItemWithIconEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)) && (arg[4].is_a?(TrueClass) || arg[4].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::MenuItemEx : No matching functions found (#{arg})")
  end

  def self.GetKeyData(*arg)
    # arg: 0:ctx(ImGuiContext*), 1:key(ImGuiKey)
    # ret: pointer
    return ImGui_GetKeyDataImGuiContextPtr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer))
    # arg: 0:key(ImGuiKey)
    # ret: pointer
    return ImGui_GetKeyData(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::GetKeyData : No matching functions found (#{arg})")
  end

  def self.IsMouseDragPastThreshold(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseDragPastThreshold(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:lock_threshold(float)
    # ret: bool
    return ImGui_IsMouseDragPastThresholdEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::IsMouseDragPastThreshold : No matching functions found (#{arg})")
  end

  def self.BeginDragDropTargetViewport(*arg)
    # arg: 0:viewport(ImGuiViewport*)
    # ret: bool
    return ImGui_BeginDragDropTargetViewport(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:viewport(ImGuiViewport*), 1:p_bb(const ImRect*)
    # ret: bool
    return ImGui_BeginDragDropTargetViewportEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::BeginDragDropTargetViewport : No matching functions found (#{arg})")
  end

  def self.GetTypingSelectRequest(*arg)
    # arg: 
    # ret: pointer
    return ImGui_GetTypingSelectRequest() if arg.empty?
    # arg: 0:flags(ImGuiTypingSelectFlags)
    # ret: pointer
    return ImGui_GetTypingSelectRequestEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::GetTypingSelectRequest : No matching functions found (#{arg})")
  end

  def self.TableOpenContextMenu(*arg)
    # arg: 
    # ret: void
    return ImGui_TableOpenContextMenu() if arg.empty?
    # arg: 0:column_n(int)
    # ret: void
    return ImGui_TableOpenContextMenuEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::TableOpenContextMenu : No matching functions found (#{arg})")
  end

  def self.BeginTableEx(*arg)
    # arg: 0:name(const char*), 1:id(ImGuiID), 2:columns_count(int), 3:flags(ImGuiTableFlags)
    # ret: bool
    return ImGui_BeginTableWithID(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:name(const char*), 1:id(ImGuiID), 2:columns_count(int), 3:flags(ImGuiTableFlags), 4:outer_size(ImVec2), 5:inner_width(float)
    # ret: bool
    return ImGui_BeginTableWithIDEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(ImVec2) && arg[5].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::BeginTableEx : No matching functions found (#{arg})")
  end

  def self.TableGetColumnResizeID(*arg)
    # arg: 0:table(ImGuiTable*), 1:column_n(int)
    # ret: uint
    return ImGui_TableGetColumnResizeID(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer))
    # arg: 0:table(ImGuiTable*), 1:column_n(int), 2:instance_no(int)
    # ret: uint
    return ImGui_TableGetColumnResizeIDEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::TableGetColumnResizeID : No matching functions found (#{arg})")
  end

  def self.TableGcCompactTransientBuffers(*arg)
    # arg: 0:table(ImGuiTable*)
    # ret: void
    return ImGui_TableGcCompactTransientBuffers(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    # arg: 0:table(ImGuiTableTempData*)
    # ret: void
    return ImGui_TableGcCompactTransientBuffersImGuiTableTempDataPtr(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::TableGcCompactTransientBuffers : No matching functions found (#{arg})")
  end

  def self.TabBarQueueFocus(*arg)
    # arg: 0:tab_bar(ImGuiTabBar*), 1:tab(ImGuiTabItem*)
    # ret: void
    return ImGui_TabBarQueueFocus(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(FFI::Pointer))
    # arg: 0:tab_bar(ImGuiTabBar*), 1:tab_name(const char*)
    # ret: void
    return ImGui_TabBarQueueFocusStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TabBarQueueFocus : No matching functions found (#{arg})")
  end

  def self.TabItemCalcSize(*arg)
    # arg: 0:label(const char*), 1:has_close_button_or_unsaved_marker(bool)
    # ret: ImVec2.by_value
    return ImGui_TabItemCalcSizeStr(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    # arg: 0:window(ImGuiWindow*)
    # ret: ImVec2.by_value
    return ImGui_TabItemCalcSize(arg[0]) if arg.length == 1 && (arg[0].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::TabItemCalcSize : No matching functions found (#{arg})")
  end

  def self.RenderText(*arg)
    # arg: 0:pos(ImVec2), 1:text(const char*)
    # ret: void
    return ImGui_RenderText(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(String))
    # arg: 0:pos(ImVec2), 1:text(const char*), 2:text_end(const char*), 3:hide_text_after_hash(bool)
    # ret: void
    return ImGui_RenderTextEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::RenderText : No matching functions found (#{arg})")
  end

  def self.RenderTextClipped(*arg)
    # arg: 0:pos_min(ImVec2), 1:pos_max(ImVec2), 2:text(const char*), 3:text_end(const char*), 4:text_size_if_known(const ImVec2*)
    # ret: void
    return ImGui_RenderTextClipped(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(String) && arg[3].kind_of?(String) && arg[4].kind_of?(FFI::Pointer))
    # arg: 0:pos_min(ImVec2), 1:pos_max(ImVec2), 2:text(const char*), 3:text_end(const char*), 4:text_size_if_known(const ImVec2*), 5:align(ImVec2), 6:clip_rect(const ImRect*)
    # ret: void
    return ImGui_RenderTextClippedEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(String) && arg[3].kind_of?(String) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(ImVec2) && arg[6].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::RenderTextClipped : No matching functions found (#{arg})")
  end

  def self.RenderTextClippedEx(*arg)
    # arg: 0:draw_list(ImDrawList*), 1:pos_min(ImVec2), 2:pos_max(ImVec2), 3:text(const char*), 4:text_end(const char*), 5:text_size_if_known(const ImVec2*)
    # ret: void
    return ImGui_RenderTextClippedWithDrawList(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(String) && arg[4].kind_of?(String) && arg[5].kind_of?(FFI::Pointer))
    # arg: 0:draw_list(ImDrawList*), 1:pos_min(ImVec2), 2:pos_max(ImVec2), 3:text(const char*), 4:text_end(const char*), 5:text_size_if_known(const ImVec2*), 6:align(ImVec2), 7:clip_rect(const ImRect*)
    # ret: void
    return ImGui_RenderTextClippedWithDrawListEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(String) && arg[4].kind_of?(String) && arg[5].kind_of?(FFI::Pointer) && arg[6].kind_of?(ImVec2) && arg[7].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::RenderTextClippedEx : No matching functions found (#{arg})")
  end

  def self.RenderFrame(*arg)
    # arg: 0:p_min(ImVec2), 1:p_max(ImVec2), 2:fill_col(ImU32)
    # ret: void
    return ImGui_RenderFrame(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    # arg: 0:p_min(ImVec2), 1:p_max(ImVec2), 2:fill_col(ImU32), 3:borders(bool), 4:rounding(float)
    # ret: void
    return ImGui_RenderFrameEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && (arg[3].is_a?(TrueClass) || arg[3].is_a?(FalseClass)) && arg[4].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::RenderFrame : No matching functions found (#{arg})")
  end

  def self.RenderFrameBorder(*arg)
    # arg: 0:p_min(ImVec2), 1:p_max(ImVec2)
    # ret: void
    return ImGui_RenderFrameBorder(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2))
    # arg: 0:p_min(ImVec2), 1:p_max(ImVec2), 2:rounding(float)
    # ret: void
    return ImGui_RenderFrameBorderEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::RenderFrameBorder : No matching functions found (#{arg})")
  end

  def self.RenderColorRectWithAlphaCheckerboard(*arg)
    # arg: 0:draw_list(ImDrawList*), 1:p_min(ImVec2), 2:p_max(ImVec2), 3:fill_col(ImU32), 4:grid_step(float), 5:grid_off(ImVec2)
    # ret: void
    return ImGui_RenderColorRectWithAlphaCheckerboard(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Float) && arg[5].kind_of?(ImVec2))
    # arg: 0:draw_list(ImDrawList*), 1:p_min(ImVec2), 2:p_max(ImVec2), 3:fill_col(ImU32), 4:grid_step(float), 5:grid_off(ImVec2), 6:rounding(float), 7:flags(ImDrawFlags)
    # ret: void
    return ImGui_RenderColorRectWithAlphaCheckerboardEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Float) && arg[5].kind_of?(ImVec2) && arg[6].kind_of?(Float) && arg[7].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::RenderColorRectWithAlphaCheckerboard : No matching functions found (#{arg})")
  end

  def self.RenderNavCursor(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID)
    # ret: void
    return ImGui_RenderNavCursor(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:flags(ImGuiNavRenderCursorFlags)
    # ret: void
    return ImGui_RenderNavCursorEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::RenderNavCursor : No matching functions found (#{arg})")
  end

  def self.RenderNavHighlight(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID)
    # ret: void
    return ImGui_RenderNavHighlight(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:flags(ImGuiNavRenderCursorFlags)
    # ret: void
    return ImGui_RenderNavHighlightEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::RenderNavHighlight : No matching functions found (#{arg})")
  end

  def self.FindRenderedTextEnd(*arg)
    # arg: 0:text(const char*)
    # ret: pointer
    return ImGui_FindRenderedTextEnd(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:text(const char*), 1:text_end(const char*)
    # ret: pointer
    return ImGui_FindRenderedTextEndEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::FindRenderedTextEnd : No matching functions found (#{arg})")
  end

  def self.RenderArrow(*arg)
    # arg: 0:draw_list(ImDrawList*), 1:pos(ImVec2), 2:col(ImU32), 3:dir(ImGuiDir)
    # ret: void
    return ImGui_RenderArrow(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:draw_list(ImDrawList*), 1:pos(ImVec2), 2:col(ImU32), 3:dir(ImGuiDir), 4:scale(float)
    # ret: void
    return ImGui_RenderArrowEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::RenderArrow : No matching functions found (#{arg})")
  end

  def self.TextEx(*arg)
    # arg: 0:text(const char*)
    # ret: void
    return ImGui_TextEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:text(const char*), 1:text_end(const char*), 2:flags(ImGuiTextFlags)
    # ret: void
    return ImGui_TextExEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::TextEx : No matching functions found (#{arg})")
  end

  def self.ButtonEx(*arg)
    # arg: 0:label(const char*)
    # ret: bool
    return ImGui_ButtonWithFlags(arg[0]) if arg.length == 1 && (arg[0].kind_of?(String))
    # arg: 0:label(const char*), 1:size_arg(ImVec2), 2:flags(ImGuiButtonFlags)
    # ret: bool
    return ImGui_ButtonWithFlagsEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ButtonEx : No matching functions found (#{arg})")
  end

  def self.SeparatorEx(*arg)
    # arg: 0:flags(ImGuiSeparatorFlags)
    # ret: void
    return ImGui_SeparatorEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:flags(ImGuiSeparatorFlags), 1:thickness(float)
    # ret: void
    return ImGui_SeparatorExEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::SeparatorEx : No matching functions found (#{arg})")
  end

  def self.ScrollbarEx(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:axis(ImGuiAxis), 3:p_scroll_v(ImS64*), 4:avail_v(ImS64), 5:contents_v(ImS64)
    # ret: bool
    return ImGui_ScrollbarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:axis(ImGuiAxis), 3:p_scroll_v(ImS64*), 4:avail_v(ImS64), 5:contents_v(ImS64), 6:draw_rounding_flags(ImDrawFlags)
    # ret: bool
    return ImGui_ScrollbarExEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ScrollbarEx : No matching functions found (#{arg})")
  end

  def self.SplitterBehavior(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:axis(ImGuiAxis), 3:size1(float*), 4:size2(float*), 5:min_size1(float), 6:min_size2(float)
    # ret: bool
    return ImGui_SplitterBehavior(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:axis(ImGuiAxis), 3:size1(float*), 4:size2(float*), 5:min_size1(float), 6:min_size2(float), 7:hover_extend(float), 8:hover_visibility_delay(float), 9:bg_col(ImU32)
    # ret: bool
    return ImGui_SplitterBehaviorEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9]) if arg.length == 10 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(Float) && arg[9].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SplitterBehavior : No matching functions found (#{arg})")
  end

  def self.TreeNodeBehavior(*arg)
    # arg: 0:id(ImGuiID), 1:flags(ImGuiTreeNodeFlags), 2:label(const char*)
    # ret: bool
    return ImGui_TreeNodeBehavior(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    # arg: 0:id(ImGuiID), 1:flags(ImGuiTreeNodeFlags), 2:label(const char*), 3:label_end(const char*)
    # ret: bool
    return ImGui_TreeNodeBehaviorEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String) && arg[3].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TreeNodeBehavior : No matching functions found (#{arg})")
  end

  def self.DataTypeApplyFromText(*arg)
    # arg: 0:buf(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:format(const char*)
    # ret: bool
    return ImGui_DataTypeApplyFromText(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(String))
    # arg: 0:buf(const char*), 1:data_type(ImGuiDataType), 2:p_data(void*), 3:format(const char*), 4:p_data_when_empty(void*)
    # ret: bool
    return ImGui_DataTypeApplyFromTextEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(String) && arg[4].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::DataTypeApplyFromText : No matching functions found (#{arg})")
  end

  def self.InputTextEx(*arg)
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(int), 4:size_arg(ImVec2), 5:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputTextWithHintAndSize(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(ImVec2) && arg[5].kind_of?(Integer))
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(int), 4:size_arg(ImVec2), 5:flags(ImGuiInputTextFlags), 6:callback(ImGuiInputTextCallback), 7:user_data(void*)
    # ret: bool
    return ImGui_InputTextWithHintAndSizeEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(ImVec2) && arg[5].kind_of?(Integer) && arg[6].kind_of?(Integer) && arg[7].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputTextEx : No matching functions found (#{arg})")
  end

  def self.TempInputText(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:label(const char*), 3:buf(char*), 4:buf_size(size_t), 5:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_TempInputText(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String) && arg[3].kind_of?(String) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:label(const char*), 3:buf(char*), 4:buf_size(size_t), 5:flags(ImGuiInputTextFlags), 6:callback(ImGuiInputTextCallback), 7:user_data(void*)
    # ret: bool
    return ImGui_TempInputTextEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String) && arg[3].kind_of?(String) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(Integer) && arg[7].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::TempInputText : No matching functions found (#{arg})")
  end

  def self.TempInputScalar(*arg)
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:label(const char*), 3:data_type(ImGuiDataType), 4:p_data(void*), 5:format(const char*)
    # ret: bool
    return ImGui_TempInputScalar(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(String))
    # arg: 0:bb(ImRect), 1:id(ImGuiID), 2:label(const char*), 3:data_type(ImGuiDataType), 4:p_data(void*), 5:format(const char*), 6:p_clamp_min(const void*), 7:p_clamp_max(const void*)
    # ret: bool
    return ImGui_TempInputScalarEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]) if arg.length == 8 && (arg[0].kind_of?(ImRect) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer) && arg[4].kind_of?(FFI::Pointer) && arg[5].kind_of?(String) && arg[6].kind_of?(FFI::Pointer) && arg[7].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::TempInputScalar : No matching functions found (#{arg})")
  end

  def self.DebugDrawCursorPos(*arg)
    # arg: 
    # ret: void
    return ImGui_DebugDrawCursorPos() if arg.empty?
    # arg: 0:col(ImU32)
    # ret: void
    return ImGui_DebugDrawCursorPosEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DebugDrawCursorPos : No matching functions found (#{arg})")
  end

  def self.DebugDrawLineExtents(*arg)
    # arg: 
    # ret: void
    return ImGui_DebugDrawLineExtents() if arg.empty?
    # arg: 0:col(ImU32)
    # ret: void
    return ImGui_DebugDrawLineExtentsEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DebugDrawLineExtents : No matching functions found (#{arg})")
  end

  def self.DebugDrawItemRect(*arg)
    # arg: 
    # ret: void
    return ImGui_DebugDrawItemRect() if arg.empty?
    # arg: 0:col(ImU32)
    # ret: void
    return ImGui_DebugDrawItemRectEx(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::DebugDrawItemRect : No matching functions found (#{arg})")
  end

  def self.DebugNodeTexture(*arg)
    # arg: 0:tex(ImTextureData*), 1:int_id(int)
    # ret: void
    return ImGui_DebugNodeTexture(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer))
    # arg: 0:tex(ImTextureData*), 1:int_id(int), 2:highlight_rect(const ImFontAtlasRect*)
    # ret: void
    return ImGui_DebugNodeTextureEx(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::DebugNodeTexture : No matching functions found (#{arg})")
  end

end # module ImGui
