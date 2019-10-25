# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

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
ImGuiNavInput_KeyTab_ = 17 # 17
ImGuiNavInput_KeyLeft_ = 18 # 18
ImGuiNavInput_KeyRight_ = 19 # 19
ImGuiNavInput_KeyUp_ = 20 # 20
ImGuiNavInput_KeyDown_ = 21 # 21
ImGuiNavInput_COUNT = 22 # 22
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

class ImDrawListSplitter < FFI::Struct
  layout(
    :_Current, :int,
    :_Count, :int,
    :_Channels, ImVector.by_value
  )
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
    :CmdLists, :pointer,
    :CmdListsCount, :int,
    :TotalIdxCount, :int,
    :TotalVtxCount, :int,
    :DisplayPos, ImVec2.by_value,
    :DisplaySize, ImVec2.by_value,
    :FramebufferScale, ImVec2.by_value
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
    :_VtxWritePtr, :pointer,
    :_IdxWritePtr, :pointer,
    :_ClipRectStack, ImVector.by_value,
    :_TextureIdStack, ImVector.by_value,
    :_Path, ImVector.by_value,
    :_Splitter, ImDrawListSplitter.by_value
  )
end

class ImDrawVert < FFI::Struct
  layout(
    :pos, ImVec2.by_value,
    :uv, ImVec2.by_value,
    :col, :uint
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
    :ContainerAtlas, :pointer,
    :ConfigData, :pointer,
    :ConfigDataCount, :short,
    :FallbackChar, :ushort,
    :EllipsisChar, :ushort,
    :Scale, :float,
    :Ascent, :float,
    :Descent, :float,
    :MetricsTotalSurface, :int,
    :DirtyLookupTables, :bool
  )
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
    :Font, :pointer
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
    :DstFont, :pointer
  )
end

class ImFontGlyphRangesBuilder < FFI::Struct
  layout(
    :UsedChars, ImVector.by_value
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
    :KeyMap, [:int, 22],
    :KeyRepeatDelay, :float,
    :KeyRepeatRate, :float,
    :UserData, :pointer,
    :Fonts, :pointer,
    :FontGlobalScale, :float,
    :FontAllowUserScaling, :bool,
    :FontDefault, :pointer,
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
    :NavInputs, [:float, 22],
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
    :NavInputsDownDuration, [:float, 22],
    :NavInputsDownDurationPrev, [:float, 22],
    :InputQueueCharacters, ImVector.by_value
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
    :Colors, [ImVec4.by_value, 48]
  )
end

class ImGuiTextRange < FFI::Struct
  layout(
    :b, :pointer,
    :e, :pointer
  )
end

class ImGuiStoragePair < FFI::Struct
  layout(
    :key, :uint,
    :val_p, :pointer
  )
end

module ImGui

  extend FFI::Library

  typedef :pointer, :ImDrawCallback
  typedef :int, :ImDrawCornerFlags
  typedef :ushort, :ImDrawIdx
  typedef :int, :ImDrawListFlags
  typedef :int, :ImFontAtlasFlags
  typedef :int, :ImGuiBackendFlags
  typedef :int, :ImGuiCol
  typedef :int, :ImGuiColorEditFlags
  typedef :int, :ImGuiComboFlags
  typedef :int, :ImGuiCond
  typedef :int, :ImGuiConfigFlags
  typedef :int, :ImGuiDataType
  typedef :int, :ImGuiDir
  typedef :int, :ImGuiDragDropFlags
  typedef :int, :ImGuiFocusedFlags
  typedef :int, :ImGuiHoveredFlags
  typedef :uint, :ImGuiID
  typedef :pointer, :ImGuiInputTextCallback
  typedef :int, :ImGuiInputTextFlags
  typedef :int, :ImGuiKey
  typedef :int, :ImGuiMouseCursor
  typedef :int, :ImGuiNavInput
  typedef :int, :ImGuiSelectableFlags
  typedef :pointer, :ImGuiSizeCallback
  typedef :int, :ImGuiStyleVar
  typedef :int, :ImGuiTabBarFlags
  typedef :int, :ImGuiTabItemFlags
  typedef :int, :ImGuiTreeNodeFlags
  typedef :int, :ImGuiWindowFlags
  typedef :short, :ImS16
  typedef :int, :ImS32
  typedef :int64, :ImS64
  typedef :char, :ImS8
  typedef :pointer, :ImTextureID
  typedef :ushort, :ImU16
  typedef :uint, :ImU32
  typedef :uint64, :ImU64
  typedef :uchar, :ImU8
  typedef :ushort, :ImWchar

  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui.dylib')
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols() unless @@imgui_import_done
  end

  def self.import_symbols()
    attach_function :FontAtlas_AddCustomRectFontGlyph, :ImFontAtlas_AddCustomRectFontGlyph, [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value], :int
    attach_function :FontAtlas_AddCustomRectRegular, :ImFontAtlas_AddCustomRectRegular, [:pointer, :uint, :int, :int], :int
    attach_function :FontAtlas_AddFont, :ImFontAtlas_AddFont, [:pointer, :pointer], :pointer
    attach_function :FontAtlas_AddFontDefault, :ImFontAtlas_AddFontDefault, [:pointer, :pointer], :pointer
    attach_function :FontAtlas_AddFontFromFileTTF, :ImFontAtlas_AddFontFromFileTTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer
    attach_function :FontAtlas_AddFontFromMemoryCompressedBase85TTF, :ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer
    attach_function :FontAtlas_AddFontFromMemoryCompressedTTF, :ImFontAtlas_AddFontFromMemoryCompressedTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer
    attach_function :FontAtlas_AddFontFromMemoryTTF, :ImFontAtlas_AddFontFromMemoryTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer
    attach_function :FontAtlas_Build, :ImFontAtlas_Build, [:pointer], :bool
    attach_function :FontAtlas_CalcCustomRectUV, :ImFontAtlas_CalcCustomRectUV, [:pointer, :pointer, :pointer, :pointer], :void
    attach_function :FontAtlas_Clear, :ImFontAtlas_Clear, [:pointer], :void
    attach_function :FontAtlas_ClearFonts, :ImFontAtlas_ClearFonts, [:pointer], :void
    attach_function :FontAtlas_ClearInputData, :ImFontAtlas_ClearInputData, [:pointer], :void
    attach_function :FontAtlas_ClearTexData, :ImFontAtlas_ClearTexData, [:pointer], :void
    attach_function :FontAtlas_GetCustomRectByIndex, :ImFontAtlas_GetCustomRectByIndex, [:pointer, :int], :pointer
    attach_function :FontAtlas_GetGlyphRangesChineseFull, :ImFontAtlas_GetGlyphRangesChineseFull, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesChineseSimplifiedCommon, :ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesCyrillic, :ImFontAtlas_GetGlyphRangesCyrillic, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesDefault, :ImFontAtlas_GetGlyphRangesDefault, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesJapanese, :ImFontAtlas_GetGlyphRangesJapanese, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesKorean, :ImFontAtlas_GetGlyphRangesKorean, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesThai, :ImFontAtlas_GetGlyphRangesThai, [:pointer], :pointer
    attach_function :FontAtlas_GetGlyphRangesVietnamese, :ImFontAtlas_GetGlyphRangesVietnamese, [:pointer], :pointer
    attach_function :FontAtlas_GetMouseCursorTexData, :ImFontAtlas_GetMouseCursorTexData, [:pointer, :int, :pointer, :pointer, ImVec2.by_value, ImVec2.by_value], :bool
    attach_function :FontAtlas_GetTexDataAsAlpha8, :ImFontAtlas_GetTexDataAsAlpha8, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :FontAtlas_GetTexDataAsRGBA32, :ImFontAtlas_GetTexDataAsRGBA32, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :FontAtlas_ImFontAtlas, :ImFontAtlas_ImFontAtlas, [], :void
    attach_function :FontAtlas_IsBuilt, :ImFontAtlas_IsBuilt, [:pointer], :bool
    attach_function :FontAtlas_SetTexID, :ImFontAtlas_SetTexID, [:pointer, :pointer], :void
    attach_function :FontAtlas_destroy, :ImFontAtlas_destroy, [:pointer], :void
    attach_function :AcceptDragDropPayload, :igAcceptDragDropPayload, [:pointer, :int], :pointer
    attach_function :AlignTextToFramePadding, :igAlignTextToFramePadding, [], :void
    attach_function :ArrowButton, :igArrowButton, [:pointer, :int], :bool
    attach_function :Begin, :igBegin, [:pointer, :pointer, :int], :bool
    attach_function :BeginChild, :igBeginChild, [:pointer, ImVec2.by_value, :bool, :int], :bool
    attach_function :BeginChildID, :igBeginChildID, [:uint, ImVec2.by_value, :bool, :int], :bool
    attach_function :BeginChildFrame, :igBeginChildFrame, [:uint, ImVec2.by_value, :int], :bool
    attach_function :BeginCombo, :igBeginCombo, [:pointer, :pointer, :int], :bool
    attach_function :BeginDragDropSource, :igBeginDragDropSource, [:int], :bool
    attach_function :BeginDragDropTarget, :igBeginDragDropTarget, [], :bool
    attach_function :BeginGroup, :igBeginGroup, [], :void
    attach_function :BeginMainMenuBar, :igBeginMainMenuBar, [], :bool
    attach_function :BeginMenu, :igBeginMenu, [:pointer, :bool], :bool
    attach_function :BeginMenuBar, :igBeginMenuBar, [], :bool
    attach_function :BeginPopup, :igBeginPopup, [:pointer, :int], :bool
    attach_function :BeginPopupContextItem, :igBeginPopupContextItem, [:pointer, :int], :bool
    attach_function :BeginPopupContextVoid, :igBeginPopupContextVoid, [:pointer, :int], :bool
    attach_function :BeginPopupContextWindow, :igBeginPopupContextWindow, [:pointer, :int, :bool], :bool
    attach_function :BeginPopupModal, :igBeginPopupModal, [:pointer, :pointer, :int], :bool
    attach_function :BeginTabBar, :igBeginTabBar, [:pointer, :int], :bool
    attach_function :BeginTabItem, :igBeginTabItem, [:pointer, :pointer, :int], :bool
    attach_function :BeginTooltip, :igBeginTooltip, [], :void
    attach_function :Bullet, :igBullet, [], :void
    attach_function :BulletText, :igBulletText, [:pointer, :varargs], :void
    attach_function :Button, :igButton, [:pointer, ImVec2.by_value], :bool
    attach_function :CalcItemWidth, :igCalcItemWidth, [], :float
    attach_function :CalcListClipping, :igCalcListClipping, [:int, :float, :pointer, :pointer], :void
    attach_function :CalcTextSize, :igCalcTextSize, [:pointer, :pointer, :bool, :float], ImVec2.by_value
    attach_function :CalcTextSize_nonUDT, :igCalcTextSize_nonUDT, [:pointer, :pointer, :pointer, :bool, :float], :void
    attach_function :CalcTextSize_nonUDT2, :igCalcTextSize_nonUDT2, [:pointer, :pointer, :bool, :float], ImVec2.by_value
    attach_function :CaptureKeyboardFromApp, :igCaptureKeyboardFromApp, [:bool], :void
    attach_function :CaptureMouseFromApp, :igCaptureMouseFromApp, [:bool], :void
    attach_function :Checkbox, :igCheckbox, [:pointer, :pointer], :bool
    attach_function :CheckboxFlags, :igCheckboxFlags, [:pointer, :pointer, :uint], :bool
    attach_function :CloseCurrentPopup, :igCloseCurrentPopup, [], :void
    attach_function :CollapsingHeader, :igCollapsingHeader, [:pointer, :int], :bool
    attach_function :CollapsingHeaderBoolPtr, :igCollapsingHeaderBoolPtr, [:pointer, :pointer, :int], :bool
    attach_function :ColorButton, :igColorButton, [:pointer, ImVec4.by_value, :int, ImVec2.by_value], :bool
    attach_function :ColorConvertFloat4ToU32, :igColorConvertFloat4ToU32, [ImVec4.by_value], :uint
    attach_function :ColorConvertHSVtoRGB, :igColorConvertHSVtoRGB, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :ColorConvertRGBtoHSV, :igColorConvertRGBtoHSV, [:float, :float, :float, :pointer, :pointer, :pointer], :void
    attach_function :ColorConvertU32ToFloat4, :igColorConvertU32ToFloat4, [:uint], ImVec4.by_value
    attach_function :ColorConvertU32ToFloat4_nonUDT, :igColorConvertU32ToFloat4_nonUDT, [:pointer, :uint], :void
    attach_function :ColorConvertU32ToFloat4_nonUDT2, :igColorConvertU32ToFloat4_nonUDT2, [:uint], ImVec4.by_value
    attach_function :ColorEdit3, :igColorEdit3, [:pointer, :float, :int], :bool
    attach_function :ColorEdit4, :igColorEdit4, [:pointer, :float, :int], :bool
    attach_function :ColorPicker3, :igColorPicker3, [:pointer, :float, :int], :bool
    attach_function :ColorPicker4, :igColorPicker4, [:pointer, :float, :int, :pointer], :bool
    attach_function :Columns, :igColumns, [:int, :pointer, :bool], :void
    attach_function :Combo, :igCombo, [:pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :ComboStr, :igComboStr, [:pointer, :pointer, :pointer, :int], :bool
    attach_function :ComboFnPtr, :igComboFnPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :CreateContext, :igCreateContext, [:pointer], :pointer
    attach_function :DebugCheckVersionAndDataLayout, :igDebugCheckVersionAndDataLayout, [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t], :bool
    attach_function :DestroyContext, :igDestroyContext, [:pointer], :void
    attach_function :DragFloat, :igDragFloat, [:pointer, :pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :DragFloat2, :igDragFloat2, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :DragFloat3, :igDragFloat3, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :DragFloat4, :igDragFloat4, [:pointer, :float, :float, :float, :float, :pointer, :float], :bool
    attach_function :DragFloatRange2, :igDragFloatRange2, [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :float], :bool
    attach_function :DragInt, :igDragInt, [:pointer, :pointer, :float, :int, :int, :pointer], :bool
    attach_function :DragInt2, :igDragInt2, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :DragInt3, :igDragInt3, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :DragInt4, :igDragInt4, [:pointer, :int, :float, :int, :int, :pointer], :bool
    attach_function :DragIntRange2, :igDragIntRange2, [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer], :bool
    attach_function :DragScalar, :igDragScalar, [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :float], :bool
    attach_function :DragScalarN, :igDragScalarN, [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :float], :bool
    attach_function :Dummy, :igDummy, [ImVec2.by_value], :void
    attach_function :End, :igEnd, [], :void
    attach_function :EndChild, :igEndChild, [], :void
    attach_function :EndChildFrame, :igEndChildFrame, [], :void
    attach_function :EndCombo, :igEndCombo, [], :void
    attach_function :EndDragDropSource, :igEndDragDropSource, [], :void
    attach_function :EndDragDropTarget, :igEndDragDropTarget, [], :void
    attach_function :EndFrame, :igEndFrame, [], :void
    attach_function :EndGroup, :igEndGroup, [], :void
    attach_function :EndMainMenuBar, :igEndMainMenuBar, [], :void
    attach_function :EndMenu, :igEndMenu, [], :void
    attach_function :EndMenuBar, :igEndMenuBar, [], :void
    attach_function :EndPopup, :igEndPopup, [], :void
    attach_function :EndTabBar, :igEndTabBar, [], :void
    attach_function :EndTabItem, :igEndTabItem, [], :void
    attach_function :EndTooltip, :igEndTooltip, [], :void
    attach_function :GetBackgroundDrawList, :igGetBackgroundDrawList, [], :pointer
    attach_function :GetClipboardText, :igGetClipboardText, [], :pointer
    attach_function :GetColorU32, :igGetColorU32, [:int, :float], :uint
    attach_function :GetColorU32Vec4, :igGetColorU32Vec4, [ImVec4.by_value], :uint
    attach_function :GetColorU32U32, :igGetColorU32U32, [:uint], :uint
    attach_function :GetColumnIndex, :igGetColumnIndex, [], :int
    attach_function :GetColumnOffset, :igGetColumnOffset, [:int], :float
    attach_function :GetColumnWidth, :igGetColumnWidth, [:int], :float
    attach_function :GetColumnsCount, :igGetColumnsCount, [], :int
    attach_function :GetContentRegionAvail, :igGetContentRegionAvail, [], ImVec2.by_value
    attach_function :GetContentRegionAvail_nonUDT, :igGetContentRegionAvail_nonUDT, [:pointer], :void
    attach_function :GetContentRegionAvail_nonUDT2, :igGetContentRegionAvail_nonUDT2, [], ImVec2.by_value
    attach_function :GetContentRegionMax, :igGetContentRegionMax, [], ImVec2.by_value
    attach_function :GetContentRegionMax_nonUDT, :igGetContentRegionMax_nonUDT, [:pointer], :void
    attach_function :GetContentRegionMax_nonUDT2, :igGetContentRegionMax_nonUDT2, [], ImVec2.by_value
    attach_function :GetCurrentContext, :igGetCurrentContext, [], :pointer
    attach_function :GetCursorPos, :igGetCursorPos, [], ImVec2.by_value
    attach_function :GetCursorPos_nonUDT, :igGetCursorPos_nonUDT, [:pointer], :void
    attach_function :GetCursorPos_nonUDT2, :igGetCursorPos_nonUDT2, [], ImVec2.by_value
    attach_function :GetCursorPosX, :igGetCursorPosX, [], :float
    attach_function :GetCursorPosY, :igGetCursorPosY, [], :float
    attach_function :GetCursorScreenPos, :igGetCursorScreenPos, [], ImVec2.by_value
    attach_function :GetCursorScreenPos_nonUDT, :igGetCursorScreenPos_nonUDT, [:pointer], :void
    attach_function :GetCursorScreenPos_nonUDT2, :igGetCursorScreenPos_nonUDT2, [], ImVec2.by_value
    attach_function :GetCursorStartPos, :igGetCursorStartPos, [], ImVec2.by_value
    attach_function :GetCursorStartPos_nonUDT, :igGetCursorStartPos_nonUDT, [:pointer], :void
    attach_function :GetCursorStartPos_nonUDT2, :igGetCursorStartPos_nonUDT2, [], ImVec2.by_value
    attach_function :GetDragDropPayload, :igGetDragDropPayload, [], :pointer
    attach_function :GetDrawData, :igGetDrawData, [], :pointer
    attach_function :GetDrawListSharedData, :igGetDrawListSharedData, [], :pointer
    attach_function :GetFont, :igGetFont, [], :pointer
    attach_function :GetFontSize, :igGetFontSize, [], :float
    attach_function :GetFontTexUvWhitePixel, :igGetFontTexUvWhitePixel, [], ImVec2.by_value
    attach_function :GetFontTexUvWhitePixel_nonUDT, :igGetFontTexUvWhitePixel_nonUDT, [:pointer], :void
    attach_function :GetFontTexUvWhitePixel_nonUDT2, :igGetFontTexUvWhitePixel_nonUDT2, [], ImVec2.by_value
    attach_function :GetForegroundDrawList, :igGetForegroundDrawList, [], :pointer
    attach_function :GetFrameCount, :igGetFrameCount, [], :int
    attach_function :GetFrameHeight, :igGetFrameHeight, [], :float
    attach_function :GetFrameHeightWithSpacing, :igGetFrameHeightWithSpacing, [], :float
    attach_function :GetIDStr, :igGetIDStr, [:pointer], :uint
    attach_function :GetIDRange, :igGetIDRange, [:pointer, :pointer], :uint
    attach_function :GetIDPtr, :igGetIDPtr, [:pointer], :uint
    attach_function :GetIO, :igGetIO, [], :pointer
    attach_function :GetItemRectMax, :igGetItemRectMax, [], ImVec2.by_value
    attach_function :GetItemRectMax_nonUDT, :igGetItemRectMax_nonUDT, [:pointer], :void
    attach_function :GetItemRectMax_nonUDT2, :igGetItemRectMax_nonUDT2, [], ImVec2.by_value
    attach_function :GetItemRectMin, :igGetItemRectMin, [], ImVec2.by_value
    attach_function :GetItemRectMin_nonUDT, :igGetItemRectMin_nonUDT, [:pointer], :void
    attach_function :GetItemRectMin_nonUDT2, :igGetItemRectMin_nonUDT2, [], ImVec2.by_value
    attach_function :GetItemRectSize, :igGetItemRectSize, [], ImVec2.by_value
    attach_function :GetItemRectSize_nonUDT, :igGetItemRectSize_nonUDT, [:pointer], :void
    attach_function :GetItemRectSize_nonUDT2, :igGetItemRectSize_nonUDT2, [], ImVec2.by_value
    attach_function :GetKeyIndex, :igGetKeyIndex, [:int], :int
    attach_function :GetKeyPressedAmount, :igGetKeyPressedAmount, [:int, :float, :float], :int
    attach_function :GetMouseCursor, :igGetMouseCursor, [], :int
    attach_function :GetMouseDragDelta, :igGetMouseDragDelta, [:int, :float], ImVec2.by_value
    attach_function :GetMouseDragDelta_nonUDT, :igGetMouseDragDelta_nonUDT, [:pointer, :int, :float], :void
    attach_function :GetMouseDragDelta_nonUDT2, :igGetMouseDragDelta_nonUDT2, [:int, :float], ImVec2.by_value
    attach_function :GetMousePos, :igGetMousePos, [], ImVec2.by_value
    attach_function :GetMousePos_nonUDT, :igGetMousePos_nonUDT, [:pointer], :void
    attach_function :GetMousePos_nonUDT2, :igGetMousePos_nonUDT2, [], ImVec2.by_value
    attach_function :GetMousePosOnOpeningCurrentPopup, :igGetMousePosOnOpeningCurrentPopup, [], ImVec2.by_value
    attach_function :GetMousePosOnOpeningCurrentPopup_nonUDT, :igGetMousePosOnOpeningCurrentPopup_nonUDT, [:pointer], :void
    attach_function :GetMousePosOnOpeningCurrentPopup_nonUDT2, :igGetMousePosOnOpeningCurrentPopup_nonUDT2, [], ImVec2.by_value
    attach_function :GetScrollMaxX, :igGetScrollMaxX, [], :float
    attach_function :GetScrollMaxY, :igGetScrollMaxY, [], :float
    attach_function :GetScrollX, :igGetScrollX, [], :float
    attach_function :GetScrollY, :igGetScrollY, [], :float
    attach_function :GetStateStorage, :igGetStateStorage, [], :pointer
    attach_function :GetStyle, :igGetStyle, [], :pointer
    attach_function :GetStyleColorName, :igGetStyleColorName, [:int], :pointer
    attach_function :GetStyleColorVec4, :igGetStyleColorVec4, [:int], :pointer
    attach_function :GetTextLineHeight, :igGetTextLineHeight, [], :float
    attach_function :GetTextLineHeightWithSpacing, :igGetTextLineHeightWithSpacing, [], :float
    attach_function :GetTime, :igGetTime, [], :double
    attach_function :GetTreeNodeToLabelSpacing, :igGetTreeNodeToLabelSpacing, [], :float
    attach_function :GetVersion, :igGetVersion, [], :pointer
    attach_function :GetWindowContentRegionMax, :igGetWindowContentRegionMax, [], ImVec2.by_value
    attach_function :GetWindowContentRegionMax_nonUDT, :igGetWindowContentRegionMax_nonUDT, [:pointer], :void
    attach_function :GetWindowContentRegionMax_nonUDT2, :igGetWindowContentRegionMax_nonUDT2, [], ImVec2.by_value
    attach_function :GetWindowContentRegionMin, :igGetWindowContentRegionMin, [], ImVec2.by_value
    attach_function :GetWindowContentRegionMin_nonUDT, :igGetWindowContentRegionMin_nonUDT, [:pointer], :void
    attach_function :GetWindowContentRegionMin_nonUDT2, :igGetWindowContentRegionMin_nonUDT2, [], ImVec2.by_value
    attach_function :GetWindowContentRegionWidth, :igGetWindowContentRegionWidth, [], :float
    attach_function :GetWindowDrawList, :igGetWindowDrawList, [], :pointer
    attach_function :GetWindowHeight, :igGetWindowHeight, [], :float
    attach_function :GetWindowPos, :igGetWindowPos, [], ImVec2.by_value
    attach_function :GetWindowPos_nonUDT, :igGetWindowPos_nonUDT, [:pointer], :void
    attach_function :GetWindowPos_nonUDT2, :igGetWindowPos_nonUDT2, [], ImVec2.by_value
    attach_function :GetWindowSize, :igGetWindowSize, [], ImVec2.by_value
    attach_function :GetWindowSize_nonUDT, :igGetWindowSize_nonUDT, [:pointer], :void
    attach_function :GetWindowSize_nonUDT2, :igGetWindowSize_nonUDT2, [], ImVec2.by_value
    attach_function :GetWindowWidth, :igGetWindowWidth, [], :float
    attach_function :Image, :igImage, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void
    attach_function :ImageButton, :igImageButton, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int, ImVec4.by_value, ImVec4.by_value], :bool
    attach_function :Indent, :igIndent, [:float], :void
    attach_function :InputDouble, :igInputDouble, [:pointer, :pointer, :double, :double, :pointer, :int], :bool
    attach_function :InputFloat, :igInputFloat, [:pointer, :pointer, :float, :float, :pointer, :int], :bool
    attach_function :InputFloat2, :igInputFloat2, [:pointer, :float, :pointer, :int], :bool
    attach_function :InputFloat3, :igInputFloat3, [:pointer, :float, :pointer, :int], :bool
    attach_function :InputFloat4, :igInputFloat4, [:pointer, :float, :pointer, :int], :bool
    attach_function :InputInt, :igInputInt, [:pointer, :pointer, :int, :int, :int], :bool
    attach_function :InputInt2, :igInputInt2, [:pointer, :int, :int], :bool
    attach_function :InputInt3, :igInputInt3, [:pointer, :int, :int], :bool
    attach_function :InputInt4, :igInputInt4, [:pointer, :int, :int], :bool
    attach_function :InputScalar, :igInputScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool
    attach_function :InputScalarN, :igInputScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool
    attach_function :InputText, :igInputText, [:pointer, :pointer, :size_t, :int, :pointer, :pointer], :bool
    attach_function :InputTextMultiline, :igInputTextMultiline, [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :pointer, :pointer], :bool
    attach_function :InputTextWithHint, :igInputTextWithHint, [:pointer, :pointer, :pointer, :size_t, :int, :pointer, :pointer], :bool
    attach_function :InvisibleButton, :igInvisibleButton, [:pointer, ImVec2.by_value], :bool
    attach_function :IsAnyItemActive, :igIsAnyItemActive, [], :bool
    attach_function :IsAnyItemFocused, :igIsAnyItemFocused, [], :bool
    attach_function :IsAnyItemHovered, :igIsAnyItemHovered, [], :bool
    attach_function :IsAnyMouseDown, :igIsAnyMouseDown, [], :bool
    attach_function :IsItemActivated, :igIsItemActivated, [], :bool
    attach_function :IsItemActive, :igIsItemActive, [], :bool
    attach_function :IsItemClicked, :igIsItemClicked, [:int], :bool
    attach_function :IsItemDeactivated, :igIsItemDeactivated, [], :bool
    attach_function :IsItemDeactivatedAfterEdit, :igIsItemDeactivatedAfterEdit, [], :bool
    attach_function :IsItemEdited, :igIsItemEdited, [], :bool
    attach_function :IsItemFocused, :igIsItemFocused, [], :bool
    attach_function :IsItemHovered, :igIsItemHovered, [:int], :bool
    attach_function :IsItemVisible, :igIsItemVisible, [], :bool
    attach_function :IsKeyDown, :igIsKeyDown, [:int], :bool
    attach_function :IsKeyPressed, :igIsKeyPressed, [:int, :bool], :bool
    attach_function :IsKeyReleased, :igIsKeyReleased, [:int], :bool
    attach_function :IsMouseClicked, :igIsMouseClicked, [:int, :bool], :bool
    attach_function :IsMouseDoubleClicked, :igIsMouseDoubleClicked, [:int], :bool
    attach_function :IsMouseDown, :igIsMouseDown, [:int], :bool
    attach_function :IsMouseDragging, :igIsMouseDragging, [:int, :float], :bool
    attach_function :IsMouseHoveringRect, :igIsMouseHoveringRect, [ImVec2.by_value, ImVec2.by_value, :bool], :bool
    attach_function :IsMousePosValid, :igIsMousePosValid, [:pointer], :bool
    attach_function :IsMouseReleased, :igIsMouseReleased, [:int], :bool
    attach_function :IsPopupOpen, :igIsPopupOpen, [:pointer], :bool
    attach_function :IsRectVisible, :igIsRectVisible, [ImVec2.by_value], :bool
    attach_function :IsRectVisibleVec2, :igIsRectVisibleVec2, [ImVec2.by_value, ImVec2.by_value], :bool
    attach_function :IsWindowAppearing, :igIsWindowAppearing, [], :bool
    attach_function :IsWindowCollapsed, :igIsWindowCollapsed, [], :bool
    attach_function :IsWindowFocused, :igIsWindowFocused, [:int], :bool
    attach_function :IsWindowHovered, :igIsWindowHovered, [:int], :bool
    attach_function :LabelText, :igLabelText, [:pointer, :pointer, :varargs], :void
    attach_function :ListBoxStr_arr, :igListBoxStr_arr, [:pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :ListBoxFnPtr, :igListBoxFnPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool
    attach_function :ListBoxFooter, :igListBoxFooter, [], :void
    attach_function :ListBoxHeaderVec2, :igListBoxHeaderVec2, [:pointer, ImVec2.by_value], :bool
    attach_function :ListBoxHeaderInt, :igListBoxHeaderInt, [:pointer, :int, :int], :bool
    attach_function :LoadIniSettingsFromDisk, :igLoadIniSettingsFromDisk, [:pointer], :void
    attach_function :LoadIniSettingsFromMemory, :igLoadIniSettingsFromMemory, [:pointer, :size_t], :void
    attach_function :LogButtons, :igLogButtons, [], :void
    attach_function :LogFinish, :igLogFinish, [], :void
    attach_function :LogText, :igLogText, [:pointer, :varargs], :void
    attach_function :LogToClipboard, :igLogToClipboard, [:int], :void
    attach_function :LogToFile, :igLogToFile, [:int, :pointer], :void
    attach_function :LogToTTY, :igLogToTTY, [:int], :void
    attach_function :MemAlloc, :igMemAlloc, [:size_t], :pointer
    attach_function :MemFree, :igMemFree, [:pointer], :void
    attach_function :MenuItemBool, :igMenuItemBool, [:pointer, :pointer, :bool, :bool], :bool
    attach_function :MenuItemBoolPtr, :igMenuItemBoolPtr, [:pointer, :pointer, :pointer, :bool], :bool
    attach_function :NewFrame, :igNewFrame, [], :void
    attach_function :NewLine, :igNewLine, [], :void
    attach_function :NextColumn, :igNextColumn, [], :void
    attach_function :OpenPopup, :igOpenPopup, [:pointer], :void
    attach_function :OpenPopupOnItemClick, :igOpenPopupOnItemClick, [:pointer, :int], :bool
    attach_function :PlotHistogramFloatPtr, :igPlotHistogramFloatPtr, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void
    attach_function :PlotHistogramFnPtr, :igPlotHistogramFnPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void
    attach_function :PlotLines, :igPlotLines, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void
    attach_function :PlotLinesFnPtr, :igPlotLinesFnPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void
    attach_function :PopAllowKeyboardFocus, :igPopAllowKeyboardFocus, [], :void
    attach_function :PopButtonRepeat, :igPopButtonRepeat, [], :void
    attach_function :PopClipRect, :igPopClipRect, [], :void
    attach_function :PopFont, :igPopFont, [], :void
    attach_function :PopID, :igPopID, [], :void
    attach_function :PopItemWidth, :igPopItemWidth, [], :void
    attach_function :PopStyleColor, :igPopStyleColor, [:int], :void
    attach_function :PopStyleVar, :igPopStyleVar, [:int], :void
    attach_function :PopTextWrapPos, :igPopTextWrapPos, [], :void
    attach_function :ProgressBar, :igProgressBar, [:float, ImVec2.by_value, :pointer], :void
    attach_function :PushAllowKeyboardFocus, :igPushAllowKeyboardFocus, [:bool], :void
    attach_function :PushButtonRepeat, :igPushButtonRepeat, [:bool], :void
    attach_function :PushClipRect, :igPushClipRect, [ImVec2.by_value, ImVec2.by_value, :bool], :void
    attach_function :PushFont, :igPushFont, [:pointer], :void
    attach_function :PushIDStr, :igPushIDStr, [:pointer], :void
    attach_function :PushIDRange, :igPushIDRange, [:pointer, :pointer], :void
    attach_function :PushIDPtr, :igPushIDPtr, [:pointer], :void
    attach_function :PushIDInt, :igPushIDInt, [:int], :void
    attach_function :PushItemWidth, :igPushItemWidth, [:float], :void
    attach_function :PushStyleColorU32, :igPushStyleColorU32, [:int, :uint], :void
    attach_function :PushStyleColor, :igPushStyleColor, [:int, ImVec4.by_value], :void
    attach_function :PushStyleVarFloat, :igPushStyleVarFloat, [:int, :float], :void
    attach_function :PushStyleVarVec2, :igPushStyleVarVec2, [:int, ImVec2.by_value], :void
    attach_function :PushTextWrapPos, :igPushTextWrapPos, [:float], :void
    attach_function :RadioButtonBool, :igRadioButtonBool, [:pointer, :bool], :bool
    attach_function :RadioButtonIntPtr, :igRadioButtonIntPtr, [:pointer, :pointer, :int], :bool
    attach_function :Render, :igRender, [], :void
    attach_function :ResetMouseDragDelta, :igResetMouseDragDelta, [:int], :void
    attach_function :SameLine, :igSameLine, [:float, :float], :void
    attach_function :SaveIniSettingsToDisk, :igSaveIniSettingsToDisk, [:pointer], :void
    attach_function :SaveIniSettingsToMemory, :igSaveIniSettingsToMemory, [:pointer], :pointer
    attach_function :Selectable, :igSelectable, [:pointer, :bool, :int, ImVec2.by_value], :bool
    attach_function :SelectableBoolPtr, :igSelectableBoolPtr, [:pointer, :pointer, :int, ImVec2.by_value], :bool
    attach_function :Separator, :igSeparator, [], :void
    attach_function :SetAllocatorFunctions, :igSetAllocatorFunctions, [:pointer, :pointer, :pointer], :void
    attach_function :SetClipboardText, :igSetClipboardText, [:pointer], :void
    attach_function :SetColorEditOptions, :igSetColorEditOptions, [:int], :void
    attach_function :SetColumnOffset, :igSetColumnOffset, [:int, :float], :void
    attach_function :SetColumnWidth, :igSetColumnWidth, [:int, :float], :void
    attach_function :SetCurrentContext, :igSetCurrentContext, [:pointer], :void
    attach_function :SetCursorPos, :igSetCursorPos, [ImVec2.by_value], :void
    attach_function :SetCursorPosX, :igSetCursorPosX, [:float], :void
    attach_function :SetCursorPosY, :igSetCursorPosY, [:float], :void
    attach_function :SetCursorScreenPos, :igSetCursorScreenPos, [ImVec2.by_value], :void
    attach_function :SetDragDropPayload, :igSetDragDropPayload, [:pointer, :pointer, :size_t, :int], :bool
    attach_function :SetItemAllowOverlap, :igSetItemAllowOverlap, [], :void
    attach_function :SetItemDefaultFocus, :igSetItemDefaultFocus, [], :void
    attach_function :SetKeyboardFocusHere, :igSetKeyboardFocusHere, [:int], :void
    attach_function :SetMouseCursor, :igSetMouseCursor, [:int], :void
    attach_function :SetNextItemOpen, :igSetNextItemOpen, [:bool, :int], :void
    attach_function :SetNextItemWidth, :igSetNextItemWidth, [:float], :void
    attach_function :SetNextWindowBgAlpha, :igSetNextWindowBgAlpha, [:float], :void
    attach_function :SetNextWindowCollapsed, :igSetNextWindowCollapsed, [:bool, :int], :void
    attach_function :SetNextWindowContentSize, :igSetNextWindowContentSize, [ImVec2.by_value], :void
    attach_function :SetNextWindowFocus, :igSetNextWindowFocus, [], :void
    attach_function :SetNextWindowPos, :igSetNextWindowPos, [ImVec2.by_value, :int, ImVec2.by_value], :void
    attach_function :SetNextWindowSize, :igSetNextWindowSize, [ImVec2.by_value, :int], :void
    attach_function :SetNextWindowSizeConstraints, :igSetNextWindowSizeConstraints, [ImVec2.by_value, ImVec2.by_value, :pointer, :pointer], :void
    attach_function :SetScrollFromPosX, :igSetScrollFromPosX, [:float, :float], :void
    attach_function :SetScrollFromPosY, :igSetScrollFromPosY, [:float, :float], :void
    attach_function :SetScrollHereX, :igSetScrollHereX, [:float], :void
    attach_function :SetScrollHereY, :igSetScrollHereY, [:float], :void
    attach_function :SetScrollX, :igSetScrollX, [:float], :void
    attach_function :SetScrollY, :igSetScrollY, [:float], :void
    attach_function :SetStateStorage, :igSetStateStorage, [:pointer], :void
    attach_function :SetTabItemClosed, :igSetTabItemClosed, [:pointer], :void
    attach_function :SetTooltip, :igSetTooltip, [:pointer, :varargs], :void
    attach_function :SetWindowCollapsedBool, :igSetWindowCollapsedBool, [:bool, :int], :void
    attach_function :SetWindowCollapsedStr, :igSetWindowCollapsedStr, [:pointer, :bool, :int], :void
    attach_function :SetWindowFocus, :igSetWindowFocus, [], :void
    attach_function :SetWindowFocusStr, :igSetWindowFocusStr, [:pointer], :void
    attach_function :SetWindowFontScale, :igSetWindowFontScale, [:float], :void
    attach_function :SetWindowPosVec2, :igSetWindowPosVec2, [ImVec2.by_value, :int], :void
    attach_function :SetWindowPosStr, :igSetWindowPosStr, [:pointer, ImVec2.by_value, :int], :void
    attach_function :SetWindowSizeVec2, :igSetWindowSizeVec2, [ImVec2.by_value, :int], :void
    attach_function :SetWindowSizeStr, :igSetWindowSizeStr, [:pointer, ImVec2.by_value, :int], :void
    attach_function :ShowAboutWindow, :igShowAboutWindow, [:pointer], :void
    attach_function :ShowDemoWindow, :igShowDemoWindow, [:pointer], :void
    attach_function :ShowFontSelector, :igShowFontSelector, [:pointer], :void
    attach_function :ShowMetricsWindow, :igShowMetricsWindow, [:pointer], :void
    attach_function :ShowStyleEditor, :igShowStyleEditor, [:pointer], :void
    attach_function :ShowStyleSelector, :igShowStyleSelector, [:pointer], :bool
    attach_function :ShowUserGuide, :igShowUserGuide, [], :void
    attach_function :SliderAngle, :igSliderAngle, [:pointer, :pointer, :float, :float, :pointer], :bool
    attach_function :SliderFloat, :igSliderFloat, [:pointer, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :SliderFloat2, :igSliderFloat2, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :SliderFloat3, :igSliderFloat3, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :SliderFloat4, :igSliderFloat4, [:pointer, :float, :float, :float, :pointer, :float], :bool
    attach_function :SliderInt, :igSliderInt, [:pointer, :pointer, :int, :int, :pointer], :bool
    attach_function :SliderInt2, :igSliderInt2, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :SliderInt3, :igSliderInt3, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :SliderInt4, :igSliderInt4, [:pointer, :int, :int, :int, :pointer], :bool
    attach_function :SliderScalar, :igSliderScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :float], :bool
    attach_function :SliderScalarN, :igSliderScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :float], :bool
    attach_function :SmallButton, :igSmallButton, [:pointer], :bool
    attach_function :Spacing, :igSpacing, [], :void
    attach_function :StyleColorsClassic, :igStyleColorsClassic, [:pointer], :void
    attach_function :StyleColorsDark, :igStyleColorsDark, [:pointer], :void
    attach_function :StyleColorsLight, :igStyleColorsLight, [:pointer], :void
    attach_function :Text, :igText, [:pointer, :varargs], :void
    attach_function :TextColored, :igTextColored, [ImVec4.by_value, :pointer, :varargs], :void
    attach_function :TextDisabled, :igTextDisabled, [:pointer, :varargs], :void
    attach_function :TextUnformatted, :igTextUnformatted, [:pointer, :pointer], :void
    attach_function :TextWrapped, :igTextWrapped, [:pointer, :varargs], :void
    attach_function :TreeNodeStr, :igTreeNodeStr, [:pointer], :bool
    attach_function :TreeNodeStrStr, :igTreeNodeStrStr, [:pointer, :pointer, :varargs], :bool
    attach_function :TreeNodePtr, :igTreeNodePtr, [:pointer, :pointer, :varargs], :bool
    attach_function :TreeNodeExStr, :igTreeNodeExStr, [:pointer, :int], :bool
    attach_function :TreeNodeExStrStr, :igTreeNodeExStrStr, [:pointer, :int, :pointer, :varargs], :bool
    attach_function :TreeNodeExPtr, :igTreeNodeExPtr, [:pointer, :int, :pointer, :varargs], :bool
    attach_function :TreePop, :igTreePop, [], :void
    attach_function :TreePushStr, :igTreePushStr, [:pointer], :void
    attach_function :TreePushPtr, :igTreePushPtr, [:pointer], :void
    attach_function :Unindent, :igUnindent, [:float], :void
    attach_function :VSliderFloat, :igVSliderFloat, [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :float], :bool
    attach_function :VSliderInt, :igVSliderInt, [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer], :bool
    attach_function :VSliderScalar, :igVSliderScalar, [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :float], :bool
    attach_function :ValueBool, :igValueBool, [:pointer, :bool], :void
    attach_function :ValueInt, :igValueInt, [:pointer, :int], :void
    attach_function :ValueUint, :igValueUint, [:pointer, :uint], :void
    attach_function :ValueFloat, :igValueFloat, [:pointer, :float, :pointer], :void
  end # self.import_symbols

end # module ImGui
