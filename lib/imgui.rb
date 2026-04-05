# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

# defines
IMGUI_VERSION_NUM = 19250 # 19250
IM_UNICODE_CODEPOINT_INVALID = 65533 # 0xFFFD
IM_UNICODE_CODEPOINT_MAX = 65535 # 0xFFFF
IM_COL32_R_SHIFT = 16 # 16
IM_COL32_G_SHIFT = 8 # 8
IM_COL32_B_SHIFT = 0 # 0
IM_COL32_A_SHIFT = 24 # 24
IM_COL32_A_MASK = 4278190080 # 0xFF000000
IM_DRAWLIST_TEX_LINES_WIDTH_MAX = 32 # 32
ImFontAtlasRectId_Invalid = -1 # -1

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
FFI.typedef :int, :ImGuiSortDirection
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
FFI.typedef :int, :ImGuiDockNodeFlags
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
FFI.typedef :int, :ImGuiSelectionUserData
FFI.typedef :int, :ImTextureID
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
FFI.typedef :int, :ImGuiDockNodeFlags_
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
ImGuiWindowFlags_None = 0 # 0
ImGuiWindowFlags_NoTitleBar = 1 # 1
ImGuiWindowFlags_NoResize = 2 # 2
ImGuiWindowFlags_NoMove = 4 # 4
ImGuiWindowFlags_NoScrollbar = 8 # 8
ImGuiWindowFlags_NoScrollWithMouse = 16 # 16
ImGuiWindowFlags_NoCollapse = 32 # 32
ImGuiWindowFlags_AlwaysAutoResize = 64 # 64
ImGuiWindowFlags_NoBackground = 128 # 128
ImGuiWindowFlags_NoSavedSettings = 256 # 256
ImGuiWindowFlags_NoMouseInputs = 512 # 512
ImGuiWindowFlags_MenuBar = 1024 # 1024
ImGuiWindowFlags_HorizontalScrollbar = 2048 # 2048
ImGuiWindowFlags_NoFocusOnAppearing = 4096 # 4096
ImGuiWindowFlags_NoBringToFrontOnFocus = 8192 # 8192
ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384 # 16384
ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768 # 32768
ImGuiWindowFlags_NoNavInputs = 65536 # 65536
ImGuiWindowFlags_NoNavFocus = 131072 # 131072
ImGuiWindowFlags_UnsavedDocument = 262144 # 262144
ImGuiWindowFlags_NoDocking = 524288 # 524288
ImGuiWindowFlags_NoNav = 196608 # 196608
ImGuiWindowFlags_NoDecoration = 43 # 43
ImGuiWindowFlags_NoInputs = 197120 # 197120
ImGuiWindowFlags_DockNodeHost = 8388608 # 8388608
ImGuiWindowFlags_ChildWindow = 16777216 # 16777216
ImGuiWindowFlags_Tooltip = 33554432 # 33554432
ImGuiWindowFlags_Popup = 67108864 # 67108864
ImGuiWindowFlags_Modal = 134217728 # 134217728
ImGuiWindowFlags_ChildMenu = 268435456 # 268435456

# ImGuiChildFlags_
ImGuiChildFlags_None = 0 # 0
ImGuiChildFlags_Borders = 1 # 1
ImGuiChildFlags_AlwaysUseWindowPadding = 2 # 2
ImGuiChildFlags_ResizeX = 4 # 4
ImGuiChildFlags_ResizeY = 8 # 8
ImGuiChildFlags_AutoResizeX = 16 # 16
ImGuiChildFlags_AutoResizeY = 32 # 32
ImGuiChildFlags_AlwaysAutoResize = 64 # 64
ImGuiChildFlags_FrameStyle = 128 # 128
ImGuiChildFlags_NavFlattened = 256 # 256

# ImGuiItemFlags_
ImGuiItemFlags_None = 0 # 0
ImGuiItemFlags_NoTabStop = 1 # 1
ImGuiItemFlags_NoNav = 2 # 2
ImGuiItemFlags_NoNavDefaultFocus = 4 # 4
ImGuiItemFlags_ButtonRepeat = 8 # 8
ImGuiItemFlags_AutoClosePopups = 16 # 16
ImGuiItemFlags_AllowDuplicateId = 32 # 32

# ImGuiInputTextFlags_
ImGuiInputTextFlags_None = 0 # 0
ImGuiInputTextFlags_CharsDecimal = 1 # 1
ImGuiInputTextFlags_CharsHexadecimal = 2 # 2
ImGuiInputTextFlags_CharsScientific = 4 # 4
ImGuiInputTextFlags_CharsUppercase = 8 # 8
ImGuiInputTextFlags_CharsNoBlank = 16 # 16
ImGuiInputTextFlags_AllowTabInput = 32 # 32
ImGuiInputTextFlags_EnterReturnsTrue = 64 # 64
ImGuiInputTextFlags_EscapeClearsAll = 128 # 128
ImGuiInputTextFlags_CtrlEnterForNewLine = 256 # 256
ImGuiInputTextFlags_ReadOnly = 512 # 512
ImGuiInputTextFlags_Password = 1024 # 1024
ImGuiInputTextFlags_AlwaysOverwrite = 2048 # 2048
ImGuiInputTextFlags_AutoSelectAll = 4096 # 4096
ImGuiInputTextFlags_ParseEmptyRefVal = 8192 # 8192
ImGuiInputTextFlags_DisplayEmptyRefVal = 16384 # 16384
ImGuiInputTextFlags_NoHorizontalScroll = 32768 # 32768
ImGuiInputTextFlags_NoUndoRedo = 65536 # 65536
ImGuiInputTextFlags_ElideLeft = 131072 # 131072
ImGuiInputTextFlags_CallbackCompletion = 262144 # 262144
ImGuiInputTextFlags_CallbackHistory = 524288 # 524288
ImGuiInputTextFlags_CallbackAlways = 1048576 # 1048576
ImGuiInputTextFlags_CallbackCharFilter = 2097152 # 2097152
ImGuiInputTextFlags_CallbackResize = 4194304 # 4194304
ImGuiInputTextFlags_CallbackEdit = 8388608 # 8388608
ImGuiInputTextFlags_WordWrap = 16777216 # 16777216

# ImGuiTreeNodeFlags_
ImGuiTreeNodeFlags_None = 0 # 0
ImGuiTreeNodeFlags_Selected = 1 # 1
ImGuiTreeNodeFlags_Framed = 2 # 2
ImGuiTreeNodeFlags_AllowOverlap = 4 # 4
ImGuiTreeNodeFlags_NoTreePushOnOpen = 8 # 8
ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16 # 16
ImGuiTreeNodeFlags_DefaultOpen = 32 # 32
ImGuiTreeNodeFlags_OpenOnDoubleClick = 64 # 64
ImGuiTreeNodeFlags_OpenOnArrow = 128 # 128
ImGuiTreeNodeFlags_Leaf = 256 # 256
ImGuiTreeNodeFlags_Bullet = 512 # 512
ImGuiTreeNodeFlags_FramePadding = 1024 # 1024
ImGuiTreeNodeFlags_SpanAvailWidth = 2048 # 2048
ImGuiTreeNodeFlags_SpanFullWidth = 4096 # 4096
ImGuiTreeNodeFlags_SpanLabelWidth = 8192 # 8192
ImGuiTreeNodeFlags_SpanAllColumns = 16384 # 16384
ImGuiTreeNodeFlags_LabelSpanAllColumns = 32768 # 32768
ImGuiTreeNodeFlags_NavLeftJumpsToParent = 131072 # 131072
ImGuiTreeNodeFlags_CollapsingHeader = 26 # 26
ImGuiTreeNodeFlags_DrawLinesNone = 262144 # 262144
ImGuiTreeNodeFlags_DrawLinesFull = 524288 # 524288
ImGuiTreeNodeFlags_DrawLinesToNodes = 1048576 # 1048576
ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 131072 # 131072
ImGuiTreeNodeFlags_SpanTextWidth = 8192 # 8192

# ImGuiPopupFlags_
ImGuiPopupFlags_None = 0 # 0
ImGuiPopupFlags_MouseButtonLeft = 0 # 0
ImGuiPopupFlags_MouseButtonRight = 1 # 1
ImGuiPopupFlags_MouseButtonMiddle = 2 # 2
ImGuiPopupFlags_MouseButtonMask_ = 31 # 31
ImGuiPopupFlags_MouseButtonDefault_ = 1 # 1
ImGuiPopupFlags_NoReopen = 32 # 32
ImGuiPopupFlags_NoOpenOverExistingPopup = 128 # 128
ImGuiPopupFlags_NoOpenOverItems = 256 # 256
ImGuiPopupFlags_AnyPopupId = 1024 # 1024
ImGuiPopupFlags_AnyPopupLevel = 2048 # 2048
ImGuiPopupFlags_AnyPopup = 3072 # 3072

# ImGuiSelectableFlags_
ImGuiSelectableFlags_None = 0 # 0
ImGuiSelectableFlags_NoAutoClosePopups = 1 # 1
ImGuiSelectableFlags_SpanAllColumns = 2 # 2
ImGuiSelectableFlags_AllowDoubleClick = 4 # 4
ImGuiSelectableFlags_Disabled = 8 # 8
ImGuiSelectableFlags_AllowOverlap = 16 # 16
ImGuiSelectableFlags_Highlight = 32 # 32
ImGuiSelectableFlags_SelectOnNav = 64 # 64
ImGuiSelectableFlags_DontClosePopups = 1 # 1

# ImGuiComboFlags_
ImGuiComboFlags_None = 0 # 0
ImGuiComboFlags_PopupAlignLeft = 1 # 1
ImGuiComboFlags_HeightSmall = 2 # 2
ImGuiComboFlags_HeightRegular = 4 # 4
ImGuiComboFlags_HeightLarge = 8 # 8
ImGuiComboFlags_HeightLargest = 16 # 16
ImGuiComboFlags_NoArrowButton = 32 # 32
ImGuiComboFlags_NoPreview = 64 # 64
ImGuiComboFlags_WidthFitPreview = 128 # 128
ImGuiComboFlags_HeightMask_ = 30 # 30

# ImGuiTabBarFlags_
ImGuiTabBarFlags_None = 0 # 0
ImGuiTabBarFlags_Reorderable = 1 # 1
ImGuiTabBarFlags_AutoSelectNewTabs = 2 # 2
ImGuiTabBarFlags_TabListPopupButton = 4 # 4
ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8 # 8
ImGuiTabBarFlags_NoTabListScrollingButtons = 16 # 16
ImGuiTabBarFlags_NoTooltip = 32 # 32
ImGuiTabBarFlags_DrawSelectedOverline = 64 # 64
ImGuiTabBarFlags_FittingPolicyMixed = 128 # 128
ImGuiTabBarFlags_FittingPolicyShrink = 256 # 256
ImGuiTabBarFlags_FittingPolicyScroll = 512 # 512
ImGuiTabBarFlags_FittingPolicyMask_ = 896 # 896
ImGuiTabBarFlags_FittingPolicyDefault_ = 128 # 128
ImGuiTabBarFlags_FittingPolicyResizeDown = 256 # 256

# ImGuiTabItemFlags_
ImGuiTabItemFlags_None = 0 # 0
ImGuiTabItemFlags_UnsavedDocument = 1 # 1
ImGuiTabItemFlags_SetSelected = 2 # 2
ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4 # 4
ImGuiTabItemFlags_NoPushId = 8 # 8
ImGuiTabItemFlags_NoTooltip = 16 # 16
ImGuiTabItemFlags_NoReorder = 32 # 32
ImGuiTabItemFlags_Leading = 64 # 64
ImGuiTabItemFlags_Trailing = 128 # 128
ImGuiTabItemFlags_NoAssumedClosure = 256 # 256

# ImGuiFocusedFlags_
ImGuiFocusedFlags_None = 0 # 0
ImGuiFocusedFlags_ChildWindows = 1 # 1
ImGuiFocusedFlags_RootWindow = 2 # 2
ImGuiFocusedFlags_AnyWindow = 4 # 4
ImGuiFocusedFlags_NoPopupHierarchy = 8 # 8
ImGuiFocusedFlags_DockHierarchy = 16 # 16
ImGuiFocusedFlags_RootAndChildWindows = 3 # 3

# ImGuiHoveredFlags_
ImGuiHoveredFlags_None = 0 # 0
ImGuiHoveredFlags_ChildWindows = 1 # 1
ImGuiHoveredFlags_RootWindow = 2 # 2
ImGuiHoveredFlags_AnyWindow = 4 # 4
ImGuiHoveredFlags_NoPopupHierarchy = 8 # 8
ImGuiHoveredFlags_DockHierarchy = 16 # 16
ImGuiHoveredFlags_AllowWhenBlockedByPopup = 32 # 32
ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 128 # 128
ImGuiHoveredFlags_AllowWhenOverlappedByItem = 256 # 256
ImGuiHoveredFlags_AllowWhenOverlappedByWindow = 512 # 512
ImGuiHoveredFlags_AllowWhenDisabled = 1024 # 1024
ImGuiHoveredFlags_NoNavOverride = 2048 # 2048
ImGuiHoveredFlags_AllowWhenOverlapped = 768 # 768
ImGuiHoveredFlags_RectOnly = 928 # 928
ImGuiHoveredFlags_RootAndChildWindows = 3 # 3
ImGuiHoveredFlags_ForTooltip = 4096 # 4096
ImGuiHoveredFlags_Stationary = 8192 # 8192
ImGuiHoveredFlags_DelayNone = 16384 # 16384
ImGuiHoveredFlags_DelayShort = 32768 # 32768
ImGuiHoveredFlags_DelayNormal = 65536 # 65536
ImGuiHoveredFlags_NoSharedDelay = 131072 # 131072

# ImGuiDockNodeFlags_
ImGuiDockNodeFlags_None = 0 # 0
ImGuiDockNodeFlags_KeepAliveOnly = 1 # 1
ImGuiDockNodeFlags_NoDockingOverCentralNode = 4 # 4
ImGuiDockNodeFlags_PassthruCentralNode = 8 # 8
ImGuiDockNodeFlags_NoDockingSplit = 16 # 16
ImGuiDockNodeFlags_NoResize = 32 # 32
ImGuiDockNodeFlags_AutoHideTabBar = 64 # 64
ImGuiDockNodeFlags_NoUndocking = 128 # 128
ImGuiDockNodeFlags_NoSplit = 16 # 16
ImGuiDockNodeFlags_NoDockingInCentralNode = 4 # 4

# ImGuiDragDropFlags_
ImGuiDragDropFlags_None = 0 # 0
ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 # 1
ImGuiDragDropFlags_SourceNoDisableHover = 2 # 2
ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4 # 4
ImGuiDragDropFlags_SourceAllowNullID = 8 # 8
ImGuiDragDropFlags_SourceExtern = 16 # 16
ImGuiDragDropFlags_PayloadAutoExpire = 32 # 32
ImGuiDragDropFlags_PayloadNoCrossContext = 64 # 64
ImGuiDragDropFlags_PayloadNoCrossProcess = 128 # 128
ImGuiDragDropFlags_AcceptBeforeDelivery = 1024 # 1024
ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048 # 2048
ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096 # 4096
ImGuiDragDropFlags_AcceptDrawAsHovered = 8192 # 8192
ImGuiDragDropFlags_AcceptPeekOnly = 3072 # 3072
ImGuiDragDropFlags_SourceAutoExpirePayload = 32 # 32

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
ImGuiDataType_Bool = 10 # 10
ImGuiDataType_String = 11 # 11
ImGuiDataType_COUNT = 12 # 12

# ImGuiDir
ImGuiDir_None = -1 # -1
ImGuiDir_Left = 0 # 0
ImGuiDir_Right = 1 # 1
ImGuiDir_Up = 2 # 2
ImGuiDir_Down = 3 # 3
ImGuiDir_COUNT = 4 # 4

# ImGuiSortDirection
ImGuiSortDirection_None = 0 # 0
ImGuiSortDirection_Ascending = 1 # 1
ImGuiSortDirection_Descending = 2 # 2

# ImGuiKey
ImGuiKey_None = 0 # 0
ImGuiKey_NamedKey_BEGIN = 512 # 512
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
ImGuiKey_F13 = 584 # 584
ImGuiKey_F14 = 585 # 585
ImGuiKey_F15 = 586 # 586
ImGuiKey_F16 = 587 # 587
ImGuiKey_F17 = 588 # 588
ImGuiKey_F18 = 589 # 589
ImGuiKey_F19 = 590 # 590
ImGuiKey_F20 = 591 # 591
ImGuiKey_F21 = 592 # 592
ImGuiKey_F22 = 593 # 593
ImGuiKey_F23 = 594 # 594
ImGuiKey_F24 = 595 # 595
ImGuiKey_Apostrophe = 596 # 596
ImGuiKey_Comma = 597 # 597
ImGuiKey_Minus = 598 # 598
ImGuiKey_Period = 599 # 599
ImGuiKey_Slash = 600 # 600
ImGuiKey_Semicolon = 601 # 601
ImGuiKey_Equal = 602 # 602
ImGuiKey_LeftBracket = 603 # 603
ImGuiKey_Backslash = 604 # 604
ImGuiKey_RightBracket = 605 # 605
ImGuiKey_GraveAccent = 606 # 606
ImGuiKey_CapsLock = 607 # 607
ImGuiKey_ScrollLock = 608 # 608
ImGuiKey_NumLock = 609 # 609
ImGuiKey_PrintScreen = 610 # 610
ImGuiKey_Pause = 611 # 611
ImGuiKey_Keypad0 = 612 # 612
ImGuiKey_Keypad1 = 613 # 613
ImGuiKey_Keypad2 = 614 # 614
ImGuiKey_Keypad3 = 615 # 615
ImGuiKey_Keypad4 = 616 # 616
ImGuiKey_Keypad5 = 617 # 617
ImGuiKey_Keypad6 = 618 # 618
ImGuiKey_Keypad7 = 619 # 619
ImGuiKey_Keypad8 = 620 # 620
ImGuiKey_Keypad9 = 621 # 621
ImGuiKey_KeypadDecimal = 622 # 622
ImGuiKey_KeypadDivide = 623 # 623
ImGuiKey_KeypadMultiply = 624 # 624
ImGuiKey_KeypadSubtract = 625 # 625
ImGuiKey_KeypadAdd = 626 # 626
ImGuiKey_KeypadEnter = 627 # 627
ImGuiKey_KeypadEqual = 628 # 628
ImGuiKey_AppBack = 629 # 629
ImGuiKey_AppForward = 630 # 630
ImGuiKey_Oem102 = 631 # 631
ImGuiKey_GamepadStart = 632 # 632
ImGuiKey_GamepadBack = 633 # 633
ImGuiKey_GamepadFaceLeft = 634 # 634
ImGuiKey_GamepadFaceRight = 635 # 635
ImGuiKey_GamepadFaceUp = 636 # 636
ImGuiKey_GamepadFaceDown = 637 # 637
ImGuiKey_GamepadDpadLeft = 638 # 638
ImGuiKey_GamepadDpadRight = 639 # 639
ImGuiKey_GamepadDpadUp = 640 # 640
ImGuiKey_GamepadDpadDown = 641 # 641
ImGuiKey_GamepadL1 = 642 # 642
ImGuiKey_GamepadR1 = 643 # 643
ImGuiKey_GamepadL2 = 644 # 644
ImGuiKey_GamepadR2 = 645 # 645
ImGuiKey_GamepadL3 = 646 # 646
ImGuiKey_GamepadR3 = 647 # 647
ImGuiKey_GamepadLStickLeft = 648 # 648
ImGuiKey_GamepadLStickRight = 649 # 649
ImGuiKey_GamepadLStickUp = 650 # 650
ImGuiKey_GamepadLStickDown = 651 # 651
ImGuiKey_GamepadRStickLeft = 652 # 652
ImGuiKey_GamepadRStickRight = 653 # 653
ImGuiKey_GamepadRStickUp = 654 # 654
ImGuiKey_GamepadRStickDown = 655 # 655
ImGuiKey_MouseLeft = 656 # 656
ImGuiKey_MouseRight = 657 # 657
ImGuiKey_MouseMiddle = 658 # 658
ImGuiKey_MouseX1 = 659 # 659
ImGuiKey_MouseX2 = 660 # 660
ImGuiKey_MouseWheelX = 661 # 661
ImGuiKey_MouseWheelY = 662 # 662
ImGuiKey_ReservedForModCtrl = 663 # 663
ImGuiKey_ReservedForModShift = 664 # 664
ImGuiKey_ReservedForModAlt = 665 # 665
ImGuiKey_ReservedForModSuper = 666 # 666
ImGuiKey_NamedKey_END = 667 # 667
ImGuiKey_NamedKey_COUNT = 155 # 155
ImGuiMod_None = 0 # 0
ImGuiMod_Ctrl = 4096 # 4096
ImGuiMod_Shift = 8192 # 8192
ImGuiMod_Alt = 16384 # 16384
ImGuiMod_Super = 32768 # 32768
ImGuiMod_Mask_ = 61440 # 61440
ImGuiKey_COUNT = 667 # 667

# ImGuiInputFlags_
ImGuiInputFlags_None = 0 # 0
ImGuiInputFlags_Repeat = 1 # 1
ImGuiInputFlags_RouteActive = 1024 # 1024
ImGuiInputFlags_RouteFocused = 2048 # 2048
ImGuiInputFlags_RouteGlobal = 4096 # 4096
ImGuiInputFlags_RouteAlways = 8192 # 8192
ImGuiInputFlags_RouteOverFocused = 16384 # 16384
ImGuiInputFlags_RouteOverActive = 32768 # 32768
ImGuiInputFlags_RouteUnlessBgFocused = 65536 # 65536
ImGuiInputFlags_RouteFromRootWindow = 131072 # 131072
ImGuiInputFlags_Tooltip = 262144 # 262144

# ImGuiConfigFlags_
ImGuiConfigFlags_None = 0 # 0
ImGuiConfigFlags_NavEnableKeyboard = 1 # 1
ImGuiConfigFlags_NavEnableGamepad = 2 # 2
ImGuiConfigFlags_NoMouse = 16 # 16
ImGuiConfigFlags_NoMouseCursorChange = 32 # 32
ImGuiConfigFlags_NoKeyboard = 64 # 64
ImGuiConfigFlags_DockingEnable = 128 # 128
ImGuiConfigFlags_ViewportsEnable = 1024 # 1024
ImGuiConfigFlags_IsSRGB = 1048576 # 1048576
ImGuiConfigFlags_IsTouchScreen = 2097152 # 2097152
ImGuiConfigFlags_NavEnableSetMousePos = 4 # 4
ImGuiConfigFlags_NavNoCaptureKeyboard = 8 # 8
ImGuiConfigFlags_DpiEnableScaleFonts = 16384 # 16384
ImGuiConfigFlags_DpiEnableScaleViewports = 32768 # 32768

# ImGuiBackendFlags_
ImGuiBackendFlags_None = 0 # 0
ImGuiBackendFlags_HasGamepad = 1 # 1
ImGuiBackendFlags_HasMouseCursors = 2 # 2
ImGuiBackendFlags_HasSetMousePos = 4 # 4
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 8
ImGuiBackendFlags_RendererHasTextures = 16 # 16
ImGuiBackendFlags_RendererHasViewports = 1024 # 1024
ImGuiBackendFlags_PlatformHasViewports = 2048 # 2048
ImGuiBackendFlags_HasMouseHoveredViewport = 4096 # 4096
ImGuiBackendFlags_HasParentViewport = 8192 # 8192

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
ImGuiCol_InputTextCursor = 33 # 33
ImGuiCol_TabHovered = 34 # 34
ImGuiCol_Tab = 35 # 35
ImGuiCol_TabSelected = 36 # 36
ImGuiCol_TabSelectedOverline = 37 # 37
ImGuiCol_TabDimmed = 38 # 38
ImGuiCol_TabDimmedSelected = 39 # 39
ImGuiCol_TabDimmedSelectedOverline = 40 # 40
ImGuiCol_DockingPreview = 41 # 41
ImGuiCol_DockingEmptyBg = 42 # 42
ImGuiCol_PlotLines = 43 # 43
ImGuiCol_PlotLinesHovered = 44 # 44
ImGuiCol_PlotHistogram = 45 # 45
ImGuiCol_PlotHistogramHovered = 46 # 46
ImGuiCol_TableHeaderBg = 47 # 47
ImGuiCol_TableBorderStrong = 48 # 48
ImGuiCol_TableBorderLight = 49 # 49
ImGuiCol_TableRowBg = 50 # 50
ImGuiCol_TableRowBgAlt = 51 # 51
ImGuiCol_TextLink = 52 # 52
ImGuiCol_TextSelectedBg = 53 # 53
ImGuiCol_TreeLines = 54 # 54
ImGuiCol_DragDropTarget = 55 # 55
ImGuiCol_DragDropTargetBg = 56 # 56
ImGuiCol_UnsavedMarker = 57 # 57
ImGuiCol_NavCursor = 58 # 58
ImGuiCol_NavWindowingHighlight = 59 # 59
ImGuiCol_NavWindowingDimBg = 60 # 60
ImGuiCol_ModalWindowDimBg = 61 # 61
ImGuiCol_COUNT = 62 # 62
ImGuiCol_TabActive = 36 # 36
ImGuiCol_TabUnfocused = 38 # 38
ImGuiCol_TabUnfocusedActive = 39 # 39
ImGuiCol_NavHighlight = 58 # 58

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
ImGuiStyleVar_ScrollbarPadding = 20 # 20
ImGuiStyleVar_GrabMinSize = 21 # 21
ImGuiStyleVar_GrabRounding = 22 # 22
ImGuiStyleVar_ImageBorderSize = 23 # 23
ImGuiStyleVar_TabRounding = 24 # 24
ImGuiStyleVar_TabBorderSize = 25 # 25
ImGuiStyleVar_TabMinWidthBase = 26 # 26
ImGuiStyleVar_TabMinWidthShrink = 27 # 27
ImGuiStyleVar_TabBarBorderSize = 28 # 28
ImGuiStyleVar_TabBarOverlineSize = 29 # 29
ImGuiStyleVar_TableAngledHeadersAngle = 30 # 30
ImGuiStyleVar_TableAngledHeadersTextAlign = 31 # 31
ImGuiStyleVar_TreeLinesSize = 32 # 32
ImGuiStyleVar_TreeLinesRounding = 33 # 33
ImGuiStyleVar_ButtonTextAlign = 34 # 34
ImGuiStyleVar_SelectableTextAlign = 35 # 35
ImGuiStyleVar_SeparatorTextBorderSize = 36 # 36
ImGuiStyleVar_SeparatorTextAlign = 37 # 37
ImGuiStyleVar_SeparatorTextPadding = 38 # 38
ImGuiStyleVar_DockingSeparatorSize = 39 # 39
ImGuiStyleVar_COUNT = 40 # 40

# ImGuiButtonFlags_
ImGuiButtonFlags_None = 0 # 0
ImGuiButtonFlags_MouseButtonLeft = 1 # 1
ImGuiButtonFlags_MouseButtonRight = 2 # 2
ImGuiButtonFlags_MouseButtonMiddle = 4 # 4
ImGuiButtonFlags_MouseButtonMask_ = 7 # 7
ImGuiButtonFlags_EnableNav = 8 # 8

# ImGuiColorEditFlags_
ImGuiColorEditFlags_None = 0 # 0
ImGuiColorEditFlags_NoAlpha = 2 # 2
ImGuiColorEditFlags_NoPicker = 4 # 4
ImGuiColorEditFlags_NoOptions = 8 # 8
ImGuiColorEditFlags_NoSmallPreview = 16 # 16
ImGuiColorEditFlags_NoInputs = 32 # 32
ImGuiColorEditFlags_NoTooltip = 64 # 64
ImGuiColorEditFlags_NoLabel = 128 # 128
ImGuiColorEditFlags_NoSidePreview = 256 # 256
ImGuiColorEditFlags_NoDragDrop = 512 # 512
ImGuiColorEditFlags_NoBorder = 1024 # 1024
ImGuiColorEditFlags_AlphaOpaque = 2048 # 2048
ImGuiColorEditFlags_AlphaNoBg = 4096 # 4096
ImGuiColorEditFlags_AlphaPreviewHalf = 8192 # 8192
ImGuiColorEditFlags_AlphaBar = 65536 # 65536
ImGuiColorEditFlags_HDR = 524288 # 524288
ImGuiColorEditFlags_DisplayRGB = 1048576 # 1048576
ImGuiColorEditFlags_DisplayHSV = 2097152 # 2097152
ImGuiColorEditFlags_DisplayHex = 4194304 # 4194304
ImGuiColorEditFlags_Uint8 = 8388608 # 8388608
ImGuiColorEditFlags_Float = 16777216 # 16777216
ImGuiColorEditFlags_PickerHueBar = 33554432 # 33554432
ImGuiColorEditFlags_PickerHueWheel = 67108864 # 67108864
ImGuiColorEditFlags_InputRGB = 134217728 # 134217728
ImGuiColorEditFlags_InputHSV = 268435456 # 268435456
ImGuiColorEditFlags_DefaultOptions_ = 177209344 # 177209344
ImGuiColorEditFlags_AlphaMask_ = 14338 # 14338
ImGuiColorEditFlags_DisplayMask_ = 7340032 # 7340032
ImGuiColorEditFlags_DataTypeMask_ = 25165824 # 25165824
ImGuiColorEditFlags_PickerMask_ = 100663296 # 100663296
ImGuiColorEditFlags_InputMask_ = 402653184 # 402653184
ImGuiColorEditFlags_AlphaPreview = 0 # 0

# ImGuiSliderFlags_
ImGuiSliderFlags_None = 0 # 0
ImGuiSliderFlags_Logarithmic = 32 # 32
ImGuiSliderFlags_NoRoundToFormat = 64 # 64
ImGuiSliderFlags_NoInput = 128 # 128
ImGuiSliderFlags_WrapAround = 256 # 256
ImGuiSliderFlags_ClampOnInput = 512 # 512
ImGuiSliderFlags_ClampZeroRange = 1024 # 1024
ImGuiSliderFlags_NoSpeedTweaks = 2048 # 2048
ImGuiSliderFlags_AlwaysClamp = 1536 # 1536
ImGuiSliderFlags_InvalidMask_ = 1879048207 # 1879048207

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
ImGuiMouseCursor_Wait = 8 # 8
ImGuiMouseCursor_Progress = 9 # 9
ImGuiMouseCursor_NotAllowed = 10 # 10
ImGuiMouseCursor_COUNT = 11 # 11

# ImGuiMouseSource
ImGuiMouseSource_Mouse = 0 # 0
ImGuiMouseSource_TouchScreen = 1 # 1
ImGuiMouseSource_Pen = 2 # 2
ImGuiMouseSource_COUNT = 3 # 3

# ImGuiCond_
ImGuiCond_None = 0 # 0
ImGuiCond_Always = 1 # 1
ImGuiCond_Once = 2 # 2
ImGuiCond_FirstUseEver = 4 # 4
ImGuiCond_Appearing = 8 # 8

# ImGuiTableFlags_
ImGuiTableFlags_None = 0 # 0
ImGuiTableFlags_Resizable = 1 # 1
ImGuiTableFlags_Reorderable = 2 # 2
ImGuiTableFlags_Hideable = 4 # 4
ImGuiTableFlags_Sortable = 8 # 8
ImGuiTableFlags_NoSavedSettings = 16 # 16
ImGuiTableFlags_ContextMenuInBody = 32 # 32
ImGuiTableFlags_RowBg = 64 # 64
ImGuiTableFlags_BordersInnerH = 128 # 128
ImGuiTableFlags_BordersOuterH = 256 # 256
ImGuiTableFlags_BordersInnerV = 512 # 512
ImGuiTableFlags_BordersOuterV = 1024 # 1024
ImGuiTableFlags_BordersH = 384 # 384
ImGuiTableFlags_BordersV = 1536 # 1536
ImGuiTableFlags_BordersInner = 640 # 640
ImGuiTableFlags_BordersOuter = 1280 # 1280
ImGuiTableFlags_Borders = 1920 # 1920
ImGuiTableFlags_NoBordersInBody = 2048 # 2048
ImGuiTableFlags_NoBordersInBodyUntilResize = 4096 # 4096
ImGuiTableFlags_SizingFixedFit = 8192 # 8192
ImGuiTableFlags_SizingFixedSame = 16384 # 16384
ImGuiTableFlags_SizingStretchProp = 24576 # 24576
ImGuiTableFlags_SizingStretchSame = 32768 # 32768
ImGuiTableFlags_NoHostExtendX = 65536 # 65536
ImGuiTableFlags_NoHostExtendY = 131072 # 131072
ImGuiTableFlags_NoKeepColumnsVisible = 262144 # 262144
ImGuiTableFlags_PreciseWidths = 524288 # 524288
ImGuiTableFlags_NoClip = 1048576 # 1048576
ImGuiTableFlags_PadOuterX = 2097152 # 2097152
ImGuiTableFlags_NoPadOuterX = 4194304 # 4194304
ImGuiTableFlags_NoPadInnerX = 8388608 # 8388608
ImGuiTableFlags_ScrollX = 16777216 # 16777216
ImGuiTableFlags_ScrollY = 33554432 # 33554432
ImGuiTableFlags_SortMulti = 67108864 # 67108864
ImGuiTableFlags_SortTristate = 134217728 # 134217728
ImGuiTableFlags_HighlightHoveredColumn = 268435456 # 268435456
ImGuiTableFlags_SizingMask_ = 57344 # 57344

# ImGuiTableColumnFlags_
ImGuiTableColumnFlags_None = 0 # 0
ImGuiTableColumnFlags_Disabled = 1 # 1
ImGuiTableColumnFlags_DefaultHide = 2 # 2
ImGuiTableColumnFlags_DefaultSort = 4 # 4
ImGuiTableColumnFlags_WidthStretch = 8 # 8
ImGuiTableColumnFlags_WidthFixed = 16 # 16
ImGuiTableColumnFlags_NoResize = 32 # 32
ImGuiTableColumnFlags_NoReorder = 64 # 64
ImGuiTableColumnFlags_NoHide = 128 # 128
ImGuiTableColumnFlags_NoClip = 256 # 256
ImGuiTableColumnFlags_NoSort = 512 # 512
ImGuiTableColumnFlags_NoSortAscending = 1024 # 1024
ImGuiTableColumnFlags_NoSortDescending = 2048 # 2048
ImGuiTableColumnFlags_NoHeaderLabel = 4096 # 4096
ImGuiTableColumnFlags_NoHeaderWidth = 8192 # 8192
ImGuiTableColumnFlags_PreferSortAscending = 16384 # 16384
ImGuiTableColumnFlags_PreferSortDescending = 32768 # 32768
ImGuiTableColumnFlags_IndentEnable = 65536 # 65536
ImGuiTableColumnFlags_IndentDisable = 131072 # 131072
ImGuiTableColumnFlags_AngledHeader = 262144 # 262144
ImGuiTableColumnFlags_IsEnabled = 16777216 # 16777216
ImGuiTableColumnFlags_IsVisible = 33554432 # 33554432
ImGuiTableColumnFlags_IsSorted = 67108864 # 67108864
ImGuiTableColumnFlags_IsHovered = 134217728 # 134217728
ImGuiTableColumnFlags_WidthMask_ = 24 # 24
ImGuiTableColumnFlags_IndentMask_ = 196608 # 196608
ImGuiTableColumnFlags_StatusMask_ = 251658240 # 251658240
ImGuiTableColumnFlags_NoDirectResize_ = 1073741824 # 1073741824

# ImGuiTableRowFlags_
ImGuiTableRowFlags_None = 0 # 0
ImGuiTableRowFlags_Headers = 1 # 1

# ImGuiTableBgTarget_
ImGuiTableBgTarget_None = 0 # 0
ImGuiTableBgTarget_RowBg0 = 1 # 1
ImGuiTableBgTarget_RowBg1 = 2 # 2
ImGuiTableBgTarget_CellBg = 3 # 3

# ImGuiListClipperFlags_
ImGuiListClipperFlags_None = 0 # 0
ImGuiListClipperFlags_NoSetTableRowCounters = 1 # 1

# ImGuiMultiSelectFlags_
ImGuiMultiSelectFlags_None = 0 # 0
ImGuiMultiSelectFlags_SingleSelect = 1 # 1
ImGuiMultiSelectFlags_NoSelectAll = 2 # 2
ImGuiMultiSelectFlags_NoRangeSelect = 4 # 4
ImGuiMultiSelectFlags_NoAutoSelect = 8 # 8
ImGuiMultiSelectFlags_NoAutoClear = 16 # 16
ImGuiMultiSelectFlags_NoAutoClearOnReselect = 32 # 32
ImGuiMultiSelectFlags_BoxSelect1d = 64 # 64
ImGuiMultiSelectFlags_BoxSelect2d = 128 # 128
ImGuiMultiSelectFlags_BoxSelectNoScroll = 256 # 256
ImGuiMultiSelectFlags_ClearOnEscape = 512 # 512
ImGuiMultiSelectFlags_ClearOnClickVoid = 1024 # 1024
ImGuiMultiSelectFlags_ScopeWindow = 2048 # 2048
ImGuiMultiSelectFlags_ScopeRect = 4096 # 4096
ImGuiMultiSelectFlags_SelectOnClick = 8192 # 8192
ImGuiMultiSelectFlags_SelectOnClickRelease = 16384 # 16384
ImGuiMultiSelectFlags_NavWrapX = 65536 # 65536
ImGuiMultiSelectFlags_NoSelectOnRightClick = 131072 # 131072

# ImGuiSelectionRequestType
ImGuiSelectionRequestType_None = 0 # 0
ImGuiSelectionRequestType_SetAll = 1 # 1
ImGuiSelectionRequestType_SetRange = 2 # 2

# ImDrawFlags_
ImDrawFlags_None = 0 # 0
ImDrawFlags_Closed = 1 # 1
ImDrawFlags_RoundCornersTopLeft = 16 # 16
ImDrawFlags_RoundCornersTopRight = 32 # 32
ImDrawFlags_RoundCornersBottomLeft = 64 # 64
ImDrawFlags_RoundCornersBottomRight = 128 # 128
ImDrawFlags_RoundCornersNone = 256 # 256
ImDrawFlags_RoundCornersTop = 48 # 48
ImDrawFlags_RoundCornersBottom = 192 # 192
ImDrawFlags_RoundCornersLeft = 80 # 80
ImDrawFlags_RoundCornersRight = 160 # 160
ImDrawFlags_RoundCornersAll = 240 # 240
ImDrawFlags_RoundCornersDefault_ = 240 # 240
ImDrawFlags_RoundCornersMask_ = 496 # 496

# ImDrawListFlags_
ImDrawListFlags_None = 0 # 0
ImDrawListFlags_AntiAliasedLines = 1 # 1
ImDrawListFlags_AntiAliasedLinesUseTex = 2 # 2
ImDrawListFlags_AntiAliasedFill = 4 # 4
ImDrawListFlags_AllowVtxOffset = 8 # 8

# ImTextureFormat
ImTextureFormat_RGBA32 = 0 # 0
ImTextureFormat_Alpha8 = 1 # 1

# ImTextureStatus
ImTextureStatus_OK = 0 # 0
ImTextureStatus_Destroyed = 1 # 1
ImTextureStatus_WantCreate = 2 # 2
ImTextureStatus_WantUpdates = 3 # 3
ImTextureStatus_WantDestroy = 4 # 4

# ImFontAtlasFlags_
ImFontAtlasFlags_None = 0 # 0
ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 1
ImFontAtlasFlags_NoMouseCursors = 2 # 2
ImFontAtlasFlags_NoBakedLines = 4 # 4

# ImFontFlags_
ImFontFlags_None = 0 # 0
ImFontFlags_NoLoadError = 2 # 2
ImFontFlags_NoLoadGlyphs = 4 # 4
ImFontFlags_LockBakedSizes = 8 # 8

# ImGuiViewportFlags_
ImGuiViewportFlags_None = 0 # 0
ImGuiViewportFlags_IsPlatformWindow = 1 # 1
ImGuiViewportFlags_IsPlatformMonitor = 2 # 2
ImGuiViewportFlags_OwnedByApp = 4 # 4
ImGuiViewportFlags_NoDecoration = 8 # 8
ImGuiViewportFlags_NoTaskBarIcon = 16 # 16
ImGuiViewportFlags_NoFocusOnAppearing = 32 # 32
ImGuiViewportFlags_NoFocusOnClick = 64 # 64
ImGuiViewportFlags_NoInputs = 128 # 128
ImGuiViewportFlags_NoRendererClear = 256 # 256
ImGuiViewportFlags_NoAutoMerge = 512 # 512
ImGuiViewportFlags_TopMost = 1024 # 1024
ImGuiViewportFlags_CanHostOtherWindows = 2048 # 2048
ImGuiViewportFlags_IsMinimized = 4096 # 4096
ImGuiViewportFlags_IsFocused = 8192 # 8192


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
    :_TexID, :int
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

  def AddLineEx(p1, p2, col, thickness = 1.0)
    ImGui::ImDrawList_AddLineEx(self, p1, p2, col, thickness)
  end

  def AddRectEx(p_min, p_max, col, rounding = 0.0, flags = 0, thickness = 1.0)
    ImGui::ImDrawList_AddRectEx(self, p_min, p_max, col, rounding, flags, thickness)
  end

  def AddRectFilledEx(p_min, p_max, col, rounding = 0.0, flags = 0)
    ImGui::ImDrawList_AddRectFilledEx(self, p_min, p_max, col, rounding, flags)
  end

  def AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
    ImGui::ImDrawList_AddRectFilledMultiColor(self, p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
  end

  def AddQuadEx(p1, p2, p3, p4, col, thickness = 1.0)
    ImGui::ImDrawList_AddQuadEx(self, p1, p2, p3, p4, col, thickness)
  end

  def AddQuadFilled(p1, p2, p3, p4, col)
    ImGui::ImDrawList_AddQuadFilled(self, p1, p2, p3, p4, col)
  end

  def AddTriangleEx(p1, p2, p3, col, thickness = 1.0)
    ImGui::ImDrawList_AddTriangleEx(self, p1, p2, p3, col, thickness)
  end

  def AddTriangleFilled(p1, p2, p3, col)
    ImGui::ImDrawList_AddTriangleFilled(self, p1, p2, p3, col)
  end

  def AddCircleEx(center, radius, col, num_segments = 0, thickness = 1.0)
    ImGui::ImDrawList_AddCircleEx(self, center, radius, col, num_segments, thickness)
  end

  def AddCircleFilled(center, radius, col, num_segments = 0)
    ImGui::ImDrawList_AddCircleFilled(self, center, radius, col, num_segments)
  end

  def AddNgonEx(center, radius, col, num_segments, thickness = 1.0)
    ImGui::ImDrawList_AddNgonEx(self, center, radius, col, num_segments, thickness)
  end

  def AddNgonFilled(center, radius, col, num_segments)
    ImGui::ImDrawList_AddNgonFilled(self, center, radius, col, num_segments)
  end

  def AddEllipseEx(center, radius, col, rot = 0.0, num_segments = 0, thickness = 1.0)
    ImGui::ImDrawList_AddEllipseEx(self, center, radius, col, rot, num_segments, thickness)
  end

  def AddEllipseFilledEx(center, radius, col, rot = 0.0, num_segments = 0)
    ImGui::ImDrawList_AddEllipseFilledEx(self, center, radius, col, rot, num_segments)
  end

  def AddTextEx(pos, col, text_begin, text_end = nil)
    ImGui::ImDrawList_AddTextEx(self, pos, col, text_begin, text_end)
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

  def AddImageEx(tex_ref, p_min, p_max, uv_min = ImVec2.create(0,0), uv_max = ImVec2.create(1,1), col = IM_COL32_WHITE)
    ImGui::ImDrawList_AddImageEx(self, tex_ref, p_min, p_max, uv_min, uv_max, col)
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
    :SortDirection, :int
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

class ImVector_ImGuiPlatformMonitor < FFI::Struct
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

class ImVector_ImGuiViewportPtr < FFI::Struct
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
    :ColorButtonPosition, :int,
    :ButtonTextAlign, ImVec2.by_value,
    :SelectableTextAlign, ImVec2.by_value,
    :SeparatorTextBorderSize, :float,
    :SeparatorTextAlign, ImVec2.by_value,
    :SeparatorTextPadding, ImVec2.by_value,
    :DisplayWindowPadding, ImVec2.by_value,
    :DisplaySafeAreaPadding, ImVec2.by_value,
    :DockingNodeHasCloseButton, :bool,
    :DockingSeparatorSize, :float,
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
    :ConfigDockingNoSplit, :bool,
    :ConfigDockingNoDockingOver, :bool,
    :ConfigDockingWithShift, :bool,
    :ConfigDockingAlwaysTabBar, :bool,
    :ConfigDockingTransparentPayload, :bool,
    :ConfigViewportsNoAutoMerge, :bool,
    :ConfigViewportsNoTaskBarIcon, :bool,
    :ConfigViewportsNoDecoration, :bool,
    :ConfigViewportsNoDefaultParent, :bool,
    :ConfigViewportsPlatformFocusSetsImGuiFocus, :bool,
    :ConfigDpiScaleFonts, :bool,
    :ConfigDpiScaleViewports, :bool,
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
    :MouseHoveredViewport, :uint,
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
    :MouseDragMaxDistanceAbs, [:pointer, 5],
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

  def AddMouseViewportEvent(id)
    ImGui::ImGuiIO_AddMouseViewportEvent(self, id)
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

  def DeleteChars(pos, bytes_count)
    ImGui::ImGuiInputTextCallbackData_DeleteChars(self, pos, bytes_count)
  end

  def InsertChars(pos, text, text_end = nil)
    ImGui::ImGuiInputTextCallbackData_InsertChars(self, pos, text, text_end)
  end

  def SelectAll()
    ImGui::ImGuiInputTextCallbackData_SelectAll(self)
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

class ImGuiWindowClass < FFI::Struct
  layout(
    :ClassId, :uint,
    :ParentViewportId, :uint,
    :FocusRouteParentWindowId, :uint,
    :ViewportFlagsOverrideSet, :int,
    :ViewportFlagsOverrideClear, :int,
    :TabItemFlagsOverrideSet, :int,
    :DockNodeFlagsOverrideSet, :int,
    :DockingAlwaysTabBar, :bool,
    :DockingAllowUnclassed, :bool
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

  def appendfv(fmt, args)
    ImGui::ImGuiTextBuffer_appendfv(self, fmt, args)
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
    :Ctx, :pointer,
    :DisplayStart, :int,
    :DisplayEnd, :int,
    :ItemsCount, :int,
    :ItemsHeight, :float,
    :StartPosY, :double,
    :StartSeekOffsetY, :double,
    :TempData, :pointer,
    :Flags, :int
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
    :RangeSrcItem, :int,
    :NavIdItem, :int,
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
    :RangeFirstItem, :int,
    :RangeLastItem, :int
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
    :TexID, :int,
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
    :PixelSnapV, :bool,
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
    :Flags, :int,
    :DstFont, :pointer,
    :FontLoader, :pointer,
    :FontLoaderData, :pointer
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

  def GetFontBakedEx(font_size, density = -1.0)
    ImGui::ImFont_GetFontBakedEx(self, font_size, density)
  end

  def CalcTextSizeAEx(size, max_width, wrap_width, text_begin, text_end = nil, out_remaining = nil)
    ImGui::ImFont_CalcTextSizeAEx(self, size, max_width, wrap_width, text_begin, text_end, out_remaining)
  end

  def CalcWordWrapPosition(size, text, text_end, wrap_width)
    ImGui::ImFont_CalcWordWrapPosition(self, size, text, text_end, wrap_width)
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
    :DpiScale, :float,
    :ParentViewportId, :uint,
    :ParentViewport, :pointer,
    :DrawData, :pointer,
    :RendererUserData, :pointer,
    :PlatformUserData, :pointer,
    :PlatformHandle, :pointer,
    :PlatformHandleRaw, :pointer,
    :PlatformWindowCreated, :bool,
    :PlatformRequestMove, :bool,
    :PlatformRequestResize, :bool,
    :PlatformRequestClose, :bool
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
    :Platform_CreateWindow, :pointer,
    :Platform_DestroyWindow, :pointer,
    :Platform_ShowWindow, :pointer,
    :Platform_SetWindowPos, :pointer,
    :Platform_GetWindowPos, :pointer,
    :Platform_SetWindowSize, :pointer,
    :Platform_GetWindowSize, :pointer,
    :Platform_GetWindowFramebufferScale, :pointer,
    :Platform_SetWindowFocus, :pointer,
    :Platform_GetWindowFocus, :pointer,
    :Platform_GetWindowMinimized, :pointer,
    :Platform_SetWindowTitle, :pointer,
    :Platform_SetWindowAlpha, :pointer,
    :Platform_UpdateWindow, :pointer,
    :Platform_RenderWindow, :pointer,
    :Platform_SwapBuffers, :pointer,
    :Platform_GetWindowDpiScale, :pointer,
    :Platform_OnChangedViewport, :pointer,
    :Platform_GetWindowWorkAreaInsets, :pointer,
    :Platform_CreateVkSurface, :pointer,
    :Renderer_CreateWindow, :pointer,
    :Renderer_DestroyWindow, :pointer,
    :Renderer_SetWindowSize, :pointer,
    :Renderer_RenderWindow, :pointer,
    :Renderer_SwapBuffers, :pointer,
    :Monitors, ImVector.by_value,
    :Textures, ImVector.by_value,
    :Viewports, ImVector.by_value
  )

  def ClearPlatformHandlers()
    ImGui::ImGuiPlatformIO_ClearPlatformHandlers(self)
  end

  def ClearRendererHandlers()
    ImGui::ImGuiPlatformIO_ClearRendererHandlers(self)
  end

end

class ImGuiPlatformMonitor < FFI::Struct
  layout(
    :MainPos, ImVec2.by_value,
    :MainSize, ImVec2.by_value,
    :WorkPos, ImVec2.by_value,
    :WorkSize, ImVec2.by_value,
    :DpiScale, :float,
    :PlatformHandle, :pointer
  )
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
      :ImGui_GetWindowDpiScale,
      :ImGui_GetWindowPos,
      :ImGui_GetWindowSize,
      :ImGui_GetWindowWidth,
      :ImGui_GetWindowHeight,
      :ImGui_GetWindowViewport,
      :ImGui_SetNextWindowPosEx,
      :ImGui_SetNextWindowSize,
      :ImGui_SetNextWindowSizeConstraints,
      :ImGui_SetNextWindowContentSize,
      :ImGui_SetNextWindowCollapsed,
      :ImGui_SetNextWindowFocus,
      :ImGui_SetNextWindowScroll,
      :ImGui_SetNextWindowBgAlpha,
      :ImGui_SetNextWindowViewport,
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
      :ImGui_PopStyleColorEx,
      :ImGui_PushStyleVar,
      :ImGui_PushStyleVarImVec2,
      :ImGui_PushStyleVarX,
      :ImGui_PushStyleVarY,
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
      :ImGui_GetColorU32Ex,
      :ImGui_GetColorU32ImVec4,
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
      :ImGui_SameLineEx,
      :ImGui_NewLine,
      :ImGui_Spacing,
      :ImGui_Dummy,
      :ImGui_IndentEx,
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
      :ImGui_TextUnformattedEx,
      :ImGui_TextV,
      :ImGui_TextColoredV,
      :ImGui_TextDisabledV,
      :ImGui_TextWrappedV,
      :ImGui_LabelTextV,
      :ImGui_BulletTextV,
      :ImGui_SeparatorText,
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
      :ImGui_TextLinkOpenURLEx,
      :ImGui_ImageEx,
      :ImGui_ImageWithBgEx,
      :ImGui_ImageButtonEx,
      :ImGui_BeginCombo,
      :ImGui_EndCombo,
      :ImGui_ComboCharEx,
      :ImGui_ComboEx,
      :ImGui_ComboCallbackEx,
      :ImGui_DragFloatEx,
      :ImGui_DragFloat2Ex,
      :ImGui_DragFloat3Ex,
      :ImGui_DragFloat4Ex,
      :ImGui_DragFloatRange2Ex,
      :ImGui_DragIntEx,
      :ImGui_DragInt2Ex,
      :ImGui_DragInt3Ex,
      :ImGui_DragInt4Ex,
      :ImGui_DragIntRange2Ex,
      :ImGui_DragScalarEx,
      :ImGui_DragScalarNEx,
      :ImGui_SliderFloatEx,
      :ImGui_SliderFloat2Ex,
      :ImGui_SliderFloat3Ex,
      :ImGui_SliderFloat4Ex,
      :ImGui_SliderAngleEx,
      :ImGui_SliderIntEx,
      :ImGui_SliderInt2Ex,
      :ImGui_SliderInt3Ex,
      :ImGui_SliderInt4Ex,
      :ImGui_SliderScalarEx,
      :ImGui_SliderScalarNEx,
      :ImGui_VSliderFloatEx,
      :ImGui_VSliderIntEx,
      :ImGui_VSliderScalarEx,
      :ImGui_InputTextEx,
      :ImGui_InputTextMultilineEx,
      :ImGui_InputTextWithHintEx,
      :ImGui_InputFloatEx,
      :ImGui_InputFloat2Ex,
      :ImGui_InputFloat3Ex,
      :ImGui_InputFloat4Ex,
      :ImGui_InputIntEx,
      :ImGui_InputInt2,
      :ImGui_InputInt3,
      :ImGui_InputInt4,
      :ImGui_InputDoubleEx,
      :ImGui_InputScalarEx,
      :ImGui_InputScalarNEx,
      :ImGui_ColorEdit3,
      :ImGui_ColorEdit4,
      :ImGui_ColorPicker3,
      :ImGui_ColorPicker4,
      :ImGui_ColorButtonEx,
      :ImGui_SetColorEditOptions,
      :ImGui_TreeNode,
      :ImGui_TreeNodeV,
      :ImGui_TreeNodeVPtr,
      :ImGui_TreeNodeEx,
      :ImGui_TreeNodeExV,
      :ImGui_TreeNodeExVPtr,
      :ImGui_TreePush,
      :ImGui_TreePushPtr,
      :ImGui_TreePop,
      :ImGui_GetTreeNodeToLabelSpacing,
      :ImGui_CollapsingHeader,
      :ImGui_CollapsingHeaderBoolPtr,
      :ImGui_SetNextItemOpen,
      :ImGui_SetNextItemStorageID,
      :ImGui_SelectableEx,
      :ImGui_SelectableBoolPtrEx,
      :ImGui_BeginMultiSelectEx,
      :ImGui_EndMultiSelect,
      :ImGui_SetNextItemSelectionUserData,
      :ImGui_IsItemToggledSelection,
      :ImGui_BeginListBox,
      :ImGui_EndListBox,
      :ImGui_ListBox,
      :ImGui_ListBoxCallbackEx,
      :ImGui_PlotLinesEx,
      :ImGui_PlotLinesCallbackEx,
      :ImGui_PlotHistogramEx,
      :ImGui_PlotHistogramCallbackEx,
      :ImGui_BeginMenuBar,
      :ImGui_EndMenuBar,
      :ImGui_BeginMainMenuBar,
      :ImGui_EndMainMenuBar,
      :ImGui_BeginMenuEx,
      :ImGui_EndMenu,
      :ImGui_MenuItemEx,
      :ImGui_MenuItemBoolPtr,
      :ImGui_BeginTooltip,
      :ImGui_EndTooltip,
      :ImGui_SetTooltipV,
      :ImGui_BeginItemTooltip,
      :ImGui_SetItemTooltipV,
      :ImGui_BeginPopup,
      :ImGui_BeginPopupModal,
      :ImGui_EndPopup,
      :ImGui_OpenPopup,
      :ImGui_OpenPopupID,
      :ImGui_OpenPopupOnItemClick,
      :ImGui_CloseCurrentPopup,
      :ImGui_BeginPopupContextItemEx,
      :ImGui_BeginPopupContextWindowEx,
      :ImGui_BeginPopupContextVoidEx,
      :ImGui_IsPopupOpen,
      :ImGui_BeginTableEx,
      :ImGui_EndTable,
      :ImGui_TableNextRowEx,
      :ImGui_TableNextColumn,
      :ImGui_TableSetColumnIndex,
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
      :ImGui_DockSpaceEx,
      :ImGui_DockSpaceOverViewportEx,
      :ImGui_SetNextWindowDockID,
      :ImGui_SetNextWindowClass,
      :ImGui_GetWindowDockID,
      :ImGui_IsWindowDocked,
      :ImGui_LogToTTY,
      :ImGui_LogToFile,
      :ImGui_LogToClipboard,
      :ImGui_LogFinish,
      :ImGui_LogButtons,
      :ImGui_LogTextV,
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
      :ImGui_SetKeyboardFocusHereEx,
      :ImGui_SetNavCursorVisible,
      :ImGui_SetNextItemAllowOverlap,
      :ImGui_IsItemHovered,
      :ImGui_IsItemActive,
      :ImGui_IsItemFocused,
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
      :ImGui_GetMainViewport,
      :ImGui_GetBackgroundDrawListEx,
      :ImGui_GetForegroundDrawListEx,
      :ImGui_IsRectVisibleBySize,
      :ImGui_IsRectVisible,
      :ImGui_GetTime,
      :ImGui_GetFrameCount,
      :ImGui_GetDrawListSharedData,
      :ImGui_GetStyleColorName,
      :ImGui_SetStateStorage,
      :ImGui_GetStateStorage,
      :ImGui_CalcTextSizeEx,
      :ImGui_ColorConvertU32ToFloat4,
      :ImGui_ColorConvertFloat4ToU32,
      :ImGui_ColorConvertRGBtoHSV,
      :ImGui_ColorConvertHSVtoRGB,
      :ImGui_IsKeyDown,
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
      :ImGui_IsMouseClickedEx,
      :ImGui_IsMouseReleased,
      :ImGui_IsMouseDoubleClicked,
      :ImGui_IsMouseReleasedWithDelay,
      :ImGui_GetMouseClickedCount,
      :ImGui_IsMouseHoveringRectEx,
      :ImGui_IsMousePosValid,
      :ImGui_IsAnyMouseDown,
      :ImGui_GetMousePos,
      :ImGui_GetMousePosOnOpeningCurrentPopup,
      :ImGui_IsMouseDragging,
      :ImGui_GetMouseDragDelta,
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
      :ImGui_DebugLogV,
      :ImGui_SetAllocatorFunctions,
      :ImGui_GetAllocatorFunctions,
      :ImGui_MemAlloc,
      :ImGui_MemFree,
      :ImGui_UpdatePlatformWindows,
      :ImGui_RenderPlatformWindowsDefaultEx,
      :ImGui_DestroyPlatformWindows,
      :ImGui_FindViewportByID,
      :ImGui_FindViewportByPlatformHandle,
      :ImVector_Construct,
      :ImVector_Destruct,
      :ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets,
      :ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale,
      :ImGuiPlatformIO_SetPlatform_GetWindowPos,
      :ImGuiPlatformIO_SetPlatform_GetWindowSize,
      :ImGuiStyle_ScaleAllSizes,
      :ImGuiIO_AddKeyEvent,
      :ImGuiIO_AddKeyAnalogEvent,
      :ImGuiIO_AddMousePosEvent,
      :ImGuiIO_AddMouseButtonEvent,
      :ImGuiIO_AddMouseWheelEvent,
      :ImGuiIO_AddMouseSourceEvent,
      :ImGuiIO_AddMouseViewportEvent,
      :ImGuiIO_AddFocusEvent,
      :ImGuiIO_AddInputCharacter,
      :ImGuiIO_AddInputCharacterUTF16,
      :ImGuiIO_AddInputCharactersUTF8,
      :ImGuiIO_SetKeyEventNativeDataEx,
      :ImGuiIO_SetAppAcceptingEvents,
      :ImGuiIO_ClearEventsQueue,
      :ImGuiIO_ClearInputKeys,
      :ImGuiIO_ClearInputMouse,
      :ImGuiInputTextCallbackData_DeleteChars,
      :ImGuiInputTextCallbackData_InsertChars,
      :ImGuiInputTextCallbackData_SelectAll,
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
      :ImGuiTextBuffer_appendfv,
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
      :ImDrawList_AddLineEx,
      :ImDrawList_AddRectEx,
      :ImDrawList_AddRectFilledEx,
      :ImDrawList_AddRectFilledMultiColor,
      :ImDrawList_AddQuadEx,
      :ImDrawList_AddQuadFilled,
      :ImDrawList_AddTriangleEx,
      :ImDrawList_AddTriangleFilled,
      :ImDrawList_AddCircleEx,
      :ImDrawList_AddCircleFilled,
      :ImDrawList_AddNgonEx,
      :ImDrawList_AddNgonFilled,
      :ImDrawList_AddEllipseEx,
      :ImDrawList_AddEllipseFilledEx,
      :ImDrawList_AddTextEx,
      :ImDrawList_AddTextImFontPtrEx,
      :ImDrawList_AddBezierCubic,
      :ImDrawList_AddBezierQuadratic,
      :ImDrawList_AddPolyline,
      :ImDrawList_AddConvexPolyFilled,
      :ImDrawList_AddConcavePolyFilled,
      :ImDrawList_AddImageEx,
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
      :ImDrawList_PathEllipticalArcToEx,
      :ImDrawList_PathBezierCubicCurveTo,
      :ImDrawList_PathBezierQuadraticCurveTo,
      :ImDrawList_PathRect,
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
      :ImFont_GetFontBakedEx,
      :ImFont_CalcTextSizeAEx,
      :ImFont_CalcWordWrapPosition,
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
      :ImGui_BeginChildFrameEx,
      :ImGui_EndChildFrame,
      :ImGui_ShowStackToolWindow,
      :ImGui_ComboObsoleteEx,
      :ImGui_ListBoxObsoleteEx,
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
      :ImGui_GetWindowDpiScale => [],
      :ImGui_GetWindowPos => [],
      :ImGui_GetWindowSize => [],
      :ImGui_GetWindowWidth => [],
      :ImGui_GetWindowHeight => [],
      :ImGui_GetWindowViewport => [],
      :ImGui_SetNextWindowPosEx => [ImVec2.by_value, :int, ImVec2.by_value],
      :ImGui_SetNextWindowSize => [ImVec2.by_value, :int],
      :ImGui_SetNextWindowSizeConstraints => [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer],
      :ImGui_SetNextWindowContentSize => [ImVec2.by_value],
      :ImGui_SetNextWindowCollapsed => [:bool, :int],
      :ImGui_SetNextWindowFocus => [],
      :ImGui_SetNextWindowScroll => [ImVec2.by_value],
      :ImGui_SetNextWindowBgAlpha => [:float],
      :ImGui_SetNextWindowViewport => [:uint],
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
      :ImGui_PopStyleColorEx => [:int],
      :ImGui_PushStyleVar => [:int, :float],
      :ImGui_PushStyleVarImVec2 => [:int, ImVec2.by_value],
      :ImGui_PushStyleVarX => [:int, :float],
      :ImGui_PushStyleVarY => [:int, :float],
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
      :ImGui_GetColorU32Ex => [:int, :float],
      :ImGui_GetColorU32ImVec4 => [ImVec4.by_value],
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
      :ImGui_SameLineEx => [:float, :float],
      :ImGui_NewLine => [],
      :ImGui_Spacing => [],
      :ImGui_Dummy => [ImVec2.by_value],
      :ImGui_IndentEx => [:float],
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
      :ImGui_TextUnformattedEx => [:pointer, :pointer],
      :ImGui_TextV => [:pointer, :varargs],
      :ImGui_TextColoredV => [ImVec4.by_value, :pointer, :varargs],
      :ImGui_TextDisabledV => [:pointer, :varargs],
      :ImGui_TextWrappedV => [:pointer, :varargs],
      :ImGui_LabelTextV => [:pointer, :pointer, :varargs],
      :ImGui_BulletTextV => [:pointer, :varargs],
      :ImGui_SeparatorText => [:pointer],
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
      :ImGui_TextLinkOpenURLEx => [:pointer, :pointer],
      :ImGui_ImageEx => [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value],
      :ImGui_ImageWithBgEx => [ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :ImGui_ImageButtonEx => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value],
      :ImGui_BeginCombo => [:pointer, :pointer, :int],
      :ImGui_EndCombo => [],
      :ImGui_ComboCharEx => [:pointer, :pointer, :pointer, :int, :int],
      :ImGui_ComboEx => [:pointer, :pointer, :pointer, :int],
      :ImGui_ComboCallbackEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :ImGui_DragFloatEx => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat2Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat3Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloat4Ex => [:pointer, :pointer, :float, :float, :float, :pointer, :int],
      :ImGui_DragFloatRange2Ex => [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :int],
      :ImGui_DragIntEx => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt2Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt3Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragInt4Ex => [:pointer, :pointer, :float, :int, :int, :pointer, :int],
      :ImGui_DragIntRange2Ex => [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer, :int],
      :ImGui_DragScalarEx => [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :int],
      :ImGui_DragScalarNEx => [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :int],
      :ImGui_SliderFloatEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat2Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat3Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderFloat4Ex => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderAngleEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_SliderIntEx => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt2Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt3Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderInt4Ex => [:pointer, :pointer, :int, :int, :pointer, :int],
      :ImGui_SliderScalarEx => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_SliderScalarNEx => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :ImGui_VSliderFloatEx => [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int],
      :ImGui_VSliderIntEx => [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int],
      :ImGui_VSliderScalarEx => [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_InputTextEx => [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputTextMultilineEx => [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputTextWithHintEx => [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer],
      :ImGui_InputFloatEx => [:pointer, :pointer, :float, :float, :pointer, :int],
      :ImGui_InputFloat2Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputFloat3Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputFloat4Ex => [:pointer, :pointer, :pointer, :int],
      :ImGui_InputIntEx => [:pointer, :pointer, :int, :int, :int],
      :ImGui_InputInt2 => [:pointer, :pointer, :int],
      :ImGui_InputInt3 => [:pointer, :pointer, :int],
      :ImGui_InputInt4 => [:pointer, :pointer, :int],
      :ImGui_InputDoubleEx => [:pointer, :pointer, :double, :double, :pointer, :int],
      :ImGui_InputScalarEx => [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int],
      :ImGui_InputScalarNEx => [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int],
      :ImGui_ColorEdit3 => [:pointer, :pointer, :int],
      :ImGui_ColorEdit4 => [:pointer, :pointer, :int],
      :ImGui_ColorPicker3 => [:pointer, :pointer, :int],
      :ImGui_ColorPicker4 => [:pointer, :pointer, :int, :pointer],
      :ImGui_ColorButtonEx => [:pointer, ImVec4.by_value, :int, ImVec2.by_value],
      :ImGui_SetColorEditOptions => [:int],
      :ImGui_TreeNode => [:pointer],
      :ImGui_TreeNodeV => [:pointer, :pointer, :varargs],
      :ImGui_TreeNodeVPtr => [:pointer, :pointer, :varargs],
      :ImGui_TreeNodeEx => [:pointer, :int],
      :ImGui_TreeNodeExV => [:pointer, :int, :pointer, :varargs],
      :ImGui_TreeNodeExVPtr => [:pointer, :int, :pointer, :varargs],
      :ImGui_TreePush => [:pointer],
      :ImGui_TreePushPtr => [:pointer],
      :ImGui_TreePop => [],
      :ImGui_GetTreeNodeToLabelSpacing => [],
      :ImGui_CollapsingHeader => [:pointer, :int],
      :ImGui_CollapsingHeaderBoolPtr => [:pointer, :pointer, :int],
      :ImGui_SetNextItemOpen => [:bool, :int],
      :ImGui_SetNextItemStorageID => [:uint],
      :ImGui_SelectableEx => [:pointer, :bool, :int, ImVec2.by_value],
      :ImGui_SelectableBoolPtrEx => [:pointer, :pointer, :int, ImVec2.by_value],
      :ImGui_BeginMultiSelectEx => [:int, :int, :int],
      :ImGui_EndMultiSelect => [],
      :ImGui_SetNextItemSelectionUserData => [:int],
      :ImGui_IsItemToggledSelection => [],
      :ImGui_BeginListBox => [:pointer, ImVec2.by_value],
      :ImGui_EndListBox => [],
      :ImGui_ListBox => [:pointer, :pointer, :pointer, :int, :int],
      :ImGui_ListBoxCallbackEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :ImGui_PlotLinesEx => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :ImGui_PlotLinesCallbackEx => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :ImGui_PlotHistogramEx => [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int],
      :ImGui_PlotHistogramCallbackEx => [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value],
      :ImGui_BeginMenuBar => [],
      :ImGui_EndMenuBar => [],
      :ImGui_BeginMainMenuBar => [],
      :ImGui_EndMainMenuBar => [],
      :ImGui_BeginMenuEx => [:pointer, :bool],
      :ImGui_EndMenu => [],
      :ImGui_MenuItemEx => [:pointer, :pointer, :bool, :bool],
      :ImGui_MenuItemBoolPtr => [:pointer, :pointer, :pointer, :bool],
      :ImGui_BeginTooltip => [],
      :ImGui_EndTooltip => [],
      :ImGui_SetTooltipV => [:pointer, :varargs],
      :ImGui_BeginItemTooltip => [],
      :ImGui_SetItemTooltipV => [:pointer, :varargs],
      :ImGui_BeginPopup => [:pointer, :int],
      :ImGui_BeginPopupModal => [:pointer, :pointer, :int],
      :ImGui_EndPopup => [],
      :ImGui_OpenPopup => [:pointer, :int],
      :ImGui_OpenPopupID => [:uint, :int],
      :ImGui_OpenPopupOnItemClick => [:pointer, :int],
      :ImGui_CloseCurrentPopup => [],
      :ImGui_BeginPopupContextItemEx => [:pointer, :int],
      :ImGui_BeginPopupContextWindowEx => [:pointer, :int],
      :ImGui_BeginPopupContextVoidEx => [:pointer, :int],
      :ImGui_IsPopupOpen => [:pointer, :int],
      :ImGui_BeginTableEx => [:pointer, :int, :int, ImVec2.by_value, :float],
      :ImGui_EndTable => [],
      :ImGui_TableNextRowEx => [:int, :float],
      :ImGui_TableNextColumn => [],
      :ImGui_TableSetColumnIndex => [:int],
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
      :ImGui_DockSpaceEx => [:uint, ImVec2.by_value, :int, :pointer],
      :ImGui_DockSpaceOverViewportEx => [:uint, :pointer, :int, :pointer],
      :ImGui_SetNextWindowDockID => [:uint, :int],
      :ImGui_SetNextWindowClass => [:pointer],
      :ImGui_GetWindowDockID => [],
      :ImGui_IsWindowDocked => [],
      :ImGui_LogToTTY => [:int],
      :ImGui_LogToFile => [:int, :pointer],
      :ImGui_LogToClipboard => [:int],
      :ImGui_LogFinish => [],
      :ImGui_LogButtons => [],
      :ImGui_LogTextV => [:pointer, :varargs],
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
      :ImGui_SetKeyboardFocusHereEx => [:int],
      :ImGui_SetNavCursorVisible => [:bool],
      :ImGui_SetNextItemAllowOverlap => [],
      :ImGui_IsItemHovered => [:int],
      :ImGui_IsItemActive => [],
      :ImGui_IsItemFocused => [],
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
      :ImGui_GetMainViewport => [],
      :ImGui_GetBackgroundDrawListEx => [:pointer],
      :ImGui_GetForegroundDrawListEx => [:pointer],
      :ImGui_IsRectVisibleBySize => [ImVec2.by_value],
      :ImGui_IsRectVisible => [ImVec2.by_value, ImVec2.by_value],
      :ImGui_GetTime => [],
      :ImGui_GetFrameCount => [],
      :ImGui_GetDrawListSharedData => [],
      :ImGui_GetStyleColorName => [:int],
      :ImGui_SetStateStorage => [:pointer],
      :ImGui_GetStateStorage => [],
      :ImGui_CalcTextSizeEx => [:pointer, :pointer, :bool, :float],
      :ImGui_ColorConvertU32ToFloat4 => [:uint],
      :ImGui_ColorConvertFloat4ToU32 => [ImVec4.by_value],
      :ImGui_ColorConvertRGBtoHSV => [:float, :float, :float, :pointer, :pointer, :pointer],
      :ImGui_ColorConvertHSVtoRGB => [:float, :float, :float, :pointer, :pointer, :pointer],
      :ImGui_IsKeyDown => [:int],
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
      :ImGui_IsMouseClickedEx => [:int, :bool],
      :ImGui_IsMouseReleased => [:int],
      :ImGui_IsMouseDoubleClicked => [:int],
      :ImGui_IsMouseReleasedWithDelay => [:int, :float],
      :ImGui_GetMouseClickedCount => [:int],
      :ImGui_IsMouseHoveringRectEx => [ImVec2.by_value, ImVec2.by_value, :bool],
      :ImGui_IsMousePosValid => [:pointer],
      :ImGui_IsAnyMouseDown => [],
      :ImGui_GetMousePos => [],
      :ImGui_GetMousePosOnOpeningCurrentPopup => [],
      :ImGui_IsMouseDragging => [:int, :float],
      :ImGui_GetMouseDragDelta => [:int, :float],
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
      :ImGui_DebugLogV => [:pointer, :varargs],
      :ImGui_SetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :ImGui_GetAllocatorFunctions => [:pointer, :pointer, :pointer],
      :ImGui_MemAlloc => [:size_t],
      :ImGui_MemFree => [:pointer],
      :ImGui_UpdatePlatformWindows => [],
      :ImGui_RenderPlatformWindowsDefaultEx => [:pointer, :pointer],
      :ImGui_DestroyPlatformWindows => [],
      :ImGui_FindViewportByID => [:uint],
      :ImGui_FindViewportByPlatformHandle => [:pointer],
      :ImVector_Construct => [:pointer],
      :ImVector_Destruct => [:pointer],
      :ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets => [:pointer],
      :ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale => [:pointer],
      :ImGuiPlatformIO_SetPlatform_GetWindowPos => [:pointer],
      :ImGuiPlatformIO_SetPlatform_GetWindowSize => [:pointer],
      :ImGuiStyle_ScaleAllSizes => [:pointer, :float],
      :ImGuiIO_AddKeyEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddKeyAnalogEvent => [:pointer, :int, :bool, :float],
      :ImGuiIO_AddMousePosEvent => [:pointer, :float, :float],
      :ImGuiIO_AddMouseButtonEvent => [:pointer, :int, :bool],
      :ImGuiIO_AddMouseWheelEvent => [:pointer, :float, :float],
      :ImGuiIO_AddMouseSourceEvent => [:pointer, :int],
      :ImGuiIO_AddMouseViewportEvent => [:pointer, :uint],
      :ImGuiIO_AddFocusEvent => [:pointer, :bool],
      :ImGuiIO_AddInputCharacter => [:pointer, :uint],
      :ImGuiIO_AddInputCharacterUTF16 => [:pointer, :ushort],
      :ImGuiIO_AddInputCharactersUTF8 => [:pointer, :pointer],
      :ImGuiIO_SetKeyEventNativeDataEx => [:pointer, :int, :int, :int, :int],
      :ImGuiIO_SetAppAcceptingEvents => [:pointer, :bool],
      :ImGuiIO_ClearEventsQueue => [:pointer],
      :ImGuiIO_ClearInputKeys => [:pointer],
      :ImGuiIO_ClearInputMouse => [:pointer],
      :ImGuiInputTextCallbackData_DeleteChars => [:pointer, :int, :int],
      :ImGuiInputTextCallbackData_InsertChars => [:pointer, :int, :pointer, :pointer],
      :ImGuiInputTextCallbackData_SelectAll => [:pointer],
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
      :ImGuiTextBuffer_appendfv => [:pointer, :pointer, :varargs],
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
      :ImDrawList_AddLineEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddRectEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float],
      :ImDrawList_AddRectFilledEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddRectFilledMultiColor => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint],
      :ImDrawList_AddQuadEx => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddQuadFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddTriangleEx => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float],
      :ImDrawList_AddTriangleFilled => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
      :ImDrawList_AddCircleEx => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddCircleFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddNgonEx => [:pointer, ImVec2.by_value, :float, :uint, :int, :float],
      :ImDrawList_AddNgonFilled => [:pointer, ImVec2.by_value, :float, :uint, :int],
      :ImDrawList_AddEllipseEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float],
      :ImDrawList_AddEllipseFilledEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddTextEx => [:pointer, ImVec2.by_value, :uint, :pointer, :pointer],
      :ImDrawList_AddTextImFontPtrEx => [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer],
      :ImDrawList_AddBezierCubic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddBezierQuadratic => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int],
      :ImDrawList_AddPolyline => [:pointer, :pointer, :int, :uint, :int, :float],
      :ImDrawList_AddConvexPolyFilled => [:pointer, :pointer, :int, :uint],
      :ImDrawList_AddConcavePolyFilled => [:pointer, :pointer, :int, :uint],
      :ImDrawList_AddImageEx => [:pointer, ImTextureRef.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint],
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
      :ImDrawList_PathEllipticalArcToEx => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :float, :float, :int],
      :ImDrawList_PathBezierCubicCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathBezierQuadraticCurveTo => [:pointer, ImVec2.by_value, ImVec2.by_value, :int],
      :ImDrawList_PathRect => [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int],
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
      :ImTextureData_SetTexID => [:pointer, :int],
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
      :ImFontAtlas_SetTexID => [:pointer, :int],
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
      :ImFont_GetFontBakedEx => [:pointer, :float, :float],
      :ImFont_CalcTextSizeAEx => [:pointer, :float, :float, :float, :pointer, :pointer, :pointer],
      :ImFont_CalcWordWrapPosition => [:pointer, :float, :pointer, :pointer, :float],
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
      :ImGui_BeginChildFrameEx => [:uint, ImVec2.by_value, :int],
      :ImGui_EndChildFrame => [],
      :ImGui_ShowStackToolWindow => [:pointer],
      :ImGui_ComboObsoleteEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
      :ImGui_ListBoxObsoleteEx => [:pointer, :pointer, :pointer, :pointer, :int, :int],
    }

    retvals = {
      :ImTextureRef_GetTexID => :int,
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
      :ImGui_GetWindowDpiScale => :float,
      :ImGui_GetWindowPos => ImVec2.by_value,
      :ImGui_GetWindowSize => ImVec2.by_value,
      :ImGui_GetWindowWidth => :float,
      :ImGui_GetWindowHeight => :float,
      :ImGui_GetWindowViewport => :pointer,
      :ImGui_SetNextWindowPosEx => :void,
      :ImGui_SetNextWindowSize => :void,
      :ImGui_SetNextWindowSizeConstraints => :void,
      :ImGui_SetNextWindowContentSize => :void,
      :ImGui_SetNextWindowCollapsed => :void,
      :ImGui_SetNextWindowFocus => :void,
      :ImGui_SetNextWindowScroll => :void,
      :ImGui_SetNextWindowBgAlpha => :void,
      :ImGui_SetNextWindowViewport => :void,
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
      :ImGui_PopStyleColorEx => :void,
      :ImGui_PushStyleVar => :void,
      :ImGui_PushStyleVarImVec2 => :void,
      :ImGui_PushStyleVarX => :void,
      :ImGui_PushStyleVarY => :void,
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
      :ImGui_GetColorU32Ex => :uint,
      :ImGui_GetColorU32ImVec4 => :uint,
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
      :ImGui_SameLineEx => :void,
      :ImGui_NewLine => :void,
      :ImGui_Spacing => :void,
      :ImGui_Dummy => :void,
      :ImGui_IndentEx => :void,
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
      :ImGui_TextUnformattedEx => :void,
      :ImGui_TextV => :void,
      :ImGui_TextColoredV => :void,
      :ImGui_TextDisabledV => :void,
      :ImGui_TextWrappedV => :void,
      :ImGui_LabelTextV => :void,
      :ImGui_BulletTextV => :void,
      :ImGui_SeparatorText => :void,
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
      :ImGui_TextLinkOpenURLEx => :bool,
      :ImGui_ImageEx => :void,
      :ImGui_ImageWithBgEx => :void,
      :ImGui_ImageButtonEx => :bool,
      :ImGui_BeginCombo => :bool,
      :ImGui_EndCombo => :void,
      :ImGui_ComboCharEx => :bool,
      :ImGui_ComboEx => :bool,
      :ImGui_ComboCallbackEx => :bool,
      :ImGui_DragFloatEx => :bool,
      :ImGui_DragFloat2Ex => :bool,
      :ImGui_DragFloat3Ex => :bool,
      :ImGui_DragFloat4Ex => :bool,
      :ImGui_DragFloatRange2Ex => :bool,
      :ImGui_DragIntEx => :bool,
      :ImGui_DragInt2Ex => :bool,
      :ImGui_DragInt3Ex => :bool,
      :ImGui_DragInt4Ex => :bool,
      :ImGui_DragIntRange2Ex => :bool,
      :ImGui_DragScalarEx => :bool,
      :ImGui_DragScalarNEx => :bool,
      :ImGui_SliderFloatEx => :bool,
      :ImGui_SliderFloat2Ex => :bool,
      :ImGui_SliderFloat3Ex => :bool,
      :ImGui_SliderFloat4Ex => :bool,
      :ImGui_SliderAngleEx => :bool,
      :ImGui_SliderIntEx => :bool,
      :ImGui_SliderInt2Ex => :bool,
      :ImGui_SliderInt3Ex => :bool,
      :ImGui_SliderInt4Ex => :bool,
      :ImGui_SliderScalarEx => :bool,
      :ImGui_SliderScalarNEx => :bool,
      :ImGui_VSliderFloatEx => :bool,
      :ImGui_VSliderIntEx => :bool,
      :ImGui_VSliderScalarEx => :bool,
      :ImGui_InputTextEx => :bool,
      :ImGui_InputTextMultilineEx => :bool,
      :ImGui_InputTextWithHintEx => :bool,
      :ImGui_InputFloatEx => :bool,
      :ImGui_InputFloat2Ex => :bool,
      :ImGui_InputFloat3Ex => :bool,
      :ImGui_InputFloat4Ex => :bool,
      :ImGui_InputIntEx => :bool,
      :ImGui_InputInt2 => :bool,
      :ImGui_InputInt3 => :bool,
      :ImGui_InputInt4 => :bool,
      :ImGui_InputDoubleEx => :bool,
      :ImGui_InputScalarEx => :bool,
      :ImGui_InputScalarNEx => :bool,
      :ImGui_ColorEdit3 => :bool,
      :ImGui_ColorEdit4 => :bool,
      :ImGui_ColorPicker3 => :bool,
      :ImGui_ColorPicker4 => :bool,
      :ImGui_ColorButtonEx => :bool,
      :ImGui_SetColorEditOptions => :void,
      :ImGui_TreeNode => :bool,
      :ImGui_TreeNodeV => :bool,
      :ImGui_TreeNodeVPtr => :bool,
      :ImGui_TreeNodeEx => :bool,
      :ImGui_TreeNodeExV => :bool,
      :ImGui_TreeNodeExVPtr => :bool,
      :ImGui_TreePush => :void,
      :ImGui_TreePushPtr => :void,
      :ImGui_TreePop => :void,
      :ImGui_GetTreeNodeToLabelSpacing => :float,
      :ImGui_CollapsingHeader => :bool,
      :ImGui_CollapsingHeaderBoolPtr => :bool,
      :ImGui_SetNextItemOpen => :void,
      :ImGui_SetNextItemStorageID => :void,
      :ImGui_SelectableEx => :bool,
      :ImGui_SelectableBoolPtrEx => :bool,
      :ImGui_BeginMultiSelectEx => :pointer,
      :ImGui_EndMultiSelect => :pointer,
      :ImGui_SetNextItemSelectionUserData => :void,
      :ImGui_IsItemToggledSelection => :bool,
      :ImGui_BeginListBox => :bool,
      :ImGui_EndListBox => :void,
      :ImGui_ListBox => :bool,
      :ImGui_ListBoxCallbackEx => :bool,
      :ImGui_PlotLinesEx => :void,
      :ImGui_PlotLinesCallbackEx => :void,
      :ImGui_PlotHistogramEx => :void,
      :ImGui_PlotHistogramCallbackEx => :void,
      :ImGui_BeginMenuBar => :bool,
      :ImGui_EndMenuBar => :void,
      :ImGui_BeginMainMenuBar => :bool,
      :ImGui_EndMainMenuBar => :void,
      :ImGui_BeginMenuEx => :bool,
      :ImGui_EndMenu => :void,
      :ImGui_MenuItemEx => :bool,
      :ImGui_MenuItemBoolPtr => :bool,
      :ImGui_BeginTooltip => :bool,
      :ImGui_EndTooltip => :void,
      :ImGui_SetTooltipV => :void,
      :ImGui_BeginItemTooltip => :bool,
      :ImGui_SetItemTooltipV => :void,
      :ImGui_BeginPopup => :bool,
      :ImGui_BeginPopupModal => :bool,
      :ImGui_EndPopup => :void,
      :ImGui_OpenPopup => :void,
      :ImGui_OpenPopupID => :void,
      :ImGui_OpenPopupOnItemClick => :void,
      :ImGui_CloseCurrentPopup => :void,
      :ImGui_BeginPopupContextItemEx => :bool,
      :ImGui_BeginPopupContextWindowEx => :bool,
      :ImGui_BeginPopupContextVoidEx => :bool,
      :ImGui_IsPopupOpen => :bool,
      :ImGui_BeginTableEx => :bool,
      :ImGui_EndTable => :void,
      :ImGui_TableNextRowEx => :void,
      :ImGui_TableNextColumn => :bool,
      :ImGui_TableSetColumnIndex => :bool,
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
      :ImGui_DockSpaceEx => :uint,
      :ImGui_DockSpaceOverViewportEx => :uint,
      :ImGui_SetNextWindowDockID => :void,
      :ImGui_SetNextWindowClass => :void,
      :ImGui_GetWindowDockID => :uint,
      :ImGui_IsWindowDocked => :bool,
      :ImGui_LogToTTY => :void,
      :ImGui_LogToFile => :void,
      :ImGui_LogToClipboard => :void,
      :ImGui_LogFinish => :void,
      :ImGui_LogButtons => :void,
      :ImGui_LogTextV => :void,
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
      :ImGui_SetKeyboardFocusHereEx => :void,
      :ImGui_SetNavCursorVisible => :void,
      :ImGui_SetNextItemAllowOverlap => :void,
      :ImGui_IsItemHovered => :bool,
      :ImGui_IsItemActive => :bool,
      :ImGui_IsItemFocused => :bool,
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
      :ImGui_GetMainViewport => :pointer,
      :ImGui_GetBackgroundDrawListEx => :pointer,
      :ImGui_GetForegroundDrawListEx => :pointer,
      :ImGui_IsRectVisibleBySize => :bool,
      :ImGui_IsRectVisible => :bool,
      :ImGui_GetTime => :double,
      :ImGui_GetFrameCount => :int,
      :ImGui_GetDrawListSharedData => :pointer,
      :ImGui_GetStyleColorName => :pointer,
      :ImGui_SetStateStorage => :void,
      :ImGui_GetStateStorage => :pointer,
      :ImGui_CalcTextSizeEx => ImVec2.by_value,
      :ImGui_ColorConvertU32ToFloat4 => ImVec4.by_value,
      :ImGui_ColorConvertFloat4ToU32 => :uint,
      :ImGui_ColorConvertRGBtoHSV => :void,
      :ImGui_ColorConvertHSVtoRGB => :void,
      :ImGui_IsKeyDown => :bool,
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
      :ImGui_IsMouseClickedEx => :bool,
      :ImGui_IsMouseReleased => :bool,
      :ImGui_IsMouseDoubleClicked => :bool,
      :ImGui_IsMouseReleasedWithDelay => :bool,
      :ImGui_GetMouseClickedCount => :int,
      :ImGui_IsMouseHoveringRectEx => :bool,
      :ImGui_IsMousePosValid => :bool,
      :ImGui_IsAnyMouseDown => :bool,
      :ImGui_GetMousePos => ImVec2.by_value,
      :ImGui_GetMousePosOnOpeningCurrentPopup => ImVec2.by_value,
      :ImGui_IsMouseDragging => :bool,
      :ImGui_GetMouseDragDelta => ImVec2.by_value,
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
      :ImGui_DebugLogV => :void,
      :ImGui_SetAllocatorFunctions => :void,
      :ImGui_GetAllocatorFunctions => :void,
      :ImGui_MemAlloc => :pointer,
      :ImGui_MemFree => :void,
      :ImGui_UpdatePlatformWindows => :void,
      :ImGui_RenderPlatformWindowsDefaultEx => :void,
      :ImGui_DestroyPlatformWindows => :void,
      :ImGui_FindViewportByID => :pointer,
      :ImGui_FindViewportByPlatformHandle => :pointer,
      :ImVector_Construct => :void,
      :ImVector_Destruct => :void,
      :ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets => :void,
      :ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale => :void,
      :ImGuiPlatformIO_SetPlatform_GetWindowPos => :void,
      :ImGuiPlatformIO_SetPlatform_GetWindowSize => :void,
      :ImGuiStyle_ScaleAllSizes => :void,
      :ImGuiIO_AddKeyEvent => :void,
      :ImGuiIO_AddKeyAnalogEvent => :void,
      :ImGuiIO_AddMousePosEvent => :void,
      :ImGuiIO_AddMouseButtonEvent => :void,
      :ImGuiIO_AddMouseWheelEvent => :void,
      :ImGuiIO_AddMouseSourceEvent => :void,
      :ImGuiIO_AddMouseViewportEvent => :void,
      :ImGuiIO_AddFocusEvent => :void,
      :ImGuiIO_AddInputCharacter => :void,
      :ImGuiIO_AddInputCharacterUTF16 => :void,
      :ImGuiIO_AddInputCharactersUTF8 => :void,
      :ImGuiIO_SetKeyEventNativeDataEx => :void,
      :ImGuiIO_SetAppAcceptingEvents => :void,
      :ImGuiIO_ClearEventsQueue => :void,
      :ImGuiIO_ClearInputKeys => :void,
      :ImGuiIO_ClearInputMouse => :void,
      :ImGuiInputTextCallbackData_DeleteChars => :void,
      :ImGuiInputTextCallbackData_InsertChars => :void,
      :ImGuiInputTextCallbackData_SelectAll => :void,
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
      :ImGuiTextBuffer_appendfv => :void,
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
      :ImDrawCmd_GetTexID => :int,
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
      :ImDrawList_AddLineEx => :void,
      :ImDrawList_AddRectEx => :void,
      :ImDrawList_AddRectFilledEx => :void,
      :ImDrawList_AddRectFilledMultiColor => :void,
      :ImDrawList_AddQuadEx => :void,
      :ImDrawList_AddQuadFilled => :void,
      :ImDrawList_AddTriangleEx => :void,
      :ImDrawList_AddTriangleFilled => :void,
      :ImDrawList_AddCircleEx => :void,
      :ImDrawList_AddCircleFilled => :void,
      :ImDrawList_AddNgonEx => :void,
      :ImDrawList_AddNgonFilled => :void,
      :ImDrawList_AddEllipseEx => :void,
      :ImDrawList_AddEllipseFilledEx => :void,
      :ImDrawList_AddTextEx => :void,
      :ImDrawList_AddTextImFontPtrEx => :void,
      :ImDrawList_AddBezierCubic => :void,
      :ImDrawList_AddBezierQuadratic => :void,
      :ImDrawList_AddPolyline => :void,
      :ImDrawList_AddConvexPolyFilled => :void,
      :ImDrawList_AddConcavePolyFilled => :void,
      :ImDrawList_AddImageEx => :void,
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
      :ImDrawList_PathEllipticalArcToEx => :void,
      :ImDrawList_PathBezierCubicCurveTo => :void,
      :ImDrawList_PathBezierQuadraticCurveTo => :void,
      :ImDrawList_PathRect => :void,
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
      :ImTextureData_GetTexID => :int,
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
      :ImFont_GetFontBakedEx => :pointer,
      :ImFont_CalcTextSizeAEx => ImVec2.by_value,
      :ImFont_CalcWordWrapPosition => :pointer,
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
      :ImGui_BeginChildFrameEx => :bool,
      :ImGui_EndChildFrame => :void,
      :ImGui_ShowStackToolWindow => :void,
      :ImGui_ComboObsoleteEx => :bool,
      :ImGui_ListBoxObsoleteEx => :bool,
    }

    symbols.each do |sym|
      begin
        attach_function sym, args[sym], retvals[sym]
      rescue FFI::NotFoundError
        $stderr.puts("[Warning] Failed to import #{sym}.\n") if output_error
      end
    end


    @@imgui_import_done = true  end # self.import_symbols

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

  # ret: float
  def self.GetWindowDpiScale()
    ImGui_GetWindowDpiScale()
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

  # ret: pointer
  def self.GetWindowViewport()
    ImGui_GetWindowViewport()
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

  # arg: viewport_id(ImGuiID)
  # ret: void
  def self.SetNextWindowViewport(viewport_id)
    ImGui_SetNextWindowViewport(viewport_id)
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

  # arg: indent_w(float)
  # ret: void
  def self.IndentEx(indent_w = 0.0)
    ImGui_IndentEx(indent_w)
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

  # arg: text(const char*), text_end(const char*)
  # ret: void
  def self.TextUnformattedEx(text, text_end = nil)
    ImGui_TextUnformattedEx(text, text_end)
  end

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.TextV(fmt, args)
    ImGui_TextV(fmt, args)
  end

  # arg: col(ImVec4), fmt(const char*), args(va_list)
  # ret: void
  def self.TextColoredV(col, fmt, args)
    ImGui_TextColoredV(col, fmt, args)
  end

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.TextDisabledV(fmt, args)
    ImGui_TextDisabledV(fmt, args)
  end

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.TextWrappedV(fmt, args)
    ImGui_TextWrappedV(fmt, args)
  end

  # arg: label(const char*), fmt(const char*), args(va_list)
  # ret: void
  def self.LabelTextV(label, fmt, args)
    ImGui_LabelTextV(label, fmt, args)
  end

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.BulletTextV(fmt, args)
    ImGui_BulletTextV(fmt, args)
  end

  # arg: label(const char*)
  # ret: void
  def self.SeparatorText(label)
    ImGui_SeparatorText(label)
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

  # arg: label(const char*), url(const char*)
  # ret: bool
  def self.TextLinkOpenURLEx(label, url = nil)
    ImGui_TextLinkOpenURLEx(label, url)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2)
  # ret: void
  def self.ImageEx(tex_ref, image_size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1))
    ImGui_ImageEx(tex_ref, image_size, uv0, uv1)
  end

  # arg: tex_ref(ImTextureRef), image_size(ImVec2), uv0(ImVec2), uv1(ImVec2), bg_col(ImVec4), tint_col(ImVec4)
  # ret: void
  def self.ImageWithBgEx(tex_ref, image_size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))
    ImGui_ImageWithBgEx(tex_ref, image_size, uv0, uv1, bg_col, tint_col)
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

  # arg: label(const char*), current_item(int*), items(const char*const[]), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboCharEx(label, current_item, items, items_count, popup_max_height_in_items = -1)
    ImGui_ComboCharEx(label, current_item, items, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), items_separated_by_zeros(const char*), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboEx(label, current_item, items_separated_by_zeros, popup_max_height_in_items = -1)
    ImGui_ComboEx(label, current_item, items_separated_by_zeros, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboCallbackEx(label, current_item, getter, user_data, items_count, popup_max_height_in_items = -1)
    ImGui_ComboCallbackEx(label, current_item, getter, user_data, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), v(float*), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatEx(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloatEx(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat2Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat2Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat3Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat3Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat4Ex(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)
    ImGui_DragFloat4Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(float*), v_current_max(float*), v_speed(float), v_min(float), v_max(float), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatRange2Ex(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", format_max = nil, flags = 0)
    ImGui_DragFloatRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), v(int*), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntEx(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragIntEx(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt2Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt2Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt3Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt3Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt4Ex(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)
    ImGui_DragInt4Ex(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(int*), v_current_max(int*), v_speed(float), v_min(int), v_max(int), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntRange2Ex(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", format_max = nil, flags = 0)
    ImGui_DragIntRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarEx(label, data_type, p_data, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    ImGui_DragScalarEx(label, data_type, p_data, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarNEx(label, data_type, p_data, components, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)
    ImGui_DragScalarNEx(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloatEx(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloatEx(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat2Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat2Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat3Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat3Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat4Ex(label, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_SliderFloat4Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_rad(float*), v_degrees_min(float), v_degrees_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderAngleEx(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg", flags = 0)
    ImGui_SliderAngleEx(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
  end

  # arg: label(const char*), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderIntEx(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderIntEx(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt2Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt2Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt3Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt3Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt4Ex(label, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_SliderInt4Ex(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarEx(label, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    ImGui_SliderScalarEx(label, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarNEx(label, data_type, p_data, components, p_min, p_max, format = nil, flags = 0)
    ImGui_SliderScalarNEx(label, data_type, p_data, components, p_min, p_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderFloatEx(label, size, v, v_min, v_max, format = "%.3f", flags = 0)
    ImGui_VSliderFloatEx(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderIntEx(label, size, v, v_min, v_max, format = "%d", flags = 0)
    ImGui_VSliderIntEx(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderScalarEx(label, size, data_type, p_data, p_min, p_max, format = nil, flags = 0)
    ImGui_VSliderScalarEx(label, size, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextEx(label, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextEx(label, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), size(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextMultilineEx(label, buf, buf_size, size = ImVec2.create(0,0), flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextMultilineEx(label, buf, buf_size, size, flags, callback, user_data)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextWithHintEx(label, hint, buf, buf_size, flags = 0, callback = nil, user_data = nil)
    ImGui_InputTextWithHintEx(label, hint, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), v(float*), step(float), step_fast(float), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloatEx(label, v, step = 0.0, step_fast = 0.0, format = "%.3f", flags = 0)
    ImGui_InputFloatEx(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float[2]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat2Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat2Ex(label, v, format, flags)
  end

  # arg: label(const char*), v(float[3]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat3Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat3Ex(label, v, format, flags)
  end

  # arg: label(const char*), v(float[4]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat4Ex(label, v, format = "%.3f", flags = 0)
    ImGui_InputFloat4Ex(label, v, format, flags)
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

  # arg: label(const char*), v(double*), step(double), step_fast(double), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputDoubleEx(label, v, step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0)
    ImGui_InputDoubleEx(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalarEx(label, data_type, p_data, p_step = nil, p_step_fast = nil, format = nil, flags = 0)
    ImGui_InputScalarEx(label, data_type, p_data, p_step, p_step_fast, format, flags)
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

  # arg: str_id(const char*), fmt(const char*), args(va_list)
  # ret: bool
  def self.TreeNodeV(str_id, fmt, args)
    ImGui_TreeNodeV(str_id, fmt, args)
  end

  # arg: ptr_id(const void*), fmt(const char*), args(va_list)
  # ret: bool
  def self.TreeNodeVPtr(ptr_id, fmt, args)
    ImGui_TreeNodeVPtr(ptr_id, fmt, args)
  end

  # arg: label(const char*), flags(ImGuiTreeNodeFlags)
  # ret: bool
  def self.TreeNodeEx(label, flags = 0)
    ImGui_TreeNodeEx(label, flags)
  end

  # arg: str_id(const char*), flags(ImGuiTreeNodeFlags), fmt(const char*), args(va_list)
  # ret: bool
  def self.TreeNodeExV(str_id, flags, fmt, args)
    ImGui_TreeNodeExV(str_id, flags, fmt, args)
  end

  # arg: ptr_id(const void*), flags(ImGuiTreeNodeFlags), fmt(const char*), args(va_list)
  # ret: bool
  def self.TreeNodeExVPtr(ptr_id, flags, fmt, args)
    ImGui_TreeNodeExVPtr(ptr_id, flags, fmt, args)
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

  # arg: label(const char*), selected(bool), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.SelectableEx(label, selected = false, flags = 0, size = ImVec2.create(0,0))
    ImGui_SelectableEx(label, selected, flags, size)
  end

  # arg: label(const char*), p_selected(bool*), flags(ImGuiSelectableFlags), size(ImVec2)
  # ret: bool
  def self.SelectableBoolPtrEx(label, p_selected, flags = 0, size = ImVec2.create(0,0))
    ImGui_SelectableBoolPtrEx(label, p_selected, flags, size)
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

  # arg: label(const char*), current_item(int*), getter(const char* (*getter)(void* user_data, int idx)), user_data(void*), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBoxCallbackEx(label, current_item, getter, user_data, items_count, height_in_items = -1)
    ImGui_ListBoxCallbackEx(label, current_item, getter, user_data, items_count, height_in_items)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotLinesEx(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    ImGui_PlotLinesEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
  end

  # arg: label(const char*), values_getter(float (*values_getter)(void* data, int idx)), data(void*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2)
  # ret: void
  def self.PlotLinesCallbackEx(label, values_getter, data, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0))
    ImGui_PlotLinesCallbackEx(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
  end

  # arg: label(const char*), values(const float*), values_count(int), values_offset(int), overlay_text(const char*), scale_min(float), scale_max(float), graph_size(ImVec2), stride(int)
  # ret: void
  def self.PlotHistogramEx(label, values, values_count, values_offset = 0, overlay_text = nil, scale_min = Float::MAX, scale_max = Float::MAX, graph_size = ImVec2.create(0,0), stride = FFI::TYPE_FLOAT32.size)
    ImGui_PlotHistogramEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
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

  # arg: label(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenuEx(label, enabled = true)
    ImGui_BeginMenuEx(label, enabled)
  end

  # ret: void
  def self.EndMenu()
    ImGui_EndMenu()
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

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.SetTooltipV(fmt, args)
    ImGui_SetTooltipV(fmt, args)
  end

  # ret: bool
  def self.BeginItemTooltip()
    ImGui_BeginItemTooltip()
  end

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.SetItemTooltipV(fmt, args)
    ImGui_SetItemTooltipV(fmt, args)
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
  def self.OpenPopupOnItemClick(str_id = nil, popup_flags = 1)
    ImGui_OpenPopupOnItemClick(str_id, popup_flags)
  end

  # ret: void
  def self.CloseCurrentPopup()
    ImGui_CloseCurrentPopup()
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextItemEx(str_id = nil, popup_flags = 1)
    ImGui_BeginPopupContextItemEx(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextWindowEx(str_id = nil, popup_flags = 1)
    ImGui_BeginPopupContextWindowEx(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextVoidEx(str_id = nil, popup_flags = 1)
    ImGui_BeginPopupContextVoidEx(str_id, popup_flags)
  end

  # arg: str_id(const char*), flags(ImGuiPopupFlags)
  # ret: bool
  def self.IsPopupOpen(str_id, flags = 0)
    ImGui_IsPopupOpen(str_id, flags)
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

  # arg: dockspace_id(ImGuiID), size(ImVec2), flags(ImGuiDockNodeFlags), window_class(const ImGuiWindowClass*)
  # ret: uint
  def self.DockSpaceEx(dockspace_id, size = ImVec2.create(0,0), flags = 0, window_class = nil)
    ImGui_DockSpaceEx(dockspace_id, size, flags, window_class)
  end

  # arg: dockspace_id(ImGuiID), viewport(const ImGuiViewport*), flags(ImGuiDockNodeFlags), window_class(const ImGuiWindowClass*)
  # ret: uint
  def self.DockSpaceOverViewportEx(dockspace_id = 0, viewport = nil, flags = 0, window_class = nil)
    ImGui_DockSpaceOverViewportEx(dockspace_id, viewport, flags, window_class)
  end

  # arg: dock_id(ImGuiID), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowDockID(dock_id, cond = 0)
    ImGui_SetNextWindowDockID(dock_id, cond)
  end

  # arg: window_class(const ImGuiWindowClass*)
  # ret: void
  def self.SetNextWindowClass(window_class)
    ImGui_SetNextWindowClass(window_class)
  end

  # ret: uint
  def self.GetWindowDockID()
    ImGui_GetWindowDockID()
  end

  # ret: bool
  def self.IsWindowDocked()
    ImGui_IsWindowDocked()
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

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.LogTextV(fmt, args)
    ImGui_LogTextV(fmt, args)
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

  # ret: pointer
  def self.GetMainViewport()
    ImGui_GetMainViewport()
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetBackgroundDrawListEx(viewport = nil)
    ImGui_GetBackgroundDrawListEx(viewport)
  end

  # arg: viewport(ImGuiViewport*)
  # ret: pointer
  def self.GetForegroundDrawListEx(viewport = nil)
    ImGui_GetForegroundDrawListEx(viewport)
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

  # arg: fmt(const char*), args(va_list)
  # ret: void
  def self.DebugLogV(fmt, args)
    ImGui_DebugLogV(fmt, args)
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

  # ret: void
  def self.UpdatePlatformWindows()
    ImGui_UpdatePlatformWindows()
  end

  # arg: platform_render_arg(void*), renderer_render_arg(void*)
  # ret: void
  def self.RenderPlatformWindowsDefaultEx(platform_render_arg = nil, renderer_render_arg = nil)
    ImGui_RenderPlatformWindowsDefaultEx(platform_render_arg, renderer_render_arg)
  end

  # ret: void
  def self.DestroyPlatformWindows()
    ImGui_DestroyPlatformWindows()
  end

  # arg: viewport_id(ImGuiID)
  # ret: pointer
  def self.FindViewportByID(viewport_id)
    ImGui_FindViewportByID(viewport_id)
  end

  # arg: platform_handle(void*)
  # ret: pointer
  def self.FindViewportByPlatformHandle(platform_handle)
    ImGui_FindViewportByPlatformHandle(platform_handle)
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

  # arg: id(ImGuiID), size(ImVec2), window_flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginChildFrameEx(id, size, window_flags = 0)
    ImGui_BeginChildFrameEx(id, size, window_flags)
  end

  # ret: void
  def self.EndChildFrame()
    ImGui_EndChildFrame()
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowStackToolWindow(p_open = nil)
    ImGui_ShowStackToolWindow(p_open)
  end

  # arg: label(const char*), current_item(int*), old_callback(bool (*old_callback)(void* user_data, int idx, const char** out_text)), user_data(void*), items_count(int), popup_max_height_in_items(int)
  # ret: bool
  def self.ComboObsoleteEx(label, current_item, old_callback, user_data, items_count, popup_max_height_in_items = -1)
    ImGui_ComboObsoleteEx(label, current_item, old_callback, user_data, items_count, popup_max_height_in_items)
  end

  # arg: label(const char*), current_item(int*), old_callback(bool (*old_callback)(void* user_data, int idx, const char** out_text)), user_data(void*), items_count(int), height_in_items(int)
  # ret: bool
  def self.ListBoxObsoleteEx(label, current_item, old_callback, user_data, items_count, height_in_items = -1)
    ImGui_ListBoxObsoleteEx(label, current_item, old_callback, user_data, items_count, height_in_items)
  end

  # Overload functions

  def self.BeginChild(*arg)
    # arg: 0:str_id(const char*), 1:size(ImVec2), 2:child_flags(ImGuiChildFlags), 3:window_flags(ImGuiWindowFlags)
    # ret: bool
    return ImGui_BeginChild(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    # arg: 0:id(ImGuiID), 1:size(ImVec2), 2:child_flags(ImGuiChildFlags), 3:window_flags(ImGuiWindowFlags)
    # ret: bool
    return ImGui_BeginChildID(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::BeginChild : No matching functions found (#{arg})")
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
    return ImGui_SetWindowFocus() if arg.length == 0 && ()
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

  def self.PushStyleVar(*arg)
    # arg: 0:idx(ImGuiStyleVar), 1:val(float)
    # ret: void
    return ImGui_PushStyleVar(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:idx(ImGuiStyleVar), 1:val(ImVec2)
    # ret: void
    return ImGui_PushStyleVarImVec2(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PushStyleVar : No matching functions found (#{arg})")
  end

  def self.GetColorU32(*arg)
    # arg: 0:idx(ImGuiCol), 1:alpha_mul(float)
    # ret: uint
    return ImGui_GetColorU32Ex(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    # arg: 0:col(ImVec4)
    # ret: uint
    return ImGui_GetColorU32ImVec4(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec4))
    # arg: 0:col(ImU32), 1:alpha_mul(float)
    # ret: uint
    return ImGui_GetColorU32ImU32Ex(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(Integer) && arg[1].kind_of?(Float))
    $stderr.puts("[Warning] ImGui::GetColorU32 : No matching functions found (#{arg})")
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

  def self.Image(*arg)
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2), 2:uv0(ImVec2), 3:uv1(ImVec2)
    # ret: void
    return ImGui_ImageEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2))
    # arg: 0:tex_ref(ImTextureRef), 1:image_size(ImVec2), 2:uv0(ImVec2), 3:uv1(ImVec2), 4:tint_col(ImVec4), 5:border_col(ImVec4)
    # ret: void
    return ImGui_ImageImVec4(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(ImTextureRef) && arg[1].kind_of?(ImVec2) && arg[2].kind_of?(ImVec2) && arg[3].kind_of?(ImVec2) && arg[4].kind_of?(ImVec4) && arg[5].kind_of?(ImVec4))
    $stderr.puts("[Warning] ImGui::Image : No matching functions found (#{arg})")
  end

  def self.Combo(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char*const[]), 3:items_count(int), 4:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboCharEx(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:items_separated_by_zeros(const char*), 3:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int), 5:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:old_callback(bool (*old_callback)(void* user_data, int idx, const char** out_text)), 3:user_data(void*), 4:items_count(int), 5:popup_max_height_in_items(int)
    # ret: bool
    return ImGui_ComboObsoleteEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::Combo : No matching functions found (#{arg})")
  end

  def self.TreeNodeV(*arg)
    # arg: 0:str_id(const char*), 1:fmt(const char*), 2:args(va_list)
    # ret: bool
    return ImGui_TreeNodeV(arg[0], arg[1], arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(String) && arg[1].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:fmt(const char*), 2:args(va_list)
    # ret: bool
    return ImGui_TreeNodeVPtr(arg[0], arg[1], arg[2..]) if arg.length >= 2 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TreeNodeV : No matching functions found (#{arg})")
  end

  def self.TreeNodeExV(*arg)
    # arg: 0:str_id(const char*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:args(va_list)
    # ret: bool
    return ImGui_TreeNodeExV(arg[0], arg[1], arg[2], arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(String) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    # arg: 0:ptr_id(const void*), 1:flags(ImGuiTreeNodeFlags), 2:fmt(const char*), 3:args(va_list)
    # ret: bool
    return ImGui_TreeNodeExVPtr(arg[0], arg[1], arg[2], arg[3..]) if arg.length >= 3 && (arg[0].kind_of?(FFI::Pointer) && arg[1].kind_of?(Integer) && arg[2].kind_of?(String))
    $stderr.puts("[Warning] ImGui::TreeNodeExV : No matching functions found (#{arg})")
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
    # arg: 0:label(const char*), 1:selected(bool), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return ImGui_SelectableEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && (arg[1].is_a?(TrueClass) || arg[1].is_a?(FalseClass)) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    # arg: 0:label(const char*), 1:p_selected(bool*), 2:flags(ImGuiSelectableFlags), 3:size(ImVec2)
    # ret: bool
    return ImGui_SelectableBoolPtrEx(arg[0], arg[1], arg[2], arg[3]) if arg.length == 4 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::Selectable : No matching functions found (#{arg})")
  end

  def self.ListBox(*arg)
    # arg: 0:label(const char*), 1:current_item(int*), 2:items(const char*const[]), 3:items_count(int), 4:height_in_items(int)
    # ret: bool
    return ImGui_ListBox(arg[0], arg[1], arg[2], arg[3], arg[4]) if arg.length == 5 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:getter(const char* (*getter)(void* user_data, int idx)), 3:user_data(void*), 4:items_count(int), 5:height_in_items(int)
    # ret: bool
    return ImGui_ListBoxCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    # arg: 0:label(const char*), 1:current_item(int*), 2:old_callback(bool (*old_callback)(void* user_data, int idx, const char** out_text)), 3:user_data(void*), 4:items_count(int), 5:height_in_items(int)
    # ret: bool
    return ImGui_ListBoxObsoleteEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]) if arg.length == 6 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(String) && arg[3].kind_of?(FFI::Pointer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(Integer))
    $stderr.puts("[Warning] ImGui::ListBox : No matching functions found (#{arg})")
  end

  def self.PlotLines(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return ImGui_PlotLinesEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return ImGui_PlotLinesCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PlotLines : No matching functions found (#{arg})")
  end

  def self.PlotHistogram(*arg)
    # arg: 0:label(const char*), 1:values(const float*), 2:values_count(int), 3:values_offset(int), 4:overlay_text(const char*), 5:scale_min(float), 6:scale_max(float), 7:graph_size(ImVec2), 8:stride(int)
    # ret: void
    return ImGui_PlotHistogramEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(Integer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(String) && arg[5].kind_of?(Float) && arg[6].kind_of?(Float) && arg[7].kind_of?(ImVec2) && arg[8].kind_of?(Integer))
    # arg: 0:label(const char*), 1:values_getter(float (*values_getter)(void* data, int idx)), 2:data(void*), 3:values_count(int), 4:values_offset(int), 5:overlay_text(const char*), 6:scale_min(float), 7:scale_max(float), 8:graph_size(ImVec2)
    # ret: void
    return ImGui_PlotHistogramCallbackEx(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]) if arg.length == 9 && (arg[0].kind_of?(String) && arg[1].kind_of?(FFI::Pointer) && arg[2].kind_of?(FFI::Pointer) && arg[3].kind_of?(Integer) && arg[4].kind_of?(Integer) && arg[5].kind_of?(String) && arg[6].kind_of?(Float) && arg[7].kind_of?(Float) && arg[8].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::PlotHistogram : No matching functions found (#{arg})")
  end

  def self.MenuItem(*arg)
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

  def self.IsRectVisible(*arg)
    # arg: 0:size(ImVec2)
    # ret: bool
    return ImGui_IsRectVisibleBySize(arg[0]) if arg.length == 1 && (arg[0].kind_of?(ImVec2))
    # arg: 0:rect_min(ImVec2), 1:rect_max(ImVec2)
    # ret: bool
    return ImGui_IsRectVisible(arg[0], arg[1]) if arg.length == 2 && (arg[0].kind_of?(ImVec2) && arg[1].kind_of?(ImVec2))
    $stderr.puts("[Warning] ImGui::IsRectVisible : No matching functions found (#{arg})")
  end

end # module ImGui
