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
FFI.typedef :int, :ImGuiWindowFlags_
FFI.typedef :int, :ImGuiChildFlags_
FFI.typedef :int, :ImGuiItemFlags_
FFI.typedef :int, :ImGuiInputTextFlags_
FFI.typedef :int, :ImGuiTreeNodeFlags_
FFI.typedef :int, :ImGuiPopupFlags_
FFI.typedef :int, :ImGuiSelectableFlags_
FFI.typedef :int, :ImGuiComboFlags_
FFI.typedef :int, :ImGuiTabBarFlags_
FFI.typedef :int, :ImGuiTabItemFlags_
FFI.typedef :int, :ImGuiFocusedFlags_
FFI.typedef :int, :ImGuiHoveredFlags_
FFI.typedef :int, :ImGuiDragDropFlags_
FFI.typedef :int, :ImGuiDataType_
FFI.typedef :int, :ImGuiInputFlags_
FFI.typedef :int, :ImGuiConfigFlags_
FFI.typedef :int, :ImGuiBackendFlags_
FFI.typedef :int, :ImGuiCol_
FFI.typedef :int, :ImGuiStyleVar_
FFI.typedef :int, :ImGuiButtonFlags_
FFI.typedef :int, :ImGuiColorEditFlags_
FFI.typedef :int, :ImGuiSliderFlags_
FFI.typedef :int, :ImGuiMouseButton_
FFI.typedef :int, :ImGuiMouseCursor_
FFI.typedef :int, :ImGuiCond_
FFI.typedef :int, :ImGuiTableFlags_
FFI.typedef :int, :ImGuiTableColumnFlags_
FFI.typedef :int, :ImGuiTableRowFlags_
FFI.typedef :int, :ImGuiTableBgTarget_
FFI.typedef :int, :ImGuiListClipperFlags_
FFI.typedef :int, :ImGuiMultiSelectFlags_
FFI.typedef :int, :ImGuiSelectionRequestType
FFI.typedef :int, :ImDrawFlags_
FFI.typedef :int, :ImDrawListFlags_
FFI.typedef :int, :ImTextureFormat
FFI.typedef :int, :ImTextureStatus
FFI.typedef :int, :ImFontAtlasFlags_
FFI.typedef :int, :ImFontFlags_
FFI.typedef :int, :ImGuiViewportFlags_

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
    :TexUvLines, [:pointer, IM_DRAWLIST_TEX_LINES_WIDTH_MAX+1],
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
    :Colors, [:pointer, ImGuiCol_COUNT],
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
    :MouseDown, [:pointer, 5],
    :MouseWheel, :float,
    :MouseWheelH, :float,
    :MouseSource, :int,
    :KeyCtrl, :bool,
    :KeyShift, :bool,
    :KeyAlt, :bool,
    :KeySuper, :bool,
    :KeyMods, :int,
    :KeysData, [:pointer, ImGuiKey_NamedKey_COUNT],
    :WantCaptureMouseUnlessPopupClose, :bool,
    :MousePosPrev, ImVec2.by_value,
    :MouseClickedPos, [:pointer, 5],
    :MouseClickedTime, [:pointer, 5],
    :MouseClicked, [:pointer, 5],
    :MouseDoubleClicked, [:pointer, 5],
    :MouseClickedCount, [:pointer, 5],
    :MouseClickedLastCount, [:pointer, 5],
    :MouseReleased, [:pointer, 5],
    :MouseReleasedTime, [:pointer, 5],
    :MouseDownOwned, [:pointer, 5],
    :MouseDownOwnedUnlessPopupClose, [:pointer, 5],
    :MouseWheelRequestAxisSwap, :bool,
    :MouseCtrlLeftAsRightClick, :bool,
    :MouseDownDuration, [:pointer, 5],
    :MouseDownDurationPrev, [:pointer, 5],
    :MouseDragMaxDistanceSqr, [:pointer, 5],
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
    :DataType, [:pointer, 32+1],
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
    :InputBuf, [:pointer, 256],
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
    :Name, [:pointer, 40],
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
    :Used8kPagesMap, [:pointer, 1],
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

    symbols = [
      :ImTextureRef_GetTexID,
      :ImGui_CreateContext,
      :ImGui_DestroyContext,
      :ImGui_GetCurrentContext,
      :ImGui_SetCurrentContext,
      :ImGui_GetIO,
      :ImGui_GetPlatformIO,
      :ImGui_GetStyle,
      :ImGui_NewFrame,
      :ImGui_EndFrame,
      :ImGui_Render,
      :ImGui_GetDrawData,
      :ImGui_ShowDemoWindow,
      :ImGui_ShowMetricsWindow,
      :ImGui_ShowDebugLogWindow,
      :ImGui_ShowIDStackToolWindow,
      :ImGui_ShowIDStackToolWindowEx,
      :ImGui_ShowAboutWindow,
      :ImGui_ShowStyleEditor,
      :ImGui_ShowStyleSelector,
      :ImGui_ShowFontSelector,
      :ImGui_ShowUserGuide,
      :ImGui_GetVersion,
      :ImGui_StyleColorsDark,
      :ImGui_StyleColorsLight,
      :ImGui_StyleColorsClassic,
      :ImGui_Begin,
      :ImGui_End,
      :ImGui_BeginChild,
      :ImGui_BeginChildID,
      :ImGui_EndChild,
      :ImGui_IsWindowAppearing,
      :ImGui_IsWindowCollapsed,
      :ImGui_IsWindowFocused,
      :ImGui_IsWindowHovered,
      :ImGui_GetWindowDrawList,
      :ImGui_GetWindowPos,
      :ImGui_GetWindowSize,
      :ImGui_GetWindowWidth,
      :ImGui_GetWindowHeight,
      :ImGui_SetNextWindowPos,
      :ImGui_SetNextWindowPosEx,
      :ImGui_SetNextWindowSize,
      :ImGui_SetNextWindowSizeConstraints,
      :ImGui_SetNextWindowContentSize,
      :ImGui_SetNextWindowCollapsed,
      :ImGui_SetNextWindowFocus,
      :ImGui_SetNextWindowScroll,
      :ImGui_SetNextWindowBgAlpha,
      :ImGui_SetWindowPos,
      :ImGui_SetWindowSize,
      :ImGui_SetWindowCollapsed,
      :ImGui_SetWindowFocus,
      :ImGui_SetWindowPosStr,
      :ImGui_SetWindowSizeStr,
      :ImGui_SetWindowCollapsedStr,
      :ImGui_SetWindowFocusStr,
      :ImGui_GetScrollX,
      :ImGui_GetScrollY,
      :ImGui_SetScrollX,
      :ImGui_SetScrollY,
      :ImGui_GetScrollMaxX,
      :ImGui_GetScrollMaxY,
      :ImGui_SetScrollHereX,
      :ImGui_SetScrollHereY,
      :ImGui_SetScrollFromPosX,
      :ImGui_SetScrollFromPosY,
      :ImGui_PushFontFloat,
      :ImGui_PopFont,
      :ImGui_GetFont,
      :ImGui_GetFontSize,
      :ImGui_GetFontBaked,
      :ImGui_PushStyleColor,
      :ImGui_PushStyleColorImVec4,
      :ImGui_PopStyleColor,
      :ImGui_PopStyleColorEx,
      :ImGui_PushStyleVar,
      :ImGui_PushStyleVarImVec2,
      :ImGui_PushStyleVarX,
      :ImGui_PushStyleVarY,
      :ImGui_PopStyleVar,
      :ImGui_PopStyleVarEx,
      :ImGui_PushItemFlag,
      :ImGui_PopItemFlag,
      :ImGui_PushItemWidth,
      :ImGui_PopItemWidth,
      :ImGui_SetNextItemWidth,
      :ImGui_CalcItemWidth,
      :ImGui_PushTextWrapPos,
      :ImGui_PopTextWrapPos,
      :ImGui_GetFontTexUvWhitePixel,
      :ImGui_GetColorU32,
      :ImGui_GetColorU32Ex,
      :ImGui_GetColorU32ImVec4,
      :ImGui_GetColorU32ImU32,
      :ImGui_GetColorU32ImU32Ex,
      :ImGui_GetStyleColorVec4,
      :ImGui_GetCursorScreenPos,
      :ImGui_SetCursorScreenPos,
      :ImGui_GetContentRegionAvail,
      :ImGui_GetCursorPos,
      :ImGui_GetCursorPosX,
      :ImGui_GetCursorPosY,
      :ImGui_SetCursorPos,
      :ImGui_SetCursorPosX,
      :ImGui_SetCursorPosY,
      :ImGui_GetCursorStartPos,
      :ImGui_Separator,
      :ImGui_SameLine,
      :ImGui_SameLineEx,
      :ImGui_NewLine,
      :ImGui_Spacing,
      :ImGui_Dummy,
      :ImGui_Indent,
      :ImGui_IndentEx,
      :ImGui_Unindent,
      :ImGui_UnindentEx,
      :ImGui_BeginGroup,
      :ImGui_EndGroup,
      :ImGui_AlignTextToFramePadding,
      :ImGui_GetTextLineHeight,
      :ImGui_GetTextLineHeightWithSpacing,
      :ImGui_GetFrameHeight,
      :ImGui_GetFrameHeightWithSpacing,
      :ImGui_PushID,
      :ImGui_PushIDStr,
      :ImGui_PushIDPtr,
      :ImGui_PushIDInt,
      :ImGui_PopID,
      :ImGui_GetID,
      :ImGui_GetIDStr,
      :ImGui_GetIDPtr,
      :ImGui_GetIDInt,
      :ImGui_TextUnformatted,
      :ImGui_TextUnformattedEx,
      :ImGui_Text,
      :ImGui_TextColored,
      :ImGui_TextDisabled,
      :ImGui_TextWrapped,
      :ImGui_LabelText,
      :ImGui_BulletText,
      :ImGui_SeparatorText,
      :ImGui_Button,
      :ImGui_ButtonEx,
      :ImGui_SmallButton,
      :ImGui_InvisibleButton,
      :ImGui_ArrowButton,
      :ImGui_Checkbox,
      :ImGui_CheckboxFlagsIntPtr,
      :ImGui_CheckboxFlagsUintPtr,
      :ImGui_RadioButton,
      :ImGui_RadioButtonIntPtr,
      :ImGui_ProgressBar,
      :ImGui_Bullet,
      :ImGui_TextLink,
      :ImGui_TextLinkOpenURL,
      :ImGui_TextLinkOpenURLEx,
      :ImGui_Image,
      :ImGui_ImageEx,
      :ImGui_ImageWithBg,
      :ImGui_ImageWithBgEx,
      :ImGui_ImageButton,
      :ImGui_ImageButtonEx,
      :ImGui_BeginCombo,
      :ImGui_EndCombo,
      :ImGui_ComboChar,
      :ImGui_ComboCharEx,
      :ImGui_Combo,
      :ImGui_ComboEx,
      :ImGui_ComboCallback,
      :ImGui_ComboCallbackEx,
      :ImGui_DragFloat,
      :ImGui_DragFloatEx,
      :ImGui_DragFloat2,
      :ImGui_DragFloat2Ex,
      :ImGui_DragFloat3,
      :ImGui_DragFloat3Ex,
      :ImGui_DragFloat4,
      :ImGui_DragFloat4Ex,
      :ImGui_DragFloatRange2,
      :ImGui_DragFloatRange2Ex,
      :ImGui_DragInt,
      :ImGui_DragIntEx,
      :ImGui_DragInt2,
      :ImGui_DragInt2Ex,
      :ImGui_DragInt3,
      :ImGui_DragInt3Ex,
      :ImGui_DragInt4,
      :ImGui_DragInt4Ex,
      :ImGui_DragIntRange2,
      :ImGui_DragIntRange2Ex,
      :ImGui_DragScalar,
      :ImGui_DragScalarEx,
      :ImGui_DragScalarN,
      :ImGui_DragScalarNEx,
      :ImGui_SliderFloat,
      :ImGui_SliderFloatEx,
      :ImGui_SliderFloat2,
      :ImGui_SliderFloat2Ex,
      :ImGui_SliderFloat3,
      :ImGui_SliderFloat3Ex,
      :ImGui_SliderFloat4,
      :ImGui_SliderFloat4Ex,
      :ImGui_SliderAngle,
      :ImGui_SliderAngleEx,
      :ImGui_SliderInt,
      :ImGui_SliderIntEx,
      :ImGui_SliderInt2,
      :ImGui_SliderInt2Ex,
      :ImGui_SliderInt3,
      :ImGui_SliderInt3Ex,
      :ImGui_SliderInt4,
      :ImGui_SliderInt4Ex,
      :ImGui_SliderScalar,
      :ImGui_SliderScalarEx,
      :ImGui_SliderScalarN,
      :ImGui_SliderScalarNEx,
      :ImGui_VSliderFloat,
      :ImGui_VSliderFloatEx,
      :ImGui_VSliderInt,
      :ImGui_VSliderIntEx,
      :ImGui_VSliderScalar,
      :ImGui_VSliderScalarEx,
      :ImGui_InputText,
      :ImGui_InputTextEx,
      :ImGui_InputTextMultiline,
      :ImGui_InputTextMultilineEx,
      :ImGui_InputTextWithHint,
      :ImGui_InputTextWithHintEx,
      :ImGui_InputFloat,
      :ImGui_InputFloatEx,
      :ImGui_InputFloat2,
      :ImGui_InputFloat2Ex,
      :ImGui_InputFloat3,
      :ImGui_InputFloat3Ex,
      :ImGui_InputFloat4,
      :ImGui_InputFloat4Ex,
      :ImGui_InputInt,
      :ImGui_InputIntEx,
      :ImGui_InputInt2,
      :ImGui_InputInt3,
      :ImGui_InputInt4,
      :ImGui_InputDouble,
      :ImGui_InputDoubleEx,
      :ImGui_InputScalar,
      :ImGui_InputScalarEx,
      :ImGui_InputScalarN,
      :ImGui_InputScalarNEx,
      :ImGui_ColorEdit3,
      :ImGui_ColorEdit4,
      :ImGui_ColorPicker3,
      :ImGui_ColorPicker4,
      :ImGui_ColorButton,
      :ImGui_ColorButtonEx,
      :ImGui_SetColorEditOptions,
      :ImGui_TreeNode,
      :ImGui_TreeNodeStr,
      :ImGui_TreeNodePtr,
      :ImGui_TreeNodeEx,
      :ImGui_TreeNodeExStr,
      :ImGui_TreeNodeExPtr,
      :ImGui_TreePush,
      :ImGui_TreePushPtr,
      :ImGui_TreePop,
      :ImGui_GetTreeNodeToLabelSpacing,
      :ImGui_CollapsingHeader,
      :ImGui_CollapsingHeaderBoolPtr,
      :ImGui_SetNextItemOpen,
      :ImGui_SetNextItemStorageID,
      :ImGui_TreeNodeGetOpen,
      :ImGui_Selectable,
      :ImGui_SelectableEx,
      :ImGui_SelectableBoolPtr,
      :ImGui_SelectableBoolPtrEx,
      :ImGui_BeginMultiSelect,
      :ImGui_BeginMultiSelectEx,
      :ImGui_EndMultiSelect,
      :ImGui_SetNextItemSelectionUserData,
      :ImGui_IsItemToggledSelection,
      :ImGui_BeginListBox,
      :ImGui_EndListBox,
      :ImGui_ListBox,
      :ImGui_ListBoxCallback,
      :ImGui_ListBoxCallbackEx,
      :ImGui_PlotLines,
      :ImGui_PlotLinesEx,
      :ImGui_PlotLinesCallback,
      :ImGui_PlotLinesCallbackEx,
      :ImGui_PlotHistogram,
      :ImGui_PlotHistogramEx,
      :ImGui_PlotHistogramCallback,
      :ImGui_PlotHistogramCallbackEx,
      :ImGui_BeginMenuBar,
      :ImGui_EndMenuBar,
      :ImGui_BeginMainMenuBar,
      :ImGui_EndMainMenuBar,
      :ImGui_BeginMenu,
      :ImGui_BeginMenuEx,
      :ImGui_EndMenu,
      :ImGui_MenuItem,
      :ImGui_MenuItemEx,
      :ImGui_MenuItemBoolPtr,
      :ImGui_BeginTooltip,
      :ImGui_EndTooltip,
      :ImGui_SetTooltip,
      :ImGui_BeginItemTooltip,
      :ImGui_SetItemTooltip,
      :ImGui_BeginPopup,
      :ImGui_BeginPopupModal,
      :ImGui_EndPopup,
      :ImGui_OpenPopup,
      :ImGui_OpenPopupID,
      :ImGui_OpenPopupOnItemClick,
      :ImGui_CloseCurrentPopup,
      :ImGui_BeginPopupContextItem,
      :ImGui_BeginPopupContextItemEx,
      :ImGui_BeginPopupContextWindow,
      :ImGui_BeginPopupContextWindowEx,
      :ImGui_BeginPopupContextVoid,
      :ImGui_BeginPopupContextVoidEx,
      :ImGui_IsPopupOpen,
      :ImGui_BeginTable,
      :ImGui_BeginTableEx,
      :ImGui_EndTable,
      :ImGui_TableNextRow,
      :ImGui_TableNextRowEx,
      :ImGui_TableNextColumn,
      :ImGui_TableSetColumnIndex,
      :ImGui_TableSetupColumn,
      :ImGui_TableSetupColumnEx,
      :ImGui_TableSetupScrollFreeze,
      :ImGui_TableHeader,
      :ImGui_TableHeadersRow,
      :ImGui_TableAngledHeadersRow,
      :ImGui_TableGetSortSpecs,
      :ImGui_TableGetColumnCount,
      :ImGui_TableGetColumnIndex,
      :ImGui_TableGetRowIndex,
      :ImGui_TableGetColumnName,
      :ImGui_TableGetColumnFlags,
      :ImGui_TableSetColumnEnabled,
      :ImGui_TableGetHoveredColumn,
      :ImGui_TableSetBgColor,
      :ImGui_Columns,
      :ImGui_ColumnsEx,
      :ImGui_NextColumn,
      :ImGui_GetColumnIndex,
      :ImGui_GetColumnWidth,
      :ImGui_SetColumnWidth,
      :ImGui_GetColumnOffset,
      :ImGui_SetColumnOffset,
      :ImGui_GetColumnsCount,
      :ImGui_BeginTabBar,
      :ImGui_EndTabBar,
      :ImGui_BeginTabItem,
      :ImGui_EndTabItem,
      :ImGui_TabItemButton,
      :ImGui_SetTabItemClosed,
      :ImGui_LogToTTY,
      :ImGui_LogToFile,
      :ImGui_LogToClipboard,
      :ImGui_LogFinish,
      :ImGui_LogButtons,
      :ImGui_LogText,
      :ImGui_BeginDragDropSource,
      :ImGui_SetDragDropPayload,
      :ImGui_EndDragDropSource,
      :ImGui_BeginDragDropTarget,
      :ImGui_AcceptDragDropPayload,
      :ImGui_EndDragDropTarget,
      :ImGui_GetDragDropPayload,
      :ImGui_BeginDisabled,
      :ImGui_EndDisabled,
      :ImGui_PushClipRect,
      :ImGui_PopClipRect,
      :ImGui_SetItemDefaultFocus,
      :ImGui_SetKeyboardFocusHere,
      :ImGui_SetKeyboardFocusHereEx,
      :ImGui_SetNavCursorVisible,
      :ImGui_SetNextItemAllowOverlap,
      :ImGui_IsItemHovered,
      :ImGui_IsItemActive,
      :ImGui_IsItemFocused,
      :ImGui_IsItemClicked,
      :ImGui_IsItemClickedEx,
      :ImGui_IsItemVisible,
      :ImGui_IsItemEdited,
      :ImGui_IsItemActivated,
      :ImGui_IsItemDeactivated,
      :ImGui_IsItemDeactivatedAfterEdit,
      :ImGui_IsItemToggledOpen,
      :ImGui_IsAnyItemHovered,
      :ImGui_IsAnyItemActive,
      :ImGui_IsAnyItemFocused,
      :ImGui_GetItemID,
      :ImGui_GetItemRectMin,
      :ImGui_GetItemRectMax,
      :ImGui_GetItemRectSize,
      :ImGui_GetItemFlags,
      :ImGui_GetMainViewport,
      :ImGui_GetBackgroundDrawList,
      :ImGui_GetForegroundDrawList,
      :ImGui_IsRectVisibleBySize,
      :ImGui_IsRectVisible,
      :ImGui_GetTime,
      :ImGui_GetFrameCount,
      :ImGui_GetDrawListSharedData,
      :ImGui_GetStyleColorName,
      :ImGui_SetStateStorage,
      :ImGui_GetStateStorage,
      :ImGui_CalcTextSize,
      :ImGui_CalcTextSizeEx,
      :ImGui_ColorConvertU32ToFloat4,
      :ImGui_ColorConvertFloat4ToU32,
      :ImGui_ColorConvertRGBtoHSV,
      :ImGui_ColorConvertHSVtoRGB,
      :ImGui_IsKeyDown,
      :ImGui_IsKeyPressed,
      :ImGui_IsKeyPressedEx,
      :ImGui_IsKeyReleased,
      :ImGui_IsKeyChordPressed,
      :ImGui_GetKeyPressedAmount,
      :ImGui_GetKeyName,
      :ImGui_SetNextFrameWantCaptureKeyboard,
      :ImGui_Shortcut,
      :ImGui_SetNextItemShortcut,
      :ImGui_SetItemKeyOwner,
      :ImGui_IsMouseDown,
      :ImGui_IsMouseClicked,
      :ImGui_IsMouseClickedEx,
      :ImGui_IsMouseReleased,
      :ImGui_IsMouseDoubleClicked,
      :ImGui_IsMouseReleasedWithDelay,
      :ImGui_GetMouseClickedCount,
      :ImGui_IsMouseHoveringRect,
      :ImGui_IsMouseHoveringRectEx,
      :ImGui_IsMousePosValid,
      :ImGui_IsAnyMouseDown,
      :ImGui_GetMousePos,
      :ImGui_GetMousePosOnOpeningCurrentPopup,
      :ImGui_IsMouseDragging,
      :ImGui_GetMouseDragDelta,
      :ImGui_ResetMouseDragDelta,
      :ImGui_ResetMouseDragDeltaEx,
      :ImGui_GetMouseCursor,
      :ImGui_SetMouseCursor,
      :ImGui_SetNextFrameWantCaptureMouse,
      :ImGui_GetClipboardText,
      :ImGui_SetClipboardText,
      :ImGui_LoadIniSettingsFromDisk,
      :ImGui_LoadIniSettingsFromMemory,
      :ImGui_SaveIniSettingsToDisk,
      :ImGui_SaveIniSettingsToMemory,
      :ImGui_DebugTextEncoding,
      :ImGui_DebugFlashStyleColor,
      :ImGui_DebugStartItemPicker,
      :ImGui_DebugCheckVersionAndDataLayout,
      :ImGui_DebugLog,
      :ImGui_SetAllocatorFunctions,
      :ImGui_GetAllocatorFunctions,
      :ImGui_MemAlloc,
      :ImGui_MemFree,
      :ImVector_Construct,
      :ImVector_Destruct,
      :ImGuiStyle_ScaleAllSizes,
      :ImGuiIO_AddKeyEvent,
      :ImGuiIO_AddKeyAnalogEvent,
      :ImGuiIO_AddMousePosEvent,
      :ImGuiIO_AddMouseButtonEvent,
      :ImGuiIO_AddMouseWheelEvent,
      :ImGuiIO_AddMouseSourceEvent,
      :ImGuiIO_AddFocusEvent,
      :ImGuiIO_AddInputCharacter,
      :ImGuiIO_AddInputCharacterUTF16,
      :ImGuiIO_AddInputCharactersUTF8,
      :ImGuiIO_SetKeyEventNativeData,
      :ImGuiIO_SetKeyEventNativeDataEx,
      :ImGuiIO_SetAppAcceptingEvents,
      :ImGuiIO_ClearEventsQueue,
      :ImGuiIO_ClearInputKeys,
      :ImGuiIO_ClearInputMouse,
      :ImGuiInputTextCallbackData_DeleteChars,
      :ImGuiInputTextCallbackData_InsertChars,
      :ImGuiInputTextCallbackData_SelectAll,
      :ImGuiInputTextCallbackData_SetSelection,
      :ImGuiInputTextCallbackData_ClearSelection,
      :ImGuiInputTextCallbackData_HasSelection,
      :ImGuiPayload_Clear,
      :ImGuiPayload_IsDataType,
      :ImGuiPayload_IsPreview,
      :ImGuiPayload_IsDelivery,
      :ImGuiTextFilter_ImGuiTextRange_empty,
      :ImGuiTextFilter_ImGuiTextRange_split,
      :ImGuiTextFilter_Draw,
      :ImGuiTextFilter_PassFilter,
      :ImGuiTextFilter_Build,
      :ImGuiTextFilter_Clear,
      :ImGuiTextFilter_IsActive,
      :ImGuiTextBuffer_begin,
      :ImGuiTextBuffer_end,
      :ImGuiTextBuffer_size,
      :ImGuiTextBuffer_empty,
      :ImGuiTextBuffer_clear,
      :ImGuiTextBuffer_resize,
      :ImGuiTextBuffer_reserve,
      :ImGuiTextBuffer_c_str,
      :ImGuiTextBuffer_append,
      :ImGuiTextBuffer_appendf,
      :ImGuiStorage_Clear,
      :ImGuiStorage_GetInt,
      :ImGuiStorage_SetInt,
      :ImGuiStorage_GetBool,
      :ImGuiStorage_SetBool,
      :ImGuiStorage_GetFloat,
      :ImGuiStorage_SetFloat,
      :ImGuiStorage_GetVoidPtr,
      :ImGuiStorage_SetVoidPtr,
      :ImGuiStorage_GetIntRef,
      :ImGuiStorage_GetBoolRef,
      :ImGuiStorage_GetFloatRef,
      :ImGuiStorage_GetVoidPtrRef,
      :ImGuiStorage_BuildSortByKey,
      :ImGuiStorage_SetAllInt,
      :ImGuiListClipper_Begin,
      :ImGuiListClipper_End,
      :ImGuiListClipper_Step,
      :ImGuiListClipper_IncludeItemByIndex,
      :ImGuiListClipper_IncludeItemsByIndex,
      :ImGuiListClipper_SeekCursorForItem,
      :ImColor_SetHSV,
      :ImColor_HSV,
      :ImGuiSelectionBasicStorage_ApplyRequests,
      :ImGuiSelectionBasicStorage_Contains,
      :ImGuiSelectionBasicStorage_Clear,
      :ImGuiSelectionBasicStorage_Swap,
      :ImGuiSelectionBasicStorage_SetItemSelected,
      :ImGuiSelectionBasicStorage_GetNextSelectedItem,
      :ImGuiSelectionBasicStorage_GetStorageIdFromIndex,
      :ImGuiSelectionExternalStorage_ApplyRequests,
      :ImDrawCmd_GetTexID,
      :ImDrawListSplitter_Clear,
      :ImDrawListSplitter_ClearFreeMemory,
      :ImDrawListSplitter_Split,
      :ImDrawListSplitter_Merge,
      :ImDrawListSplitter_SetCurrentChannel,
      :ImDrawList_PushClipRect,
      :ImDrawList_PushClipRectFullScreen,
      :ImDrawList_PopClipRect,
      :ImDrawList_PushTexture,
      :ImDrawList_PopTexture,
      :ImDrawList_GetClipRectMin,
      :ImDrawList_GetClipRectMax,
      :ImDrawList_AddLine,
      :ImDrawList_AddLineEx,
      :ImDrawList_AddRect,
      :ImDrawList_AddRectEx,
      :ImDrawList_AddRectFilled,
      :ImDrawList_AddRectFilledEx,
      :ImDrawList_AddRectFilledMultiColor,
      :ImDrawList_AddQuad,
      :ImDrawList_AddQuadEx,
      :ImDrawList_AddQuadFilled,
      :ImDrawList_AddTriangle,
      :ImDrawList_AddTriangleEx,
      :ImDrawList_AddTriangleFilled,
      :ImDrawList_AddCircle,
      :ImDrawList_AddCircleEx,
      :ImDrawList_AddCircleFilled,
      :ImDrawList_AddNgon,
      :ImDrawList_AddNgonEx,
      :ImDrawList_AddNgonFilled,
      :ImDrawList_AddEllipse,
      :ImDrawList_AddEllipseEx,
      :ImDrawList_AddEllipseFilled,
      :ImDrawList_AddEllipseFilledEx,
      :ImDrawList_AddText,
      :ImDrawList_AddTextEx,
      :ImDrawList_AddTextImFontPtr,
      :ImDrawList_AddTextImFontPtrEx,
      :ImDrawList_AddBezierCubic,
      :ImDrawList_AddBezierQuadratic,
      :ImDrawList_AddPolyline,
      :ImDrawList_AddConvexPolyFilled,
      :ImDrawList_AddConcavePolyFilled,
      :ImDrawList_AddImage,
      :ImDrawList_AddImageEx,
      :ImDrawList_AddImageQuad,
      :ImDrawList_AddImageQuadEx,
      :ImDrawList_AddImageRounded,
      :ImDrawList_PathClear,
      :ImDrawList_PathLineTo,
      :ImDrawList_PathLineToMergeDuplicate,
      :ImDrawList_PathFillConvex,
      :ImDrawList_PathFillConcave,
      :ImDrawList_PathStroke,
      :ImDrawList_PathArcTo,
      :ImDrawList_PathArcToFast,
      :ImDrawList_PathEllipticalArcTo,
      :ImDrawList_PathEllipticalArcToEx,
      :ImDrawList_PathBezierCubicCurveTo,
      :ImDrawList_PathBezierQuadraticCurveTo,
      :ImDrawList_PathRect,
      :ImDrawList_AddCallback,
      :ImDrawList_AddCallbackEx,
      :ImDrawList_AddDrawCmd,
      :ImDrawList_CloneOutput,
      :ImDrawList_ChannelsSplit,
      :ImDrawList_ChannelsMerge,
      :ImDrawList_ChannelsSetCurrent,
      :ImDrawList_PrimReserve,
      :ImDrawList_PrimUnreserve,
      :ImDrawList_PrimRect,
      :ImDrawList_PrimRectUV,
      :ImDrawList_PrimQuadUV,
      :ImDrawList_PrimWriteVtx,
      :ImDrawList_PrimWriteIdx,
      :ImDrawList_PrimVtx,
      :ImDrawList_PushTextureID,
      :ImDrawList_PopTextureID,
      :ImDrawList__SetDrawListSharedData,
      :ImDrawList__ResetForNewFrame,
      :ImDrawList__ClearFreeMemory,
      :ImDrawList__PopUnusedDrawCmd,
      :ImDrawList__TryMergeDrawCmds,
      :ImDrawList__OnChangedClipRect,
      :ImDrawList__OnChangedTexture,
      :ImDrawList__OnChangedVtxOffset,
      :ImDrawList__SetTexture,
      :ImDrawList__CalcCircleAutoSegmentCount,
      :ImDrawList__PathArcToFastEx,
      :ImDrawList__PathArcToN,
      :ImDrawData_Clear,
      :ImDrawData_AddDrawList,
      :ImDrawData_DeIndexAllBuffers,
      :ImDrawData_ScaleClipRects,
      :ImTextureData_Create,
      :ImTextureData_DestroyPixels,
      :ImTextureData_GetPixels,
      :ImTextureData_GetPixelsAt,
      :ImTextureData_GetSizeInBytes,
      :ImTextureData_GetPitch,
      :ImTextureData_GetTexRef,
      :ImTextureData_GetTexID,
      :ImTextureData_SetTexID,
      :ImTextureData_SetStatus,
      :ImFontGlyphRangesBuilder_Clear,
      :ImFontGlyphRangesBuilder_GetBit,
      :ImFontGlyphRangesBuilder_SetBit,
      :ImFontGlyphRangesBuilder_AddChar,
      :ImFontGlyphRangesBuilder_AddText,
      :ImFontGlyphRangesBuilder_AddRanges,
      :ImFontGlyphRangesBuilder_BuildRanges,
      :ImFontAtlas_AddFont,
      :ImFontAtlas_AddFontDefault,
      :ImFontAtlas_AddFontDefaultVector,
      :ImFontAtlas_AddFontDefaultBitmap,
      :ImFontAtlas_AddFontFromFileTTF,
      :ImFontAtlas_AddFontFromMemoryTTF,
      :ImFontAtlas_AddFontFromMemoryCompressedTTF,
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF,
      :ImFontAtlas_RemoveFont,
      :ImFontAtlas_Clear,
      :ImFontAtlas_CompactCache,
      :ImFontAtlas_SetFontLoader,
      :ImFontAtlas_ClearInputData,
      :ImFontAtlas_ClearFonts,
      :ImFontAtlas_ClearTexData,
      :ImFontAtlas_Build,
      :ImFontAtlas_GetTexDataAsAlpha8,
      :ImFontAtlas_GetTexDataAsRGBA32,
      :ImFontAtlas_SetTexID,
      :ImFontAtlas_SetTexIDImTextureRef,
      :ImFontAtlas_IsBuilt,
      :ImFontAtlas_GetGlyphRangesDefault,
      :ImFontAtlas_GetGlyphRangesGreek,
      :ImFontAtlas_GetGlyphRangesKorean,
      :ImFontAtlas_GetGlyphRangesJapanese,
      :ImFontAtlas_GetGlyphRangesChineseFull,
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon,
      :ImFontAtlas_GetGlyphRangesCyrillic,
      :ImFontAtlas_GetGlyphRangesThai,
      :ImFontAtlas_GetGlyphRangesVietnamese,
      :ImFontAtlas_AddCustomRect,
      :ImFontAtlas_RemoveCustomRect,
      :ImFontAtlas_GetCustomRect,
      :ImFontAtlas_AddCustomRectRegular,
      :ImFontAtlas_GetCustomRectByIndex,
      :ImFontAtlas_CalcCustomRectUV,
      :ImFontAtlas_AddCustomRectFontGlyph,
      :ImFontAtlas_AddCustomRectFontGlyphForSize,
      :ImFontBaked_ClearOutputData,
      :ImFontBaked_FindGlyph,
      :ImFontBaked_FindGlyphNoFallback,
      :ImFontBaked_GetCharAdvance,
      :ImFontBaked_IsGlyphLoaded,
      :ImFont_IsGlyphInFont,
      :ImFont_IsLoaded,
      :ImFont_GetDebugName,
      :ImFont_GetFontBaked,
      :ImFont_GetFontBakedEx,
      :ImFont_CalcTextSizeA,
      :ImFont_CalcTextSizeAEx,
      :ImFont_CalcWordWrapPosition,
      :ImFont_RenderChar,
      :ImFont_RenderCharEx,
      :ImFont_RenderText,
      :ImFont_CalcWordWrapPositionA,
      :ImFont_ClearOutputData,
      :ImFont_AddRemapChar,
      :ImFont_IsGlyphRangeUnused,
      :ImGuiViewport_GetCenter,
      :ImGuiViewport_GetWorkCenter,
      :ImGuiPlatformIO_ClearPlatformHandlers,
      :ImGuiPlatformIO_ClearRendererHandlers,
      :ImGui_PushFont,
      :ImGui_SetWindowFontScale,
      :ImGui_ImageImVec4,
      :ImGui_PushButtonRepeat,
      :ImGui_PopButtonRepeat,
      :ImGui_PushTabStop,
      :ImGui_PopTabStop,
      :ImGui_GetContentRegionMax,
      :ImGui_GetWindowContentRegionMin,
      :ImGui_GetWindowContentRegionMax,
    ]

    args = {
      :ImTextureRef_GetTexID => [:pointer],
      :ImGui_CreateContext => [:pointer],
      :ImGui_DestroyContext => [:pointer],
      :ImGui_GetCurrentContext => [],
      :ImGui_SetCurrentContext => [:pointer],
      :ImGui_GetIO => [],
      :ImGui_GetPlatformIO => [],
      :ImGui_GetStyle => [],
      :ImGui_NewFrame => [],
      :ImGui_EndFrame => [],
      :ImGui_Render => [],
      :ImGui_GetDrawData => [],
      :ImGui_ShowDemoWindow => [:pointer],
      :ImGui_ShowMetricsWindow => [:pointer],
      :ImGui_ShowDebugLogWindow => [:pointer],
      :ImGui_ShowIDStackToolWindow => [],
      :ImGui_ShowIDStackToolWindowEx => [:pointer],
      :ImGui_ShowAboutWindow => [:pointer],
      :ImGui_ShowStyleEditor => [:pointer],
      :ImGui_ShowStyleSelector => [:pointer],
      :ImGui_ShowFontSelector => [:pointer],
      :ImGui_ShowUserGuide => [],
      :ImGui_GetVersion => [],
      :ImGui_StyleColorsDark => [:pointer],
      :ImGui_StyleColorsLight => [:pointer],
      :ImGui_StyleColorsClassic => [:pointer],
      :ImGui_Begin => [:pointer, :pointer, :int],
      :ImGui_End => [],
      :ImGui_BeginChild => [:pointer, ImVec2.by_value, :int, :int],
      :ImGui_BeginChildID => [:uint, ImVec2.by_value, :int, :int],
      :ImGui_EndChild => [],
      :ImGui_IsWindowAppearing => [],
      :ImGui_IsWindowCollapsed => [],
      :ImGui_IsWindowFocused => [:int],
      :ImGui_IsWindowHovered => [:int],
      :ImGui_GetWindowDrawList => [],
      :ImGui_GetWindowPos => [],
      :ImGui_GetWindowSize => [],
      :ImGui_GetWindowWidth => [],
      :ImGui_GetWindowHeight => [],
      :ImGui_SetNextWindowPos => [ImVec2.by_value, :int],
      :ImGui_SetNextWindowPosEx => [ImVec2.by_value, :int, ImVec2.by_value],
      :ImGui_SetNextWindowSize => [ImVec2.by_value, :int],
      :ImGui_SetNextWindowSizeConstraints => [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer],
      :ImGui_SetNextWindowContentSize => [ImVec2.by_value],
      :ImGui_SetNextWindowCollapsed => [:bool, :int],
      :ImGui_SetNextWindowFocus => [],
      :ImGui_SetNextWindowScroll => [ImVec2.by_value],
      :ImGui_SetNextWindowBgAlpha => [:float],
      :ImGui_SetWindowPos => [ImVec2.by_value, :int],
      :ImGui_SetWindowSize => [ImVec2.by_value, :int],
      :ImGui_SetWindowCollapsed => [:bool, :int],
      :ImGui_SetWindowFocus => [],
      :ImGui_SetWindowPosStr => [:pointer, ImVec2.by_value, :int],
      :ImGui_SetWindowSizeStr => [:pointer, ImVec2.by_value, :int],
      :ImGui_SetWindowCollapsedStr => [:pointer, :bool, :int],
      :ImGui_SetWindowFocusStr => [:pointer],
      :ImGui_GetScrollX => [],
      :ImGui_GetScrollY => [],
      :ImGui_SetScrollX => [:float],
      :ImGui_SetScrollY => [:float],
      :ImGui_GetScrollMaxX => [],
      :ImGui_GetScrollMaxY => [],
      :ImGui_SetScrollHereX => [:float],
      :ImGui_SetScrollHereY => [:float],
      :ImGui_SetScrollFromPosX => [:float, :float],
      :ImGui_SetScrollFromPosY => [:float, :float],
      :ImGui_PushFontFloat => [:pointer, :float],
      :ImGui_PopFont => [],
      :ImGui_GetFont => [],
      :ImGui_GetFontSize => [],
      :ImGui_GetFontBaked => [],
      :ImGui_PushStyleColor => [:int, :uint],
      :ImGui_PushStyleColorImVec4 => [:int, ImVec4.by_value],
      :ImGui_PopStyleColor => [],
      :ImGui_PopStyleColorEx => [:int],
      :ImGui_PushStyleVar => [:int, :float],
      :ImGui_PushStyleVarImVec2 => [:int, ImVec2.by_value],
      :ImGui_PushStyleVarX => [:int, :float],
      :ImGui_PushStyleVarY => [:int, :float],
      :ImGui_PopStyleVar => [],
      :ImGui_PopStyleVarEx => [:int],
      :ImGui_PushItemFlag => [:int, :bool],
      :ImGui_PopItemFlag => [],
      :ImGui_PushItemWidth => [:float],
      :ImGui_PopItemWidth => [],
      :ImGui_SetNextItemWidth => [:float],
      :ImGui_CalcItemWidth => [],
      :ImGui_PushTextWrapPos => [:float],
      :ImGui_PopTextWrapPos => [],
      :ImGui_GetFontTexUvWhitePixel => [],
      :ImGui_GetColorU32 => [:int],
      :ImGui_GetColorU32Ex => [:int, :float],
      :ImGui_GetColorU32ImVec4 => [ImVec4.by_value],
      :ImGui_GetColorU32ImU32 => [:uint],
      :ImGui_GetColorU32ImU32Ex => [:uint, :float],
      :ImGui_GetStyleColorVec4 => [:int],
      :ImGui_GetCursorScreenPos => [],
      :ImGui_SetCursorScreenPos => [ImVec2.by_value],
      :ImGui_GetContentRegionAvail => [],
      :ImGui_GetCursorPos => [],
      :ImGui_GetCursorPosX => [],
      :ImGui_GetCursorPosY => [],
      :ImGui_SetCursorPos => [ImVec2.by_value],
      :ImGui_SetCursorPosX => [:float],
      :ImGui_SetCursorPosY => [:float],
      :ImGui_GetCursorStartPos => [],
      :ImGui_Separator => [],
      :ImGui_SameLine => [],
      :ImGui_SameLineEx => [:float, :float],
      :ImGui_NewLine => [],
      :ImGui_Spacing => [],
      :ImGui_Dummy => [ImVec2.by_value],
      :ImGui_Indent => [],
      :ImGui_IndentEx => [:float],
      :ImGui_Unindent => [],
      :ImGui_UnindentEx => [:float],
      :ImGui_BeginGroup => [],
      :ImGui_EndGroup => [],
      :ImGui_AlignTextToFramePadding => [],
      :ImGui_GetTextLineHeight => [],
      :ImGui_GetTextLineHeightWithSpacing => [],
      :ImGui_GetFrameHeight => [],
      :ImGui_GetFrameHeightWithSpacing => [],
      :ImGui_PushID => [:pointer],
      :ImGui_PushIDStr => [:pointer, :pointer],
      :ImGui_PushIDPtr => [:pointer],
      :ImGui_PushIDInt => [:int],
      :ImGui_PopID => [],
      :ImGui_GetID => [:pointer],
      :ImGui_GetIDStr => [:pointer, :pointer],
      :ImGui_GetIDPtr => [:pointer],
      :ImGui_GetIDInt => [:int],
      :ImGui_TextUnformatted => [:pointer],
      :ImGui_TextUnformattedEx => [:pointer, :pointer],
      :ImGui_Text => [:pointer, :varargs],
      :ImGui_TextColored => [ImVec4.by_value, :pointer, :varargs],
      :ImGui_TextDisabled => [:pointer, :varargs],
      :ImGui_TextWrapped => [:pointer, :varargs],
      :ImGui_LabelText => [:pointer, :pointer, :varargs],
      :ImGui_BulletText => [:pointer, :varargs],
      :ImGui_SeparatorText => [:pointer],
      :ImGui_Button => [:pointer],
      :ImGui_ButtonEx => [:pointer, ImVec2.by_value],
      :ImGui_SmallButton => [:pointer],
      :ImGui_InvisibleButton => [:pointer, ImVec2.by_value, :int],
      :ImGui_ArrowButton => [:pointer, :int],
      :ImGui_Checkbox => [:pointer, :pointer],
      :ImGui_CheckboxFlagsIntPtr => [:pointer, :pointer, :int],
      :ImGui_CheckboxFlagsUintPtr => [:pointer, :pointer, :uint],
      :ImGui_RadioButton => [:pointer, :bool],
      :ImGui_RadioButtonIntPtr => [:pointer, :pointer, :int],
      :ImGui_ProgressBar => [:float, ImVec2.by_value, :pointer],
      :ImGui_Bullet => [],
      :ImGui_TextLink => [:pointer],
      :ImGui_TextLinkOpenURL => [:pointer],
      :ImGui_TextLinkOpenURLEx => [:pointer, :pointer],
      :ImGui_Image => [ImTextureRef.by_value, ImVec2.by_value],
      :ImGui_ImageEx => [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :ImGui_ImageWithBg => [ImTextureRef.by_value, ImVec2.by_value],
      :ImGui_ImageWithBgEx => [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :ImGui_ImageButton => [:pointer, ImTextureRef.by_value, ImVec2.by_value],
      :ImGui_ImageButtonEx => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :ImGui_BeginCombo => [:pointer, :pointer, :int],
      :ImGui_EndCombo => [],
      :ImGui_ComboChar => [:pointer, :pointer, :pointer, :int],
      :ImGui_ComboCharEx => [:pointer, :pointer, :pointer, :int, :int],
      :ImGui_Combo => [:pointer, :pointer, :pointer],
      :ImGui_ComboEx => [:pointer, :pointer, :pointer, :int],
      :ImGui_ComboCallback => [:pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_ComboCallbackEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :ImGui_DragFloat => [:pointer, :pointer],
      :ImGui_DragFloatEx => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat2 => [:pointer, :pointer],
      :ImGui_DragFloat2Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat3 => [:pointer, :pointer],
      :ImGui_DragFloat3Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat4 => [:pointer, :pointer],
      :ImGui_DragFloat4Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloatRange2 => [:pointer, :pointer, :pointer],
      :ImGui_DragFloatRange2Ex => [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :int],
      :ImGui_DragInt => [:pointer, :pointer],
      :ImGui_DragIntEx => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt2 => [:pointer, :pointer],
      :ImGui_DragInt2Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt3 => [:pointer, :pointer],
      :ImGui_DragInt3Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt4 => [:pointer, :pointer],
      :ImGui_DragInt4Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragIntRange2 => [:pointer, :pointer, :pointer],
      :ImGui_DragIntRange2Ex => [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer, :int],
      :ImGui_DragScalar => [:pointer, :int, :pointer],
      :ImGui_DragScalarEx => [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :int],
      :ImGui_DragScalarN => [:pointer, :int, :pointer, :int],
      :ImGui_DragScalarNEx => [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :int],
      :ImGui_SliderFloat => [:pointer, :pointer, :float, :float],
      :ImGui_SliderFloatEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat2 => [:pointer, :pointer, :float, :float],
      :ImGui_SliderFloat2Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat3 => [:pointer, :pointer, :float, :float],
      :ImGui_SliderFloat3Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat4 => [:pointer, :pointer, :float, :float],
      :ImGui_SliderFloat4Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderAngle => [:pointer, :pointer],
      :ImGui_SliderAngleEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderInt => [:pointer, :pointer, :int, :int],
      :ImGui_SliderIntEx => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt2 => [:pointer, :pointer, :int, :int],
      :ImGui_SliderInt2Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt3 => [:pointer, :pointer, :int, :int],
      :ImGui_SliderInt3Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt4 => [:pointer, :pointer, :int, :int],
      :ImGui_SliderInt4Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderScalar => [:pointer, :int, :pointer, :pointer, :pointer],
      :ImGui_SliderScalarEx => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_SliderScalarN => [:pointer, :int, :pointer, :int, :pointer, :pointer],
      :ImGui_SliderScalarNEx => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :ImGui_VSliderFloat => [:pointer, ImVec2.by_value, :pointer, :float, :float],
      :ImGui_VSliderFloatEx => [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int],
      :ImGui_VSliderInt => [:pointer, ImVec2.by_value, :pointer, :int, :int],
      :ImGui_VSliderIntEx => [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int],
      :ImGui_VSliderScalar => [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer],
      :ImGui_VSliderScalarEx => [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_InputText => [:pointer, :pointer, :size_t, :int],
      :ImGui_InputTextEx => [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputTextMultiline => [:pointer, :pointer, :size_t],
      :ImGui_InputTextMultilineEx => [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputTextWithHint => [:pointer, :pointer, :pointer, :size_t, :int],
      :ImGui_InputTextWithHintEx => [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputFloat => [:pointer, :pointer],
      :ImGui_InputFloatEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_InputFloat2 => [:pointer, :pointer],
      :ImGui_InputFloat2Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputFloat3 => [:pointer, :pointer],
      :ImGui_InputFloat3Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputFloat4 => [:pointer, :pointer],
      :ImGui_InputFloat4Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputInt => [:pointer, :pointer],
      :ImGui_InputIntEx => [:pointer, :pointer, :int, :int, :int],
      :ImGui_InputInt2 => [:pointer, :pointer, :int],
      :ImGui_InputInt3 => [:pointer, :pointer, :int],
      :ImGui_InputInt4 => [:pointer, :pointer, :int],
      :ImGui_InputDouble => [:pointer, :pointer],
      :ImGui_InputDoubleEx => [:pointer, :pointer, :double, :double, :pointer, :int],
      :ImGui_InputScalar => [:pointer, :int, :pointer],
      :ImGui_InputScalarEx => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_InputScalarN => [:pointer, :int, :pointer, :int],
      :ImGui_InputScalarNEx => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :ImGui_ColorEdit3 => [:pointer, :pointer, :int],
      :ImGui_ColorEdit4 => [:pointer, :pointer, :int],
      :ImGui_ColorPicker3 => [:pointer, :pointer, :int],
      :ImGui_ColorPicker4 => [:pointer, :pointer, :int, :pointer],
      :ImGui_ColorButton => [:pointer, ImVec4.by_value, :int],
      :ImGui_ColorButtonEx => [:pointer, ImVec4.by_value, :int, ImVec2.by_value],
      :ImGui_SetColorEditOptions => [:int],
      :ImGui_TreeNode => [:pointer],
      :ImGui_TreeNodeStr => [:pointer, :pointer, :varargs],
      :ImGui_TreeNodePtr => [:pointer, :pointer, :varargs],
      :ImGui_TreeNodeEx => [:pointer, :int],
      :ImGui_TreeNodeExStr => [:pointer, :int, :pointer, :varargs],
      :ImGui_TreeNodeExPtr => [:pointer, :int, :pointer, :varargs],
      :ImGui_TreePush => [:pointer],
      :ImGui_TreePushPtr => [:pointer],
      :ImGui_TreePop => [],
      :ImGui_GetTreeNodeToLabelSpacing => [],
      :ImGui_CollapsingHeader => [:pointer, :int],
      :ImGui_CollapsingHeaderBoolPtr => [:pointer, :pointer, :int],
      :ImGui_SetNextItemOpen => [:bool, :int],
      :ImGui_SetNextItemStorageID => [:uint],
      :ImGui_TreeNodeGetOpen => [:uint],
      :ImGui_Selectable => [:pointer],
      :ImGui_SelectableEx => [:pointer, :bool, :int, ImVec2.by_value],
      :ImGui_SelectableBoolPtr => [:pointer, :pointer, :int],
      :ImGui_SelectableBoolPtrEx => [:pointer, :pointer, :int, ImVec2.by_value],
      :ImGui_BeginMultiSelect => [:int],
      :ImGui_BeginMultiSelectEx => [:int, :int, :int],
      :ImGui_EndMultiSelect => [],
      :ImGui_SetNextItemSelectionUserData => [:int64],
      :ImGui_IsItemToggledSelection => [],
      :ImGui_BeginListBox => [:pointer, ImVec2.by_value],
      :ImGui_EndListBox => [],
      :ImGui_ListBox => [:pointer, :pointer, :pointer, :int, :int],
      :ImGui_ListBoxCallback => [:pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_ListBoxCallbackEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :ImGui_PlotLines => [:pointer, :pointer, :int],
      :ImGui_PlotLinesEx => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :ImGui_PlotLinesCallback => [:pointer, :pointer, :pointer, :int],
      :ImGui_PlotLinesCallbackEx => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :ImGui_PlotHistogram => [:pointer, :pointer, :int],
      :ImGui_PlotHistogramEx => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :ImGui_PlotHistogramCallback => [:pointer, :pointer, :pointer, :int],
      :ImGui_PlotHistogramCallbackEx => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :ImGui_BeginMenuBar => [],
      :ImGui_EndMenuBar => [],
      :ImGui_BeginMainMenuBar => [],
      :ImGui_EndMainMenuBar => [],
      :ImGui_BeginMenu => [:pointer],
      :ImGui_BeginMenuEx => [:pointer, :bool],
      :ImGui_EndMenu => [],
      :ImGui_MenuItem => [:pointer],
      :ImGui_MenuItemEx => [:pointer, :pointer, :bool, :bool],
      :ImGui_MenuItemBoolPtr => [:pointer, :pointer, :pointer, :bool],
      :ImGui_BeginTooltip => [],
      :ImGui_EndTooltip => [],
      :ImGui_SetTooltip => [:pointer, :varargs],
      :ImGui_BeginItemTooltip => [],
      :ImGui_SetItemTooltip => [:pointer, :varargs],
      :ImGui_BeginPopup => [:pointer, :int],
      :ImGui_BeginPopupModal => [:pointer, :pointer, :int],
      :ImGui_EndPopup => [],
      :ImGui_OpenPopup => [:pointer, :int],
      :ImGui_OpenPopupID => [:uint, :int],
      :ImGui_OpenPopupOnItemClick => [:pointer, :int],
      :ImGui_CloseCurrentPopup => [],
      :ImGui_BeginPopupContextItem => [],
      :ImGui_BeginPopupContextItemEx => [:pointer, :int],
      :ImGui_BeginPopupContextWindow => [],
      :ImGui_BeginPopupContextWindowEx => [:pointer, :int],
      :ImGui_BeginPopupContextVoid => [],
      :ImGui_BeginPopupContextVoidEx => [:pointer, :int],
      :ImGui_IsPopupOpen => [:pointer, :int],
      :ImGui_BeginTable => [:pointer, :int, :int],
      :ImGui_BeginTableEx => [:pointer, :int, :int, ImVec2.by_value, :float],
      :ImGui_EndTable => [],
      :ImGui_TableNextRow => [],
      :ImGui_TableNextRowEx => [:int, :float],
      :ImGui_TableNextColumn => [],
      :ImGui_TableSetColumnIndex => [:int],
      :ImGui_TableSetupColumn => [:pointer, :int],
      :ImGui_TableSetupColumnEx => [:pointer, :int, :float, :uint],
      :ImGui_TableSetupScrollFreeze => [:int, :int],
      :ImGui_TableHeader => [:pointer],
      :ImGui_TableHeadersRow => [],
      :ImGui_TableAngledHeadersRow => [],
      :ImGui_TableGetSortSpecs => [],
      :ImGui_TableGetColumnCount => [],
      :ImGui_TableGetColumnIndex => [],
      :ImGui_TableGetRowIndex => [],
      :ImGui_TableGetColumnName => [:int],
      :ImGui_TableGetColumnFlags => [:int],
      :ImGui_TableSetColumnEnabled => [:int, :bool],
      :ImGui_TableGetHoveredColumn => [],
      :ImGui_TableSetBgColor => [:int, :uint, :int],
      :ImGui_Columns => [],
      :ImGui_ColumnsEx => [:int, :pointer, :bool],
      :ImGui_NextColumn => [],
      :ImGui_GetColumnIndex => [],
      :ImGui_GetColumnWidth => [:int],
      :ImGui_SetColumnWidth => [:int, :float],
      :ImGui_GetColumnOffset => [:int],
      :ImGui_SetColumnOffset => [:int, :float],
      :ImGui_GetColumnsCount => [],
      :ImGui_BeginTabBar => [:pointer, :int],
      :ImGui_EndTabBar => [],
      :ImGui_BeginTabItem => [:pointer, :pointer, :int],
      :ImGui_EndTabItem => [],
      :ImGui_TabItemButton => [:pointer, :int],
      :ImGui_SetTabItemClosed => [:pointer],
      :ImGui_LogToTTY => [:int],
      :ImGui_LogToFile => [:int, :pointer],
      :ImGui_LogToClipboard => [:int],
      :ImGui_LogFinish => [],
      :ImGui_LogButtons => [],
      :ImGui_LogText => [:pointer, :varargs],
      :ImGui_BeginDragDropSource => [:int],
      :ImGui_SetDragDropPayload => [:pointer, :pointer, :size_t, :int],
      :ImGui_EndDragDropSource => [],
      :ImGui_BeginDragDropTarget => [],
      :ImGui_AcceptDragDropPayload => [:pointer, :int],
      :ImGui_EndDragDropTarget => [],
      :ImGui_GetDragDropPayload => [],
      :ImGui_BeginDisabled => [:bool],
      :ImGui_EndDisabled => [],
      :ImGui_PushClipRect => [ImVec2.by_value, ImVec2.by_value, :bool],
      :ImGui_PopClipRect => [],
      :ImGui_SetItemDefaultFocus => [],
      :ImGui_SetKeyboardFocusHere => [],
      :ImGui_SetKeyboardFocusHereEx => [:int],
      :ImGui_SetNavCursorVisible => [:bool],
      :ImGui_SetNextItemAllowOverlap => [],
      :ImGui_IsItemHovered => [:int],
      :ImGui_IsItemActive => [],
      :ImGui_IsItemFocused => [],
      :ImGui_IsItemClicked => [],
      :ImGui_IsItemClickedEx => [:int],
      :ImGui_IsItemVisible => [],
      :ImGui_IsItemEdited => [],
      :ImGui_IsItemActivated => [],
      :ImGui_IsItemDeactivated => [],
      :ImGui_IsItemDeactivatedAfterEdit => [],
      :ImGui_IsItemToggledOpen => [],
      :ImGui_IsAnyItemHovered => [],
      :ImGui_IsAnyItemActive => [],
      :ImGui_IsAnyItemFocused => [],
      :ImGui_GetItemID => [],
      :ImGui_GetItemRectMin => [],
      :ImGui_GetItemRectMax => [],
      :ImGui_GetItemRectSize => [],
      :ImGui_GetItemFlags => [],
      :ImGui_GetMainViewport => [],
      :ImGui_GetBackgroundDrawList => [],
      :ImGui_GetForegroundDrawList => [],
      :ImGui_IsRectVisibleBySize => [ImVec2.by_value],
      :ImGui_IsRectVisible => [ImVec2.by_value, ImVec2.by_value],
      :ImGui_GetTime => [],
      :ImGui_GetFrameCount => [],
      :ImGui_GetDrawListSharedData => [],
      :ImGui_GetStyleColorName => [:int],
      :ImGui_SetStateStorage => [:pointer],
      :ImGui_GetStateStorage => [],
      :ImGui_CalcTextSize => [:pointer],
      :ImGui_CalcTextSizeEx => [:pointer, :pointer, :bool, :float],
      :ImGui_ColorConvertU32ToFloat4 => [:uint],
      :ImGui_ColorConvertFloat4ToU32 => [ImVec4.by_value],
      :ImGui_ColorConvertRGBtoHSV => [:float, :float, :float, :pointer, :pointer, :pointer],
      :ImGui_ColorConvertHSVtoRGB => [:float, :float, :float, :pointer, :pointer, :pointer],
      :ImGui_IsKeyDown => [:int],
      :ImGui_IsKeyPressed => [:int],
      :ImGui_IsKeyPressedEx => [:int, :bool],
      :ImGui_IsKeyReleased => [:int],
      :ImGui_IsKeyChordPressed => [:int],
      :ImGui_GetKeyPressedAmount => [:int, :float, :float],
      :ImGui_GetKeyName => [:int],
      :ImGui_SetNextFrameWantCaptureKeyboard => [:bool],
      :ImGui_Shortcut => [:int, :int],
      :ImGui_SetNextItemShortcut => [:int, :int],
      :ImGui_SetItemKeyOwner => [:int],
      :ImGui_IsMouseDown => [:int],
      :ImGui_IsMouseClicked => [:int],
      :ImGui_IsMouseClickedEx => [:int, :bool],
      :ImGui_IsMouseReleased => [:int],
      :ImGui_IsMouseDoubleClicked => [:int],
      :ImGui_IsMouseReleasedWithDelay => [:int, :float],
      :ImGui_GetMouseClickedCount => [:int],
      :ImGui_IsMouseHoveringRect => [ImVec2.by_value, ImVec2.by_value],
      :ImGui_IsMouseHoveringRectEx => [ImVec2.by_value, ImVec2.by_value, :bool],
      :ImGui_IsMousePosValid => [:pointer],
      :ImGui_IsAnyMouseDown => [],
      :ImGui_GetMousePos => [],
      :ImGui_GetMousePosOnOpeningCurrentPopup => [],
      :ImGui_IsMouseDragging => [:int, :float],
      :ImGui_GetMouseDragDelta => [:int, :float],
      :ImGui_ResetMouseDragDelta => [],
      :ImGui_ResetMouseDragDeltaEx => [:int],
      :ImGui_GetMouseCursor => [],
      :ImGui_SetMouseCursor => [:int],
      :ImGui_SetNextFrameWantCaptureMouse => [:bool],
      :ImGui_GetClipboardText => [],
      :ImGui_SetClipboardText => [:pointer],
      :ImGui_LoadIniSettingsFromDisk => [:pointer],
      :ImGui_LoadIniSettingsFromMemory => [:pointer, :size_t],
      :ImGui_SaveIniSettingsToDisk => [:pointer],
      :ImGui_SaveIniSettingsToMemory => [:pointer],
      :ImGui_DebugTextEncoding => [:pointer],
      :ImGui_DebugFlashStyleColor => [:int],
      :ImGui_DebugStartItemPicker => [],
      :ImGui_DebugCheckVersionAndDataLayout => [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t],
      :ImGui_DebugLog => [:pointer, :varargs],
      :ImGui_SetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :ImGui_GetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :ImGui_MemAlloc => [:size_t],
      :ImGui_MemFree => [:pointer],
      :ImVector_Construct => [:pointer],
      :ImVector_Destruct => [:pointer],
      :ImGuiStyle_ScaleAllSizes => [:pointer, :float],
      :ImGuiIO_AddKeyEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddKeyAnalogEvent => [:pointer, :int, :bool, :float],
      :ImGuiIO_AddMousePosEvent => [:pointer, :float, :float],
      :ImGuiIO_AddMouseButtonEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddMouseWheelEvent => [:pointer, :float, :float],
      :ImGuiIO_AddMouseSourceEvent => [:pointer, :int],
      :ImGuiIO_AddFocusEvent => [:pointer, :bool],
      :ImGuiIO_AddInputCharacter => [:pointer, :uint],
      :ImGuiIO_AddInputCharacterUTF16 => [:pointer, :ushort],
      :ImGuiIO_AddInputCharactersUTF8 => [:pointer, :pointer],
      :ImGuiIO_SetKeyEventNativeData => [:pointer, :int, :int, :int],
      :ImGuiIO_SetKeyEventNativeDataEx => [:pointer, :int, :int, :int, :int],
      :ImGuiIO_SetAppAcceptingEvents => [:pointer, :bool],
      :ImGuiIO_ClearEventsQueue => [:pointer],
      :ImGuiIO_ClearInputKeys => [:pointer],
      :ImGuiIO_ClearInputMouse => [:pointer],
      :ImGuiInputTextCallbackData_DeleteChars => [:pointer, :int, :int],
      :ImGuiInputTextCallbackData_InsertChars => [:pointer, :int, :pointer, :pointer],
      :ImGuiInputTextCallbackData_SelectAll => [:pointer],
      :ImGuiInputTextCallbackData_SetSelection => [:pointer, :int, :int],
      :ImGuiInputTextCallbackData_ClearSelection => [:pointer],
      :ImGuiInputTextCallbackData_HasSelection => [:pointer],
      :ImGuiPayload_Clear => [:pointer],
      :ImGuiPayload_IsDataType => [:pointer, :pointer],
      :ImGuiPayload_IsPreview => [:pointer],
      :ImGuiPayload_IsDelivery => [:pointer],
      :ImGuiTextFilter_ImGuiTextRange_empty => [:pointer],
      :ImGuiTextFilter_ImGuiTextRange_split => [:pointer, :char, :pointer],
      :ImGuiTextFilter_Draw => [:pointer, :pointer, :float],
      :ImGuiTextFilter_PassFilter => [:pointer, :pointer, :pointer],
      :ImGuiTextFilter_Build => [:pointer],
      :ImGuiTextFilter_Clear => [:pointer],
      :ImGuiTextFilter_IsActive => [:pointer],
      :ImGuiTextBuffer_begin => [:pointer],
      :ImGuiTextBuffer_end => [:pointer],
      :ImGuiTextBuffer_size => [:pointer],
      :ImGuiTextBuffer_empty => [:pointer],
      :ImGuiTextBuffer_clear => [:pointer],
      :ImGuiTextBuffer_resize => [:pointer, :int],
      :ImGuiTextBuffer_reserve => [:pointer, :int],
      :ImGuiTextBuffer_c_str => [:pointer],
      :ImGuiTextBuffer_append => [:pointer, :pointer, :pointer],
      :ImGuiTextBuffer_appendf => [:pointer, :pointer, :varargs],
      :ImGuiStorage_Clear => [:pointer],
      :ImGuiStorage_GetInt => [:pointer, :uint, :int],
      :ImGuiStorage_SetInt => [:pointer, :uint, :int],
      :ImGuiStorage_GetBool => [:pointer, :uint, :bool],
      :ImGuiStorage_SetBool => [:pointer, :uint, :bool],
      :ImGuiStorage_GetFloat => [:pointer, :uint, :float],
      :ImGuiStorage_SetFloat => [:pointer, :uint, :float],
      :ImGuiStorage_GetVoidPtr => [:pointer, :uint],
      :ImGuiStorage_SetVoidPtr => [:pointer, :uint, :pointer],
      :ImGuiStorage_GetIntRef => [:pointer, :uint, :int],
      :ImGuiStorage_GetBoolRef => [:pointer, :uint, :bool],
      :ImGuiStorage_GetFloatRef => [:pointer, :uint, :float],
      :ImGuiStorage_GetVoidPtrRef => [:pointer, :uint, :pointer],
      :ImGuiStorage_BuildSortByKey => [:pointer],
      :ImGuiStorage_SetAllInt => [:pointer, :int],
      :ImGuiListClipper_Begin => [:pointer, :int, :float],
      :ImGuiListClipper_End => [:pointer],
      :ImGuiListClipper_Step => [:pointer],
      :ImGuiListClipper_IncludeItemByIndex => [:pointer, :int],
      :ImGuiListClipper_IncludeItemsByIndex => [:pointer, :int, :int],
      :ImGuiListClipper_SeekCursorForItem => [:pointer, :int],
      :ImColor_SetHSV => [:pointer, :float, :float, :float, :float],
      :ImColor_HSV => [:float, :float, :float, :float],
      :ImGuiSelectionBasicStorage_ApplyRequests => [:pointer, :pointer],
      :ImGuiSelectionBasicStorage_Contains => [:pointer, :uint],
      :ImGuiSelectionBasicStorage_Clear => [:pointer],
      :ImGuiSelectionBasicStorage_Swap => [:pointer, :pointer],
      :ImGuiSelectionBasicStorage_SetItemSelected => [:pointer, :uint, :bool],
      :ImGuiSelectionBasicStorage_GetNextSelectedItem => [:pointer, :pointer, :pointer],
      :ImGuiSelectionBasicStorage_GetStorageIdFromIndex => [:pointer, :int],
      :ImGuiSelectionExternalStorage_ApplyRequests => [:pointer, :pointer],
      :ImDrawCmd_GetTexID => [:pointer],
      :ImDrawListSplitter_Clear => [:pointer],
      :ImDrawListSplitter_ClearFreeMemory => [:pointer],
      :ImDrawListSplitter_Split => [:pointer, :pointer, :int],
      :ImDrawListSplitter_Merge => [:pointer, :pointer],
      :ImDrawListSplitter_SetCurrentChannel => [:pointer, :pointer, :int],
      :ImDrawList_PushClipRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :bool],
      :ImDrawList_PushClipRectFullScreen => [:pointer],
      :ImDrawList_PopClipRect => [:pointer],
      :ImDrawList_PushTexture => [:pointer, ImTextureRef.by_value],
      :ImDrawList_PopTexture => [:pointer],
      :ImDrawList_GetClipRectMin => [:pointer],
      :ImDrawList_GetClipRectMax => [:pointer],
      :ImDrawList_AddLine => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddLineEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddRectEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float],
      :ImDrawList_AddRectFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddRectFilledEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddRectFilledMultiColor => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint],
      :ImDrawList_AddQuad => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddQuadEx => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddQuadFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddTriangle => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddTriangleEx => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddTriangleFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddCircle => [:pointer, ImVec2.by_value, :float, :uint],
      :ImDrawList_AddCircleEx => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddCircleFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddNgon => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddNgonEx => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddNgonFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddEllipse => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddEllipseEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float],
      :ImDrawList_AddEllipseFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddEllipseFilledEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddText => [:pointer, ImVec2.by_value, :uint, :pointer],
      :ImDrawList_AddTextEx => [:pointer, ImVec2.by_value, :uint, :pointer, :pointer],
      :ImDrawList_AddTextImFontPtr => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer],
      :ImDrawList_AddTextImFontPtrEx => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer],
      :ImDrawList_AddBezierCubic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddBezierQuadratic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddPolyline => [:pointer, :pointer, :int, :uint, :int, :float],
      :ImDrawList_AddConvexPolyFilled => [:pointer, :pointer, :int, :uint],
      :ImDrawList_AddConcavePolyFilled => [:pointer, :pointer, :int, :uint],
      :ImDrawList_AddImage => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value],
      :ImDrawList_AddImageEx => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddImageQuad => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :ImDrawList_AddImageQuadEx => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddImageRounded => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_PathClear => [:pointer],
      :ImDrawList_PathLineTo => [:pointer, ImVec2.by_value],
      :ImDrawList_PathLineToMergeDuplicate => [:pointer, ImVec2.by_value],
      :ImDrawList_PathFillConvex => [:pointer, :uint],
      :ImDrawList_PathFillConcave => [:pointer, :uint],
      :ImDrawList_PathStroke => [:pointer, :uint, :int, :float],
      :ImDrawList_PathArcTo => [:pointer, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawList_PathArcToFast => [:pointer, ImVec2.by_value, :float, :int, :int],
      :ImDrawList_PathEllipticalArcTo => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :float],
      :ImDrawList_PathEllipticalArcToEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawList_PathBezierCubicCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathBezierQuadraticCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int],
      :ImDrawList_AddCallback => [:pointer, :ImDrawCallback, :pointer],
      :ImDrawList_AddCallbackEx => [:pointer, :ImDrawCallback, :pointer, :size_t],
      :ImDrawList_AddDrawCmd => [:pointer],
      :ImDrawList_CloneOutput => [:pointer],
      :ImDrawList_ChannelsSplit => [:pointer, :int],
      :ImDrawList_ChannelsMerge => [:pointer],
      :ImDrawList_ChannelsSetCurrent => [:pointer, :int],
      :ImDrawList_PrimReserve => [:pointer, :int, :int],
      :ImDrawList_PrimUnreserve => [:pointer, :int, :int],
      :ImDrawList_PrimRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimRectUV => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimQuadUV => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimWriteVtx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PrimWriteIdx => [:pointer, :ushort],
      :ImDrawList_PrimVtx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_PushTextureID => [:pointer, ImTextureRef.by_value],
      :ImDrawList_PopTextureID => [:pointer],
      :ImDrawList__SetDrawListSharedData => [:pointer, :pointer],
      :ImDrawList__ResetForNewFrame => [:pointer],
      :ImDrawList__ClearFreeMemory => [:pointer],
      :ImDrawList__PopUnusedDrawCmd => [:pointer],
      :ImDrawList__TryMergeDrawCmds => [:pointer],
      :ImDrawList__OnChangedClipRect => [:pointer],
      :ImDrawList__OnChangedTexture => [:pointer],
      :ImDrawList__OnChangedVtxOffset => [:pointer],
      :ImDrawList__SetTexture => [:pointer, ImTextureRef.by_value],
      :ImDrawList__CalcCircleAutoSegmentCount => [:pointer, :float],
      :ImDrawList__PathArcToFastEx => [:pointer, ImVec2.by_value, :float, :int, :int, :int],
      :ImDrawList__PathArcToN => [:pointer, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawData_Clear => [:pointer],
      :ImDrawData_AddDrawList => [:pointer, :pointer],
      :ImDrawData_DeIndexAllBuffers => [:pointer],
      :ImDrawData_ScaleClipRects => [:pointer, ImVec2.by_value],
      :ImTextureData_Create => [:pointer, :int, :int, :int],
      :ImTextureData_DestroyPixels => [:pointer],
      :ImTextureData_GetPixels => [:pointer],
      :ImTextureData_GetPixelsAt => [:pointer, :int, :int],
      :ImTextureData_GetSizeInBytes => [:pointer],
      :ImTextureData_GetPitch => [:pointer],
      :ImTextureData_GetTexRef => [:pointer],
      :ImTextureData_GetTexID => [:pointer],
      :ImTextureData_SetTexID => [:pointer, :uint64],
      :ImTextureData_SetStatus => [:pointer, :int],
      :ImFontGlyphRangesBuilder_Clear => [:pointer],
      :ImFontGlyphRangesBuilder_GetBit => [:pointer, :size_t],
      :ImFontGlyphRangesBuilder_SetBit => [:pointer, :size_t],
      :ImFontGlyphRangesBuilder_AddChar => [:pointer, :ushort],
      :ImFontGlyphRangesBuilder_AddText => [:pointer, :pointer, :pointer],
      :ImFontGlyphRangesBuilder_AddRanges => [:pointer, :pointer],
      :ImFontGlyphRangesBuilder_BuildRanges => [:pointer, :pointer],
      :ImFontAtlas_AddFont => [:pointer, :pointer],
      :ImFontAtlas_AddFontDefault => [:pointer, :pointer],
      :ImFontAtlas_AddFontDefaultVector => [:pointer, :pointer],
      :ImFontAtlas_AddFontDefaultBitmap => [:pointer, :pointer],
      :ImFontAtlas_AddFontFromFileTTF => [:pointer, :pointer, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryTTF => [:pointer, :pointer, :int, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryCompressedTTF => [:pointer, :pointer, :int, :float, :pointer, :pointer],
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF => [:pointer, :pointer, :float, :pointer, :pointer],
      :ImFontAtlas_RemoveFont => [:pointer, :pointer],
      :ImFontAtlas_Clear => [:pointer],
      :ImFontAtlas_CompactCache => [:pointer],
      :ImFontAtlas_SetFontLoader => [:pointer, :pointer],
      :ImFontAtlas_ClearInputData => [:pointer],
      :ImFontAtlas_ClearFonts => [:pointer],
      :ImFontAtlas_ClearTexData => [:pointer],
      :ImFontAtlas_Build => [:pointer],
      :ImFontAtlas_GetTexDataAsAlpha8 => [:pointer, :pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_GetTexDataAsRGBA32 => [:pointer, :pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_SetTexID => [:pointer, :uint64],
      :ImFontAtlas_SetTexIDImTextureRef => [:pointer, ImTextureRef.by_value],
      :ImFontAtlas_IsBuilt => [:pointer],
      :ImFontAtlas_GetGlyphRangesDefault => [:pointer],
      :ImFontAtlas_GetGlyphRangesGreek => [:pointer],
      :ImFontAtlas_GetGlyphRangesKorean => [:pointer],
      :ImFontAtlas_GetGlyphRangesJapanese => [:pointer],
      :ImFontAtlas_GetGlyphRangesChineseFull => [:pointer],
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon => [:pointer],
      :ImFontAtlas_GetGlyphRangesCyrillic => [:pointer],
      :ImFontAtlas_GetGlyphRangesThai => [:pointer],
      :ImFontAtlas_GetGlyphRangesVietnamese => [:pointer],
      :ImFontAtlas_AddCustomRect => [:pointer, :int, :int, :pointer],
      :ImFontAtlas_RemoveCustomRect => [:pointer, :int],
      :ImFontAtlas_GetCustomRect => [:pointer, :int, :pointer],
      :ImFontAtlas_AddCustomRectRegular => [:pointer, :int, :int],
      :ImFontAtlas_GetCustomRectByIndex => [:pointer, :int],
      :ImFontAtlas_CalcCustomRectUV => [:pointer, :pointer, :pointer, :pointer],
      :ImFontAtlas_AddCustomRectFontGlyph => [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value],
      :ImFontAtlas_AddCustomRectFontGlyphForSize => [:pointer, :pointer, :float, :ushort, :int, :int, :float, ImVec2.by_value],
      :ImFontBaked_ClearOutputData => [:pointer],
      :ImFontBaked_FindGlyph => [:pointer, :ushort],
      :ImFontBaked_FindGlyphNoFallback => [:pointer, :ushort],
      :ImFontBaked_GetCharAdvance => [:pointer, :ushort],
      :ImFontBaked_IsGlyphLoaded => [:pointer, :ushort],
      :ImFont_IsGlyphInFont => [:pointer, :ushort],
      :ImFont_IsLoaded => [:pointer],
      :ImFont_GetDebugName => [:pointer],
      :ImFont_GetFontBaked => [:pointer, :float],
      :ImFont_GetFontBakedEx => [:pointer, :float, :float],
      :ImFont_CalcTextSizeA => [:pointer, :float, :float, :float, :pointer],
      :ImFont_CalcTextSizeAEx => [:pointer, :float, :float, :float, :pointer, :pointer, :pointer],
      :ImFont_CalcWordWrapPosition => [:pointer, :float, :pointer, :pointer, :float],
      :ImFont_RenderChar => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :ushort],
      :ImFont_RenderCharEx => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :ushort, :pointer],
      :ImFont_RenderText => [:pointer, :pointer, :float, ImVec2.by_value, :uint, ImVec4.by_value, :pointer, :pointer, :float, :int],
      :ImFont_CalcWordWrapPositionA => [:pointer, :float, :pointer, :pointer, :float],
      :ImFont_ClearOutputData => [:pointer],
      :ImFont_AddRemapChar => [:pointer, :ushort, :ushort],
      :ImFont_IsGlyphRangeUnused => [:pointer, :uint, :uint],
      :ImGuiViewport_GetCenter => [:pointer],
      :ImGuiViewport_GetWorkCenter => [:pointer],
      :ImGuiPlatformIO_ClearPlatformHandlers => [:pointer],
      :ImGuiPlatformIO_ClearRendererHandlers => [:pointer],
      :ImGui_PushFont => [:pointer],
      :ImGui_SetWindowFontScale => [:float],
      :ImGui_ImageImVec4 => [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :ImGui_PushButtonRepeat => [:bool],
      :ImGui_PopButtonRepeat => [],
      :ImGui_PushTabStop => [:bool],
      :ImGui_PopTabStop => [],
      :ImGui_GetContentRegionMax => [],
      :ImGui_GetWindowContentRegionMin => [],
      :ImGui_GetWindowContentRegionMax => [],
    }

    retvals = {
      :ImTextureRef_GetTexID => :uint64,
      :ImGui_CreateContext => :pointer,
      :ImGui_DestroyContext => :void,
      :ImGui_GetCurrentContext => :pointer,
      :ImGui_SetCurrentContext => :void,
      :ImGui_GetIO => :pointer,
      :ImGui_GetPlatformIO => :pointer,
      :ImGui_GetStyle => :pointer,
      :ImGui_NewFrame => :void,
      :ImGui_EndFrame => :void,
      :ImGui_Render => :void,
      :ImGui_GetDrawData => :pointer,
      :ImGui_ShowDemoWindow => :void,
      :ImGui_ShowMetricsWindow => :void,
      :ImGui_ShowDebugLogWindow => :void,
      :ImGui_ShowIDStackToolWindow => :void,
      :ImGui_ShowIDStackToolWindowEx => :void,
      :ImGui_ShowAboutWindow => :void,
      :ImGui_ShowStyleEditor => :void,
      :ImGui_ShowStyleSelector => :bool,
      :ImGui_ShowFontSelector => :void,
      :ImGui_ShowUserGuide => :void,
      :ImGui_GetVersion => :pointer,
      :ImGui_StyleColorsDark => :void,
      :ImGui_StyleColorsLight => :void,
      :ImGui_StyleColorsClassic => :void,
      :ImGui_Begin => :bool,
      :ImGui_End => :void,
      :ImGui_BeginChild => :bool,
      :ImGui_BeginChildID => :bool,
      :ImGui_EndChild => :void,
      :ImGui_IsWindowAppearing => :bool,
      :ImGui_IsWindowCollapsed => :bool,
      :ImGui_IsWindowFocused => :bool,
      :ImGui_IsWindowHovered => :bool,
      :ImGui_GetWindowDrawList => :pointer,
      :ImGui_GetWindowPos => ImVec2.by_value,
      :ImGui_GetWindowSize => ImVec2.by_value,
      :ImGui_GetWindowWidth => :float,
      :ImGui_GetWindowHeight => :float,
      :ImGui_SetNextWindowPos => :void,
      :ImGui_SetNextWindowPosEx => :void,
      :ImGui_SetNextWindowSize => :void,
      :ImGui_SetNextWindowSizeConstraints => :void,
      :ImGui_SetNextWindowContentSize => :void,
      :ImGui_SetNextWindowCollapsed => :void,
      :ImGui_SetNextWindowFocus => :void,
      :ImGui_SetNextWindowScroll => :void,
      :ImGui_SetNextWindowBgAlpha => :void,
      :ImGui_SetWindowPos => :void,
      :ImGui_SetWindowSize => :void,
      :ImGui_SetWindowCollapsed => :void,
      :ImGui_SetWindowFocus => :void,
      :ImGui_SetWindowPosStr => :void,
      :ImGui_SetWindowSizeStr => :void,
      :ImGui_SetWindowCollapsedStr => :void,
      :ImGui_SetWindowFocusStr => :void,
      :ImGui_GetScrollX => :float,
      :ImGui_GetScrollY => :float,
      :ImGui_SetScrollX => :void,
      :ImGui_SetScrollY => :void,
      :ImGui_GetScrollMaxX => :float,
      :ImGui_GetScrollMaxY => :float,
      :ImGui_SetScrollHereX => :void,
      :ImGui_SetScrollHereY => :void,
      :ImGui_SetScrollFromPosX => :void,
      :ImGui_SetScrollFromPosY => :void,
      :ImGui_PushFontFloat => :void,
      :ImGui_PopFont => :void,
      :ImGui_GetFont => :pointer,
      :ImGui_GetFontSize => :float,
      :ImGui_GetFontBaked => :pointer,
      :ImGui_PushStyleColor => :void,
      :ImGui_PushStyleColorImVec4 => :void,
      :ImGui_PopStyleColor => :void,
      :ImGui_PopStyleColorEx => :void,
      :ImGui_PushStyleVar => :void,
      :ImGui_PushStyleVarImVec2 => :void,
      :ImGui_PushStyleVarX => :void,
      :ImGui_PushStyleVarY => :void,
      :ImGui_PopStyleVar => :void,
      :ImGui_PopStyleVarEx => :void,
      :ImGui_PushItemFlag => :void,
      :ImGui_PopItemFlag => :void,
      :ImGui_PushItemWidth => :void,
      :ImGui_PopItemWidth => :void,
      :ImGui_SetNextItemWidth => :void,
      :ImGui_CalcItemWidth => :float,
      :ImGui_PushTextWrapPos => :void,
      :ImGui_PopTextWrapPos => :void,
      :ImGui_GetFontTexUvWhitePixel => ImVec2.by_value,
      :ImGui_GetColorU32 => :uint,
      :ImGui_GetColorU32Ex => :uint,
      :ImGui_GetColorU32ImVec4 => :uint,
      :ImGui_GetColorU32ImU32 => :uint,
      :ImGui_GetColorU32ImU32Ex => :uint,
      :ImGui_GetStyleColorVec4 => :pointer,
      :ImGui_GetCursorScreenPos => ImVec2.by_value,
      :ImGui_SetCursorScreenPos => :void,
      :ImGui_GetContentRegionAvail => ImVec2.by_value,
      :ImGui_GetCursorPos => ImVec2.by_value,
      :ImGui_GetCursorPosX => :float,
      :ImGui_GetCursorPosY => :float,
      :ImGui_SetCursorPos => :void,
      :ImGui_SetCursorPosX => :void,
      :ImGui_SetCursorPosY => :void,
      :ImGui_GetCursorStartPos => ImVec2.by_value,
      :ImGui_Separator => :void,
      :ImGui_SameLine => :void,
      :ImGui_SameLineEx => :void,
      :ImGui_NewLine => :void,
      :ImGui_Spacing => :void,
      :ImGui_Dummy => :void,
      :ImGui_Indent => :void,
      :ImGui_IndentEx => :void,
      :ImGui_Unindent => :void,
      :ImGui_UnindentEx => :void,
      :ImGui_BeginGroup => :void,
      :ImGui_EndGroup => :void,
      :ImGui_AlignTextToFramePadding => :void,
      :ImGui_GetTextLineHeight => :float,
      :ImGui_GetTextLineHeightWithSpacing => :float,
      :ImGui_GetFrameHeight => :float,
      :ImGui_GetFrameHeightWithSpacing => :float,
      :ImGui_PushID => :void,
      :ImGui_PushIDStr => :void,
      :ImGui_PushIDPtr => :void,
      :ImGui_PushIDInt => :void,
      :ImGui_PopID => :void,
      :ImGui_GetID => :uint,
      :ImGui_GetIDStr => :uint,
      :ImGui_GetIDPtr => :uint,
      :ImGui_GetIDInt => :uint,
      :ImGui_TextUnformatted => :void,
      :ImGui_TextUnformattedEx => :void,
      :ImGui_Text => :void,
      :ImGui_TextColored => :void,
      :ImGui_TextDisabled => :void,
      :ImGui_TextWrapped => :void,
      :ImGui_LabelText => :void,
      :ImGui_BulletText => :void,
      :ImGui_SeparatorText => :void,
      :ImGui_Button => :bool,
      :ImGui_ButtonEx => :bool,
      :ImGui_SmallButton => :bool,
      :ImGui_InvisibleButton => :bool,
      :ImGui_ArrowButton => :bool,
      :ImGui_Checkbox => :bool,
      :ImGui_CheckboxFlagsIntPtr => :bool,
      :ImGui_CheckboxFlagsUintPtr => :bool,
      :ImGui_RadioButton => :bool,
      :ImGui_RadioButtonIntPtr => :bool,
      :ImGui_ProgressBar => :void,
      :ImGui_Bullet => :void,
      :ImGui_TextLink => :bool,
      :ImGui_TextLinkOpenURL => :bool,
      :ImGui_TextLinkOpenURLEx => :bool,
      :ImGui_Image => :void,
      :ImGui_ImageEx => :void,
      :ImGui_ImageWithBg => :void,
      :ImGui_ImageWithBgEx => :void,
      :ImGui_ImageButton => :bool,
      :ImGui_ImageButtonEx => :bool,
      :ImGui_BeginCombo => :bool,
      :ImGui_EndCombo => :void,
      :ImGui_ComboChar => :bool,
      :ImGui_ComboCharEx => :bool,
      :ImGui_Combo => :bool,
      :ImGui_ComboEx => :bool,
      :ImGui_ComboCallback => :bool,
      :ImGui_ComboCallbackEx => :bool,
      :ImGui_DragFloat => :bool,
      :ImGui_DragFloatEx => :bool,
      :ImGui_DragFloat2 => :bool,
      :ImGui_DragFloat2Ex => :bool,
      :ImGui_DragFloat3 => :bool,
      :ImGui_DragFloat3Ex => :bool,
      :ImGui_DragFloat4 => :bool,
      :ImGui_DragFloat4Ex => :bool,
      :ImGui_DragFloatRange2 => :bool,
      :ImGui_DragFloatRange2Ex => :bool,
      :ImGui_DragInt => :bool,
      :ImGui_DragIntEx => :bool,
      :ImGui_DragInt2 => :bool,
      :ImGui_DragInt2Ex => :bool,
      :ImGui_DragInt3 => :bool,
      :ImGui_DragInt3Ex => :bool,
      :ImGui_DragInt4 => :bool,
      :ImGui_DragInt4Ex => :bool,
      :ImGui_DragIntRange2 => :bool,
      :ImGui_DragIntRange2Ex => :bool,
      :ImGui_DragScalar => :bool,
      :ImGui_DragScalarEx => :bool,
      :ImGui_DragScalarN => :bool,
      :ImGui_DragScalarNEx => :bool,
      :ImGui_SliderFloat => :bool,
      :ImGui_SliderFloatEx => :bool,
      :ImGui_SliderFloat2 => :bool,
      :ImGui_SliderFloat2Ex => :bool,
      :ImGui_SliderFloat3 => :bool,
      :ImGui_SliderFloat3Ex => :bool,
      :ImGui_SliderFloat4 => :bool,
      :ImGui_SliderFloat4Ex => :bool,
      :ImGui_SliderAngle => :bool,
      :ImGui_SliderAngleEx => :bool,
      :ImGui_SliderInt => :bool,
      :ImGui_SliderIntEx => :bool,
      :ImGui_SliderInt2 => :bool,
      :ImGui_SliderInt2Ex => :bool,
      :ImGui_SliderInt3 => :bool,
      :ImGui_SliderInt3Ex => :bool,
      :ImGui_SliderInt4 => :bool,
      :ImGui_SliderInt4Ex => :bool,
      :ImGui_SliderScalar => :bool,
      :ImGui_SliderScalarEx => :bool,
      :ImGui_SliderScalarN => :bool,
      :ImGui_SliderScalarNEx => :bool,
      :ImGui_VSliderFloat => :bool,
      :ImGui_VSliderFloatEx => :bool,
      :ImGui_VSliderInt => :bool,
      :ImGui_VSliderIntEx => :bool,
      :ImGui_VSliderScalar => :bool,
      :ImGui_VSliderScalarEx => :bool,
      :ImGui_InputText => :bool,
      :ImGui_InputTextEx => :bool,
      :ImGui_InputTextMultiline => :bool,
      :ImGui_InputTextMultilineEx => :bool,
      :ImGui_InputTextWithHint => :bool,
      :ImGui_InputTextWithHintEx => :bool,
      :ImGui_InputFloat => :bool,
      :ImGui_InputFloatEx => :bool,
      :ImGui_InputFloat2 => :bool,
      :ImGui_InputFloat2Ex => :bool,
      :ImGui_InputFloat3 => :bool,
      :ImGui_InputFloat3Ex => :bool,
      :ImGui_InputFloat4 => :bool,
      :ImGui_InputFloat4Ex => :bool,
      :ImGui_InputInt => :bool,
      :ImGui_InputIntEx => :bool,
      :ImGui_InputInt2 => :bool,
      :ImGui_InputInt3 => :bool,
      :ImGui_InputInt4 => :bool,
      :ImGui_InputDouble => :bool,
      :ImGui_InputDoubleEx => :bool,
      :ImGui_InputScalar => :bool,
      :ImGui_InputScalarEx => :bool,
      :ImGui_InputScalarN => :bool,
      :ImGui_InputScalarNEx => :bool,
      :ImGui_ColorEdit3 => :bool,
      :ImGui_ColorEdit4 => :bool,
      :ImGui_ColorPicker3 => :bool,
      :ImGui_ColorPicker4 => :bool,
      :ImGui_ColorButton => :bool,
      :ImGui_ColorButtonEx => :bool,
      :ImGui_SetColorEditOptions => :void,
      :ImGui_TreeNode => :bool,
      :ImGui_TreeNodeStr => :bool,
      :ImGui_TreeNodePtr => :bool,
      :ImGui_TreeNodeEx => :bool,
      :ImGui_TreeNodeExStr => :bool,
      :ImGui_TreeNodeExPtr => :bool,
      :ImGui_TreePush => :void,
      :ImGui_TreePushPtr => :void,
      :ImGui_TreePop => :void,
      :ImGui_GetTreeNodeToLabelSpacing => :float,
      :ImGui_CollapsingHeader => :bool,
      :ImGui_CollapsingHeaderBoolPtr => :bool,
      :ImGui_SetNextItemOpen => :void,
      :ImGui_SetNextItemStorageID => :void,
      :ImGui_TreeNodeGetOpen => :bool,
      :ImGui_Selectable => :bool,
      :ImGui_SelectableEx => :bool,
      :ImGui_SelectableBoolPtr => :bool,
      :ImGui_SelectableBoolPtrEx => :bool,
      :ImGui_BeginMultiSelect => :pointer,
      :ImGui_BeginMultiSelectEx => :pointer,
      :ImGui_EndMultiSelect => :pointer,
      :ImGui_SetNextItemSelectionUserData => :void,
      :ImGui_IsItemToggledSelection => :bool,
      :ImGui_BeginListBox => :bool,
      :ImGui_EndListBox => :void,
      :ImGui_ListBox => :bool,
      :ImGui_ListBoxCallback => :bool,
      :ImGui_ListBoxCallbackEx => :bool,
      :ImGui_PlotLines => :void,
      :ImGui_PlotLinesEx => :void,
      :ImGui_PlotLinesCallback => :void,
      :ImGui_PlotLinesCallbackEx => :void,
      :ImGui_PlotHistogram => :void,
      :ImGui_PlotHistogramEx => :void,
      :ImGui_PlotHistogramCallback => :void,
      :ImGui_PlotHistogramCallbackEx => :void,
      :ImGui_BeginMenuBar => :bool,
      :ImGui_EndMenuBar => :void,
      :ImGui_BeginMainMenuBar => :bool,
      :ImGui_EndMainMenuBar => :void,
      :ImGui_BeginMenu => :bool,
      :ImGui_BeginMenuEx => :bool,
      :ImGui_EndMenu => :void,
      :ImGui_MenuItem => :bool,
      :ImGui_MenuItemEx => :bool,
      :ImGui_MenuItemBoolPtr => :bool,
      :ImGui_BeginTooltip => :bool,
      :ImGui_EndTooltip => :void,
      :ImGui_SetTooltip => :void,
      :ImGui_BeginItemTooltip => :bool,
      :ImGui_SetItemTooltip => :void,
      :ImGui_BeginPopup => :bool,
      :ImGui_BeginPopupModal => :bool,
      :ImGui_EndPopup => :void,
      :ImGui_OpenPopup => :void,
      :ImGui_OpenPopupID => :void,
      :ImGui_OpenPopupOnItemClick => :void,
      :ImGui_CloseCurrentPopup => :void,
      :ImGui_BeginPopupContextItem => :bool,
      :ImGui_BeginPopupContextItemEx => :bool,
      :ImGui_BeginPopupContextWindow => :bool,
      :ImGui_BeginPopupContextWindowEx => :bool,
      :ImGui_BeginPopupContextVoid => :bool,
      :ImGui_BeginPopupContextVoidEx => :bool,
      :ImGui_IsPopupOpen => :bool,
      :ImGui_BeginTable => :bool,
      :ImGui_BeginTableEx => :bool,
      :ImGui_EndTable => :void,
      :ImGui_TableNextRow => :void,
      :ImGui_TableNextRowEx => :void,
      :ImGui_TableNextColumn => :bool,
      :ImGui_TableSetColumnIndex => :bool,
      :ImGui_TableSetupColumn => :void,
      :ImGui_TableSetupColumnEx => :void,
      :ImGui_TableSetupScrollFreeze => :void,
      :ImGui_TableHeader => :void,
      :ImGui_TableHeadersRow => :void,
      :ImGui_TableAngledHeadersRow => :void,
      :ImGui_TableGetSortSpecs => :pointer,
      :ImGui_TableGetColumnCount => :int,
      :ImGui_TableGetColumnIndex => :int,
      :ImGui_TableGetRowIndex => :int,
      :ImGui_TableGetColumnName => :pointer,
      :ImGui_TableGetColumnFlags => :int,
      :ImGui_TableSetColumnEnabled => :void,
      :ImGui_TableGetHoveredColumn => :int,
      :ImGui_TableSetBgColor => :void,
      :ImGui_Columns => :void,
      :ImGui_ColumnsEx => :void,
      :ImGui_NextColumn => :void,
      :ImGui_GetColumnIndex => :int,
      :ImGui_GetColumnWidth => :float,
      :ImGui_SetColumnWidth => :void,
      :ImGui_GetColumnOffset => :float,
      :ImGui_SetColumnOffset => :void,
      :ImGui_GetColumnsCount => :int,
      :ImGui_BeginTabBar => :bool,
      :ImGui_EndTabBar => :void,
      :ImGui_BeginTabItem => :bool,
      :ImGui_EndTabItem => :void,
      :ImGui_TabItemButton => :bool,
      :ImGui_SetTabItemClosed => :void,
      :ImGui_LogToTTY => :void,
      :ImGui_LogToFile => :void,
      :ImGui_LogToClipboard => :void,
      :ImGui_LogFinish => :void,
      :ImGui_LogButtons => :void,
      :ImGui_LogText => :void,
      :ImGui_BeginDragDropSource => :bool,
      :ImGui_SetDragDropPayload => :bool,
      :ImGui_EndDragDropSource => :void,
      :ImGui_BeginDragDropTarget => :bool,
      :ImGui_AcceptDragDropPayload => :pointer,
      :ImGui_EndDragDropTarget => :void,
      :ImGui_GetDragDropPayload => :pointer,
      :ImGui_BeginDisabled => :void,
      :ImGui_EndDisabled => :void,
      :ImGui_PushClipRect => :void,
      :ImGui_PopClipRect => :void,
      :ImGui_SetItemDefaultFocus => :void,
      :ImGui_SetKeyboardFocusHere => :void,
      :ImGui_SetKeyboardFocusHereEx => :void,
      :ImGui_SetNavCursorVisible => :void,
      :ImGui_SetNextItemAllowOverlap => :void,
      :ImGui_IsItemHovered => :bool,
      :ImGui_IsItemActive => :bool,
      :ImGui_IsItemFocused => :bool,
      :ImGui_IsItemClicked => :bool,
      :ImGui_IsItemClickedEx => :bool,
      :ImGui_IsItemVisible => :bool,
      :ImGui_IsItemEdited => :bool,
      :ImGui_IsItemActivated => :bool,
      :ImGui_IsItemDeactivated => :bool,
      :ImGui_IsItemDeactivatedAfterEdit => :bool,
      :ImGui_IsItemToggledOpen => :bool,
      :ImGui_IsAnyItemHovered => :bool,
      :ImGui_IsAnyItemActive => :bool,
      :ImGui_IsAnyItemFocused => :bool,
      :ImGui_GetItemID => :uint,
      :ImGui_GetItemRectMin => ImVec2.by_value,
      :ImGui_GetItemRectMax => ImVec2.by_value,
      :ImGui_GetItemRectSize => ImVec2.by_value,
      :ImGui_GetItemFlags => :int,
      :ImGui_GetMainViewport => :pointer,
      :ImGui_GetBackgroundDrawList => :pointer,
      :ImGui_GetForegroundDrawList => :pointer,
      :ImGui_IsRectVisibleBySize => :bool,
      :ImGui_IsRectVisible => :bool,
      :ImGui_GetTime => :double,
      :ImGui_GetFrameCount => :int,
      :ImGui_GetDrawListSharedData => :pointer,
      :ImGui_GetStyleColorName => :pointer,
      :ImGui_SetStateStorage => :void,
      :ImGui_GetStateStorage => :pointer,
      :ImGui_CalcTextSize => ImVec2.by_value,
      :ImGui_CalcTextSizeEx => ImVec2.by_value,
      :ImGui_ColorConvertU32ToFloat4 => ImVec4.by_value,
      :ImGui_ColorConvertFloat4ToU32 => :uint,
      :ImGui_ColorConvertRGBtoHSV => :void,
      :ImGui_ColorConvertHSVtoRGB => :void,
      :ImGui_IsKeyDown => :bool,
      :ImGui_IsKeyPressed => :bool,
      :ImGui_IsKeyPressedEx => :bool,
      :ImGui_IsKeyReleased => :bool,
      :ImGui_IsKeyChordPressed => :bool,
      :ImGui_GetKeyPressedAmount => :int,
      :ImGui_GetKeyName => :pointer,
      :ImGui_SetNextFrameWantCaptureKeyboard => :void,
      :ImGui_Shortcut => :bool,
      :ImGui_SetNextItemShortcut => :void,
      :ImGui_SetItemKeyOwner => :void,
      :ImGui_IsMouseDown => :bool,
      :ImGui_IsMouseClicked => :bool,
      :ImGui_IsMouseClickedEx => :bool,
      :ImGui_IsMouseReleased => :bool,
      :ImGui_IsMouseDoubleClicked => :bool,
      :ImGui_IsMouseReleasedWithDelay => :bool,
      :ImGui_GetMouseClickedCount => :int,
      :ImGui_IsMouseHoveringRect => :bool,
      :ImGui_IsMouseHoveringRectEx => :bool,
      :ImGui_IsMousePosValid => :bool,
      :ImGui_IsAnyMouseDown => :bool,
      :ImGui_GetMousePos => ImVec2.by_value,
      :ImGui_GetMousePosOnOpeningCurrentPopup => ImVec2.by_value,
      :ImGui_IsMouseDragging => :bool,
      :ImGui_GetMouseDragDelta => ImVec2.by_value,
      :ImGui_ResetMouseDragDelta => :void,
      :ImGui_ResetMouseDragDeltaEx => :void,
      :ImGui_GetMouseCursor => :int,
      :ImGui_SetMouseCursor => :void,
      :ImGui_SetNextFrameWantCaptureMouse => :void,
      :ImGui_GetClipboardText => :pointer,
      :ImGui_SetClipboardText => :void,
      :ImGui_LoadIniSettingsFromDisk => :void,
      :ImGui_LoadIniSettingsFromMemory => :void,
      :ImGui_SaveIniSettingsToDisk => :void,
      :ImGui_SaveIniSettingsToMemory => :pointer,
      :ImGui_DebugTextEncoding => :void,
      :ImGui_DebugFlashStyleColor => :void,
      :ImGui_DebugStartItemPicker => :void,
      :ImGui_DebugCheckVersionAndDataLayout => :bool,
      :ImGui_DebugLog => :void,
      :ImGui_SetAllocatorFunctions => :void,
      :ImGui_GetAllocatorFunctions => :void,
      :ImGui_MemAlloc => :pointer,
      :ImGui_MemFree => :void,
      :ImVector_Construct => :void,
      :ImVector_Destruct => :void,
      :ImGuiStyle_ScaleAllSizes => :void,
      :ImGuiIO_AddKeyEvent => :void,
      :ImGuiIO_AddKeyAnalogEvent => :void,
      :ImGuiIO_AddMousePosEvent => :void,
      :ImGuiIO_AddMouseButtonEvent => :void,
      :ImGuiIO_AddMouseWheelEvent => :void,
      :ImGuiIO_AddMouseSourceEvent => :void,
      :ImGuiIO_AddFocusEvent => :void,
      :ImGuiIO_AddInputCharacter => :void,
      :ImGuiIO_AddInputCharacterUTF16 => :void,
      :ImGuiIO_AddInputCharactersUTF8 => :void,
      :ImGuiIO_SetKeyEventNativeData => :void,
      :ImGuiIO_SetKeyEventNativeDataEx => :void,
      :ImGuiIO_SetAppAcceptingEvents => :void,
      :ImGuiIO_ClearEventsQueue => :void,
      :ImGuiIO_ClearInputKeys => :void,
      :ImGuiIO_ClearInputMouse => :void,
      :ImGuiInputTextCallbackData_DeleteChars => :void,
      :ImGuiInputTextCallbackData_InsertChars => :void,
      :ImGuiInputTextCallbackData_SelectAll => :void,
      :ImGuiInputTextCallbackData_SetSelection => :void,
      :ImGuiInputTextCallbackData_ClearSelection => :void,
      :ImGuiInputTextCallbackData_HasSelection => :bool,
      :ImGuiPayload_Clear => :void,
      :ImGuiPayload_IsDataType => :bool,
      :ImGuiPayload_IsPreview => :bool,
      :ImGuiPayload_IsDelivery => :bool,
      :ImGuiTextFilter_ImGuiTextRange_empty => :bool,
      :ImGuiTextFilter_ImGuiTextRange_split => :void,
      :ImGuiTextFilter_Draw => :bool,
      :ImGuiTextFilter_PassFilter => :bool,
      :ImGuiTextFilter_Build => :void,
      :ImGuiTextFilter_Clear => :void,
      :ImGuiTextFilter_IsActive => :bool,
      :ImGuiTextBuffer_begin => :pointer,
      :ImGuiTextBuffer_end => :pointer,
      :ImGuiTextBuffer_size => :int,
      :ImGuiTextBuffer_empty => :bool,
      :ImGuiTextBuffer_clear => :void,
      :ImGuiTextBuffer_resize => :void,
      :ImGuiTextBuffer_reserve => :void,
      :ImGuiTextBuffer_c_str => :pointer,
      :ImGuiTextBuffer_append => :void,
      :ImGuiTextBuffer_appendf => :void,
      :ImGuiStorage_Clear => :void,
      :ImGuiStorage_GetInt => :int,
      :ImGuiStorage_SetInt => :void,
      :ImGuiStorage_GetBool => :bool,
      :ImGuiStorage_SetBool => :void,
      :ImGuiStorage_GetFloat => :float,
      :ImGuiStorage_SetFloat => :void,
      :ImGuiStorage_GetVoidPtr => :pointer,
      :ImGuiStorage_SetVoidPtr => :void,
      :ImGuiStorage_GetIntRef => :pointer,
      :ImGuiStorage_GetBoolRef => :pointer,
      :ImGuiStorage_GetFloatRef => :pointer,
      :ImGuiStorage_GetVoidPtrRef => :pointer,
      :ImGuiStorage_BuildSortByKey => :void,
      :ImGuiStorage_SetAllInt => :void,
      :ImGuiListClipper_Begin => :void,
      :ImGuiListClipper_End => :void,
      :ImGuiListClipper_Step => :bool,
      :ImGuiListClipper_IncludeItemByIndex => :void,
      :ImGuiListClipper_IncludeItemsByIndex => :void,
      :ImGuiListClipper_SeekCursorForItem => :void,
      :ImColor_SetHSV => :void,
      :ImColor_HSV => ImColor.by_value,
      :ImGuiSelectionBasicStorage_ApplyRequests => :void,
      :ImGuiSelectionBasicStorage_Contains => :bool,
      :ImGuiSelectionBasicStorage_Clear => :void,
      :ImGuiSelectionBasicStorage_Swap => :void,
      :ImGuiSelectionBasicStorage_SetItemSelected => :void,
      :ImGuiSelectionBasicStorage_GetNextSelectedItem => :bool,
      :ImGuiSelectionBasicStorage_GetStorageIdFromIndex => :uint,
      :ImGuiSelectionExternalStorage_ApplyRequests => :void,
      :ImDrawCmd_GetTexID => :uint64,
      :ImDrawListSplitter_Clear => :void,
      :ImDrawListSplitter_ClearFreeMemory => :void,
      :ImDrawListSplitter_Split => :void,
      :ImDrawListSplitter_Merge => :void,
      :ImDrawListSplitter_SetCurrentChannel => :void,
      :ImDrawList_PushClipRect => :void,
      :ImDrawList_PushClipRectFullScreen => :void,
      :ImDrawList_PopClipRect => :void,
      :ImDrawList_PushTexture => :void,
      :ImDrawList_PopTexture => :void,
      :ImDrawList_GetClipRectMin => ImVec2.by_value,
      :ImDrawList_GetClipRectMax => ImVec2.by_value,
      :ImDrawList_AddLine => :void,
      :ImDrawList_AddLineEx => :void,
      :ImDrawList_AddRect => :void,
      :ImDrawList_AddRectEx => :void,
      :ImDrawList_AddRectFilled => :void,
      :ImDrawList_AddRectFilledEx => :void,
      :ImDrawList_AddRectFilledMultiColor => :void,
      :ImDrawList_AddQuad => :void,
      :ImDrawList_AddQuadEx => :void,
      :ImDrawList_AddQuadFilled => :void,
      :ImDrawList_AddTriangle => :void,
      :ImDrawList_AddTriangleEx => :void,
      :ImDrawList_AddTriangleFilled => :void,
      :ImDrawList_AddCircle => :void,
      :ImDrawList_AddCircleEx => :void,
      :ImDrawList_AddCircleFilled => :void,
      :ImDrawList_AddNgon => :void,
      :ImDrawList_AddNgonEx => :void,
      :ImDrawList_AddNgonFilled => :void,
      :ImDrawList_AddEllipse => :void,
      :ImDrawList_AddEllipseEx => :void,
      :ImDrawList_AddEllipseFilled => :void,
      :ImDrawList_AddEllipseFilledEx => :void,
      :ImDrawList_AddText => :void,
      :ImDrawList_AddTextEx => :void,
      :ImDrawList_AddTextImFontPtr => :void,
      :ImDrawList_AddTextImFontPtrEx => :void,
      :ImDrawList_AddBezierCubic => :void,
      :ImDrawList_AddBezierQuadratic => :void,
      :ImDrawList_AddPolyline => :void,
      :ImDrawList_AddConvexPolyFilled => :void,
      :ImDrawList_AddConcavePolyFilled => :void,
      :ImDrawList_AddImage => :void,
      :ImDrawList_AddImageEx => :void,
      :ImDrawList_AddImageQuad => :void,
      :ImDrawList_AddImageQuadEx => :void,
      :ImDrawList_AddImageRounded => :void,
      :ImDrawList_PathClear => :void,
      :ImDrawList_PathLineTo => :void,
      :ImDrawList_PathLineToMergeDuplicate => :void,
      :ImDrawList_PathFillConvex => :void,
      :ImDrawList_PathFillConcave => :void,
      :ImDrawList_PathStroke => :void,
      :ImDrawList_PathArcTo => :void,
      :ImDrawList_PathArcToFast => :void,
      :ImDrawList_PathEllipticalArcTo => :void,
      :ImDrawList_PathEllipticalArcToEx => :void,
      :ImDrawList_PathBezierCubicCurveTo => :void,
      :ImDrawList_PathBezierQuadraticCurveTo => :void,
      :ImDrawList_PathRect => :void,
      :ImDrawList_AddCallback => :void,
      :ImDrawList_AddCallbackEx => :void,
      :ImDrawList_AddDrawCmd => :void,
      :ImDrawList_CloneOutput => :pointer,
      :ImDrawList_ChannelsSplit => :void,
      :ImDrawList_ChannelsMerge => :void,
      :ImDrawList_ChannelsSetCurrent => :void,
      :ImDrawList_PrimReserve => :void,
      :ImDrawList_PrimUnreserve => :void,
      :ImDrawList_PrimRect => :void,
      :ImDrawList_PrimRectUV => :void,
      :ImDrawList_PrimQuadUV => :void,
      :ImDrawList_PrimWriteVtx => :void,
      :ImDrawList_PrimWriteIdx => :void,
      :ImDrawList_PrimVtx => :void,
      :ImDrawList_PushTextureID => :void,
      :ImDrawList_PopTextureID => :void,
      :ImDrawList__SetDrawListSharedData => :void,
      :ImDrawList__ResetForNewFrame => :void,
      :ImDrawList__ClearFreeMemory => :void,
      :ImDrawList__PopUnusedDrawCmd => :void,
      :ImDrawList__TryMergeDrawCmds => :void,
      :ImDrawList__OnChangedClipRect => :void,
      :ImDrawList__OnChangedTexture => :void,
      :ImDrawList__OnChangedVtxOffset => :void,
      :ImDrawList__SetTexture => :void,
      :ImDrawList__CalcCircleAutoSegmentCount => :int,
      :ImDrawList__PathArcToFastEx => :void,
      :ImDrawList__PathArcToN => :void,
      :ImDrawData_Clear => :void,
      :ImDrawData_AddDrawList => :void,
      :ImDrawData_DeIndexAllBuffers => :void,
      :ImDrawData_ScaleClipRects => :void,
      :ImTextureData_Create => :void,
      :ImTextureData_DestroyPixels => :void,
      :ImTextureData_GetPixels => :pointer,
      :ImTextureData_GetPixelsAt => :pointer,
      :ImTextureData_GetSizeInBytes => :int,
      :ImTextureData_GetPitch => :int,
      :ImTextureData_GetTexRef => ImTextureRef.by_value,
      :ImTextureData_GetTexID => :uint64,
      :ImTextureData_SetTexID => :void,
      :ImTextureData_SetStatus => :void,
      :ImFontGlyphRangesBuilder_Clear => :void,
      :ImFontGlyphRangesBuilder_GetBit => :bool,
      :ImFontGlyphRangesBuilder_SetBit => :void,
      :ImFontGlyphRangesBuilder_AddChar => :void,
      :ImFontGlyphRangesBuilder_AddText => :void,
      :ImFontGlyphRangesBuilder_AddRanges => :void,
      :ImFontGlyphRangesBuilder_BuildRanges => :void,
      :ImFontAtlas_AddFont => :pointer,
      :ImFontAtlas_AddFontDefault => :pointer,
      :ImFontAtlas_AddFontDefaultVector => :pointer,
      :ImFontAtlas_AddFontDefaultBitmap => :pointer,
      :ImFontAtlas_AddFontFromFileTTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryTTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryCompressedTTF => :pointer,
      :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF => :pointer,
      :ImFontAtlas_RemoveFont => :void,
      :ImFontAtlas_Clear => :void,
      :ImFontAtlas_CompactCache => :void,
      :ImFontAtlas_SetFontLoader => :void,
      :ImFontAtlas_ClearInputData => :void,
      :ImFontAtlas_ClearFonts => :void,
      :ImFontAtlas_ClearTexData => :void,
      :ImFontAtlas_Build => :bool,
      :ImFontAtlas_GetTexDataAsAlpha8 => :void,
      :ImFontAtlas_GetTexDataAsRGBA32 => :void,
      :ImFontAtlas_SetTexID => :void,
      :ImFontAtlas_SetTexIDImTextureRef => :void,
      :ImFontAtlas_IsBuilt => :bool,
      :ImFontAtlas_GetGlyphRangesDefault => :pointer,
      :ImFontAtlas_GetGlyphRangesGreek => :pointer,
      :ImFontAtlas_GetGlyphRangesKorean => :pointer,
      :ImFontAtlas_GetGlyphRangesJapanese => :pointer,
      :ImFontAtlas_GetGlyphRangesChineseFull => :pointer,
      :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon => :pointer,
      :ImFontAtlas_GetGlyphRangesCyrillic => :pointer,
      :ImFontAtlas_GetGlyphRangesThai => :pointer,
      :ImFontAtlas_GetGlyphRangesVietnamese => :pointer,
      :ImFontAtlas_AddCustomRect => :int,
      :ImFontAtlas_RemoveCustomRect => :void,
      :ImFontAtlas_GetCustomRect => :bool,
      :ImFontAtlas_AddCustomRectRegular => :int,
      :ImFontAtlas_GetCustomRectByIndex => :pointer,
      :ImFontAtlas_CalcCustomRectUV => :void,
      :ImFontAtlas_AddCustomRectFontGlyph => :int,
      :ImFontAtlas_AddCustomRectFontGlyphForSize => :int,
      :ImFontBaked_ClearOutputData => :void,
      :ImFontBaked_FindGlyph => :pointer,
      :ImFontBaked_FindGlyphNoFallback => :pointer,
      :ImFontBaked_GetCharAdvance => :float,
      :ImFontBaked_IsGlyphLoaded => :bool,
      :ImFont_IsGlyphInFont => :bool,
      :ImFont_IsLoaded => :bool,
      :ImFont_GetDebugName => :pointer,
      :ImFont_GetFontBaked => :pointer,
      :ImFont_GetFontBakedEx => :pointer,
      :ImFont_CalcTextSizeA => ImVec2.by_value,
      :ImFont_CalcTextSizeAEx => ImVec2.by_value,
      :ImFont_CalcWordWrapPosition => :pointer,
      :ImFont_RenderChar => :void,
      :ImFont_RenderCharEx => :void,
      :ImFont_RenderText => :void,
      :ImFont_CalcWordWrapPositionA => :pointer,
      :ImFont_ClearOutputData => :void,
      :ImFont_AddRemapChar => :void,
      :ImFont_IsGlyphRangeUnused => :bool,
      :ImGuiViewport_GetCenter => ImVec2.by_value,
      :ImGuiViewport_GetWorkCenter => ImVec2.by_value,
      :ImGuiPlatformIO_ClearPlatformHandlers => :void,
      :ImGuiPlatformIO_ClearRendererHandlers => :void,
      :ImGui_PushFont => :void,
      :ImGui_SetWindowFontScale => :void,
      :ImGui_ImageImVec4 => :void,
      :ImGui_PushButtonRepeat => :void,
      :ImGui_PopButtonRepeat => :void,
      :ImGui_PushTabStop => :void,
      :ImGui_PopTabStop => :void,
      :ImGui_GetContentRegionMax => ImVec2.by_value,
      :ImGui_GetWindowContentRegionMin => ImVec2.by_value,
      :ImGui_GetWindowContentRegionMax => ImVec2.by_value,
    }

    symbols.each do |sym|
      begin
        attach_function sym, args[sym], retvals[sym]
      rescue FFI::NotFoundError
        $stderr.puts("[Warning] Failed to import #{sym}.\n") if output_error
      end
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

  # Overload functions

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
    $stderr.puts("[Warning] ImGui::SetWindowPos : No matching functions found (#{arg})")
  end

  def self.SetWindowSize(*arg)
    # arg: 0:size(ImVec2), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowSize(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:size(ImVec2), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowSizeStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::SetWindowSize : No matching functions found (#{arg})")
  end

  def self.SetWindowCollapsed(*arg)
    # arg: 0:collapsed(bool), 1:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowCollapsed(arg[0], arg[1]) if arg.length == 2 && ((arg[0].is_a?(TrueClass) || arg[0].is_a?(FalseClass)) && arg[1].kind_of?(Integer))
    # arg: 0:name(const char*), 1:collapsed(bool), 2:cond(ImGuiCond)
    # ret: void
    return ImGui_SetWindowCollapsedStr(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer))
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
    return ImGui_InputText(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(size_t) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t), 3:flags(ImGuiInputTextFlags), 4:callback(ImGuiInputTextCallback), 5:user_data(void*)
    # ret: bool
    return ImGui_InputTextEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(size_t) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputText : No matching functions found (#{arg})")
  end

  def self.InputTextMultiline(*arg)
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t)
    # ret: bool
    return ImGui_InputTextMultiline(arg[0], arg[1], arg[2]) if arg.length == 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(size_t))
    # arg: 0:label(const char*), 1:buf(char*), 2:buf_size(size_t), 3:size(ImVec2), 4:flags(ImGuiInputTextFlags), 5:callback(ImGuiInputTextCallback), 6:user_data(void*)
    # ret: bool
    return ImGui_InputTextMultilineEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(size_t) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(FFI::Pointer))
    $stderr.puts("[Warning] ImGui::InputTextMultiline : No matching functions found (#{arg})")
  end

  def self.InputTextWithHint(*arg)
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(size_t), 4:flags(ImGuiInputTextFlags)
    # ret: bool
    return ImGui_InputTextWithHint(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(size_t) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:hint(const char*), 2:buf(char*), 3:buf_size(size_t), 4:flags(ImGuiInputTextFlags), 5:callback(ImGuiInputTextCallback), 6:user_data(void*)
    # ret: bool
    return ImGui_InputTextWithHintEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]) if arg.length == 7 && (arg[0].kind_of?(String) && arg[1].kind_of?(String) && arg[2].kind_of?(String) && arg[3].kind_of?(size_t) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer) && arg[6].kind_of?(FFI::Pointer))
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
    return ImGui_InputDoubleEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(double) && arg[3].kind_of?(double) && arg[4].kind_of?(String) && arg[5].kind_of?(Integer))
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

  def self.IsKeyPressed(*arg)
    # arg: 0:key(ImGuiKey)
    # ret: bool
    return ImGui_IsKeyPressed(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:key(ImGuiKey), 1:repeat(bool)
    # ret: bool
    return ImGui_IsKeyPressedEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::IsKeyPressed : No matching functions found (#{arg})")
  end

  def self.IsMouseClicked(*arg)
    # arg: 0:button(ImGuiMouseButton)
    # ret: bool
    return ImGui_IsMouseClicked(arg[0]) if arg.length == 1 && (arg[0].kind_of?(Integer))
    # arg: 0:button(ImGuiMouseButton), 1:repeat(bool)
    # ret: bool
    return ImGui_IsMouseClickedEx(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)))
    $stderr.puts("[Warning] ImGui::IsMouseClicked : No matching functions found (#{arg})")
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

end # module ImGui
