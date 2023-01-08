# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

FFI.typedef :int, :ImDrawFlags
FFI.typedef :ushort, :ImDrawIdx
FFI.typedef :int, :ImDrawListFlags
FFI.typedef :pointer, :ImDrawListSharedData
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
FFI.typedef :int, :ImGuiKeyChord
FFI.typedef :pointer, :ImGuiMemAllocFunc
FFI.typedef :pointer, :ImGuiMemFreeFunc
FFI.typedef :int, :ImGuiMouseButton
FFI.typedef :int, :ImGuiMouseCursor
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
FFI.typedef :int, :ImGuiKey

# ImDrawFlags_
# Flags for ImDrawList functions
# (Legacy: bit 0 must always correspond to ImDrawFlags_Closed to be backward compatible with old API using a bool. Bits 1..3 must be unused)
ImDrawFlags_None = 0                      # 0
ImDrawFlags_Closed = 1                    # 1 << 0 # PathStroke(), AddPolyline(): specify that shape should be closed (Important: this is always == 1 for legacy reason)
ImDrawFlags_RoundCornersTopLeft = 16      # 1 << 4 # AddRect(), AddRectFilled(), PathRect(): enable rounding top-left corner only (when rounding > 0.0f, we default to all corners). Was 0x01.
ImDrawFlags_RoundCornersTopRight = 32     # 1 << 5 # AddRect(), AddRectFilled(), PathRect(): enable rounding top-right corner only (when rounding > 0.0f, we default to all corners). Was 0x02.
ImDrawFlags_RoundCornersBottomLeft = 64   # 1 << 6 # AddRect(), AddRectFilled(), PathRect(): enable rounding bottom-left corner only (when rounding > 0.0f, we default to all corners). Was 0x04.
ImDrawFlags_RoundCornersBottomRight = 128 # 1 << 7 # AddRect(), AddRectFilled(), PathRect(): enable rounding bottom-right corner only (when rounding > 0.0f, we default to all corners). Wax 0x08.
ImDrawFlags_RoundCornersNone = 256        # 1 << 8 # AddRect(), AddRectFilled(), PathRect(): disable rounding on all corners (when rounding > 0.0f). This is NOT zero, NOT an implicit flag!
ImDrawFlags_RoundCornersTop = 48          # ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight
ImDrawFlags_RoundCornersBottom = 192      # ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight
ImDrawFlags_RoundCornersLeft = 80         # ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersTopLeft
ImDrawFlags_RoundCornersRight = 160       # ImDrawFlags_RoundCornersBottomRight | ImDrawFlags_RoundCornersTopRight
ImDrawFlags_RoundCornersAll = 240         # ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight | ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight
ImDrawFlags_RoundCornersDefault_ = 240    # ImDrawFlags_RoundCornersAll # Default to ALL corners if none of the _RoundCornersXX flags are specified.
ImDrawFlags_RoundCornersMask_ = 496       # ImDrawFlags_RoundCornersAll | ImDrawFlags_RoundCornersNone

# ImDrawListFlags_
# Flags for ImDrawList instance. Those are set automatically by ImGui:: functions from ImGuiIO settings, and generally not manipulated directly.
# It is however possible to temporarily alter flags between calls to ImDrawList:: functions.
ImDrawListFlags_None = 0                   # 0
ImDrawListFlags_AntiAliasedLines = 1       # 1 << 0 # Enable anti-aliased lines/borders (*2 the number of triangles for 1.0f wide line or lines thin enough to be drawn using textures, otherwise *3 the number of triangles)
ImDrawListFlags_AntiAliasedLinesUseTex = 2 # 1 << 1 # Enable anti-aliased lines/borders using textures when possible. Require backend to render with bilinear filtering (NOT point/nearest filtering).
ImDrawListFlags_AntiAliasedFill = 4        # 1 << 2 # Enable anti-aliased edge around filled shapes (rounded rectangles, circles).
ImDrawListFlags_AllowVtxOffset = 8         # 1 << 3 # Can emit 'VtxOffset > 0' to allow large meshes. Set when 'ImGuiBackendFlags_RendererHasVtxOffset' is enabled.

# ImFontAtlasFlags_
# Flags for ImFontAtlas build
ImFontAtlasFlags_None = 0               # 0
ImFontAtlasFlags_NoPowerOfTwoHeight = 1 # 1 << 0 # Don't round the height to next power of two
ImFontAtlasFlags_NoMouseCursors = 2     # 1 << 1 # Don't build software mouse cursors into the atlas (save a little texture memory)
ImFontAtlasFlags_NoBakedLines = 4       # 1 << 2 # Don't build thick line textures into the atlas (save a little texture memory, allow support for point/nearest filtering). The AntiAliasedLinesUseTex features uses them, otherwise they will be rendered using polygons (more expensive for CPU/GPU).

# ImGuiBackendFlags_
# Backend capabilities flags stored in io.BackendFlags. Set by imgui_impl_xxx or custom backend.
ImGuiBackendFlags_None = 0                 # 0
ImGuiBackendFlags_HasGamepad = 1           # 1 << 0 # Backend Platform supports gamepad and currently has one connected.
ImGuiBackendFlags_HasMouseCursors = 2      # 1 << 1 # Backend Platform supports honoring GetMouseCursor() value to change the OS cursor shape.
ImGuiBackendFlags_HasSetMousePos = 4       # 1 << 2 # Backend Platform supports io.WantSetMousePos requests to reposition the OS mouse position (only used if ImGuiConfigFlags_NavEnableSetMousePos is set).
ImGuiBackendFlags_RendererHasVtxOffset = 8 # 1 << 3 # Backend Renderer supports ImDrawCmd::VtxOffset. This enables output of large meshes (64K+ vertices) while still using 16-bit indices.

# ImGuiButtonFlags_
# Flags for InvisibleButton() [extended in imgui_internal.h]
ImGuiButtonFlags_None = 0                # 0
ImGuiButtonFlags_MouseButtonLeft = 1     # 1 << 0 # React on left mouse button (default)
ImGuiButtonFlags_MouseButtonRight = 2    # 1 << 1 # React on right mouse button
ImGuiButtonFlags_MouseButtonMiddle = 4   # 1 << 2 # React on center mouse button
ImGuiButtonFlags_MouseButtonMask_ = 7    # ImGuiButtonFlags_MouseButtonLeft | ImGuiButtonFlags_MouseButtonRight | ImGuiButtonFlags_MouseButtonMiddle
ImGuiButtonFlags_MouseButtonDefault_ = 1 # ImGuiButtonFlags_MouseButtonLeft

# ImGuiCol_
# Enumeration for PushStyleColor() / PopStyleColor()
ImGuiCol_Text = 0                   # 0
ImGuiCol_TextDisabled = 1           # 1
ImGuiCol_WindowBg = 2               # 2 # Background of normal windows
ImGuiCol_ChildBg = 3                # 3 # Background of child windows
ImGuiCol_PopupBg = 4                # 4 # Background of popups, menus, tooltips windows
ImGuiCol_Border = 5                 # 5
ImGuiCol_BorderShadow = 6           # 6
ImGuiCol_FrameBg = 7                # 7 # Background of checkbox, radio button, plot, slider, text input
ImGuiCol_FrameBgHovered = 8         # 8
ImGuiCol_FrameBgActive = 9          # 9
ImGuiCol_TitleBg = 10               # 10
ImGuiCol_TitleBgActive = 11         # 11
ImGuiCol_TitleBgCollapsed = 12      # 12
ImGuiCol_MenuBarBg = 13             # 13
ImGuiCol_ScrollbarBg = 14           # 14
ImGuiCol_ScrollbarGrab = 15         # 15
ImGuiCol_ScrollbarGrabHovered = 16  # 16
ImGuiCol_ScrollbarGrabActive = 17   # 17
ImGuiCol_CheckMark = 18             # 18
ImGuiCol_SliderGrab = 19            # 19
ImGuiCol_SliderGrabActive = 20      # 20
ImGuiCol_Button = 21                # 21
ImGuiCol_ButtonHovered = 22         # 22
ImGuiCol_ButtonActive = 23          # 23
ImGuiCol_Header = 24                # 24 # Header* colors are used for CollapsingHeader, TreeNode, Selectable, MenuItem
ImGuiCol_HeaderHovered = 25         # 25
ImGuiCol_HeaderActive = 26          # 26
ImGuiCol_Separator = 27             # 27
ImGuiCol_SeparatorHovered = 28      # 28
ImGuiCol_SeparatorActive = 29       # 29
ImGuiCol_ResizeGrip = 30            # 30 # Resize grip in lower-right and lower-left corners of windows.
ImGuiCol_ResizeGripHovered = 31     # 31
ImGuiCol_ResizeGripActive = 32      # 32
ImGuiCol_Tab = 33                   # 33 # TabItem in a TabBar
ImGuiCol_TabHovered = 34            # 34
ImGuiCol_TabActive = 35             # 35
ImGuiCol_TabUnfocused = 36          # 36
ImGuiCol_TabUnfocusedActive = 37    # 37
ImGuiCol_PlotLines = 38             # 38
ImGuiCol_PlotLinesHovered = 39      # 39
ImGuiCol_PlotHistogram = 40         # 40
ImGuiCol_PlotHistogramHovered = 41  # 41
ImGuiCol_TableHeaderBg = 42         # 42 # Table header background
ImGuiCol_TableBorderStrong = 43     # 43 # Table outer and header borders (prefer using Alpha=1.0 here)
ImGuiCol_TableBorderLight = 44      # 44 # Table inner borders (prefer using Alpha=1.0 here)
ImGuiCol_TableRowBg = 45            # 45 # Table row background (even rows)
ImGuiCol_TableRowBgAlt = 46         # 46 # Table row background (odd rows)
ImGuiCol_TextSelectedBg = 47        # 47
ImGuiCol_DragDropTarget = 48        # 48 # Rectangle highlighting a drop target
ImGuiCol_NavHighlight = 49          # 49 # Gamepad/keyboard: current highlighted item
ImGuiCol_NavWindowingHighlight = 50 # 50 # Highlight window when using CTRL+TAB
ImGuiCol_NavWindowingDimBg = 51     # 51 # Darken/colorize entire screen behind the CTRL+TAB window list, when active
ImGuiCol_ModalWindowDimBg = 52      # 52 # Darken/colorize entire screen behind a modal window, when one is active
ImGuiCol_COUNT = 53                 # 53

# ImGuiColorEditFlags_
# Flags for ColorEdit3() / ColorEdit4() / ColorPicker3() / ColorPicker4() / ColorButton()
ImGuiColorEditFlags_None = 0                    # 0
ImGuiColorEditFlags_NoAlpha = 2                 # 1 << 1 #              // ColorEdit, ColorPicker, ColorButton: ignore Alpha component (will only read 3 components from the input pointer).
ImGuiColorEditFlags_NoPicker = 4                # 1 << 2 #              // ColorEdit: disable picker when clicking on color square.
ImGuiColorEditFlags_NoOptions = 8               # 1 << 3 #              // ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
ImGuiColorEditFlags_NoSmallPreview = 16         # 1 << 4 #              // ColorEdit, ColorPicker: disable color square preview next to the inputs. (e.g. to show only the inputs)
ImGuiColorEditFlags_NoInputs = 32               # 1 << 5 #              // ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview color square).
ImGuiColorEditFlags_NoTooltip = 64              # 1 << 6 #              // ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
ImGuiColorEditFlags_NoLabel = 128               # 1 << 7 #              // ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
ImGuiColorEditFlags_NoSidePreview = 256         # 1 << 8 #              // ColorPicker: disable bigger color preview on right side of the picker, use small color square preview instead.
ImGuiColorEditFlags_NoDragDrop = 512            # 1 << 9 #              // ColorEdit: disable drag and drop target. ColorButton: disable drag and drop source.
ImGuiColorEditFlags_NoBorder = 1024             # 1 << 10 #              // ColorButton: disable border (which is enforced by default)
ImGuiColorEditFlags_AlphaBar = 65536            # 1 << 16 #              // ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
ImGuiColorEditFlags_AlphaPreview = 131072       # 1 << 17 #              // ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
ImGuiColorEditFlags_AlphaPreviewHalf = 262144   # 1 << 18 #              // ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
ImGuiColorEditFlags_HDR = 524288                # 1 << 19 #              // (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well).
ImGuiColorEditFlags_DisplayRGB = 1048576        # 1 << 20 # [Display]    // ColorEdit: override _display_ type among RGB/HSV/Hex. ColorPicker: select any combination using one or more of RGB/HSV/Hex.
ImGuiColorEditFlags_DisplayHSV = 2097152        # 1 << 21 # [Display]    // "
ImGuiColorEditFlags_DisplayHex = 4194304        # 1 << 22 # [Display]    // "
ImGuiColorEditFlags_Uint8 = 8388608             # 1 << 23 # [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255.
ImGuiColorEditFlags_Float = 16777216            # 1 << 24 # [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
ImGuiColorEditFlags_PickerHueBar = 33554432     # 1 << 25 # [Picker]     // ColorPicker: bar for Hue, rectangle for Sat/Value.
ImGuiColorEditFlags_PickerHueWheel = 67108864   # 1 << 26 # [Picker]     // ColorPicker: wheel for Hue, triangle for Sat/Value.
ImGuiColorEditFlags_InputRGB = 134217728        # 1 << 27 # [Input]      // ColorEdit, ColorPicker: input and output data in RGB format.
ImGuiColorEditFlags_InputHSV = 268435456        # 1 << 28 # [Input]      // ColorEdit, ColorPicker: input and output data in HSV format.
ImGuiColorEditFlags_DefaultOptions_ = 177209344 # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags_DisplayMask_ = 7340032      # ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex
ImGuiColorEditFlags_DataTypeMask_ = 25165824    # ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float
ImGuiColorEditFlags_PickerMask_ = 100663296     # ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar
ImGuiColorEditFlags_InputMask_ = 402653184      # ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV

# ImGuiComboFlags_
# Flags for ImGui::BeginCombo()
ImGuiComboFlags_None = 0           # 0
ImGuiComboFlags_PopupAlignLeft = 1 # 1 << 0 # Align the popup toward the left by default
ImGuiComboFlags_HeightSmall = 2    # 1 << 1 # Max ~4 items visible. Tip: If you want your combo popup to be a specific size you can use SetNextWindowSizeConstraints() prior to calling BeginCombo()
ImGuiComboFlags_HeightRegular = 4  # 1 << 2 # Max ~8 items visible (default)
ImGuiComboFlags_HeightLarge = 8    # 1 << 3 # Max ~20 items visible
ImGuiComboFlags_HeightLargest = 16 # 1 << 4 # As many fitting items as possible
ImGuiComboFlags_NoArrowButton = 32 # 1 << 5 # Display on the preview box without the square arrow button
ImGuiComboFlags_NoPreview = 64     # 1 << 6 # Display only a square arrow button
ImGuiComboFlags_HeightMask_ = 30   # ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest

# ImGuiCond_
# Enumeration for ImGui::SetWindow***(), SetNextWindow***(), SetNextItem***() functions
# Represent a condition.
# Important: Treat as a regular enum! Do NOT combine multiple values using binary operators! All the functions above treat 0 as a shortcut to ImGuiCond_Always.
ImGuiCond_None = 0         # 0 # No condition (always set the variable), same as _Always
ImGuiCond_Always = 1       # 1 << 0 # No condition (always set the variable), same as _None
ImGuiCond_Once = 2         # 1 << 1 # Set the variable once per runtime session (only the first call will succeed)
ImGuiCond_FirstUseEver = 4 # 1 << 2 # Set the variable if the object/window has no persistently saved data (no entry in .ini file)
ImGuiCond_Appearing = 8    # 1 << 3 # Set the variable if the object/window is appearing after being hidden/inactive (or the first time)

# ImGuiConfigFlags_
# Configuration flags stored in io.ConfigFlags. Set by user/application.
ImGuiConfigFlags_None = 0                 # 0
ImGuiConfigFlags_NavEnableKeyboard = 1    # 1 << 0 # Master keyboard navigation enable flag.
ImGuiConfigFlags_NavEnableGamepad = 2     # 1 << 1 # Master gamepad navigation enable flag. Backend also needs to set ImGuiBackendFlags_HasGamepad.
ImGuiConfigFlags_NavEnableSetMousePos = 4 # 1 << 2 # Instruct navigation to move the mouse cursor. May be useful on TV/console systems where moving a virtual mouse is awkward. Will update io.MousePos and set io.WantSetMousePos=true. If enabled you MUST honor io.WantSetMousePos requests in your backend, otherwise ImGui will react as if the mouse is jumping around back and forth.
ImGuiConfigFlags_NavNoCaptureKeyboard = 8 # 1 << 3 # Instruct navigation to not set the io.WantCaptureKeyboard flag when io.NavActive is set.
ImGuiConfigFlags_NoMouse = 16             # 1 << 4 # Instruct imgui to clear mouse position/buttons in NewFrame(). This allows ignoring the mouse information set by the backend.
ImGuiConfigFlags_NoMouseCursorChange = 32 # 1 << 5 # Instruct backend to not alter mouse cursor shape and visibility. Use if the backend cursor changes are interfering with yours and you don't want to use SetMouseCursor() to change mouse cursor. You may want to honor requests from imgui by reading GetMouseCursor() yourself instead.
ImGuiConfigFlags_IsSRGB = 1048576         # 1 << 20 # Application is SRGB-aware.
ImGuiConfigFlags_IsTouchScreen = 2097152  # 1 << 21 # Application is using a touch screen instead of a mouse.

# ImGuiDataType_
# A primary data type
ImGuiDataType_S8 = 0     # 0 # signed char / char (with sensible compilers)
ImGuiDataType_U8 = 1     # 1 # unsigned char
ImGuiDataType_S16 = 2    # 2 # short
ImGuiDataType_U16 = 3    # 3 # unsigned short
ImGuiDataType_S32 = 4    # 4 # int
ImGuiDataType_U32 = 5    # 5 # unsigned int
ImGuiDataType_S64 = 6    # 6 # long long / __int64
ImGuiDataType_U64 = 7    # 7 # unsigned long long / unsigned __int64
ImGuiDataType_Float = 8  # 8 # float
ImGuiDataType_Double = 9 # 9 # double
ImGuiDataType_COUNT = 10 # 10

# ImGuiDir_
# A cardinal direction
ImGuiDir_None = -1 # -1
ImGuiDir_Left = 0  # 0
ImGuiDir_Right = 1 # 1
ImGuiDir_Up = 2    # 2
ImGuiDir_Down = 3  # 3
ImGuiDir_COUNT = 4 # 4

# ImGuiDragDropFlags_
# Flags for ImGui::BeginDragDropSource(), ImGui::AcceptDragDropPayload()
ImGuiDragDropFlags_None = 0                       # 0
ImGuiDragDropFlags_SourceNoPreviewTooltip = 1     # 1 << 0 # Disable preview tooltip. By default, a successful call to BeginDragDropSource opens a tooltip so you can display a preview or description of the source contents. This flag disables this behavior.
ImGuiDragDropFlags_SourceNoDisableHover = 2       # 1 << 1 # By default, when dragging we clear data so that IsItemHovered() will return false, to avoid subsequent user code submitting tooltips. This flag disables this behavior so you can still call IsItemHovered() on the source item.
ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4   # 1 << 2 # Disable the behavior that allows to open tree nodes and collapsing header by holding over them while dragging a source item.
ImGuiDragDropFlags_SourceAllowNullID = 8          # 1 << 3 # Allow items such as Text(), Image() that have no unique identifier to be used as drag source, by manufacturing a temporary identifier based on their window-relative position. This is extremely unusual within the dear imgui ecosystem and so we made it explicit.
ImGuiDragDropFlags_SourceExtern = 16              # 1 << 4 # External source (from outside of dear imgui), won't attempt to read current item/window info. Will always return true. Only one Extern source can be active simultaneously.
ImGuiDragDropFlags_SourceAutoExpirePayload = 32   # 1 << 5 # Automatically expire the payload if the source cease to be submitted (otherwise payloads are persisting while being dragged)
ImGuiDragDropFlags_AcceptBeforeDelivery = 1024    # 1 << 10 # AcceptDragDropPayload() will returns true even before the mouse button is released. You can then call IsDelivery() to test if the payload needs to be delivered.
ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048 # 1 << 11 # Do not draw the default highlight rectangle when hovering over target.
ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096  # 1 << 12 # Request hiding the BeginDragDropSource tooltip from the BeginDragDropTarget site.
ImGuiDragDropFlags_AcceptPeekOnly = 3072          # ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect # For peeking ahead and inspecting the payload before delivery.

# ImGuiFocusedFlags_
# Flags for ImGui::IsWindowFocused()
ImGuiFocusedFlags_None = 0                # 0
ImGuiFocusedFlags_ChildWindows = 1        # 1 << 0 # Return true if any children of the window is focused
ImGuiFocusedFlags_RootWindow = 2          # 1 << 1 # Test from root window (top most parent of the current hierarchy)
ImGuiFocusedFlags_AnyWindow = 4           # 1 << 2 # Return true if any window is focused. Important: If you are trying to tell how to dispatch your low-level inputs, do NOT use this. Use 'io.WantCaptureMouse' instead! Please read the FAQ!
ImGuiFocusedFlags_NoPopupHierarchy = 8    # 1 << 3 # Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow)
ImGuiFocusedFlags_RootAndChildWindows = 3 # ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows

# ImGuiHoveredFlags_
# Flags for ImGui::IsItemHovered(), ImGui::IsWindowHovered()
# Note: if you are trying to check whether your mouse should be dispatched to Dear ImGui or to your app, you should use 'io.WantCaptureMouse' instead! Please read the FAQ!
# Note: windows with the ImGuiWindowFlags_NoInputs flag are ignored by IsWindowHovered() calls.
ImGuiHoveredFlags_None = 0                           # 0 # Return true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them.
ImGuiHoveredFlags_ChildWindows = 1                   # 1 << 0 # IsWindowHovered() only: Return true if any children of the window is hovered
ImGuiHoveredFlags_RootWindow = 2                     # 1 << 1 # IsWindowHovered() only: Test from root window (top most parent of the current hierarchy)
ImGuiHoveredFlags_AnyWindow = 4                      # 1 << 2 # IsWindowHovered() only: Return true if any window is hovered
ImGuiHoveredFlags_NoPopupHierarchy = 8               # 1 << 3 # IsWindowHovered() only: Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow)
ImGuiHoveredFlags_AllowWhenBlockedByPopup = 32       # 1 << 5 # Return true even if a popup window is normally blocking access to this item/window
ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 128 # 1 << 7 # Return true even if an active item is blocking access to this item/window. Useful for Drag and Drop patterns.
ImGuiHoveredFlags_AllowWhenOverlapped = 256          # 1 << 8 # IsItemHovered() only: Return true even if the position is obstructed or overlapped by another window
ImGuiHoveredFlags_AllowWhenDisabled = 512            # 1 << 9 # IsItemHovered() only: Return true even if the item is disabled
ImGuiHoveredFlags_NoNavOverride = 1024               # 1 << 10 # Disable using gamepad/keyboard navigation state when active, always query mouse.
ImGuiHoveredFlags_RectOnly = 416                     # ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped
ImGuiHoveredFlags_RootAndChildWindows = 3            # ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows
ImGuiHoveredFlags_DelayNormal = 2048                 # 1 << 11 # Return true after io.HoverDelayNormal elapsed (~0.30 sec)
ImGuiHoveredFlags_DelayShort = 4096                  # 1 << 12 # Return true after io.HoverDelayShort elapsed (~0.10 sec)
ImGuiHoveredFlags_NoSharedDelay = 8192               # 1 << 13 # Disable shared delay system where moving from one item to the next keeps the previous timer for a short time (standard for tooltips with long delays)

# ImGuiInputTextFlags_
# Flags for ImGui::InputText()
# (Those are per-item flags. There are shared flags in ImGuiIO: io.ConfigInputTextCursorBlink and io.ConfigInputTextEnterKeepActive)
ImGuiInputTextFlags_None = 0                   # 0
ImGuiInputTextFlags_CharsDecimal = 1           # 1 << 0 # Allow 0123456789.+-*/
ImGuiInputTextFlags_CharsHexadecimal = 2       # 1 << 1 # Allow 0123456789ABCDEFabcdef
ImGuiInputTextFlags_CharsUppercase = 4         # 1 << 2 # Turn a..z into A..Z
ImGuiInputTextFlags_CharsNoBlank = 8           # 1 << 3 # Filter out spaces, tabs
ImGuiInputTextFlags_AutoSelectAll = 16         # 1 << 4 # Select entire text when first taking mouse focus
ImGuiInputTextFlags_EnterReturnsTrue = 32      # 1 << 5 # Return 'true' when Enter is pressed (as opposed to every time the value was modified). Consider looking at the IsItemDeactivatedAfterEdit() function.
ImGuiInputTextFlags_CallbackCompletion = 64    # 1 << 6 # Callback on pressing TAB (for completion handling)
ImGuiInputTextFlags_CallbackHistory = 128      # 1 << 7 # Callback on pressing Up/Down arrows (for history handling)
ImGuiInputTextFlags_CallbackAlways = 256       # 1 << 8 # Callback on each iteration. User code may query cursor position, modify text buffer.
ImGuiInputTextFlags_CallbackCharFilter = 512   # 1 << 9 # Callback on character inputs to replace or discard them. Modify 'EventChar' to replace or discard, or return 1 in callback to discard.
ImGuiInputTextFlags_AllowTabInput = 1024       # 1 << 10 # Pressing TAB input a '\t' character into the text field
ImGuiInputTextFlags_CtrlEnterForNewLine = 2048 # 1 << 11 # In multi-line mode, unfocus with Enter, add new line with Ctrl+Enter (default is opposite: unfocus with Ctrl+Enter, add line with Enter).
ImGuiInputTextFlags_NoHorizontalScroll = 4096  # 1 << 12 # Disable following the cursor horizontally
ImGuiInputTextFlags_AlwaysOverwrite = 8192     # 1 << 13 # Overwrite mode
ImGuiInputTextFlags_ReadOnly = 16384           # 1 << 14 # Read-only mode
ImGuiInputTextFlags_Password = 32768           # 1 << 15 # Password mode, display all characters as '*'
ImGuiInputTextFlags_NoUndoRedo = 65536         # 1 << 16 # Disable undo/redo. Note that input text owns the text data while active, if you want to provide your own undo/redo stack you need e.g. to call ClearActiveID().
ImGuiInputTextFlags_CharsScientific = 131072   # 1 << 17 # Allow 0123456789.+-*/eE (Scientific notation input)
ImGuiInputTextFlags_CallbackResize = 262144    # 1 << 18 # Callback on buffer capacity changes request (beyond 'buf_size' parameter value), allowing the string to grow. Notify when the string wants to be resized (for string types which hold a cache of their Size). You will be provided a new BufSize in the callback and NEED to honor it. (see misc/cpp/imgui_stdlib.h for an example of using this)
ImGuiInputTextFlags_CallbackEdit = 524288      # 1 << 19 # Callback on any edit (note that InputText() already returns true on edit, the callback is useful mainly to manipulate the underlying buffer while focus is active)
ImGuiInputTextFlags_EscapeClearsAll = 1048576  # 1 << 20 # Escape key clears content if not empty, and deactivate otherwise (contrast to default behavior of Escape to revert)

# ImGuiKey
# A key identifier (ImGuiKey_XXX or ImGuiMod_XXX value): can represent Keyboard, Mouse and Gamepad values.
# All our named keys are >= 512. Keys value 0 to 511 are left unused as legacy native/opaque key values (< 1.87).
# Since >= 1.89 we increased typing (went from int to enum), some legacy code may need a cast to ImGuiKey.
# Read details about the 1.87 and 1.89 transition : https://github.com/ocornut/imgui/issues/4921
ImGuiKey_None = 0                  # 0
ImGuiKey_Tab = 512                 # 512 # == ImGuiKey_NamedKey_BEGIN
ImGuiKey_LeftArrow = 513           # 513
ImGuiKey_RightArrow = 514          # 514
ImGuiKey_UpArrow = 515             # 515
ImGuiKey_DownArrow = 516           # 516
ImGuiKey_PageUp = 517              # 517
ImGuiKey_PageDown = 518            # 518
ImGuiKey_Home = 519                # 519
ImGuiKey_End = 520                 # 520
ImGuiKey_Insert = 521              # 521
ImGuiKey_Delete = 522              # 522
ImGuiKey_Backspace = 523           # 523
ImGuiKey_Space = 524               # 524
ImGuiKey_Enter = 525               # 525
ImGuiKey_Escape = 526              # 526
ImGuiKey_LeftCtrl = 527            # 527
ImGuiKey_LeftShift = 528           # 528
ImGuiKey_LeftAlt = 529             # 529
ImGuiKey_LeftSuper = 530           # 530
ImGuiKey_RightCtrl = 531           # 531
ImGuiKey_RightShift = 532          # 532
ImGuiKey_RightAlt = 533            # 533
ImGuiKey_RightSuper = 534          # 534
ImGuiKey_Menu = 535                # 535
ImGuiKey_0 = 536                   # 536
ImGuiKey_1 = 537                   # 537
ImGuiKey_2 = 538                   # 538
ImGuiKey_3 = 539                   # 539
ImGuiKey_4 = 540                   # 540
ImGuiKey_5 = 541                   # 541
ImGuiKey_6 = 542                   # 542
ImGuiKey_7 = 543                   # 543
ImGuiKey_8 = 544                   # 544
ImGuiKey_9 = 545                   # 545
ImGuiKey_A = 546                   # 546
ImGuiKey_B = 547                   # 547
ImGuiKey_C = 548                   # 548
ImGuiKey_D = 549                   # 549
ImGuiKey_E = 550                   # 550
ImGuiKey_F = 551                   # 551
ImGuiKey_G = 552                   # 552
ImGuiKey_H = 553                   # 553
ImGuiKey_I = 554                   # 554
ImGuiKey_J = 555                   # 555
ImGuiKey_K = 556                   # 556
ImGuiKey_L = 557                   # 557
ImGuiKey_M = 558                   # 558
ImGuiKey_N = 559                   # 559
ImGuiKey_O = 560                   # 560
ImGuiKey_P = 561                   # 561
ImGuiKey_Q = 562                   # 562
ImGuiKey_R = 563                   # 563
ImGuiKey_S = 564                   # 564
ImGuiKey_T = 565                   # 565
ImGuiKey_U = 566                   # 566
ImGuiKey_V = 567                   # 567
ImGuiKey_W = 568                   # 568
ImGuiKey_X = 569                   # 569
ImGuiKey_Y = 570                   # 570
ImGuiKey_Z = 571                   # 571
ImGuiKey_F1 = 572                  # 572
ImGuiKey_F2 = 573                  # 573
ImGuiKey_F3 = 574                  # 574
ImGuiKey_F4 = 575                  # 575
ImGuiKey_F5 = 576                  # 576
ImGuiKey_F6 = 577                  # 577
ImGuiKey_F7 = 578                  # 578
ImGuiKey_F8 = 579                  # 579
ImGuiKey_F9 = 580                  # 580
ImGuiKey_F10 = 581                 # 581
ImGuiKey_F11 = 582                 # 582
ImGuiKey_F12 = 583                 # 583
ImGuiKey_Apostrophe = 584          # 584 # '
ImGuiKey_Comma = 585               # 585 # ,
ImGuiKey_Minus = 586               # 586 # -
ImGuiKey_Period = 587              # 587 # .
ImGuiKey_Slash = 588               # 588 # /
ImGuiKey_Semicolon = 589           # 589 # ;
ImGuiKey_Equal = 590               # 590 # =
ImGuiKey_LeftBracket = 591         # 591 # [
ImGuiKey_Backslash = 592           # 592 # \ (this text inhibit multiline comment caused by backslash)
ImGuiKey_RightBracket = 593        # 593 # ]
ImGuiKey_GraveAccent = 594         # 594 # `
ImGuiKey_CapsLock = 595            # 595
ImGuiKey_ScrollLock = 596          # 596
ImGuiKey_NumLock = 597             # 597
ImGuiKey_PrintScreen = 598         # 598
ImGuiKey_Pause = 599               # 599
ImGuiKey_Keypad0 = 600             # 600
ImGuiKey_Keypad1 = 601             # 601
ImGuiKey_Keypad2 = 602             # 602
ImGuiKey_Keypad3 = 603             # 603
ImGuiKey_Keypad4 = 604             # 604
ImGuiKey_Keypad5 = 605             # 605
ImGuiKey_Keypad6 = 606             # 606
ImGuiKey_Keypad7 = 607             # 607
ImGuiKey_Keypad8 = 608             # 608
ImGuiKey_Keypad9 = 609             # 609
ImGuiKey_KeypadDecimal = 610       # 610
ImGuiKey_KeypadDivide = 611        # 611
ImGuiKey_KeypadMultiply = 612      # 612
ImGuiKey_KeypadSubtract = 613      # 613
ImGuiKey_KeypadAdd = 614           # 614
ImGuiKey_KeypadEnter = 615         # 615
ImGuiKey_KeypadEqual = 616         # 616
ImGuiKey_GamepadStart = 617        # 617 # Menu (Xbox)      + (Switch)   Start/Options (PS)
ImGuiKey_GamepadBack = 618         # 618 # View (Xbox)      - (Switch)   Share (PS)
ImGuiKey_GamepadFaceLeft = 619     # 619 # X (Xbox)         Y (Switch)   Square (PS)        // Tap: Toggle Menu. Hold: Windowing mode (Focus/Move/Resize windows)
ImGuiKey_GamepadFaceRight = 620    # 620 # B (Xbox)         A (Switch)   Circle (PS)        // Cancel / Close / Exit
ImGuiKey_GamepadFaceUp = 621       # 621 # Y (Xbox)         X (Switch)   Triangle (PS)      // Text Input / On-screen Keyboard
ImGuiKey_GamepadFaceDown = 622     # 622 # A (Xbox)         B (Switch)   Cross (PS)         // Activate / Open / Toggle / Tweak
ImGuiKey_GamepadDpadLeft = 623     # 623 # D-pad Left                                       // Move / Tweak / Resize Window (in Windowing mode)
ImGuiKey_GamepadDpadRight = 624    # 624 # D-pad Right                                      // Move / Tweak / Resize Window (in Windowing mode)
ImGuiKey_GamepadDpadUp = 625       # 625 # D-pad Up                                         // Move / Tweak / Resize Window (in Windowing mode)
ImGuiKey_GamepadDpadDown = 626     # 626 # D-pad Down                                       // Move / Tweak / Resize Window (in Windowing mode)
ImGuiKey_GamepadL1 = 627           # 627 # L Bumper (Xbox)  L (Switch)   L1 (PS)            // Tweak Slower / Focus Previous (in Windowing mode)
ImGuiKey_GamepadR1 = 628           # 628 # R Bumper (Xbox)  R (Switch)   R1 (PS)            // Tweak Faster / Focus Next (in Windowing mode)
ImGuiKey_GamepadL2 = 629           # 629 # L Trig. (Xbox)   ZL (Switch)  L2 (PS) [Analog]
ImGuiKey_GamepadR2 = 630           # 630 # R Trig. (Xbox)   ZR (Switch)  R2 (PS) [Analog]
ImGuiKey_GamepadL3 = 631           # 631 # L Stick (Xbox)   L3 (Switch)  L3 (PS)
ImGuiKey_GamepadR3 = 632           # 632 # R Stick (Xbox)   R3 (Switch)  R3 (PS)
ImGuiKey_GamepadLStickLeft = 633   # 633 # [Analog]                                         // Move Window (in Windowing mode)
ImGuiKey_GamepadLStickRight = 634  # 634 # [Analog]                                         // Move Window (in Windowing mode)
ImGuiKey_GamepadLStickUp = 635     # 635 # [Analog]                                         // Move Window (in Windowing mode)
ImGuiKey_GamepadLStickDown = 636   # 636 # [Analog]                                         // Move Window (in Windowing mode)
ImGuiKey_GamepadRStickLeft = 637   # 637 # [Analog]
ImGuiKey_GamepadRStickRight = 638  # 638 # [Analog]
ImGuiKey_GamepadRStickUp = 639     # 639 # [Analog]
ImGuiKey_GamepadRStickDown = 640   # 640 # [Analog]
ImGuiKey_MouseLeft = 641           # 641
ImGuiKey_MouseRight = 642          # 642
ImGuiKey_MouseMiddle = 643         # 643
ImGuiKey_MouseX1 = 644             # 644
ImGuiKey_MouseX2 = 645             # 645
ImGuiKey_MouseWheelX = 646         # 646
ImGuiKey_MouseWheelY = 647         # 647
ImGuiKey_ReservedForModCtrl = 648  # 648
ImGuiKey_ReservedForModShift = 649 # 649
ImGuiKey_ReservedForModAlt = 650   # 650
ImGuiKey_ReservedForModSuper = 651 # 651
ImGuiKey_COUNT = 652               # 652
ImGuiMod_None = 0                  # 0
ImGuiMod_Ctrl = 4096               # 1 << 12 # Ctrl
ImGuiMod_Shift = 8192              # 1 << 13 # Shift
ImGuiMod_Alt = 16384               # 1 << 14 # Option/Menu
ImGuiMod_Super = 32768             # 1 << 15 # Cmd/Super/Windows
ImGuiMod_Shortcut = 2048           # 1 << 11 # Alias for Ctrl (non-macOS) _or_ Super (macOS).
ImGuiMod_Mask_ = 63488             # 0xF800 # 5-bits
ImGuiKey_NamedKey_BEGIN = 512      # 512
ImGuiKey_NamedKey_END = 652        # ImGuiKey_COUNT
ImGuiKey_NamedKey_COUNT = 140      # ImGuiKey_NamedKey_END - ImGuiKey_NamedKey_BEGIN
ImGuiKey_KeysData_SIZE = 652       # ImGuiKey_COUNT # Size of KeysData[]: hold legacy 0..512 keycodes + named keys
ImGuiKey_KeysData_OFFSET = 0       # 0 # First key stored in io.KeysData[0]. Accesses to io.KeysData[] must use (key - ImGuiKey_KeysData_OFFSET).

# ImGuiMouseButton_
# Identify a mouse button.
# Those values are guaranteed to be stable and we frequently use 0/1 directly. Named enums provided for convenience.
ImGuiMouseButton_Left = 0   # 0
ImGuiMouseButton_Right = 1  # 1
ImGuiMouseButton_Middle = 2 # 2
ImGuiMouseButton_COUNT = 5  # 5

# ImGuiMouseCursor_
# Enumeration for GetMouseCursor()
# User code may request backend to display given cursor by calling SetMouseCursor(), which is why we have some cursors that are marked unused here
ImGuiMouseCursor_None = -1      # -1
ImGuiMouseCursor_Arrow = 0      # 0
ImGuiMouseCursor_TextInput = 1  # 1 # When hovering over InputText, etc.
ImGuiMouseCursor_ResizeAll = 2  # 2 # (Unused by Dear ImGui functions)
ImGuiMouseCursor_ResizeNS = 3   # 3 # When hovering over a horizontal border
ImGuiMouseCursor_ResizeEW = 4   # 4 # When hovering over a vertical border or a column
ImGuiMouseCursor_ResizeNESW = 5 # 5 # When hovering over the bottom-left corner of a window
ImGuiMouseCursor_ResizeNWSE = 6 # 6 # When hovering over the bottom-right corner of a window
ImGuiMouseCursor_Hand = 7       # 7 # (Unused by Dear ImGui functions. Use for e.g. hyperlinks)
ImGuiMouseCursor_NotAllowed = 8 # 8 # When hovering something with disallowed interaction. Usually a crossed circle.
ImGuiMouseCursor_COUNT = 9      # 9

# ImGuiNavInput
# OBSOLETED in 1.88 (from July 2022): ImGuiNavInput and io.NavInputs[].
# Official backends between 1.60 and 1.86: will keep working and feed gamepad inputs as long as IMGUI_DISABLE_OBSOLETE_KEYIO is not set.
# Custom backends: feed gamepad inputs via io.AddKeyEvent() and ImGuiKey_GamepadXXX enums.
ImGuiNavInput_Activate = 0    # 0
ImGuiNavInput_Cancel = 1      # 1
ImGuiNavInput_Input = 2       # 2
ImGuiNavInput_Menu = 3        # 3
ImGuiNavInput_DpadLeft = 4    # 4
ImGuiNavInput_DpadRight = 5   # 5
ImGuiNavInput_DpadUp = 6      # 6
ImGuiNavInput_DpadDown = 7    # 7
ImGuiNavInput_LStickLeft = 8  # 8
ImGuiNavInput_LStickRight = 9 # 9
ImGuiNavInput_LStickUp = 10   # 10
ImGuiNavInput_LStickDown = 11 # 11
ImGuiNavInput_FocusPrev = 12  # 12
ImGuiNavInput_FocusNext = 13  # 13
ImGuiNavInput_TweakSlow = 14  # 14
ImGuiNavInput_TweakFast = 15  # 15
ImGuiNavInput_COUNT = 16      # 16

# ImGuiPopupFlags_
# Flags for OpenPopup*(), BeginPopupContext*(), IsPopupOpen() functions.
# - To be backward compatible with older API which took an 'int mouse_button = 1' argument, we need to treat
#   small flags values as a mouse button index, so we encode the mouse button in the first few bits of the flags.
#   It is therefore guaranteed to be legal to pass a mouse button index in ImGuiPopupFlags.
# - For the same reason, we exceptionally default the ImGuiPopupFlags argument of BeginPopupContextXXX functions to 1 instead of 0.
#   IMPORTANT: because the default parameter is 1 (==ImGuiPopupFlags_MouseButtonRight), if you rely on the default parameter
#   and want to use another flag, you need to pass in the ImGuiPopupFlags_MouseButtonRight flag explicitly.
# - Multiple buttons currently cannot be combined/or-ed in those functions (we could allow it later).
ImGuiPopupFlags_None = 0                     # 0
ImGuiPopupFlags_MouseButtonLeft = 0          # 0 # For BeginPopupContext*(): open on Left Mouse release. Guaranteed to always be == 0 (same as ImGuiMouseButton_Left)
ImGuiPopupFlags_MouseButtonRight = 1         # 1 # For BeginPopupContext*(): open on Right Mouse release. Guaranteed to always be == 1 (same as ImGuiMouseButton_Right)
ImGuiPopupFlags_MouseButtonMiddle = 2        # 2 # For BeginPopupContext*(): open on Middle Mouse release. Guaranteed to always be == 2 (same as ImGuiMouseButton_Middle)
ImGuiPopupFlags_MouseButtonMask_ = 31        # 0x1F
ImGuiPopupFlags_MouseButtonDefault_ = 1      # 1
ImGuiPopupFlags_NoOpenOverExistingPopup = 32 # 1 << 5 # For OpenPopup*(), BeginPopupContext*(): don't open if there's already a popup at the same level of the popup stack
ImGuiPopupFlags_NoOpenOverItems = 64         # 1 << 6 # For BeginPopupContextWindow(): don't return true when hovering items, only when hovering empty space
ImGuiPopupFlags_AnyPopupId = 128             # 1 << 7 # For IsPopupOpen(): ignore the ImGuiID parameter and test for any popup.
ImGuiPopupFlags_AnyPopupLevel = 256          # 1 << 8 # For IsPopupOpen(): search/test at any level of the popup stack (default test in the current level)
ImGuiPopupFlags_AnyPopup = 384               # ImGuiPopupFlags_AnyPopupId | ImGuiPopupFlags_AnyPopupLevel

# ImGuiSelectableFlags_
# Flags for ImGui::Selectable()
ImGuiSelectableFlags_None = 0              # 0
ImGuiSelectableFlags_DontClosePopups = 1   # 1 << 0 # Clicking this doesn't close parent popup window
ImGuiSelectableFlags_SpanAllColumns = 2    # 1 << 1 # Selectable frame can span all columns (text will still fit in current column)
ImGuiSelectableFlags_AllowDoubleClick = 4  # 1 << 2 # Generate press events on double clicks too
ImGuiSelectableFlags_Disabled = 8          # 1 << 3 # Cannot be selected, display grayed out text
ImGuiSelectableFlags_AllowItemOverlap = 16 # 1 << 4 # (WIP) Hit testing to allow subsequent widgets to overlap this one

# ImGuiSliderFlags_
# Flags for DragFloat(), DragInt(), SliderFloat(), SliderInt() etc.
# We use the same sets of flags for DragXXX() and SliderXXX() functions as the features are the same and it makes it easier to swap them.
# (Those are per-item flags. There are shared flags in ImGuiIO: io.ConfigDragClickToInputText)
ImGuiSliderFlags_None = 0                  # 0
ImGuiSliderFlags_AlwaysClamp = 16          # 1 << 4 # Clamp value to min/max bounds when input manually with CTRL+Click. By default CTRL+Click allows going out of bounds.
ImGuiSliderFlags_Logarithmic = 32          # 1 << 5 # Make the widget logarithmic (linear otherwise). Consider using ImGuiSliderFlags_NoRoundToFormat with this if using a format-string with small amount of digits.
ImGuiSliderFlags_NoRoundToFormat = 64      # 1 << 6 # Disable rounding underlying value to match precision of the display format string (e.g. %.3f values are rounded to those 3 digits)
ImGuiSliderFlags_NoInput = 128             # 1 << 7 # Disable CTRL+Click or Enter key allowing to input text directly into the widget
ImGuiSliderFlags_InvalidMask_ = 1879048207 # 0x7000000F # [Internal] We treat using those bits as being potentially a 'float power' argument from the previous API that has got miscast to this enum, and will trigger an assert if needed.

# ImGuiSortDirection_
# A sorting direction
ImGuiSortDirection_None = 0       # 0
ImGuiSortDirection_Ascending = 1  # 1 # Ascending = 0->9, A->Z etc.
ImGuiSortDirection_Descending = 2 # 2 # Descending = 9->0, Z->A etc.

# ImGuiStyleVar_
# Enumeration for PushStyleVar() / PopStyleVar() to temporarily modify the ImGuiStyle structure.
# - The enum only refers to fields of ImGuiStyle which makes sense to be pushed/popped inside UI code.
#   During initialization or between frames, feel free to just poke into ImGuiStyle directly.
# - Tip: Use your programming IDE navigation facilities on the names in the _second column_ below to find the actual members and their description.
#   In Visual Studio IDE: CTRL+comma ("Edit.GoToAll") can follow symbols in comments, whereas CTRL+F12 ("Edit.GoToImplementation") cannot.
#   With Visual Assist installed: ALT+G ("VAssistX.GoToImplementation") can also follow symbols in comments.
# - When changing this enum, you need to update the associated internal table GStyleVarInfo[] accordingly. This is where we link enum values to members offset/type.
ImGuiStyleVar_Alpha = 0                # 0 # float     Alpha
ImGuiStyleVar_DisabledAlpha = 1        # 1 # float     DisabledAlpha
ImGuiStyleVar_WindowPadding = 2        # 2 # ImVec2    WindowPadding
ImGuiStyleVar_WindowRounding = 3       # 3 # float     WindowRounding
ImGuiStyleVar_WindowBorderSize = 4     # 4 # float     WindowBorderSize
ImGuiStyleVar_WindowMinSize = 5        # 5 # ImVec2    WindowMinSize
ImGuiStyleVar_WindowTitleAlign = 6     # 6 # ImVec2    WindowTitleAlign
ImGuiStyleVar_ChildRounding = 7        # 7 # float     ChildRounding
ImGuiStyleVar_ChildBorderSize = 8      # 8 # float     ChildBorderSize
ImGuiStyleVar_PopupRounding = 9        # 9 # float     PopupRounding
ImGuiStyleVar_PopupBorderSize = 10     # 10 # float     PopupBorderSize
ImGuiStyleVar_FramePadding = 11        # 11 # ImVec2    FramePadding
ImGuiStyleVar_FrameRounding = 12       # 12 # float     FrameRounding
ImGuiStyleVar_FrameBorderSize = 13     # 13 # float     FrameBorderSize
ImGuiStyleVar_ItemSpacing = 14         # 14 # ImVec2    ItemSpacing
ImGuiStyleVar_ItemInnerSpacing = 15    # 15 # ImVec2    ItemInnerSpacing
ImGuiStyleVar_IndentSpacing = 16       # 16 # float     IndentSpacing
ImGuiStyleVar_CellPadding = 17         # 17 # ImVec2    CellPadding
ImGuiStyleVar_ScrollbarSize = 18       # 18 # float     ScrollbarSize
ImGuiStyleVar_ScrollbarRounding = 19   # 19 # float     ScrollbarRounding
ImGuiStyleVar_GrabMinSize = 20         # 20 # float     GrabMinSize
ImGuiStyleVar_GrabRounding = 21        # 21 # float     GrabRounding
ImGuiStyleVar_TabRounding = 22         # 22 # float     TabRounding
ImGuiStyleVar_ButtonTextAlign = 23     # 23 # ImVec2    ButtonTextAlign
ImGuiStyleVar_SelectableTextAlign = 24 # 24 # ImVec2    SelectableTextAlign
ImGuiStyleVar_COUNT = 25               # 25

# ImGuiTabBarFlags_
# Flags for ImGui::BeginTabBar()
ImGuiTabBarFlags_None = 0                         # 0
ImGuiTabBarFlags_Reorderable = 1                  # 1 << 0 # Allow manually dragging tabs to re-order them + New tabs are appended at the end of list
ImGuiTabBarFlags_AutoSelectNewTabs = 2            # 1 << 1 # Automatically select new tabs when they appear
ImGuiTabBarFlags_TabListPopupButton = 4           # 1 << 2 # Disable buttons to open the tab list popup
ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8 # 1 << 3 # Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You can still repro this behavior on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false.
ImGuiTabBarFlags_NoTabListScrollingButtons = 16   # 1 << 4 # Disable scrolling buttons (apply when fitting policy is ImGuiTabBarFlags_FittingPolicyScroll)
ImGuiTabBarFlags_NoTooltip = 32                   # 1 << 5 # Disable tooltips when hovering a tab
ImGuiTabBarFlags_FittingPolicyResizeDown = 64     # 1 << 6 # Resize tabs when they don't fit
ImGuiTabBarFlags_FittingPolicyScroll = 128        # 1 << 7 # Add scroll buttons when tabs don't fit
ImGuiTabBarFlags_FittingPolicyMask_ = 192         # ImGuiTabBarFlags_FittingPolicyResizeDown | ImGuiTabBarFlags_FittingPolicyScroll
ImGuiTabBarFlags_FittingPolicyDefault_ = 64       # ImGuiTabBarFlags_FittingPolicyResizeDown

# ImGuiTabItemFlags_
# Flags for ImGui::BeginTabItem()
ImGuiTabItemFlags_None = 0                         # 0
ImGuiTabItemFlags_UnsavedDocument = 1              # 1 << 0 # Display a dot next to the title + tab is selected when clicking the X + closure is not assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar.
ImGuiTabItemFlags_SetSelected = 2                  # 1 << 1 # Trigger flag to programmatically make the tab selected when calling BeginTabItem()
ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4 # 1 << 2 # Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You can still repro this behavior on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false.
ImGuiTabItemFlags_NoPushId = 8                     # 1 << 3 # Don't call PushID(tab->ID)/PopID() on BeginTabItem()/EndTabItem()
ImGuiTabItemFlags_NoTooltip = 16                   # 1 << 4 # Disable tooltip for the given tab
ImGuiTabItemFlags_NoReorder = 32                   # 1 << 5 # Disable reordering this tab or having another tab cross over this tab
ImGuiTabItemFlags_Leading = 64                     # 1 << 6 # Enforce the tab position to the left of the tab bar (after the tab list popup button)
ImGuiTabItemFlags_Trailing = 128                   # 1 << 7 # Enforce the tab position to the right of the tab bar (before the scrolling buttons)

# ImGuiTableBgTarget_
# Enum for ImGui::TableSetBgColor()
# Background colors are rendering in 3 layers:
#  - Layer 0: draw with RowBg0 color if set, otherwise draw with ColumnBg0 if set.
#  - Layer 1: draw with RowBg1 color if set, otherwise draw with ColumnBg1 if set.
#  - Layer 2: draw with CellBg color if set.
# The purpose of the two row/columns layers is to let you decide if a background color change should override or blend with the existing color.
# When using ImGuiTableFlags_RowBg on the table, each row has the RowBg0 color automatically set for odd/even rows.
# If you set the color of RowBg0 target, your color will override the existing RowBg0 color.
# If you set the color of RowBg1 or ColumnBg1 target, your color will blend over the RowBg0 color.
ImGuiTableBgTarget_None = 0   # 0
ImGuiTableBgTarget_RowBg0 = 1 # 1 # Set row background color 0 (generally used for background, automatically set when ImGuiTableFlags_RowBg is used)
ImGuiTableBgTarget_RowBg1 = 2 # 2 # Set row background color 1 (generally used for selection marking)
ImGuiTableBgTarget_CellBg = 3 # 3 # Set cell background color (top-most color)

# ImGuiTableColumnFlags_
# Flags for ImGui::TableSetupColumn()
ImGuiTableColumnFlags_None = 0                     # 0
ImGuiTableColumnFlags_Disabled = 1                 # 1 << 0 # Overriding/master disable flag: hide column, won't show in context menu (unlike calling TableSetColumnEnabled() which manipulates the user accessible state)
ImGuiTableColumnFlags_DefaultHide = 2              # 1 << 1 # Default as a hidden/disabled column.
ImGuiTableColumnFlags_DefaultSort = 4              # 1 << 2 # Default as a sorting column.
ImGuiTableColumnFlags_WidthStretch = 8             # 1 << 3 # Column will stretch. Preferable with horizontal scrolling disabled (default if table sizing policy is _SizingStretchSame or _SizingStretchProp).
ImGuiTableColumnFlags_WidthFixed = 16              # 1 << 4 # Column will not stretch. Preferable with horizontal scrolling enabled (default if table sizing policy is _SizingFixedFit and table is resizable).
ImGuiTableColumnFlags_NoResize = 32                # 1 << 5 # Disable manual resizing.
ImGuiTableColumnFlags_NoReorder = 64               # 1 << 6 # Disable manual reordering this column, this will also prevent other columns from crossing over this column.
ImGuiTableColumnFlags_NoHide = 128                 # 1 << 7 # Disable ability to hide/disable this column.
ImGuiTableColumnFlags_NoClip = 256                 # 1 << 8 # Disable clipping for this column (all NoClip columns will render in a same draw command).
ImGuiTableColumnFlags_NoSort = 512                 # 1 << 9 # Disable ability to sort on this field (even if ImGuiTableFlags_Sortable is set on the table).
ImGuiTableColumnFlags_NoSortAscending = 1024       # 1 << 10 # Disable ability to sort in the ascending direction.
ImGuiTableColumnFlags_NoSortDescending = 2048      # 1 << 11 # Disable ability to sort in the descending direction.
ImGuiTableColumnFlags_NoHeaderLabel = 4096         # 1 << 12 # TableHeadersRow() will not submit label for this column. Convenient for some small columns. Name will still appear in context menu.
ImGuiTableColumnFlags_NoHeaderWidth = 8192         # 1 << 13 # Disable header text width contribution to automatic column width.
ImGuiTableColumnFlags_PreferSortAscending = 16384  # 1 << 14 # Make the initial sort direction Ascending when first sorting on this column (default).
ImGuiTableColumnFlags_PreferSortDescending = 32768 # 1 << 15 # Make the initial sort direction Descending when first sorting on this column.
ImGuiTableColumnFlags_IndentEnable = 65536         # 1 << 16 # Use current Indent value when entering cell (default for column 0).
ImGuiTableColumnFlags_IndentDisable = 131072       # 1 << 17 # Ignore current Indent value when entering cell (default for columns > 0). Indentation changes _within_ the cell will still be honored.
ImGuiTableColumnFlags_IsEnabled = 16777216         # 1 << 24 # Status: is enabled == not hidden by user/api (referred to as "Hide" in _DefaultHide and _NoHide) flags.
ImGuiTableColumnFlags_IsVisible = 33554432         # 1 << 25 # Status: is visible == is enabled AND not clipped by scrolling.
ImGuiTableColumnFlags_IsSorted = 67108864          # 1 << 26 # Status: is currently part of the sort specs
ImGuiTableColumnFlags_IsHovered = 134217728        # 1 << 27 # Status: is hovered by mouse
ImGuiTableColumnFlags_WidthMask_ = 24              # ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed
ImGuiTableColumnFlags_IndentMask_ = 196608         # ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable
ImGuiTableColumnFlags_StatusMask_ = 251658240      # ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered
ImGuiTableColumnFlags_NoDirectResize_ = 1073741824 # 1 << 30 # [Internal] Disable user resizing this column directly (it may however we resized indirectly from its left edge)

# ImGuiTableFlags_
# Flags for ImGui::BeginTable()
# - Important! Sizing policies have complex and subtle side effects, much more so than you would expect.
#   Read comments/demos carefully + experiment with live demos to get acquainted with them.
# - The DEFAULT sizing policies are:
#    - Default to ImGuiTableFlags_SizingFixedFit    if ScrollX is on, or if host window has ImGuiWindowFlags_AlwaysAutoResize.
#    - Default to ImGuiTableFlags_SizingStretchSame if ScrollX is off.
# - When ScrollX is off:
#    - Table defaults to ImGuiTableFlags_SizingStretchSame -> all Columns defaults to ImGuiTableColumnFlags_WidthStretch with same weight.
#    - Columns sizing policy allowed: Stretch (default), Fixed/Auto.
#    - Fixed Columns (if any) will generally obtain their requested width (unless the table cannot fit them all).
#    - Stretch Columns will share the remaining width according to their respective weight.
#    - Mixed Fixed/Stretch columns is possible but has various side-effects on resizing behaviors.
#      The typical use of mixing sizing policies is: any number of LEADING Fixed columns, followed by one or two TRAILING Stretch columns.
#      (this is because the visible order of columns have subtle but necessary effects on how they react to manual resizing).
# - When ScrollX is on:
#    - Table defaults to ImGuiTableFlags_SizingFixedFit -> all Columns defaults to ImGuiTableColumnFlags_WidthFixed
#    - Columns sizing policy allowed: Fixed/Auto mostly.
#    - Fixed Columns can be enlarged as needed. Table will show a horizontal scrollbar if needed.
#    - When using auto-resizing (non-resizable) fixed columns, querying the content width to use item right-alignment e.g. SetNextItemWidth(-FLT_MIN) doesn't make sense, would create a feedback loop.
#    - Using Stretch columns OFTEN DOES NOT MAKE SENSE if ScrollX is on, UNLESS you have specified a value for 'inner_width' in BeginTable().
#      If you specify a value for 'inner_width' then effectively the scrolling space is known and Stretch or mixed Fixed/Stretch columns become meaningful again.
# - Read on documentation at the top of imgui_tables.cpp for details.
ImGuiTableFlags_None = 0                          # 0
ImGuiTableFlags_Resizable = 1                     # 1 << 0 # Enable resizing columns.
ImGuiTableFlags_Reorderable = 2                   # 1 << 1 # Enable reordering columns in header row (need calling TableSetupColumn() + TableHeadersRow() to display headers)
ImGuiTableFlags_Hideable = 4                      # 1 << 2 # Enable hiding/disabling columns in context menu.
ImGuiTableFlags_Sortable = 8                      # 1 << 3 # Enable sorting. Call TableGetSortSpecs() to obtain sort specs. Also see ImGuiTableFlags_SortMulti and ImGuiTableFlags_SortTristate.
ImGuiTableFlags_NoSavedSettings = 16              # 1 << 4 # Disable persisting columns order, width and sort settings in the .ini file.
ImGuiTableFlags_ContextMenuInBody = 32            # 1 << 5 # Right-click on columns body/contents will display table context menu. By default it is available in TableHeadersRow().
ImGuiTableFlags_RowBg = 64                        # 1 << 6 # Set each RowBg color with ImGuiCol_TableRowBg or ImGuiCol_TableRowBgAlt (equivalent of calling TableSetBgColor with ImGuiTableBgFlags_RowBg0 on each row manually)
ImGuiTableFlags_BordersInnerH = 128               # 1 << 7 # Draw horizontal borders between rows.
ImGuiTableFlags_BordersOuterH = 256               # 1 << 8 # Draw horizontal borders at the top and bottom.
ImGuiTableFlags_BordersInnerV = 512               # 1 << 9 # Draw vertical borders between columns.
ImGuiTableFlags_BordersOuterV = 1024              # 1 << 10 # Draw vertical borders on the left and right sides.
ImGuiTableFlags_BordersH = 384                    # ImGuiTableFlags_BordersInnerH | ImGuiTableFlags_BordersOuterH # Draw horizontal borders.
ImGuiTableFlags_BordersV = 1536                   # ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersOuterV # Draw vertical borders.
ImGuiTableFlags_BordersInner = 640                # ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersInnerH # Draw inner borders.
ImGuiTableFlags_BordersOuter = 1280               # ImGuiTableFlags_BordersOuterV | ImGuiTableFlags_BordersOuterH # Draw outer borders.
ImGuiTableFlags_Borders = 1920                    # ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter # Draw all borders.
ImGuiTableFlags_NoBordersInBody = 2048            # 1 << 11 # [ALPHA] Disable vertical borders in columns Body (borders will always appear in Headers). -> May move to style
ImGuiTableFlags_NoBordersInBodyUntilResize = 4096 # 1 << 12 # [ALPHA] Disable vertical borders in columns Body until hovered for resize (borders will always appear in Headers). -> May move to style
ImGuiTableFlags_SizingFixedFit = 8192             # 1 << 13 # Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching contents width.
ImGuiTableFlags_SizingFixedSame = 16384           # 2 << 13 # Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching the maximum contents width of all columns. Implicitly enable ImGuiTableFlags_NoKeepColumnsVisible.
ImGuiTableFlags_SizingStretchProp = 24576         # 3 << 13 # Columns default to _WidthStretch with default weights proportional to each columns contents widths.
ImGuiTableFlags_SizingStretchSame = 32768         # 4 << 13 # Columns default to _WidthStretch with default weights all equal, unless overridden by TableSetupColumn().
ImGuiTableFlags_NoHostExtendX = 65536             # 1 << 16 # Make outer width auto-fit to columns, overriding outer_size.x value. Only available when ScrollX/ScrollY are disabled and Stretch columns are not used.
ImGuiTableFlags_NoHostExtendY = 131072            # 1 << 17 # Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit). Only available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.
ImGuiTableFlags_NoKeepColumnsVisible = 262144     # 1 << 18 # Disable keeping column always minimally visible when ScrollX is off and table gets too small. Not recommended if columns are resizable.
ImGuiTableFlags_PreciseWidths = 524288            # 1 << 19 # Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33). With larger number of columns, resizing will appear to be less smooth.
ImGuiTableFlags_NoClip = 1048576                  # 1 << 20 # Disable clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow into other columns). Generally incompatible with TableSetupScrollFreeze().
ImGuiTableFlags_PadOuterX = 2097152               # 1 << 21 # Default if BordersOuterV is on. Enable outermost padding. Generally desirable if you have headers.
ImGuiTableFlags_NoPadOuterX = 4194304             # 1 << 22 # Default if BordersOuterV is off. Disable outermost padding.
ImGuiTableFlags_NoPadInnerX = 8388608             # 1 << 23 # Disable inner padding between columns (double inner padding if BordersOuterV is on, single inner padding if BordersOuterV is off).
ImGuiTableFlags_ScrollX = 16777216                # 1 << 24 # Enable horizontal scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. Changes default sizing policy. Because this creates a child window, ScrollY is currently generally recommended when using ScrollX.
ImGuiTableFlags_ScrollY = 33554432                # 1 << 25 # Enable vertical scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size.
ImGuiTableFlags_SortMulti = 67108864              # 1 << 26 # Hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).
ImGuiTableFlags_SortTristate = 134217728          # 1 << 27 # Allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).
ImGuiTableFlags_SizingMask_ = 57344               # ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_SizingFixedSame | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_SizingStretchSame

# ImGuiTableRowFlags_
# Flags for ImGui::TableNextRow()
ImGuiTableRowFlags_None = 0    # 0
ImGuiTableRowFlags_Headers = 1 # 1 << 0 # Identify header row (set default background color + width of its contents accounted differently for auto column width)

# ImGuiTreeNodeFlags_
# Flags for ImGui::TreeNodeEx(), ImGui::CollapsingHeader*()
ImGuiTreeNodeFlags_None = 0                    # 0
ImGuiTreeNodeFlags_Selected = 1                # 1 << 0 # Draw as selected
ImGuiTreeNodeFlags_Framed = 2                  # 1 << 1 # Draw frame with background (e.g. for CollapsingHeader)
ImGuiTreeNodeFlags_AllowItemOverlap = 4        # 1 << 2 # Hit testing to allow subsequent widgets to overlap this one
ImGuiTreeNodeFlags_NoTreePushOnOpen = 8        # 1 << 3 # Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16        # 1 << 4 # Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
ImGuiTreeNodeFlags_DefaultOpen = 32            # 1 << 5 # Default node to be open
ImGuiTreeNodeFlags_OpenOnDoubleClick = 64      # 1 << 6 # Need double-click to open node
ImGuiTreeNodeFlags_OpenOnArrow = 128           # 1 << 7 # Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
ImGuiTreeNodeFlags_Leaf = 256                  # 1 << 8 # No collapsing, no arrow (use as a convenience for leaf nodes).
ImGuiTreeNodeFlags_Bullet = 512                # 1 << 9 # Display a bullet instead of arrow
ImGuiTreeNodeFlags_FramePadding = 1024         # 1 << 10 # Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
ImGuiTreeNodeFlags_SpanAvailWidth = 2048       # 1 << 11 # Extend hit box to the right-most edge, even if not framed. This is not the default in order to allow adding other items on the same line. In the future we may refactor the hit system to be front-to-back, allowing natural overlaps and then this can become the default.
ImGuiTreeNodeFlags_SpanFullWidth = 4096        # 1 << 12 # Extend hit box to the left-most and right-most edges (bypass the indented area).
ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 8192 # 1 << 13 # (WIP) Nav: left direction may move to this TreeNode() from any of its child (items submitted between TreeNode and TreePop)
ImGuiTreeNodeFlags_CollapsingHeader = 26       # ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog

# ImGuiViewportFlags_
# Flags stored in ImGuiViewport::Flags, giving indications to the platform backends.
ImGuiViewportFlags_None = 0              # 0
ImGuiViewportFlags_IsPlatformWindow = 1  # 1 << 0 # Represent a Platform Window
ImGuiViewportFlags_IsPlatformMonitor = 2 # 1 << 1 # Represent a Platform Monitor (unused yet)
ImGuiViewportFlags_OwnedByApp = 4        # 1 << 2 # Platform Window: is created/managed by the application (rather than a dear imgui backend)

# ImGuiWindowFlags_
# Flags for ImGui::Begin()
# (Those are per-window flags. There are shared flags in ImGuiIO: io.ConfigWindowsResizeFromEdges and io.ConfigWindowsMoveFromTitleBarOnly)
ImGuiWindowFlags_None = 0                          # 0
ImGuiWindowFlags_NoTitleBar = 1                    # 1 << 0 # Disable title-bar
ImGuiWindowFlags_NoResize = 2                      # 1 << 1 # Disable user resizing with the lower-right grip
ImGuiWindowFlags_NoMove = 4                        # 1 << 2 # Disable user moving the window
ImGuiWindowFlags_NoScrollbar = 8                   # 1 << 3 # Disable scrollbars (window can still scroll with mouse or programmatically)
ImGuiWindowFlags_NoScrollWithMouse = 16            # 1 << 4 # Disable user vertically scrolling with mouse wheel. On child window, mouse wheel will be forwarded to the parent unless NoScrollbar is also set.
ImGuiWindowFlags_NoCollapse = 32                   # 1 << 5 # Disable user collapsing window by double-clicking on it. Also referred to as Window Menu Button (e.g. within a docking node).
ImGuiWindowFlags_AlwaysAutoResize = 64             # 1 << 6 # Resize every window to its content every frame
ImGuiWindowFlags_NoBackground = 128                # 1 << 7 # Disable drawing background color (WindowBg, etc.) and outside border. Similar as using SetNextWindowBgAlpha(0.0f).
ImGuiWindowFlags_NoSavedSettings = 256             # 1 << 8 # Never load/save settings in .ini file
ImGuiWindowFlags_NoMouseInputs = 512               # 1 << 9 # Disable catching mouse, hovering test with pass through.
ImGuiWindowFlags_MenuBar = 1024                    # 1 << 10 # Has a menu-bar
ImGuiWindowFlags_HorizontalScrollbar = 2048        # 1 << 11 # Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f)); prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.
ImGuiWindowFlags_NoFocusOnAppearing = 4096         # 1 << 12 # Disable taking focus when transitioning from hidden to visible state
ImGuiWindowFlags_NoBringToFrontOnFocus = 8192      # 1 << 13 # Disable bringing window to front when taking focus (e.g. clicking on it or programmatically giving it focus)
ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384   # 1 << 14 # Always show vertical scrollbar (even if ContentSize.y < Size.y)
ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768 # 1<< 15 # Always show horizontal scrollbar (even if ContentSize.x < Size.x)
ImGuiWindowFlags_AlwaysUseWindowPadding = 65536    # 1 << 16 # Ensure child windows without border uses style.WindowPadding (ignored by default for non-bordered child windows, because more convenient)
ImGuiWindowFlags_NoNavInputs = 262144              # 1 << 18 # No gamepad/keyboard navigation within the window
ImGuiWindowFlags_NoNavFocus = 524288               # 1 << 19 # No focusing toward this window with gamepad/keyboard navigation (e.g. skipped by CTRL+TAB)
ImGuiWindowFlags_UnsavedDocument = 1048576         # 1 << 20 # Display a dot next to the title. When used in a tab/docking context, tab is selected when clicking the X + closure is not assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar.
ImGuiWindowFlags_NoNav = 786432                    # ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus
ImGuiWindowFlags_NoDecoration = 43                 # ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse
ImGuiWindowFlags_NoInputs = 786944                 # ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus
ImGuiWindowFlags_NavFlattened = 8388608            # 1 << 23 # [BETA] On child window: allow gamepad/keyboard navigation to cross over parent border to this child or between sibling child windows.
ImGuiWindowFlags_ChildWindow = 16777216            # 1 << 24 # Don't use! For internal use by BeginChild()
ImGuiWindowFlags_Tooltip = 33554432                # 1 << 25 # Don't use! For internal use by BeginTooltip()
ImGuiWindowFlags_Popup = 67108864                  # 1 << 26 # Don't use! For internal use by BeginPopup()
ImGuiWindowFlags_Modal = 134217728                 # 1 << 27 # Don't use! For internal use by BeginPopupModal()
ImGuiWindowFlags_ChildMenu = 268435456             # 1 << 28 # Don't use! For internal use by BeginMenu()


class ImVec2 < FFI::Struct
  layout(
    :x, :float,
    :y, :float
  )
end

# ImVec4: 4D vector used to store clipping rectangles, colors etc. [Compile-time configurable type]
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

# Split/Merge functions are used to split the draw list into different layers which can be drawn into out of order.
# This is used by the Columns/Tables API, so items of each column can be batched together in a same draw call.
class ImDrawListSplitter < FFI::Struct
  layout(
    :_Current, :int,                # Current channel number (0)
    :_Count, :int,                  # Number of active channels (1+)
    :_Channels, ImVector.by_value   # Draw channels (not resized down so _Count might be < Channels.Size)
  )
end

# Typically, 1 command = 1 GPU draw call (unless command is a callback)
# - VtxOffset: When 'io.BackendFlags & ImGuiBackendFlags_RendererHasVtxOffset' is enabled,
#   this fields allow us to render meshes larger than 64K vertices while keeping 16-bit indices.
#   Backends made for <1.71. will typically ignore the VtxOffset fields.
# - The ClipRect/TextureId/VtxOffset fields must be contiguous as we memcmp() them together (this is asserted for).
class ImDrawCmd < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,   # 4*4  // Clipping rectangle (x1, y1, x2, y2). Subtract ImDrawData->DisplayPos to get clipping rectangle in "viewport" coordinates
    :TextureId, :pointer,         # 4-8  // User-provided texture ID. Set by user in ImfontAtlas::SetTexID() for fonts or passed to Image*() functions. Ignore if never using images or multiple fonts atlas.
    :VtxOffset, :uint,            # 4    // Start offset in vertex buffer. ImGuiBackendFlags_RendererHasVtxOffset: always 0, otherwise may be >0 to support meshes larger than 64K vertices with 16-bit indices.
    :IdxOffset, :uint,            # 4    // Start offset in index buffer.
    :ElemCount, :uint,            # 4    // Number of indices (multiple of 3) to be rendered as triangles. Vertices are stored in the callee ImDrawList's vtx_buffer[] array, indices in idx_buffer[].
    :UserCallback, :pointer,      # 4-8  // If != NULL, call the function instead of rendering the vertices. clip_rect and texture_id will be set normally.
    :UserCallbackData, :pointer   # 4-8  // The draw callback code can access this.
  )
end

# [Internal] For use by ImDrawList
class ImDrawCmdHeader < FFI::Struct
  layout(
    :ClipRect, ImVec4.by_value,
    :TextureId, :pointer,
    :VtxOffset, :uint
  )
end

# Draw command list
# This is the low-level list of polygons that ImGui:: functions are filling. At the end of the frame,
# all command lists are passed to your ImGuiIO::RenderDrawListFn function for rendering.
# Each dear imgui window contains its own ImDrawList. You can use ImGui::GetWindowDrawList() to
# access the current window draw list and draw custom primitives.
# You can interleave normal ImGui:: calls and adding primitives to the current draw list.
# In single viewport mode, top-left is == GetMainViewport()->Pos (generally 0,0), bottom-right is == GetMainViewport()->Pos+Size (generally io.DisplaySize).
# You are totally free to apply whatever transformation matrix to want to the data (depending on the use of the transformation you may want to apply it to ClipRect as well!)
# Important: Primitives are always added to the list and not culled (culling is done at higher-level by ImGui:: functions), if you use this API a lot consider coarse culling your drawn objects.
class ImDrawList < FFI::Struct
  layout(
    :CmdBuffer, ImVector.by_value,            # Draw commands. Typically 1 command = 1 GPU draw call, unless the command is a callback.
    :IdxBuffer, ImVector.by_value,            # Index buffer. Each command consume ImDrawCmd::ElemCount of those
    :VtxBuffer, ImVector.by_value,            # Vertex buffer.
    :Flags, :int,                             # Flags, you may poke into these to adjust anti-aliasing settings per-primitive.
    :_VtxCurrentIdx, :uint,                   # [Internal] generally == VtxBuffer.Size unless we are past 64K vertices, in which case this gets reset to 0.
    :_Data, :pointer,                         # Pointer to shared draw data (you can use ImGui::GetDrawListSharedData() to get the one from current ImGui context)
    :_OwnerName, :pointer,                    # Pointer to owner window's name for debugging
    :_VtxWritePtr, ImDrawVert.ptr,            # [Internal] point within VtxBuffer.Data after each add command (to avoid using the ImVector<> operators too much)
    :_IdxWritePtr, :pointer,                  # [Internal] point within IdxBuffer.Data after each add command (to avoid using the ImVector<> operators too much)
    :_ClipRectStack, ImVector.by_value,       # [Internal]
    :_TextureIdStack, ImVector.by_value,      # [Internal]
    :_Path, ImVector.by_value,                # [Internal] current path building
    :_CmdHeader, ImDrawCmdHeader.by_value,    # [Internal] template of active commands. Fields should match those of CmdBuffer.back().
    :_Splitter, ImDrawListSplitter.by_value,  # [Internal] for channels api (note: prefer using your own persistent instance of ImDrawListSplitter!)
    :_FringeScale, :float                     # [Internal] anti-alias fringe is scaled by this value, this helps to keep things sharp while zooming at vertex buffer content
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

# Load and rasterize multiple TTF/OTF fonts into a same texture. The font atlas will build a single texture holding:
#  - One or more fonts.
#  - Custom graphics data needed to render the shapes needed by Dear ImGui.
#  - Mouse cursor shapes for software cursor rendering (unless setting 'Flags |= ImFontAtlasFlags_NoMouseCursors' in the font atlas).
# It is the user-code responsibility to setup/build the atlas, then upload the pixel data into a texture accessible by your graphics api.
#  - Optionally, call any of the AddFont*** functions. If you don't call any, the default font embedded in the code will be loaded for you.
#  - Call GetTexDataAsAlpha8() or GetTexDataAsRGBA32() to build and retrieve pixels data.
#  - Upload the pixels data into a texture within your graphics system (see imgui_impl_xxxx.cpp examples)
#  - Call SetTexID(my_tex_id); and pass the pointer/identifier to your texture in a format natural to your graphics API.
#    This value will be passed back to you during rendering to identify the texture. Read FAQ entry about ImTextureID for more details.
# Common pitfalls:
# - If you pass a 'glyph_ranges' array to AddFont*** functions, you need to make sure that your array persist up until the
#   atlas is build (when calling GetTexData*** or Build()). We only copy the pointer, not the data.
# - Important: By default, AddFontFromMemoryTTF() takes ownership of the data. Even though we are not writing to it, we will free the pointer on destruction.
#   You can set font_cfg->FontDataOwnedByAtlas=false to keep ownership of your data and it won't be freed,
# - Even though many functions are suffixed with "TTF", OTF data is supported just as well.
# - This is an old API and it is currently awkward for those and various other reasons! We will address them in the future!
class ImFontAtlas < FFI::Struct
  layout(
    :Flags, :int,                        # Build flags (see ImFontAtlasFlags_)
    :TexID, :pointer,                    # User data to refer to the texture once it has been uploaded to user's graphic systems. It is passed back to you during rendering via the ImDrawCmd structure.
    :TexDesiredWidth, :int,              # Texture width desired by user before Build(). Must be a power-of-two. If have many glyphs your graphics API have texture size restrictions you may want to increase texture width to decrease height.
    :TexGlyphPadding, :int,              # Padding between glyphs within texture in pixels. Defaults to 1. If your rendering method doesn't rely on bilinear filtering you may set this to 0 (will also need to set AntiAliasedLinesUseTex = false).
    :Locked, :bool,                      # Marked as Locked by ImGui::NewFrame() so attempt to modify the atlas will assert.
    :UserData, :pointer,                 # Store your own atlas related user-data (if e.g. you have multiple font atlas).
    :TexReady, :bool,                    # Set when texture was built matching current font input
    :TexPixelsUseColors, :bool,          # Tell whether our texture data is known to use colors (rather than just alpha channel), in order to help backend select a format.
    :TexPixelsAlpha8, :pointer,          # 1 component per pixel, each component is unsigned 8-bit. Total size = TexWidth * TexHeight
    :TexPixelsRGBA32, :pointer,          # 4 component per pixel, each component is unsigned 8-bit. Total size = TexWidth * TexHeight * 4
    :TexWidth, :int,                     # Texture width calculated during Build().
    :TexHeight, :int,                    # Texture height calculated during Build().
    :TexUvScale, ImVec2.by_value,        # = (1.0f/TexWidth, 1.0f/TexHeight)
    :TexUvWhitePixel, ImVec2.by_value,   # Texture coordinates to a white pixel
    :Fonts, ImVector.by_value,           # Hold all the fonts returned by AddFont*. Fonts[0] is the default font upon calling ImGui::NewFrame(), use ImGui::PushFont()/PopFont() to change the current font.
    :CustomRects, ImVector.by_value,     # Rectangles for packing custom texture data into the atlas.
    :ConfigData, ImVector.by_value,      # Configuration data
    :TexUvLines, [ImVec4.by_value, 64],  # UVs for baked anti-aliased lines
    :FontBuilderIO, :pointer,            # Opaque interface to a font builder (default to stb_truetype, can be changed to use FreeType by defining IMGUI_ENABLE_FREETYPE).
    :FontBuilderFlags, :uint,            # Shared flags (for all fonts) for custom font builder. THIS IS BUILD IMPLEMENTATION DEPENDENT. Per-font override is also available in ImFontConfig.
    :PackIdMouseCursors, :int,           # Custom texture rectangle ID for white pixel and mouse cursors
    :PackIdLines, :int                   # Custom texture rectangle ID for baked anti-aliased lines
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

  def GetGlyphRangesGreek()
    ImGui::ImFontAtlas_GetGlyphRangesGreek(self)
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

# [Internal] Storage used by IsKeyDown(), IsKeyPressed() etc functions.
# If prior to 1.87 you used io.KeysDownDuration[] (which was marked as internal), you should use GetKeyData(key)->DownDuration and *NOT* io.KeysData[key]->DownDuration.
class ImGuiKeyData < FFI::Struct
  layout(
    :Down, :bool,               # True for if key is down
    :DownDuration, :float,      # Duration the key has been down (<0.0f: not pressed, 0.0f: just pressed, >0.0f: time held)
    :DownDurationPrev, :float,  # Last frame duration the key has been down
    :AnalogValue, :float        # 0.0f..1.0f for gamepad values
  )
end

# Helper: ImColor() implicitly converts colors to either ImU32 (packed 4x1 byte) or ImVec4 (4x1 float)
# Prefer using IM_COL32() macros if you want a guaranteed compile-time ImU32 for usage with ImDrawList API.
# **Avoid storing ImColor! Store either u32 of ImVec4. This is not a full-featured color class. MAY OBSOLETE.
# **None of the ImGui API are using ImColor directly but you can use it as a convenience to pass colors in either ImU32 or ImVec4 formats. Explicitly cast to ImU32 or ImVec4 if needed.
class ImColor < FFI::Struct
  layout(
    :Value, ImVec4.by_value
  )
end

# All draw data to render a Dear ImGui frame
# (NB: the style and the naming convention here is a little inconsistent, we currently preserve them for backward compatibility purpose,
# as this is one of the oldest structure exposed by the library! Basically, ImDrawList == CmdList)
class ImDrawData < FFI::Struct
  layout(
    :Valid, :bool,                       # Only valid after Render() is called and before the next NewFrame() is called.
    :CmdListsCount, :int,                # Number of ImDrawList* to render
    :TotalIdxCount, :int,                # For convenience, sum of all ImDrawList's IdxBuffer.Size
    :TotalVtxCount, :int,                # For convenience, sum of all ImDrawList's VtxBuffer.Size
    :CmdLists, ImDrawList.ptr,           # Array of ImDrawList* to render. The ImDrawList are owned by ImGuiContext and only pointed to from here.
    :DisplayPos, ImVec2.by_value,        # Top-left position of the viewport to render (== top-left of the orthogonal projection matrix to use) (== GetMainViewport()->Pos for the main viewport, == (0.0) in most single-viewport applications)
    :DisplaySize, ImVec2.by_value,       # Size of the viewport to render (== GetMainViewport()->Size for the main viewport, == io.DisplaySize in most single-viewport applications)
    :FramebufferScale, ImVec2.by_value   # Amount of pixels for each unit of DisplaySize. Based on io.DisplayFramebufferScale. Generally (1,1) on normal display, (2,2) on OSX with Retina display.
  )
end

# Font runtime data and rendering
# ImFontAtlas automatically loads a default embedded font for you when you call GetTexDataAsAlpha8() or GetTexDataAsRGBA32().
class ImFont < FFI::Struct
  layout(
    :IndexAdvanceX, ImVector.by_value,  # 12-16 // out //            // Sparse. Glyphs->AdvanceX in a directly indexable way (cache-friendly for CalcTextSize functions which only this this info, and are often bottleneck in large UI).
    :FallbackAdvanceX, :float,          # 4     // out // = FallbackGlyph->AdvanceX
    :FontSize, :float,                  # 4     // in  //            // Height of characters/line, set during loading (don't change after loading)
    :IndexLookup, ImVector.by_value,    # 12-16 // out //            // Sparse. Index glyphs by Unicode code-point.
    :Glyphs, ImVector.by_value,         # 12-16 // out //            // All glyphs.
    :FallbackGlyph, :pointer,           # 4-8   // out // = FindGlyph(FontFallbackChar)
    :ContainerAtlas, ImFontAtlas.ptr,   # 4-8   // out //            // What we has been loaded into
    :ConfigData, :pointer,              # 4-8   // in  //            // Pointer within ContainerAtlas->ConfigData
    :ConfigDataCount, :short,           # 2     // in  // ~ 1        // Number of ImFontConfig involved in creating this font. Bigger than 1 when merging multiple font sources into one ImFont.
    :FallbackChar, :ushort,             # 2     // out // = FFFD/'?' // Character used if a glyph isn't found.
    :EllipsisChar, :ushort,             # 2     // out // = '...'    // Character used for ellipsis rendering.
    :DotChar, :ushort,                  # 2     // out // = '.'      // Character used for ellipsis rendering (if a single '...' character isn't found)
    :DirtyLookupTables, :bool,          # 1     // out //
    :Scale, :float,                     # 4     // in  // = 1.f      // Base font scale, multiplied by the per-window font scale which you can adjust with SetWindowFontScale()
    :Ascent, :float,                    # 4+4   // out //            // Ascent: distance from top to bottom of e.g. 'A' [0..FontSize]
    :Descent, :float,
    :MetricsTotalSurface, :int,         # 4     // out //            // Total surface in pixels to get an idea of the font rasterization/texture cost (not exact, we approximate the cost of padding between glyphs)
    :Used4kPagesMap, [:uchar, 2]        # 2 bytes if ImWchar=ImWchar16, 34 bytes if ImWchar==ImWchar32. Store 1-bit for each block of 4K codepoints that has one active glyph. This is mainly used to facilitate iterations across all used codepoints.
  )
end

# See ImFontAtlas::AddCustomRectXXX functions.
class ImFontAtlasCustomRect < FFI::Struct
  layout(
    :Width, :ushort,                # Input    // Desired rectangle dimension
    :Height, :ushort,
    :X, :ushort,                    # Output   // Packed position in Atlas
    :Y, :ushort,
    :GlyphID, :uint,                # Input    // For custom font glyphs only (ID < 0x110000)
    :GlyphAdvanceX, :float,         # Input    // For custom font glyphs only: glyph xadvance
    :GlyphOffset, ImVec2.by_value,  # Input    // For custom font glyphs only: glyph display offset
    :Font, ImFont.ptr               # Input    // For custom font glyphs only: target font
  )
end

class ImFontConfig < FFI::Struct
  layout(
    :FontData, :pointer,                  #          // TTF/OTF data
    :FontDataSize, :int,                  #          // TTF/OTF data size
    :FontDataOwnedByAtlas, :bool,         # true     // TTF/OTF data ownership taken by the container ImFontAtlas (will delete memory itself).
    :FontNo, :int,                        # 0        // Index of font within TTF/OTF file
    :SizePixels, :float,                  #          // Size in pixels for rasterizer (more or less maps to the resulting font height).
    :OversampleH, :int,                   # 3        // Rasterize at higher quality for sub-pixel positioning. Note the difference between 2 and 3 is minimal so you can reduce this to 2 to save memory. Read https://github.com/nothings/stb/blob/master/tests/oversample/README.md for details.
    :OversampleV, :int,                   # 1        // Rasterize at higher quality for sub-pixel positioning. This is not really useful as we don't use sub-pixel positions on the Y axis.
    :PixelSnapH, :bool,                   # false    // Align every glyph to pixel boundary. Useful e.g. if you are merging a non-pixel aligned font with the default font. If enabled, you can set OversampleH/V to 1.
    :GlyphExtraSpacing, ImVec2.by_value,  # 0, 0     // Extra spacing (in pixels) between glyphs. Only X axis is supported for now.
    :GlyphOffset, ImVec2.by_value,        # 0, 0     // Offset all glyphs from this font input.
    :GlyphRanges, :pointer,               # NULL     // Pointer to a user-provided list of Unicode range (2 value per range, values are inclusive, zero-terminated list). THE ARRAY DATA NEEDS TO PERSIST AS LONG AS THE FONT IS ALIVE.
    :GlyphMinAdvanceX, :float,            # 0        // Minimum AdvanceX for glyphs, set Min to align font icons, set both Min/Max to enforce mono-space font
    :GlyphMaxAdvanceX, :float,            # FLT_MAX  // Maximum AdvanceX for glyphs
    :MergeMode, :bool,                    # false    // Merge into previous ImFont, so you can combine multiple inputs font into one ImFont (e.g. ASCII font + icons + Japanese glyphs). You may want to use GlyphOffset.y when merge font of different heights.
    :FontBuilderFlags, :uint,             # 0        // Settings for custom font builder. THIS IS BUILDER IMPLEMENTATION DEPENDENT. Leave as zero if unsure.
    :RasterizerMultiply, :float,          # 1.0f     // Brighten (>1.0f) or darken (<1.0f) font output. Brightening small fonts may be a good workaround to make them more readable.
    :EllipsisChar, :ushort,               # -1       // Explicitly specify unicode codepoint of ellipsis character. When fonts are being merged first specified ellipsis will be used.
    :Name, [:char, 40],                   # Name (strictly to ease debugging)
    :DstFont, ImFont.ptr
  )

  def self.create()
    return ImFontConfig.new(ImGui::ImFontConfig_ImFontConfig())
  end

  def destroy()
    ImGui::ImFontConfig_destroy(self)
  end

end

# Helper to build glyph ranges from text/string data. Feed your application strings/characters to it then call BuildRanges().
# This is essentially a tightly packed of vector of 64k booleans = 8KB storage.
class ImFontGlyphRangesBuilder < FFI::Struct
  layout(
    :UsedChars, ImVector.by_value   # Store 1-bit per Unicode code point (0=unused, 1=used)
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
    :ConfigFlags, :int,                           # = 0              // See ImGuiConfigFlags_ enum. Set by user/application. Gamepad/keyboard navigation options, etc.
    :BackendFlags, :int,                          # = 0              // See ImGuiBackendFlags_ enum. Set by backend (imgui_impl_xxx files or custom backend) to communicate features supported by the backend.
    :DisplaySize, ImVec2.by_value,                # <unset>          // Main display size, in pixels (generally == GetMainViewport()->Size). May change every frame.
    :DeltaTime, :float,                           # = 1.0f/60.0f     // Time elapsed since last frame, in seconds. May change every frame.
    :IniSavingRate, :float,                       # = 5.0f           // Minimum time between saving positions/sizes to .ini file, in seconds.
    :IniFilename, :pointer,                       # = "imgui.ini"    // Path to .ini file (important: default "imgui.ini" is relative to current working dir!). Set NULL to disable automatic .ini loading/saving or if you want to manually call LoadIniSettingsXXX() / SaveIniSettingsXXX() functions.
    :LogFilename, :pointer,                       # = "imgui_log.txt"// Path to .log file (default parameter to ImGui::LogToFile when no file is specified).
    :MouseDoubleClickTime, :float,                # = 0.30f          // Time for a double-click, in seconds.
    :MouseDoubleClickMaxDist, :float,             # = 6.0f           // Distance threshold to stay in to validate a double-click, in pixels.
    :MouseDragThreshold, :float,                  # = 6.0f           // Distance threshold before considering we are dragging.
    :KeyRepeatDelay, :float,                      # = 0.275f         // When holding a key/button, time before it starts repeating, in seconds (for buttons in Repeat mode, etc.).
    :KeyRepeatRate, :float,                       # = 0.050f         // When holding a key/button, rate at which it repeats, in seconds.
    :HoverDelayNormal, :float,                    # = 0.30 sec       // Delay on hovering before IsItemHovered(ImGuiHoveredFlags_DelayNormal) returns true.
    :HoverDelayShort, :float,                     # = 0.10 sec       // Delay on hovering before IsItemHovered(ImGuiHoveredFlags_DelayShort) returns true.
    :UserData, :pointer,                          # = NULL           // Store your own data.
    :Fonts, ImFontAtlas.ptr,                      # <auto>           // Font atlas: load, rasterize and pack one or more fonts into a single texture.
    :FontGlobalScale, :float,                     # = 1.0f           // Global scale all fonts
    :FontAllowUserScaling, :bool,                 # = false          // Allow user scaling text of individual window with CTRL+Wheel.
    :FontDefault, ImFont.ptr,                     # = NULL           // Font to use on NewFrame(). Use NULL to uses Fonts->Fonts[0].
    :DisplayFramebufferScale, ImVec2.by_value,    # = (1, 1)         // For retina display or other situations where window coordinates are different from framebuffer coordinates. This generally ends up in ImDrawData::FramebufferScale.
    :MouseDrawCursor, :bool,                      # = false          // Request ImGui to draw a mouse cursor for you (if you are on a platform without a mouse cursor). Cannot be easily renamed to 'io.ConfigXXX' because this is frequently used by backend implementations.
    :ConfigMacOSXBehaviors, :bool,                # = defined(__APPLE__) // OS X style: Text editing cursor movement using Alt instead of Ctrl, Shortcuts using Cmd/Super instead of Ctrl, Line/Text Start and End using Cmd+Arrows instead of Home/End, Double click selects by word instead of selecting whole text, Multi-selection in lists uses Cmd/Super instead of Ctrl.
    :ConfigInputTrickleEventQueue, :bool,         # = true           // Enable input queue trickling: some types of events submitted during the same frame (e.g. button down + up) will be spread over multiple frames, improving interactions with low framerates.
    :ConfigInputTextCursorBlink, :bool,           # = true           // Enable blinking cursor (optional as some users consider it to be distracting).
    :ConfigInputTextEnterKeepActive, :bool,       # = false          // [BETA] Pressing Enter will keep item active and select contents (single-line only).
    :ConfigDragClickToInputText, :bool,           # = false          // [BETA] Enable turning DragXXX widgets into text input with a simple mouse click-release (without moving). Not desirable on devices without a keyboard.
    :ConfigWindowsResizeFromEdges, :bool,         # = true           // Enable resizing of windows from their edges and from the lower-left corner. This requires (io.BackendFlags & ImGuiBackendFlags_HasMouseCursors) because it needs mouse cursor feedback. (This used to be a per-window ImGuiWindowFlags_ResizeFromAnySide flag)
    :ConfigWindowsMoveFromTitleBarOnly, :bool,    # = false       // Enable allowing to move windows only when clicking on their title bar. Does not apply to windows without a title bar.
    :ConfigMemoryCompactTimer, :float,            # = 60.0f          // Timer (in seconds) to free transient windows/tables memory buffers when unused. Set to -1.0f to disable.
    :BackendPlatformName, :pointer,               # = NULL
    :BackendRendererName, :pointer,               # = NULL
    :BackendPlatformUserData, :pointer,           # = NULL           // User data for platform backend
    :BackendRendererUserData, :pointer,           # = NULL           // User data for renderer backend
    :BackendLanguageUserData, :pointer,           # = NULL           // User data for non C++ programming language backend
    :GetClipboardTextFn, :pointer,
    :SetClipboardTextFn, :pointer,
    :ClipboardUserData, :pointer,
    :SetPlatformImeDataFn, :pointer,
    :_UnusedPadding, :pointer,
    :WantCaptureMouse, :bool,                     # Set when Dear ImGui will use mouse inputs, in this case do not dispatch them to your main game/application (either way, always pass on mouse inputs to imgui). (e.g. unclicked mouse is hovering over an imgui window, widget is active, mouse was clicked over an imgui window, etc.).
    :WantCaptureKeyboard, :bool,                  # Set when Dear ImGui will use keyboard inputs, in this case do not dispatch them to your main game/application (either way, always pass keyboard inputs to imgui). (e.g. InputText active, or an imgui window is focused and navigation is enabled, etc.).
    :WantTextInput, :bool,                        # Mobile/console: when set, you may display an on-screen keyboard. This is set by Dear ImGui when it wants textual keyboard input to happen (e.g. when a InputText widget is active).
    :WantSetMousePos, :bool,                      # MousePos has been altered, backend should reposition mouse on next frame. Rarely used! Set only when ImGuiConfigFlags_NavEnableSetMousePos flag is enabled.
    :WantSaveIniSettings, :bool,                  # When manual .ini load/save is active (io.IniFilename == NULL), this will be set to notify your application that you can call SaveIniSettingsToMemory() and save yourself. Important: clear io.WantSaveIniSettings yourself after saving!
    :NavActive, :bool,                            # Keyboard/Gamepad navigation is currently allowed (will handle ImGuiKey_NavXXX events) = a window is focused and it doesn't use the ImGuiWindowFlags_NoNavInputs flag.
    :NavVisible, :bool,                           # Keyboard/Gamepad navigation is visible and allowed (will handle ImGuiKey_NavXXX events).
    :Framerate, :float,                           # Estimate of application framerate (rolling average over 60 frames, based on io.DeltaTime), in frame per second. Solely for convenience. Slow applications may not want to use a moving average or may want to reset underlying buffers occasionally.
    :MetricsRenderVertices, :int,                 # Vertices output during last call to Render()
    :MetricsRenderIndices, :int,                  # Indices output during last call to Render() = number of triangles * 3
    :MetricsRenderWindows, :int,                  # Number of visible windows
    :MetricsActiveWindows, :int,                  # Number of active windows
    :MetricsActiveAllocations, :int,              # Number of active allocations, updated by MemAlloc/MemFree based on current context. May be off if you have multiple imgui contexts.
    :MouseDelta, ImVec2.by_value,                 # Mouse delta. Note that this is zero if either current or previous position are invalid (-FLT_MAX,-FLT_MAX), so a disappearing/reappearing mouse won't have a huge delta.
    :KeyMap, [:int, 652],                         # [LEGACY] Input: map of indices into the KeysDown[512] entries array which represent your "native" keyboard state. The first 512 are now unused and should be kept zero. Legacy backend will write into KeyMap[] using ImGuiKey_ indices which are always >512.
    :KeysDown, [:bool, 652],                      # [LEGACY] Input: Keyboard keys that are pressed (ideally left in the "native" order your engine has access to keyboard keys, so you can use your own defines/enums for keys). This used to be [512] sized. It is now ImGuiKey_COUNT to allow legacy io.KeysDown[GetKeyIndex(...)] to work without an overflow.
    :NavInputs, [:float, 16],                     # [LEGACY] Since 1.88, NavInputs[] was removed. Backends from 1.60 to 1.86 won't build. Feed gamepad inputs via io.AddKeyEvent() and ImGuiKey_GamepadXXX enums.
    :MousePos, ImVec2.by_value,                   # Mouse position, in pixels. Set to ImVec2(-FLT_MAX, -FLT_MAX) if mouse is unavailable (on another screen, etc.)
    :MouseDown, [:bool, 5],                       # Mouse buttons: 0=left, 1=right, 2=middle + extras (ImGuiMouseButton_COUNT == 5). Dear ImGui mostly uses left and right buttons. Other buttons allow us to track if the mouse is being used by your application + available to user as a convenience via IsMouse** API.
    :MouseWheel, :float,                          # Mouse wheel Vertical: 1 unit scrolls about 5 lines text.
    :MouseWheelH, :float,                         # Mouse wheel Horizontal. Most users don't have a mouse with a horizontal wheel, may not be filled by all backends.
    :KeyCtrl, :bool,                              # Keyboard modifier down: Control
    :KeyShift, :bool,                             # Keyboard modifier down: Shift
    :KeyAlt, :bool,                               # Keyboard modifier down: Alt
    :KeySuper, :bool,                             # Keyboard modifier down: Cmd/Super/Windows
    :KeyMods, :int,                               # Key mods flags (any of ImGuiMod_Ctrl/ImGuiMod_Shift/ImGuiMod_Alt/ImGuiMod_Super flags, same as io.KeyCtrl/KeyShift/KeyAlt/KeySuper but merged into flags. DOES NOT CONTAINS ImGuiMod_Shortcut which is pretranslated). Read-only, updated by NewFrame()
    :KeysData, [ImGuiKeyData.by_value, 652],      # Key state for all known keys. Use IsKeyXXX() functions to access this.
    :WantCaptureMouseUnlessPopupClose, :bool,     # Alternative to WantCaptureMouse: (WantCaptureMouse == true && WantCaptureMouseUnlessPopupClose == false) when a click over void is expected to close a popup.
    :MousePosPrev, ImVec2.by_value,               # Previous mouse position (note that MouseDelta is not necessary == MousePos-MousePosPrev, in case either position is invalid)
    :MouseClickedPos, [ImVec2.by_value, 5],       # Position at time of clicking
    :MouseClickedTime, [:double, 5],              # Time of last click (used to figure out double-click)
    :MouseClicked, [:bool, 5],                    # Mouse button went from !Down to Down (same as MouseClickedCount[x] != 0)
    :MouseDoubleClicked, [:bool, 5],              # Has mouse button been double-clicked? (same as MouseClickedCount[x] == 2)
    :MouseClickedCount, [:ushort, 5],             # == 0 (not clicked), == 1 (same as MouseClicked[]), == 2 (double-clicked), == 3 (triple-clicked) etc. when going from !Down to Down
    :MouseClickedLastCount, [:ushort, 5],         # Count successive number of clicks. Stays valid after mouse release. Reset after another click is done.
    :MouseReleased, [:bool, 5],                   # Mouse button went from Down to !Down
    :MouseDownOwned, [:bool, 5],                  # Track if button was clicked inside a dear imgui window or over void blocked by a popup. We don't request mouse capture from the application if click started outside ImGui bounds.
    :MouseDownOwnedUnlessPopupClose, [:bool, 5],  # Track if button was clicked inside a dear imgui window.
    :MouseDownDuration, [:float, 5],              # Duration the mouse button has been down (0.0f == just clicked)
    :MouseDownDurationPrev, [:float, 5],          # Previous time the mouse button has been down
    :MouseDragMaxDistanceSqr, [:float, 5],        # Squared maximum distance of how much mouse has traveled from the clicking point (used for moving thresholds)
    :PenPressure, :float,                         # Touch/Pen pressure (0.0f to 1.0f, should be >0.0f only when MouseDown[0] == true). Helper storage currently unused by Dear ImGui.
    :AppFocusLost, :bool,                         # Only modify via AddFocusEvent()
    :AppAcceptingEvents, :bool,                   # Only modify via SetAppAcceptingEvents()
    :BackendUsingLegacyKeyArrays, :char,          # -1: unknown, 0: using AddKeyEvent(), 1: using legacy io.KeysDown[]
    :BackendUsingLegacyNavInputArray, :bool,      # 0: using AddKeyAnalogEvent(), 1: writing to legacy io.NavInputs[] directly
    :InputQueueSurrogate, :ushort,                # For AddInputCharacterUTF16()
    :InputQueueCharacters, ImVector.by_value      # Queue of _characters_ input (obtained by platform backend). Fill using AddInputCharacter() helper.
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

# Shared state of InputText(), passed as an argument to your callback when a ImGuiInputTextFlags_Callback* flag is used.
# The callback function should return 0 by default.
# Callbacks (follow a flag name and see comments in ImGuiInputTextFlags_ declarations for more details)
# - ImGuiInputTextFlags_CallbackEdit:        Callback on buffer edit (note that InputText() already returns true on edit, the callback is useful mainly to manipulate the underlying buffer while focus is active)
# - ImGuiInputTextFlags_CallbackAlways:      Callback on each iteration
# - ImGuiInputTextFlags_CallbackCompletion:  Callback on pressing TAB
# - ImGuiInputTextFlags_CallbackHistory:     Callback on pressing Up/Down arrows
# - ImGuiInputTextFlags_CallbackCharFilter:  Callback on character inputs to replace or discard them. Modify 'EventChar' to replace or discard, or return 1 in callback to discard.
# - ImGuiInputTextFlags_CallbackResize:      Callback on buffer capacity changes request (beyond 'buf_size' parameter value), allowing the string to grow.
class ImGuiInputTextCallbackData < FFI::Struct
  layout(
    :EventFlag, :int,       # One ImGuiInputTextFlags_Callback*    // Read-only
    :Flags, :int,           # What user passed to InputText()      // Read-only
    :UserData, :pointer,    # What user passed to InputText()      // Read-only
    :EventChar, :ushort,    # Character input                      // Read-write   // [CharFilter] Replace character with another one, or set to zero to drop. return 1 is equivalent to setting EventChar=0;
    :EventKey, :int,        # Key pressed (Up/Down/TAB)            // Read-only    // [Completion,History]
    :Buf, :pointer,         # Text buffer                          // Read-write   // [Resize] Can replace pointer / [Completion,History,Always] Only write to pointed data, don't replace the actual pointer!
    :BufTextLen, :int,      # Text length (in bytes)               // Read-write   // [Resize,Completion,History,Always] Exclude zero-terminator storage. In C land: == strlen(some_text), in C++ land: string.length()
    :BufSize, :int,         # Buffer size (in bytes) = capacity+1  // Read-only    // [Resize,Completion,History,Always] Include zero-terminator storage. In C land == ARRAYSIZE(my_char_array), in C++ land: string.capacity()+1
    :BufDirty, :bool,       # Set if you modify Buf/BufTextLen!    // Write        // [Completion,History,Always]
    :CursorPos, :int,       #                                      // Read-write   // [Completion,History,Always]
    :SelectionStart, :int,  #                                      // Read-write   // [Completion,History,Always] == to SelectionEnd when no selection)
    :SelectionEnd, :int     #                                      // Read-write   // [Completion,History,Always]
  )
end

# (Optional) Support for IME (Input Method Editor) via the io.SetPlatformImeDataFn() function.
class ImGuiPlatformImeData < FFI::Struct
  layout(
    :WantVisible, :bool,         # A widget wants the IME to be visible
    :InputPos, ImVec2.by_value,  # Position of the input cursor
    :InputLineHeight, :float     # Line height
  )
end

# Resizing callback data to apply custom constraint. As enabled by SetNextWindowSizeConstraints(). Callback is called during the next Begin().
# NB: For basic min/max size constraint on each axis you don't need to use the callback! The SetNextWindowSizeConstraints() parameters are enough.
class ImGuiSizeCallbackData < FFI::Struct
  layout(
    :UserData, :pointer,            # Read-only.   What user passed to SetNextWindowSizeConstraints(). Generally store an integer or float in here (need reinterpret_cast<>).
    :Pos, ImVec2.by_value,          # Read-only.   Window position, for reference.
    :CurrentSize, ImVec2.by_value,  # Read-only.   Current window size.
    :DesiredSize, ImVec2.by_value   # Read-write.  Desired size, based on user's mouse position. Write to this field to restrain resizing.
  )
end

class ImGuiStyle < FFI::Struct
  layout(
    :Alpha, :float,                            # Global alpha applies to everything in Dear ImGui.
    :DisabledAlpha, :float,                    # Additional alpha multiplier applied by BeginDisabled(). Multiply over current value of Alpha.
    :WindowPadding, ImVec2.by_value,           # Padding within a window.
    :WindowRounding, :float,                   # Radius of window corners rounding. Set to 0.0f to have rectangular windows. Large values tend to lead to variety of artifacts and are not recommended.
    :WindowBorderSize, :float,                 # Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    :WindowMinSize, ImVec2.by_value,           # Minimum window size. This is a global setting. If you want to constrain individual windows, use SetNextWindowSizeConstraints().
    :WindowTitleAlign, ImVec2.by_value,        # Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered.
    :WindowMenuButtonPosition, :int,           # Side of the collapsing/docking button in the title bar (None/Left/Right). Defaults to ImGuiDir_Left.
    :ChildRounding, :float,                    # Radius of child window corners rounding. Set to 0.0f to have rectangular windows.
    :ChildBorderSize, :float,                  # Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    :PopupRounding, :float,                    # Radius of popup window corners rounding. (Note that tooltip windows use WindowRounding)
    :PopupBorderSize, :float,                  # Thickness of border around popup/tooltip windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    :FramePadding, ImVec2.by_value,            # Padding within a framed rectangle (used by most widgets).
    :FrameRounding, :float,                    # Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets).
    :FrameBorderSize, :float,                  # Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    :ItemSpacing, ImVec2.by_value,             # Horizontal and vertical spacing between widgets/lines.
    :ItemInnerSpacing, ImVec2.by_value,        # Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label).
    :CellPadding, ImVec2.by_value,             # Padding within a table cell
    :TouchExtraPadding, ImVec2.by_value,       # Expand reactive bounding box for touch-based system where touch position is not accurate enough. Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much!
    :IndentSpacing, :float,                    # Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2).
    :ColumnsMinSpacing, :float,                # Minimum horizontal spacing between two columns. Preferably > (FramePadding.x + 1).
    :ScrollbarSize, :float,                    # Width of the vertical scrollbar, Height of the horizontal scrollbar.
    :ScrollbarRounding, :float,                # Radius of grab corners for scrollbar.
    :GrabMinSize, :float,                      # Minimum width/height of a grab box for slider/scrollbar.
    :GrabRounding, :float,                     # Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs.
    :LogSliderDeadzone, :float,                # The size in pixels of the dead-zone around zero on logarithmic sliders that cross zero.
    :TabRounding, :float,                      # Radius of upper corners of a tab. Set to 0.0f to have rectangular tabs.
    :TabBorderSize, :float,                    # Thickness of border around tabs.
    :TabMinWidthForCloseButton, :float,        # Minimum width for close button to appear on an unselected tab when hovered. Set to 0.0f to always show when hovering, set to FLT_MAX to never show close button unless selected.
    :ColorButtonPosition, :int,                # Side of the color button in the ColorEdit4 widget (left/right). Defaults to ImGuiDir_Right.
    :ButtonTextAlign, ImVec2.by_value,         # Alignment of button text when button is larger than text. Defaults to (0.5f, 0.5f) (centered).
    :SelectableTextAlign, ImVec2.by_value,     # Alignment of selectable text. Defaults to (0.0f, 0.0f) (top-left aligned). It's generally important to keep this left-aligned if you want to lay multiple items on a same line.
    :DisplayWindowPadding, ImVec2.by_value,    # Window position are clamped to be visible within the display area or monitors by at least this amount. Only applies to regular windows.
    :DisplaySafeAreaPadding, ImVec2.by_value,  # If you cannot see the edges of your screen (e.g. on a TV) increase the safe area padding. Apply to popups/tooltips as well regular windows. NB: Prefer configuring your TV sets correctly!
    :MouseCursorScale, :float,                 # Scale software rendered mouse cursor (when io.MouseDrawCursor is enabled). May be removed later.
    :AntiAliasedLines, :bool,                  # Enable anti-aliased lines/borders. Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
    :AntiAliasedLinesUseTex, :bool,            # Enable anti-aliased lines/borders using textures where possible. Require backend to render with bilinear filtering (NOT point/nearest filtering). Latched at the beginning of the frame (copied to ImDrawList).
    :AntiAliasedFill, :bool,                   # Enable anti-aliased edges around filled shapes (rounded rectangles, circles, etc.). Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
    :CurveTessellationTol, :float,             # Tessellation tolerance when using PathBezierCurveTo() without a specific number of segments. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality.
    :CircleTessellationMaxError, :float,       # Maximum error (in pixels) allowed when using AddCircle()/AddCircleFilled() or drawing rounded corner rectangles with no explicit segment count specified. Decrease for higher quality but more geometry.
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

# Sorting specification for one column of a table (sizeof == 12 bytes)
class ImGuiTableColumnSortSpecs < FFI::Struct
  layout(
    :ColumnUserID, :uint,  # User id of the column (if specified by a TableSetupColumn() call)
    :ColumnIndex, :short,  # Index of the column
    :SortOrder, :short,    # Index within parent ImGuiTableSortSpecs (always stored in order starting from 0, tables sorted on a single criteria will always have a 0 here)
    :SortDirection, :int   # ImGuiSortDirection_Ascending or ImGuiSortDirection_Descending (you can use this or SortSign, whichever is more convenient for your sort function)
  )
end

# Sorting specifications for a table (often handling sort specs for a single column, occasionally more)
# Obtained by calling TableGetSortSpecs().
# When 'SpecsDirty == true' you can sort your data. It will be true with sorting specs have changed since last call, or the first time.
# Make sure to set 'SpecsDirty = false' after sorting, else you may wastefully sort your data every frame!
class ImGuiTableSortSpecs < FFI::Struct
  layout(
    :Specs, :pointer,    # Pointer to sort spec array.
    :SpecsCount, :int,   # Sort spec count. Most often 1. May be > 1 when ImGuiTableFlags_SortMulti is enabled. May be == 0 when ImGuiTableFlags_SortTristate is enabled.
    :SpecsDirty, :bool   # Set to true when specs have changed since last time! Use this to sort again, then clear the flag.
  )
end

# Helper: Parse and apply text filters. In format "aaaaa[,bbbb][,ccccc]"
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

# - Currently represents the Platform Window created by the application which is hosting our Dear ImGui windows.
# - In 'docking' branch with multi-viewport enabled, we extend this concept to have multiple active viewports.
# - In the future we will extend this concept further to also represent Platform Monitor and support a "no main platform window" operation mode.
# - About Main Area vs Work Area:
#   - Main Area = entire viewport.
#   - Work Area = entire viewport minus sections used by main menu bars (for platform windows), or by task bar (for platform monitor).
#   - Windows are generally trying to stay within the Work Area of their host viewport.
class ImGuiViewport < FFI::Struct
  layout(
    :Flags, :int,                  # See ImGuiViewportFlags_
    :Pos, ImVec2.by_value,         # Main Area: Position of the viewport (Dear ImGui coordinates are the same as OS desktop/native coordinates)
    :Size, ImVec2.by_value,        # Main Area: Size of the viewport.
    :WorkPos, ImVec2.by_value,     # Work Area: Position of the viewport minus task bars, menus bars, status bars (>= Pos)
    :WorkSize, ImVec2.by_value,    # Work Area: Size of the viewport minus task bars, menu bars, status bars (<= Size)
    :PlatformHandleRaw, :pointer   # void* to hold lower-level, platform-native window handle (under Win32 this is expected to be a HWND, unused for other platforms)
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

    entries = [
      [:ImDrawList_AddBezierCubic, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddBezierQuadratic, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddCallback, [:pointer, :ImDrawCallback, :pointer], :void],
      [:ImDrawList_AddCircle, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void],
      [:ImDrawList_AddCircleFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void],
      [:ImDrawList_AddConvexPolyFilled, [:pointer, :pointer, :int, :uint], :void],
      [:ImDrawList_AddDrawCmd, [:pointer], :void],
      [:ImDrawList_AddImage, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddImageQuad, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddImageRounded, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddLine, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddNgon, [:pointer, ImVec2.by_value, :float, :uint, :int, :float], :void],
      [:ImDrawList_AddNgonFilled, [:pointer, ImVec2.by_value, :float, :uint, :int], :void],
      [:ImDrawList_AddPolyline, [:pointer, :pointer, :int, :uint, :int, :float], :void],
      [:ImDrawList_AddQuad, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddQuadFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_AddRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int, :float], :void],
      [:ImDrawList_AddRectFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :float, :int], :void],
      [:ImDrawList_AddRectFilledMultiColor, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint, :uint, :uint, :uint], :void],
      [:ImDrawList_AddText_Vec2, [:pointer, ImVec2.by_value, :uint, :pointer, :pointer], :void],
      [:ImDrawList_AddText_FontPtr, [:pointer, :pointer, :float, ImVec2.by_value, :uint, :pointer, :pointer, :float, :pointer], :void],
      [:ImDrawList_AddTriangle, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint, :float], :void],
      [:ImDrawList_AddTriangleFilled, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_ChannelsMerge, [:pointer], :void],
      [:ImDrawList_ChannelsSetCurrent, [:pointer, :int], :void],
      [:ImDrawList_ChannelsSplit, [:pointer, :int], :void],
      [:ImDrawList_CloneOutput, [:pointer], :pointer],
      [:ImDrawList_GetClipRectMax, [:pointer, :pointer], :void],
      [:ImDrawList_GetClipRectMin, [:pointer, :pointer], :void],
      [:ImDrawList_ImDrawList, [:pointer], :pointer],
      [:ImDrawList_PathArcTo, [:pointer, ImVec2.by_value, :float, :float, :float, :int], :void],
      [:ImDrawList_PathArcToFast, [:pointer, ImVec2.by_value, :float, :int, :int], :void],
      [:ImDrawList_PathBezierCubicCurveTo, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :int], :void],
      [:ImDrawList_PathBezierQuadraticCurveTo, [:pointer, ImVec2.by_value, ImVec2.by_value, :int], :void],
      [:ImDrawList_PathClear, [:pointer], :void],
      [:ImDrawList_PathFillConvex, [:pointer, :uint], :void],
      [:ImDrawList_PathLineTo, [:pointer, ImVec2.by_value], :void],
      [:ImDrawList_PathLineToMergeDuplicate, [:pointer, ImVec2.by_value], :void],
      [:ImDrawList_PathRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :float, :int], :void],
      [:ImDrawList_PathStroke, [:pointer, :uint, :int, :float], :void],
      [:ImDrawList_PopClipRect, [:pointer], :void],
      [:ImDrawList_PopTextureID, [:pointer], :void],
      [:ImDrawList_PrimQuadUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimRectUV, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimReserve, [:pointer, :int, :int], :void],
      [:ImDrawList_PrimUnreserve, [:pointer, :int, :int], :void],
      [:ImDrawList_PrimVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PrimWriteIdx, [:pointer, :ushort], :void],
      [:ImDrawList_PrimWriteVtx, [:pointer, ImVec2.by_value, ImVec2.by_value, :uint], :void],
      [:ImDrawList_PushClipRect, [:pointer, ImVec2.by_value, ImVec2.by_value, :bool], :void],
      [:ImDrawList_PushClipRectFullScreen, [:pointer], :void],
      [:ImDrawList_PushTextureID, [:pointer, :pointer], :void],
      [:ImDrawList__CalcCircleAutoSegmentCount, [:pointer, :float], :int],
      [:ImDrawList__ClearFreeMemory, [:pointer], :void],
      [:ImDrawList__OnChangedClipRect, [:pointer], :void],
      [:ImDrawList__OnChangedTextureID, [:pointer], :void],
      [:ImDrawList__OnChangedVtxOffset, [:pointer], :void],
      [:ImDrawList__PathArcToFastEx, [:pointer, ImVec2.by_value, :float, :int, :int, :int], :void],
      [:ImDrawList__PathArcToN, [:pointer, ImVec2.by_value, :float, :float, :float, :int], :void],
      [:ImDrawList__PopUnusedDrawCmd, [:pointer], :void],
      [:ImDrawList__ResetForNewFrame, [:pointer], :void],
      [:ImDrawList__TryMergeDrawCmds, [:pointer], :void],
      [:ImDrawList_destroy, [:pointer], :void],
      [:ImFontAtlas_AddCustomRectFontGlyph, [:pointer, :pointer, :ushort, :int, :int, :float, ImVec2.by_value], :int],
      [:ImFontAtlas_AddCustomRectRegular, [:pointer, :int, :int], :int],
      [:ImFontAtlas_AddFont, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontDefault, [:pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromFileTTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, [:pointer, :pointer, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryCompressedTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_AddFontFromMemoryTTF, [:pointer, :pointer, :int, :float, :pointer, :pointer], :pointer],
      [:ImFontAtlas_Build, [:pointer], :bool],
      [:ImFontAtlas_CalcCustomRectUV, [:pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_Clear, [:pointer], :void],
      [:ImFontAtlas_ClearFonts, [:pointer], :void],
      [:ImFontAtlas_ClearInputData, [:pointer], :void],
      [:ImFontAtlas_ClearTexData, [:pointer], :void],
      [:ImFontAtlas_GetCustomRectByIndex, [:pointer, :int], :pointer],
      [:ImFontAtlas_GetGlyphRangesChineseFull, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesCyrillic, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesDefault, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesGreek, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesJapanese, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesKorean, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesThai, [:pointer], :pointer],
      [:ImFontAtlas_GetGlyphRangesVietnamese, [:pointer], :pointer],
      [:ImFontAtlas_GetMouseCursorTexData, [:pointer, :int, :pointer, :pointer, :pointer, :pointer], :bool],
      [:ImFontAtlas_GetTexDataAsAlpha8, [:pointer, :pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_GetTexDataAsRGBA32, [:pointer, :pointer, :pointer, :pointer, :pointer], :void],
      [:ImFontAtlas_ImFontAtlas, [], :pointer],
      [:ImFontAtlas_IsBuilt, [:pointer], :bool],
      [:ImFontAtlas_SetTexID, [:pointer, :pointer], :void],
      [:ImFontAtlas_destroy, [:pointer], :void],
      [:ImFontConfig_ImFontConfig, [], :pointer],
      [:ImFontConfig_destroy, [:pointer], :void],
      [:ImFontGlyphRangesBuilder_AddChar, [:pointer, :ushort], :void],
      [:ImFontGlyphRangesBuilder_AddRanges, [:pointer, :pointer], :void],
      [:ImFontGlyphRangesBuilder_AddText, [:pointer, :pointer, :pointer], :void],
      [:ImFontGlyphRangesBuilder_BuildRanges, [:pointer, :pointer], :void],
      [:ImFontGlyphRangesBuilder_Clear, [:pointer], :void],
      [:ImFontGlyphRangesBuilder_GetBit, [:pointer, :size_t], :bool],
      [:ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder, [], :pointer],
      [:ImFontGlyphRangesBuilder_SetBit, [:pointer, :size_t], :void],
      [:ImFontGlyphRangesBuilder_destroy, [:pointer], :void],
      [:ImGuiIO_AddFocusEvent, [:pointer, :bool], :void],
      [:ImGuiIO_AddInputCharacter, [:pointer, :uint], :void],
      [:ImGuiIO_AddInputCharacterUTF16, [:pointer, :ushort], :void],
      [:ImGuiIO_AddInputCharactersUTF8, [:pointer, :pointer], :void],
      [:ImGuiIO_AddKeyAnalogEvent, [:pointer, :int, :bool, :float], :void],
      [:ImGuiIO_AddKeyEvent, [:pointer, :int, :bool], :void],
      [:ImGuiIO_AddMouseButtonEvent, [:pointer, :int, :bool], :void],
      [:ImGuiIO_AddMousePosEvent, [:pointer, :float, :float], :void],
      [:ImGuiIO_AddMouseWheelEvent, [:pointer, :float, :float], :void],
      [:ImGuiIO_ClearInputCharacters, [:pointer], :void],
      [:ImGuiIO_ClearInputKeys, [:pointer], :void],
      [:ImGuiIO_ImGuiIO, [], :pointer],
      [:ImGuiIO_SetAppAcceptingEvents, [:pointer, :bool], :void],
      [:ImGuiIO_SetKeyEventNativeData, [:pointer, :int, :int, :int, :int], :void],
      [:ImGuiIO_destroy, [:pointer], :void],
      [:ImGuiStyle_ImGuiStyle, [], :pointer],
      [:ImGuiStyle_ScaleAllSizes, [:pointer, :float], :void],
      [:ImGuiStyle_destroy, [:pointer], :void],
      [:ImGuiTextFilter_Build, [:pointer], :void],
      [:ImGuiTextFilter_Clear, [:pointer], :void],
      [:ImGuiTextFilter_Draw, [:pointer, :pointer, :float], :bool],
      [:ImGuiTextFilter_ImGuiTextFilter, [:pointer], :pointer],
      [:ImGuiTextFilter_IsActive, [:pointer], :bool],
      [:ImGuiTextFilter_PassFilter, [:pointer, :pointer, :pointer], :bool],
      [:ImGuiTextFilter_destroy, [:pointer], :void],
      [:ImGuiTextRange_ImGuiTextRange_Nil, [], :pointer],
      [:ImGuiTextRange_ImGuiTextRange_Str, [:pointer, :pointer], :pointer],
      [:ImGuiTextRange_destroy, [:pointer], :void],
      [:ImGuiTextRange_empty, [:pointer], :bool],
      [:ImGuiTextRange_split, [:pointer, :char, :pointer], :void],
      [:igAcceptDragDropPayload, [:pointer, :int], :pointer],
      [:igAlignTextToFramePadding, [], :void],
      [:igArrowButton, [:pointer, :int], :bool],
      [:igBegin, [:pointer, :pointer, :int], :bool],
      [:igBeginChild_Str, [:pointer, ImVec2.by_value, :bool, :int], :bool],
      [:igBeginChild_ID, [:uint, ImVec2.by_value, :bool, :int], :bool],
      [:igBeginChildFrame, [:uint, ImVec2.by_value, :int], :bool],
      [:igBeginCombo, [:pointer, :pointer, :int], :bool],
      [:igBeginDisabled, [:bool], :void],
      [:igBeginDragDropSource, [:int], :bool],
      [:igBeginDragDropTarget, [], :bool],
      [:igBeginGroup, [], :void],
      [:igBeginListBox, [:pointer, ImVec2.by_value], :bool],
      [:igBeginMainMenuBar, [], :bool],
      [:igBeginMenu, [:pointer, :bool], :bool],
      [:igBeginMenuBar, [], :bool],
      [:igBeginPopup, [:pointer, :int], :bool],
      [:igBeginPopupContextItem, [:pointer, :int], :bool],
      [:igBeginPopupContextVoid, [:pointer, :int], :bool],
      [:igBeginPopupContextWindow, [:pointer, :int], :bool],
      [:igBeginPopupModal, [:pointer, :pointer, :int], :bool],
      [:igBeginTabBar, [:pointer, :int], :bool],
      [:igBeginTabItem, [:pointer, :pointer, :int], :bool],
      [:igBeginTable, [:pointer, :int, :int, ImVec2.by_value, :float], :bool],
      [:igBeginTooltip, [], :void],
      [:igBullet, [], :void],
      [:igBulletText, [:pointer, :varargs], :void],
      [:igButton, [:pointer, ImVec2.by_value], :bool],
      [:igCalcItemWidth, [], :float],
      [:igCalcTextSize, [:pointer, :pointer, :pointer, :bool, :float], :void],
      [:igCheckbox, [:pointer, :pointer], :bool],
      [:igCheckboxFlags_IntPtr, [:pointer, :pointer, :int], :bool],
      [:igCheckboxFlags_UintPtr, [:pointer, :pointer, :uint], :bool],
      [:igCloseCurrentPopup, [], :void],
      [:igCollapsingHeader_TreeNodeFlags, [:pointer, :int], :bool],
      [:igCollapsingHeader_BoolPtr, [:pointer, :pointer, :int], :bool],
      [:igColorButton, [:pointer, ImVec4.by_value, :int, ImVec2.by_value], :bool],
      [:igColorConvertFloat4ToU32, [ImVec4.by_value], :uint],
      [:igColorConvertHSVtoRGB, [:float, :float, :float, :pointer, :pointer, :pointer], :void],
      [:igColorConvertRGBtoHSV, [:float, :float, :float, :pointer, :pointer, :pointer], :void],
      [:igColorConvertU32ToFloat4, [:pointer, :uint], :void],
      [:igColorEdit3, [:pointer, :pointer, :int], :bool],
      [:igColorEdit4, [:pointer, :pointer, :int], :bool],
      [:igColorPicker3, [:pointer, :pointer, :int], :bool],
      [:igColorPicker4, [:pointer, :pointer, :int, :pointer], :bool],
      [:igColumns, [:int, :pointer, :bool], :void],
      [:igCombo_Str_arr, [:pointer, :pointer, :pointer, :int, :int], :bool],
      [:igCombo_Str, [:pointer, :pointer, :pointer, :int], :bool],
      [:igCombo_FnBoolPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool],
      [:igCreateContext, [:pointer], :pointer],
      [:igDebugCheckVersionAndDataLayout, [:pointer, :size_t, :size_t, :size_t, :size_t, :size_t, :size_t], :bool],
      [:igDebugTextEncoding, [:pointer], :void],
      [:igDestroyContext, [:pointer], :void],
      [:igDragFloat, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:igDragFloat2, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:igDragFloat3, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:igDragFloat4, [:pointer, :pointer, :float, :float, :float, :pointer, :int], :bool],
      [:igDragFloatRange2, [:pointer, :pointer, :pointer, :float, :float, :float, :pointer, :pointer, :int], :bool],
      [:igDragInt, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:igDragInt2, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:igDragInt3, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:igDragInt4, [:pointer, :pointer, :float, :int, :int, :pointer, :int], :bool],
      [:igDragIntRange2, [:pointer, :pointer, :pointer, :float, :int, :int, :pointer, :pointer, :int], :bool],
      [:igDragScalar, [:pointer, :int, :pointer, :float, :pointer, :pointer, :pointer, :int], :bool],
      [:igDragScalarN, [:pointer, :int, :pointer, :int, :float, :pointer, :pointer, :pointer, :int], :bool],
      [:igDummy, [ImVec2.by_value], :void],
      [:igEnd, [], :void],
      [:igEndChild, [], :void],
      [:igEndChildFrame, [], :void],
      [:igEndCombo, [], :void],
      [:igEndDisabled, [], :void],
      [:igEndDragDropSource, [], :void],
      [:igEndDragDropTarget, [], :void],
      [:igEndFrame, [], :void],
      [:igEndGroup, [], :void],
      [:igEndListBox, [], :void],
      [:igEndMainMenuBar, [], :void],
      [:igEndMenu, [], :void],
      [:igEndMenuBar, [], :void],
      [:igEndPopup, [], :void],
      [:igEndTabBar, [], :void],
      [:igEndTabItem, [], :void],
      [:igEndTable, [], :void],
      [:igEndTooltip, [], :void],
      [:igGetAllocatorFunctions, [:pointer, :pointer, :pointer], :void],
      [:igGetBackgroundDrawList, [], :pointer],
      [:igGetClipboardText, [], :pointer],
      [:igGetColorU32_Col, [:int, :float], :uint],
      [:igGetColorU32_Vec4, [ImVec4.by_value], :uint],
      [:igGetColorU32_U32, [:uint], :uint],
      [:igGetColumnIndex, [], :int],
      [:igGetColumnOffset, [:int], :float],
      [:igGetColumnWidth, [:int], :float],
      [:igGetColumnsCount, [], :int],
      [:igGetContentRegionAvail, [:pointer], :void],
      [:igGetContentRegionMax, [:pointer], :void],
      [:igGetCurrentContext, [], :pointer],
      [:igGetCursorPos, [:pointer], :void],
      [:igGetCursorPosX, [], :float],
      [:igGetCursorPosY, [], :float],
      [:igGetCursorScreenPos, [:pointer], :void],
      [:igGetCursorStartPos, [:pointer], :void],
      [:igGetDragDropPayload, [], :pointer],
      [:igGetDrawData, [], :pointer],
      [:igGetDrawListSharedData, [], :pointer],
      [:igGetFont, [], :pointer],
      [:igGetFontSize, [], :float],
      [:igGetFontTexUvWhitePixel, [:pointer], :void],
      [:igGetForegroundDrawList, [], :pointer],
      [:igGetFrameCount, [], :int],
      [:igGetFrameHeight, [], :float],
      [:igGetFrameHeightWithSpacing, [], :float],
      [:igGetID_Str, [:pointer], :uint],
      [:igGetID_StrStr, [:pointer, :pointer], :uint],
      [:igGetID_Ptr, [:pointer], :uint],
      [:igGetIO, [], :pointer],
      [:igGetItemID, [], :uint],
      [:igGetItemRectMax, [:pointer], :void],
      [:igGetItemRectMin, [:pointer], :void],
      [:igGetItemRectSize, [:pointer], :void],
      [:igGetKeyIndex, [:int], :int],
      [:igGetKeyName, [:int], :pointer],
      [:igGetKeyPressedAmount, [:int, :float, :float], :int],
      [:igGetMainViewport, [], :pointer],
      [:igGetMouseClickedCount, [:int], :int],
      [:igGetMouseCursor, [], :int],
      [:igGetMouseDragDelta, [:pointer, :int, :float], :void],
      [:igGetMousePos, [:pointer], :void],
      [:igGetMousePosOnOpeningCurrentPopup, [:pointer], :void],
      [:igGetScrollMaxX, [], :float],
      [:igGetScrollMaxY, [], :float],
      [:igGetScrollX, [], :float],
      [:igGetScrollY, [], :float],
      [:igGetStateStorage, [], :pointer],
      [:igGetStyle, [], :pointer],
      [:igGetStyleColorName, [:int], :pointer],
      [:igGetStyleColorVec4, [:int], :pointer],
      [:igGetTextLineHeight, [], :float],
      [:igGetTextLineHeightWithSpacing, [], :float],
      [:igGetTime, [], :double],
      [:igGetTreeNodeToLabelSpacing, [], :float],
      [:igGetVersion, [], :pointer],
      [:igGetWindowContentRegionMax, [:pointer], :void],
      [:igGetWindowContentRegionMin, [:pointer], :void],
      [:igGetWindowDrawList, [], :pointer],
      [:igGetWindowHeight, [], :float],
      [:igGetWindowPos, [:pointer], :void],
      [:igGetWindowSize, [:pointer], :void],
      [:igGetWindowWidth, [], :float],
      [:igImage, [:pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :void],
      [:igImageButton, [:pointer, :pointer, ImVec2.by_value, ImVec2.by_value, ImVec2.by_value, ImVec4.by_value, ImVec4.by_value], :bool],
      [:igIndent, [:float], :void],
      [:igInputDouble, [:pointer, :pointer, :double, :double, :pointer, :int], :bool],
      [:igInputFloat, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igInputFloat2, [:pointer, :pointer, :pointer, :int], :bool],
      [:igInputFloat3, [:pointer, :pointer, :pointer, :int], :bool],
      [:igInputFloat4, [:pointer, :pointer, :pointer, :int], :bool],
      [:igInputInt, [:pointer, :pointer, :int, :int, :int], :bool],
      [:igInputInt2, [:pointer, :pointer, :int], :bool],
      [:igInputInt3, [:pointer, :pointer, :int], :bool],
      [:igInputInt4, [:pointer, :pointer, :int], :bool],
      [:igInputScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:igInputScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool],
      [:igInputText, [:pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:igInputTextMultiline, [:pointer, :pointer, :size_t, ImVec2.by_value, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:igInputTextWithHint, [:pointer, :pointer, :pointer, :size_t, :int, :ImGuiInputTextCallback, :pointer], :bool],
      [:igInvisibleButton, [:pointer, ImVec2.by_value, :int], :bool],
      [:igIsAnyItemActive, [], :bool],
      [:igIsAnyItemFocused, [], :bool],
      [:igIsAnyItemHovered, [], :bool],
      [:igIsAnyMouseDown, [], :bool],
      [:igIsItemActivated, [], :bool],
      [:igIsItemActive, [], :bool],
      [:igIsItemClicked, [:int], :bool],
      [:igIsItemDeactivated, [], :bool],
      [:igIsItemDeactivatedAfterEdit, [], :bool],
      [:igIsItemEdited, [], :bool],
      [:igIsItemFocused, [], :bool],
      [:igIsItemHovered, [:int], :bool],
      [:igIsItemToggledOpen, [], :bool],
      [:igIsItemVisible, [], :bool],
      [:igIsKeyDown, [:int], :bool],
      [:igIsKeyPressed, [:int, :bool], :bool],
      [:igIsKeyReleased, [:int], :bool],
      [:igIsMouseClicked, [:int, :bool], :bool],
      [:igIsMouseDoubleClicked, [:int], :bool],
      [:igIsMouseDown, [:int], :bool],
      [:igIsMouseDragging, [:int, :float], :bool],
      [:igIsMouseHoveringRect, [ImVec2.by_value, ImVec2.by_value, :bool], :bool],
      [:igIsMousePosValid, [:pointer], :bool],
      [:igIsMouseReleased, [:int], :bool],
      [:igIsPopupOpen, [:pointer, :int], :bool],
      [:igIsRectVisible_Nil, [ImVec2.by_value], :bool],
      [:igIsRectVisible_Vec2, [ImVec2.by_value, ImVec2.by_value], :bool],
      [:igIsWindowAppearing, [], :bool],
      [:igIsWindowCollapsed, [], :bool],
      [:igIsWindowFocused, [:int], :bool],
      [:igIsWindowHovered, [:int], :bool],
      [:igLabelText, [:pointer, :pointer, :varargs], :void],
      [:igListBox_Str_arr, [:pointer, :pointer, :pointer, :int, :int], :bool],
      [:igListBox_FnBoolPtr, [:pointer, :pointer, :pointer, :pointer, :int, :int], :bool],
      [:igLoadIniSettingsFromDisk, [:pointer], :void],
      [:igLoadIniSettingsFromMemory, [:pointer, :size_t], :void],
      [:igLogButtons, [], :void],
      [:igLogFinish, [], :void],
      [:igLogText, [:pointer, :varargs], :void],
      [:igLogToClipboard, [:int], :void],
      [:igLogToFile, [:int, :pointer], :void],
      [:igLogToTTY, [:int], :void],
      [:igMemAlloc, [:size_t], :pointer],
      [:igMemFree, [:pointer], :void],
      [:igMenuItem_Bool, [:pointer, :pointer, :bool, :bool], :bool],
      [:igMenuItem_BoolPtr, [:pointer, :pointer, :pointer, :bool], :bool],
      [:igNewFrame, [], :void],
      [:igNewLine, [], :void],
      [:igNextColumn, [], :void],
      [:igOpenPopup_Str, [:pointer, :int], :void],
      [:igOpenPopup_ID, [:uint, :int], :void],
      [:igOpenPopupOnItemClick, [:pointer, :int], :void],
      [:igPlotHistogram_FloatPtr, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void],
      [:igPlotHistogram_FnFloatPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void],
      [:igPlotLines_FloatPtr, [:pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value, :int], :void],
      [:igPlotLines_FnFloatPtr, [:pointer, :pointer, :pointer, :int, :int, :pointer, :float, :float, ImVec2.by_value], :void],
      [:igPopAllowKeyboardFocus, [], :void],
      [:igPopButtonRepeat, [], :void],
      [:igPopClipRect, [], :void],
      [:igPopFont, [], :void],
      [:igPopID, [], :void],
      [:igPopItemWidth, [], :void],
      [:igPopStyleColor, [:int], :void],
      [:igPopStyleVar, [:int], :void],
      [:igPopTextWrapPos, [], :void],
      [:igProgressBar, [:float, ImVec2.by_value, :pointer], :void],
      [:igPushAllowKeyboardFocus, [:bool], :void],
      [:igPushButtonRepeat, [:bool], :void],
      [:igPushClipRect, [ImVec2.by_value, ImVec2.by_value, :bool], :void],
      [:igPushFont, [:pointer], :void],
      [:igPushID_Str, [:pointer], :void],
      [:igPushID_StrStr, [:pointer, :pointer], :void],
      [:igPushID_Ptr, [:pointer], :void],
      [:igPushID_Int, [:int], :void],
      [:igPushItemWidth, [:float], :void],
      [:igPushStyleColor_U32, [:int, :uint], :void],
      [:igPushStyleColor_Vec4, [:int, ImVec4.by_value], :void],
      [:igPushStyleVar_Float, [:int, :float], :void],
      [:igPushStyleVar_Vec2, [:int, ImVec2.by_value], :void],
      [:igPushTextWrapPos, [:float], :void],
      [:igRadioButton_Bool, [:pointer, :bool], :bool],
      [:igRadioButton_IntPtr, [:pointer, :pointer, :int], :bool],
      [:igRender, [], :void],
      [:igResetMouseDragDelta, [:int], :void],
      [:igSameLine, [:float, :float], :void],
      [:igSaveIniSettingsToDisk, [:pointer], :void],
      [:igSaveIniSettingsToMemory, [:pointer], :pointer],
      [:igSelectable_Bool, [:pointer, :bool, :int, ImVec2.by_value], :bool],
      [:igSelectable_BoolPtr, [:pointer, :pointer, :int, ImVec2.by_value], :bool],
      [:igSeparator, [], :void],
      [:igSetAllocatorFunctions, [:pointer, :pointer, :pointer], :void],
      [:igSetClipboardText, [:pointer], :void],
      [:igSetColorEditOptions, [:int], :void],
      [:igSetColumnOffset, [:int, :float], :void],
      [:igSetColumnWidth, [:int, :float], :void],
      [:igSetCurrentContext, [:pointer], :void],
      [:igSetCursorPos, [ImVec2.by_value], :void],
      [:igSetCursorPosX, [:float], :void],
      [:igSetCursorPosY, [:float], :void],
      [:igSetCursorScreenPos, [ImVec2.by_value], :void],
      [:igSetDragDropPayload, [:pointer, :pointer, :size_t, :int], :bool],
      [:igSetItemAllowOverlap, [], :void],
      [:igSetItemDefaultFocus, [], :void],
      [:igSetKeyboardFocusHere, [:int], :void],
      [:igSetMouseCursor, [:int], :void],
      [:igSetNextFrameWantCaptureKeyboard, [:bool], :void],
      [:igSetNextFrameWantCaptureMouse, [:bool], :void],
      [:igSetNextItemOpen, [:bool, :int], :void],
      [:igSetNextItemWidth, [:float], :void],
      [:igSetNextWindowBgAlpha, [:float], :void],
      [:igSetNextWindowCollapsed, [:bool, :int], :void],
      [:igSetNextWindowContentSize, [ImVec2.by_value], :void],
      [:igSetNextWindowFocus, [], :void],
      [:igSetNextWindowPos, [ImVec2.by_value, :int, ImVec2.by_value], :void],
      [:igSetNextWindowScroll, [ImVec2.by_value], :void],
      [:igSetNextWindowSize, [ImVec2.by_value, :int], :void],
      [:igSetNextWindowSizeConstraints, [ImVec2.by_value, ImVec2.by_value, :ImGuiSizeCallback, :pointer], :void],
      [:igSetScrollFromPosX, [:float, :float], :void],
      [:igSetScrollFromPosY, [:float, :float], :void],
      [:igSetScrollHereX, [:float], :void],
      [:igSetScrollHereY, [:float], :void],
      [:igSetScrollX, [:float], :void],
      [:igSetScrollY, [:float], :void],
      [:igSetStateStorage, [:pointer], :void],
      [:igSetTabItemClosed, [:pointer], :void],
      [:igSetTooltip, [:pointer, :varargs], :void],
      [:igSetWindowCollapsed_Bool, [:bool, :int], :void],
      [:igSetWindowCollapsed_Str, [:pointer, :bool, :int], :void],
      [:igSetWindowFocus_Nil, [], :void],
      [:igSetWindowFocus_Str, [:pointer], :void],
      [:igSetWindowFontScale, [:float], :void],
      [:igSetWindowPos_Vec2, [ImVec2.by_value, :int], :void],
      [:igSetWindowPos_Str, [:pointer, ImVec2.by_value, :int], :void],
      [:igSetWindowSize_Vec2, [ImVec2.by_value, :int], :void],
      [:igSetWindowSize_Str, [:pointer, ImVec2.by_value, :int], :void],
      [:igShowAboutWindow, [:pointer], :void],
      [:igShowDebugLogWindow, [:pointer], :void],
      [:igShowDemoWindow, [:pointer], :void],
      [:igShowFontSelector, [:pointer], :void],
      [:igShowMetricsWindow, [:pointer], :void],
      [:igShowStackToolWindow, [:pointer], :void],
      [:igShowStyleEditor, [:pointer], :void],
      [:igShowStyleSelector, [:pointer], :bool],
      [:igShowUserGuide, [], :void],
      [:igSliderAngle, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igSliderFloat, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igSliderFloat2, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igSliderFloat3, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igSliderFloat4, [:pointer, :pointer, :float, :float, :pointer, :int], :bool],
      [:igSliderInt, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:igSliderInt2, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:igSliderInt3, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:igSliderInt4, [:pointer, :pointer, :int, :int, :pointer, :int], :bool],
      [:igSliderScalar, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:igSliderScalarN, [:pointer, :int, :pointer, :int, :pointer, :pointer, :pointer, :int], :bool],
      [:igSmallButton, [:pointer], :bool],
      [:igSpacing, [], :void],
      [:igStyleColorsClassic, [:pointer], :void],
      [:igStyleColorsDark, [:pointer], :void],
      [:igStyleColorsLight, [:pointer], :void],
      [:igTabItemButton, [:pointer, :int], :bool],
      [:igTableGetColumnCount, [], :int],
      [:igTableGetColumnFlags, [:int], :int],
      [:igTableGetColumnIndex, [], :int],
      [:igTableGetColumnName, [:int], :pointer],
      [:igTableGetRowIndex, [], :int],
      [:igTableGetSortSpecs, [], :pointer],
      [:igTableHeader, [:pointer], :void],
      [:igTableHeadersRow, [], :void],
      [:igTableNextColumn, [], :bool],
      [:igTableNextRow, [:int, :float], :void],
      [:igTableSetBgColor, [:int, :uint, :int], :void],
      [:igTableSetColumnEnabled, [:int, :bool], :void],
      [:igTableSetColumnIndex, [:int], :bool],
      [:igTableSetupColumn, [:pointer, :int, :float, :uint], :void],
      [:igTableSetupScrollFreeze, [:int, :int], :void],
      [:igText, [:pointer, :varargs], :void],
      [:igTextColored, [ImVec4.by_value, :pointer, :varargs], :void],
      [:igTextDisabled, [:pointer, :varargs], :void],
      [:igTextUnformatted, [:pointer, :pointer], :void],
      [:igTextWrapped, [:pointer, :varargs], :void],
      [:igTreeNode_Str, [:pointer], :bool],
      [:igTreeNode_StrStr, [:pointer, :pointer, :varargs], :bool],
      [:igTreeNode_Ptr, [:pointer, :pointer, :varargs], :bool],
      [:igTreeNodeEx_Str, [:pointer, :int], :bool],
      [:igTreeNodeEx_StrStr, [:pointer, :int, :pointer, :varargs], :bool],
      [:igTreeNodeEx_Ptr, [:pointer, :int, :pointer, :varargs], :bool],
      [:igTreePop, [], :void],
      [:igTreePush_Str, [:pointer], :void],
      [:igTreePush_Ptr, [:pointer], :void],
      [:igUnindent, [:float], :void],
      [:igVSliderFloat, [:pointer, ImVec2.by_value, :pointer, :float, :float, :pointer, :int], :bool],
      [:igVSliderInt, [:pointer, ImVec2.by_value, :pointer, :int, :int, :pointer, :int], :bool],
      [:igVSliderScalar, [:pointer, ImVec2.by_value, :int, :pointer, :pointer, :pointer, :pointer, :int], :bool],
      [:igValue_Bool, [:pointer, :bool], :void],
      [:igValue_Int, [:pointer, :int], :void],
      [:igValue_Uint, [:pointer, :uint], :void],
      [:igValue_Float, [:pointer, :float, :pointer], :void],
    ]

    entries.each do |entry|
      attach_function entry[0], entry[1], entry[2]
    rescue FFI::NotFoundError => e
      warn "[Warning] Failed to import #{entry[0]} (#{e})."
    end

    attach_function :ImVector_ImWchar_create, :ImVector_ImWchar_create, [], :pointer
    attach_function :ImVector_ImWchar_destroy, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_Init, :ImVector_ImWchar_destroy, [:pointer], :void
    attach_function :ImVector_ImWchar_UnInit, :ImVector_ImWchar_destroy, [:pointer], :void

    @@imgui_import_done = true  end # self.import_symbols

  # arg: type(const char*), flags(ImGuiDragDropFlags)
  # ret: pointer
  def self.AcceptDragDropPayload(type, flags = 0)  # accept contents of a given type. If ImGuiDragDropFlags_AcceptBeforeDelivery is set you can peek into the payload before the mouse button is released.
    igAcceptDragDropPayload(type, flags)
  end

  # ret: void
  def self.AlignTextToFramePadding()  # vertically align upcoming text baseline to FramePadding.y so that it will align properly to regularly framed items (call if you have text on a line before a framed item)
    igAlignTextToFramePadding()
  end

  # arg: str_id(const char*), dir(ImGuiDir)
  # ret: bool
  def self.ArrowButton(str_id, dir)  # square button with an arrow shape
    igArrowButton(str_id, dir)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  #
  # Windows
  # - Begin() = push window to the stack and start appending to it. End() = pop window from the stack.
  # - Passing 'bool* p_open != NULL' shows a window-closing widget in the upper-right corner of the window,
  #   which clicking will set the boolean to false when clicked.
  # - You may append multiple times to the same window during the same frame by calling Begin()/End() pairs multiple times.
  #   Some information such as 'flags' or 'p_open' will only be considered by the first call to Begin().
  # - Begin() return false to indicate the window is collapsed or fully clipped, so you may early out and omit submitting
  #   anything to the window. Always call a matching End() for each Begin() call, regardless of its return value!
  #   [Important: due to legacy reason, this is inconsistent with most other functions such as BeginMenu/EndMenu,
  #    BeginPopup/EndPopup, etc. where the EndXXX call should only be called if the corresponding BeginXXX function
  #    returned true. Begin and BeginChild are the only odd ones out. Will be fixed in a future update.]
  # - Note that the bottom of window stack always contains a window called "Debug".
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
  def self.BeginChildFrame(id, size, flags = 0)  # helper to create a child window / scrolling region that looks like a normal widget frame
    igBeginChildFrame(id, size, flags)
  end

  # arg: label(const char*), preview_value(const char*), flags(ImGuiComboFlags)
  # ret: bool
  #
  # Widgets: Combo Box (Dropdown)
  # - The BeginCombo()/EndCombo() api allows you to manage your contents and selection state however you want it, by creating e.g. Selectable() items.
  # - The old Combo() api are helpers over BeginCombo()/EndCombo() which are kept available for convenience purpose. This is analogous to how ListBox are created.
  def self.BeginCombo(label, preview_value, flags = 0)
    igBeginCombo(label, preview_value, flags)
  end

  # arg: disabled(bool)
  # ret: void
  #
  # Disabling [BETA API]
  # - Disable all user interactions and dim items visuals (applying style.DisabledAlpha over current colors)
  # - Those can be nested but it cannot be used to enable an already disabled section (a single BeginDisabled(true) in the stack is enough to keep everything disabled)
  # - BeginDisabled(false) essentially does nothing useful but is provided to facilitate use of boolean expressions. If you can avoid calling BeginDisabled(False)/EndDisabled() best to avoid it.
  def self.BeginDisabled(disabled = true)
    igBeginDisabled(disabled)
  end

  # arg: flags(ImGuiDragDropFlags)
  # ret: bool
  #
  # Drag and Drop
  # - On source items, call BeginDragDropSource(), if it returns true also call SetDragDropPayload() + EndDragDropSource().
  # - On target candidates, call BeginDragDropTarget(), if it returns true also call AcceptDragDropPayload() + EndDragDropTarget().
  # - If you stop calling BeginDragDropSource() the payload is preserved however it won't have a preview tooltip (we currently display a fallback "..." tooltip, see #1725)
  # - An item can be both drag source and drop target.
  def self.BeginDragDropSource(flags = 0)  # call after submitting an item which may be dragged. when this return true, you can call SetDragDropPayload() + EndDragDropSource()
    igBeginDragDropSource(flags)
  end

  # ret: bool
  def self.BeginDragDropTarget()  # call after submitting an item that may receive a payload. If this returns true, you can call AcceptDragDropPayload() + EndDragDropTarget()
    igBeginDragDropTarget()
  end

  # ret: void
  def self.BeginGroup()  # lock horizontal starting position
    igBeginGroup()
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  #
  # Widgets: List Boxes
  # - This is essentially a thin wrapper to using BeginChild/EndChild with some stylistic changes.
  # - The BeginListBox()/EndListBox() api allows you to manage your contents and selection state however you want it, by creating e.g. Selectable() or any items.
  # - The simplified/old ListBox() api are helpers over BeginListBox()/EndListBox() which are kept available for convenience purpose. This is analoguous to how Combos are created.
  # - Choose frame width:   size.x > 0.0f: custom  /  size.x < 0.0f or -FLT_MIN: right-align   /  size.x = 0.0f (default): use current ItemWidth
  # - Choose frame height:  size.y > 0.0f: custom  /  size.y < 0.0f or -FLT_MIN: bottom-align  /  size.y = 0.0f (default): arbitrary default height which can fit ~7 items
  def self.BeginListBox(label, size = ImVec2.create(0,0))  # open a framed scrolling region
    igBeginListBox(label, size)
  end

  # ret: bool
  def self.BeginMainMenuBar()  # create and append to a full screen menu-bar.
    igBeginMainMenuBar()
  end

  # arg: label(const char*), enabled(bool)
  # ret: bool
  def self.BeginMenu(label, enabled = true)  # Implied enabled = true
    igBeginMenu(label, enabled)
  end

  # ret: bool
  #
  # Widgets: Menus
  # - Use BeginMenuBar() on a window ImGuiWindowFlags_MenuBar to append to its menu bar.
  # - Use BeginMainMenuBar() to create a menu bar at the top of the screen and append to it.
  # - Use BeginMenu() to create a menu. You can call BeginMenu() multiple time with the same identifier to append more items to it.
  # - Not that MenuItem() keyboardshortcuts are displayed as a convenience but _not processed_ by Dear ImGui at the moment.
  def self.BeginMenuBar()  # append to menu-bar of current window (requires ImGuiWindowFlags_MenuBar flag set on parent window).
    igBeginMenuBar()
  end

  # arg: str_id(const char*), flags(ImGuiWindowFlags)
  # ret: bool
  #
  # Popups: begin/end functions
  #  - BeginPopup(): query popup state, if open start appending into the window. Call EndPopup() afterwards. ImGuiWindowFlags are forwarded to the window.
  #  - BeginPopupModal(): block every interaction behind the window, cannot be closed by user, add a dimming background, has a title bar.
  def self.BeginPopup(str_id, flags = 0)  # return true if the popup is open, and you can start outputting to it.
    igBeginPopup(str_id, flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  #
  # Popups: open+begin combined functions helpers
  #  - Helpers to do OpenPopup+BeginPopup where the Open action is triggered by e.g. hovering an item and right-clicking.
  #  - They are convenient to easily create context menus, hence the name.
  #  - IMPORTANT: Notice that BeginPopupContextXXX takes ImGuiPopupFlags just like OpenPopup() and unlike BeginPopup(). For full consistency, we may add ImGuiWindowFlags to the BeginPopupContextXXX functions in the future.
  #  - IMPORTANT: Notice that we exceptionally default their flags to 1 (== ImGuiPopupFlags_MouseButtonRight) for backward compatibility with older API taking 'int mouse_button = 1' parameter, so if you add other flags remember to re-add the ImGuiPopupFlags_MouseButtonRight.
  def self.BeginPopupContextItem(str_id = nil, popup_flags = 1)  # Implied str_id = NULL, popup_flags = 1
    igBeginPopupContextItem(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextVoid(str_id = nil, popup_flags = 1)  # Implied str_id = NULL, popup_flags = 1
    igBeginPopupContextVoid(str_id, popup_flags)
  end

  # arg: str_id(const char*), popup_flags(ImGuiPopupFlags)
  # ret: bool
  def self.BeginPopupContextWindow(str_id = nil, popup_flags = 1)  # Implied str_id = NULL, popup_flags = 1
    igBeginPopupContextWindow(str_id, popup_flags)
  end

  # arg: name(const char*), p_open(bool*), flags(ImGuiWindowFlags)
  # ret: bool
  def self.BeginPopupModal(name, p_open = nil, flags = 0)  # return true if the modal is open, and you can start outputting to it.
    igBeginPopupModal(name, p_open, flags)
  end

  # arg: str_id(const char*), flags(ImGuiTabBarFlags)
  # ret: bool
  #
  # Tab Bars, Tabs
  # - Note: Tabs are automatically created by the docking system (when in 'docking' branch). Use this to create tab bars/tabs yourself.
  def self.BeginTabBar(str_id, flags = 0)  # create and append into a TabBar
    igBeginTabBar(str_id, flags)
  end

  # arg: label(const char*), p_open(bool*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.BeginTabItem(label, p_open = nil, flags = 0)  # create a Tab. Returns true if the Tab is selected.
    igBeginTabItem(label, p_open, flags)
  end

  # arg: str_id(const char*), column(int), flags(ImGuiTableFlags), outer_size(ImVec2), inner_width(float)
  # ret: bool
  #
  # Tables
  # - Full-featured replacement for old Columns API.
  # - See Demo->Tables for demo code. See top of imgui_tables.cpp for general commentary.
  # - See ImGuiTableFlags_ and ImGuiTableColumnFlags_ enums for a description of available flags.
  # The typical call flow is:
  # - 1. Call BeginTable(), early out if returning false.
  # - 2. Optionally call TableSetupColumn() to submit column name/flags/defaults.
  # - 3. Optionally call TableSetupScrollFreeze() to request scroll freezing of columns/rows.
  # - 4. Optionally call TableHeadersRow() to submit a header row. Names are pulled from TableSetupColumn() data.
  # - 5. Populate contents:
  #    - In most situations you can use TableNextRow() + TableSetColumnIndex(N) to start appending into a column.
  #    - If you are using tables as a sort of grid, where every column is holding the same type of contents,
  #      you may prefer using TableNextColumn() instead of TableNextRow() + TableSetColumnIndex().
  #      TableNextColumn() will automatically wrap-around into the next row if needed.
  #    - IMPORTANT: Comparatively to the old Columns() API, we need to call TableNextColumn() for the first column!
  #    - Summary of possible call flow:
  #        --------------------------------------------------------------------------------------------------------
  #        TableNextRow() -> TableSetColumnIndex(0) -> Text("Hello 0") -> TableSetColumnIndex(1) -> Text("Hello 1")  // OK
  #        TableNextRow() -> TableNextColumn()      -> Text("Hello 0") -> TableNextColumn()      -> Text("Hello 1")  // OK
  #                          TableNextColumn()      -> Text("Hello 0") -> TableNextColumn()      -> Text("Hello 1")  // OK: TableNextColumn() automatically gets to next row!
  #        TableNextRow()                           -> Text("Hello 0")                                               // Not OK! Missing TableSetColumnIndex() or TableNextColumn()! Text will not appear!
  #        --------------------------------------------------------------------------------------------------------
  # - 5. Call EndTable()
  def self.BeginTable(str_id, column, flags = 0, outer_size = ImVec2.create(0.0,0.0), inner_width = 0.0)  # Implied outer_size = ImVec2(0.0f, 0.0f), inner_width = 0.0f
    igBeginTable(str_id, column, flags, outer_size, inner_width)
  end

  # ret: void
  #
  # Tooltips
  # - Tooltip are windows following the mouse. They do not take focus away.
  def self.BeginTooltip()  # begin/append a tooltip window. to create full-featured tooltip (with any kind of items).
    igBeginTooltip()
  end

  # ret: void
  def self.Bullet()  # draw a small circle + keep the cursor on the same line. advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses
    igBullet()
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.BulletText(fmt, *varargs)  # shortcut for Bullet()+Text()
    igBulletText(fmt, *varargs)
  end

  # arg: label(const char*), size(ImVec2)
  # ret: bool
  #
  # Widgets: Main
  # - Most widgets return true when the value has been changed or when pressed/selected
  # - You may also use one of the many IsItemXXX functions (e.g. IsItemActive, IsItemHovered, etc.) to query widget state.
  def self.Button(label, size = ImVec2.create(0,0))  # Implied size = ImVec2(0, 0)
    igButton(label, size)
  end

  # ret: float
  def self.CalcItemWidth()  # width of item given pushed settings and current cursor position. NOT necessarily the width of last item unlike most 'Item' functions.
    igCalcItemWidth()
  end

  # arg: text(const char*), text_end(const char*), hide_text_after_double_hash(bool), wrap_width(float)
  # ret: void
  #
  # Text Utilities
  def self.CalcTextSize(text, text_end = nil, hide_text_after_double_hash = false, wrap_width = -1.0)  # Implied text_end = NULL, hide_text_after_double_hash = false, wrap_width = -1.0f
    pOut = ImVec2.new
    igCalcTextSize(pOut, text, text_end, hide_text_after_double_hash, wrap_width)
    return pOut
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
  def self.CloseCurrentPopup()  # manually close the popup we have begin-ed into.
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
  def self.ColorButton(desc_id, col, flags = 0, size = ImVec2.create(0,0))  # Implied size = ImVec2(0, 0)
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
  #
  # Color Utilities
  def self.ColorConvertU32ToFloat4(_in_)
    pOut = ImVec4.new
    igColorConvertU32ToFloat4(pOut, _in_)
    return pOut
  end

  # arg: label(const char*), col(float[3]), flags(ImGuiColorEditFlags)
  # ret: bool
  #
  # Widgets: Color Editor/Picker (tip: the ColorEdit* functions have a little color square that can be left-clicked to open a picker, and right-clicked to open an option menu.)
  # - Note that in C++ a 'float v[X]' function argument is the _same_ as 'float* v', the array syntax is just a way to document the number of elements that are expected to be accessible.
  # - You can pass the address of a first float element out of a contiguous structure, e.g. &myvector.x
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
  #
  # Legacy Columns API (prefer using Tables!)
  # - You can also use SameLine(pos_x) to mimic simplified columns.
  def self.Columns(count = 1, id = nil, border = true)  # Implied count = 1, id = NULL, border = true
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
  #
  # Context creation and access
  # - Each context create its own ImFontAtlas by default. You may instance one yourself and pass it to CreateContext() to share a font atlas between contexts.
  # - DLL users: heaps and globals are not shared across DLL boundaries! You will need to call SetCurrentContext() + SetAllocatorFunctions()
  #   for each static/DLL boundary you are calling from. Read "Context and Memory Allocators" section of imgui.cpp for details.
  def self.CreateContext(shared_font_atlas = nil)
    igCreateContext(shared_font_atlas)
  end

  # arg: version_str(const char*), sz_io(size_t), sz_style(size_t), sz_vec2(size_t), sz_vec4(size_t), sz_drawvert(size_t), sz_drawidx(size_t)
  # ret: bool
  def self.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)  # This is called by IMGUI_CHECKVERSION() macro.
    igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
  end

  # arg: text(const char*)
  # ret: void
  #
  # Debug Utilities
  def self.DebugTextEncoding(text)
    igDebugTextEncoding(text)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.DestroyContext(ctx = nil)  # NULL = destroy current context
    igDestroyContext(ctx)
  end

  # arg: label(const char*), v(float*), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  #
  # Widgets: Drag Sliders
  # - CTRL+Click on any drag box to turn them into an input box. Manually input values aren't clamped by default and can go off-bounds. Use ImGuiSliderFlags_AlwaysClamp to always clamp.
  # - For all the Float2/Float3/Float4/Int2/Int3/Int4 versions of every function, note that a 'float v[X]' function argument is the same as 'float* v',
  #   the array syntax is just a way to document the number of elements that are expected to be accessible. You can pass address of your first element out of a contiguous set, e.g. &myvector.x
  # - Adjust format string to decorate the value with a prefix, a suffix, or adapt the editing and display precision e.g. "%.3f" -> 1.234; "%5.2f secs" -> 01.23 secs; "Biscuit: %.0f" -> Biscuit: 1; etc.
  # - Format string may also be set to NULL or use the default format ("%f" or "%d").
  # - Speed are per-pixel of mouse movement (v_speed=0.2f: mouse needs to move by 5 pixels to increase value by 1). For gamepad/keyboard navigation, minimum speed is Max(v_speed, minimum_step_at_given_precision).
  # - Use v_min < v_max to clamp edits to given limits. Note that CTRL+Click manual input can override those limits if ImGuiSliderFlags_AlwaysClamp is not used.
  # - Use v_max = FLT_MAX / INT_MAX etc to avoid clamping to a maximum, same with v_min = -FLT_MAX / INT_MIN to avoid clamping to a minimum.
  # - We use the same sets of flags for DragXXX() and SliderXXX() functions as the features are the same and it makes it easier to swap them.
  # - Legacy: Pre-1.78 there are DragXXX() function signatures that take a final `float power=1.0f' argument instead of the `ImGuiSliderFlags flags=0' argument.
  #   If you get a warning converting a float to ImGuiSliderFlags, read https://github.com/ocornut/imgui/issues/3361
  def self.DragFloat(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)  # Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0
    igDragFloat(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat2(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)  # Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0
    igDragFloat2(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat3(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)  # Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0
    igDragFloat3(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_speed(float), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloat4(label, v, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", flags = 0)  # Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0
    igDragFloat4(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(float*), v_current_max(float*), v_speed(float), v_min(float), v_max(float), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragFloatRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0.0, v_max = 0.0, format = "%.3f", format_max = nil, flags = 0)  # Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", format_max = NULL, flags = 0
    igDragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), v(int*), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)  # Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0
    igDragInt(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt2(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)  # Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0
    igDragInt2(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt3(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)  # Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0
    igDragInt3(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_speed(float), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragInt4(label, v, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", flags = 0)  # Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0
    igDragInt4(label, v, v_speed, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v_current_min(int*), v_current_max(int*), v_speed(float), v_min(int), v_max(int), format(const char*), format_max(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragIntRange2(label, v_current_min, v_current_max, v_speed = 1.0, v_min = 0, v_max = 0, format = "%d", format_max = nil, flags = 0)  # Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", format_max = NULL, flags = 0
    igDragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalar(label, data_type, p_data, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)  # Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0
    igDragScalar(label, data_type, p_data, v_speed, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), v_speed(float), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.DragScalarN(label, data_type, p_data, components, v_speed = 1.0, p_min = nil, p_max = nil, format = nil, flags = 0)  # Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0
    igDragScalarN(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.Dummy(size)  # add a dummy item of given size. unlike InvisibleButton(), Dummy() won't take the mouse click or be navigable into.
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
  def self.EndChildFrame()  # always call EndChildFrame() regardless of BeginChildFrame() return values (which indicates a collapsed/clipped window)
    igEndChildFrame()
  end

  # ret: void
  def self.EndCombo()  # only call EndCombo() if BeginCombo() returns true!
    igEndCombo()
  end

  # ret: void
  def self.EndDisabled()
    igEndDisabled()
  end

  # ret: void
  def self.EndDragDropSource()  # only call EndDragDropSource() if BeginDragDropSource() returns true!
    igEndDragDropSource()
  end

  # ret: void
  def self.EndDragDropTarget()  # only call EndDragDropTarget() if BeginDragDropTarget() returns true!
    igEndDragDropTarget()
  end

  # ret: void
  def self.EndFrame()  # ends the Dear ImGui frame. automatically called by Render(). If you don't need to render data (skipping rendering) you may call EndFrame() without Render()... but you'll have wasted CPU already! If you don't need to render, better to not create any windows and not call NewFrame() at all!
    igEndFrame()
  end

  # ret: void
  def self.EndGroup()  # unlock horizontal starting position + capture the whole group bounding box into one "item" (so you can use IsItemHovered() or layout primitives such as SameLine() on whole group, etc.)
    igEndGroup()
  end

  # ret: void
  def self.EndListBox()  # only call EndListBox() if BeginListBox() returned true!
    igEndListBox()
  end

  # ret: void
  def self.EndMainMenuBar()  # only call EndMainMenuBar() if BeginMainMenuBar() returns true!
    igEndMainMenuBar()
  end

  # ret: void
  def self.EndMenu()  # only call EndMenu() if BeginMenu() returns true!
    igEndMenu()
  end

  # ret: void
  def self.EndMenuBar()  # only call EndMenuBar() if BeginMenuBar() returns true!
    igEndMenuBar()
  end

  # ret: void
  def self.EndPopup()  # only call EndPopup() if BeginPopupXXX() returns true!
    igEndPopup()
  end

  # ret: void
  def self.EndTabBar()  # only call EndTabBar() if BeginTabBar() returns true!
    igEndTabBar()
  end

  # ret: void
  def self.EndTabItem()  # only call EndTabItem() if BeginTabItem() returns true!
    igEndTabItem()
  end

  # ret: void
  def self.EndTable()  # only call EndTable() if BeginTable() returns true!
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
  #
  # Background/Foreground Draw Lists
  def self.GetBackgroundDrawList()  # this draw list will be the first rendered one. Useful to quickly draw shapes/text behind dear imgui contents.
    igGetBackgroundDrawList()
  end

  # ret: pointer
  #
  # Clipboard Utilities
  # - Also see the LogToClipboard() function to capture GUI into clipboard, or easily output text data to the clipboard.
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
  def self.GetColumnIndex()  # get current column index
    igGetColumnIndex()
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnOffset(column_index = -1)  # get position of column line (in pixels, from the left side of the contents region). pass -1 to use current column, otherwise 0..GetColumnsCount() inclusive. column 0 is typically 0.0f
    igGetColumnOffset(column_index)
  end

  # arg: column_index(int)
  # ret: float
  def self.GetColumnWidth(column_index = -1)  # get column width (in pixels). pass -1 to use current column
    igGetColumnWidth(column_index)
  end

  # ret: int
  def self.GetColumnsCount()
    igGetColumnsCount()
  end

  # ret: void
  #
  # Content region
  # - Retrieve available space from a given point. GetContentRegionAvail() is frequently useful.
  # - Those functions are bound to be redesigned (they are confusing, incomplete and the Min/Max return values are in local window coordinates which increases confusion)
  def self.GetContentRegionAvail()  # == GetContentRegionMax() - GetCursorPos()
    pOut = ImVec2.new
    igGetContentRegionAvail(pOut)
    return pOut
  end

  # ret: void
  def self.GetContentRegionMax()  # current content boundaries (typically window boundaries including scrolling, or current column boundaries), in windows coordinates
    pOut = ImVec2.new
    igGetContentRegionMax(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetCurrentContext()
    igGetCurrentContext()
  end

  # ret: void
  def self.GetCursorPos()  # cursor position in window coordinates (relative to window position)
    pOut = ImVec2.new
    igGetCursorPos(pOut)
    return pOut
  end

  # ret: float
  def self.GetCursorPosX()  #   (some functions are using window-relative coordinates, such as: GetCursorPos, GetCursorStartPos, GetContentRegionMax, GetWindowContentRegion* etc.
    igGetCursorPosX()
  end

  # ret: float
  def self.GetCursorPosY()  #    other functions such as GetCursorScreenPos or everything in ImDrawList::
    igGetCursorPosY()
  end

  # ret: void
  def self.GetCursorScreenPos()  # cursor position in absolute coordinates (useful to work with ImDrawList API). generally top-left == GetMainViewport()->Pos == (0,0) in single viewport mode, and bottom-right == GetMainViewport()->Pos+Size == io.DisplaySize in single-viewport mode.
    pOut = ImVec2.new
    igGetCursorScreenPos(pOut)
    return pOut
  end

  # ret: void
  def self.GetCursorStartPos()  # initial cursor position in window coordinates
    pOut = ImVec2.new
    igGetCursorStartPos(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetDragDropPayload()  # peek directly into the current payload from anywhere. may return NULL. use ImGuiPayload::IsDataType() to test for the payload type.
    igGetDragDropPayload()
  end

  # ret: pointer
  def self.GetDrawData()  # valid after Render() and until the next call to NewFrame(). this is what you have to render.
    igGetDrawData()
  end

  # ret: pointer
  def self.GetDrawListSharedData()  # you may use this when creating your own ImDrawList instances.
    igGetDrawListSharedData()
  end

  # ret: pointer
  #
  # Style read access
  # - Use the ShowStyleEditor() function to interactively see/edit the colors.
  def self.GetFont()  # get current font
    igGetFont()
  end

  # ret: float
  def self.GetFontSize()  # get current font size (= height in pixels) of current font with current scale applied
    igGetFontSize()
  end

  # ret: void
  def self.GetFontTexUvWhitePixel()  # get UV coordinate for a while pixel, useful to draw custom shapes via the ImDrawList API
    pOut = ImVec2.new
    igGetFontTexUvWhitePixel(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetForegroundDrawList()  # this draw list will be the last rendered one. Useful to quickly draw shapes/text over dear imgui contents.
    igGetForegroundDrawList()
  end

  # ret: int
  def self.GetFrameCount()  # get global imgui frame count. incremented by 1 every frame.
    igGetFrameCount()
  end

  # ret: float
  def self.GetFrameHeight()  # ~ FontSize + style.FramePadding.y * 2
    igGetFrameHeight()
  end

  # ret: float
  def self.GetFrameHeightWithSpacing()  # ~ FontSize + style.FramePadding.y * 2 + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of framed widgets)
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
  #
  # Main
  def self.GetIO()  # access the IO structure (mouse/keyboard/gamepad inputs, time, various configuration options/flags)
    igGetIO()
  end

  # ret: uint
  def self.GetItemID()  # get ID of last item (~~ often same ImGui::GetID(label) beforehand)
    igGetItemID()
  end

  # ret: void
  def self.GetItemRectMax()  # get lower-right bounding rectangle of the last item (screen space)
    pOut = ImVec2.new
    igGetItemRectMax(pOut)
    return pOut
  end

  # ret: void
  def self.GetItemRectMin()  # get upper-left bounding rectangle of the last item (screen space)
    pOut = ImVec2.new
    igGetItemRectMin(pOut)
    return pOut
  end

  # ret: void
  def self.GetItemRectSize()  # get size of last item
    pOut = ImVec2.new
    igGetItemRectSize(pOut)
    return pOut
  end

  # arg: key(ImGuiKey)
  # ret: int
  def self.GetKeyIndex(key)
    igGetKeyIndex(key)
  end

  # arg: key(ImGuiKey)
  # ret: pointer
  def self.GetKeyName(key)  # [DEBUG] returns English name of the key. Those names a provided for debugging purpose and are not meant to be saved persistently not compared.
    igGetKeyName(key)
  end

  # arg: key(ImGuiKey), repeat_delay(float), rate(float)
  # ret: int
  def self.GetKeyPressedAmount(key, repeat_delay, rate)  # uses provided repeat rate/delay. return a count, most often 0 or 1 but might be >1 if RepeatRate is small enough that DeltaTime > RepeatRate
    igGetKeyPressedAmount(key, repeat_delay, rate)
  end

  # ret: pointer
  #
  # Viewports
  # - Currently represents the Platform Window created by the application which is hosting our Dear ImGui windows.
  # - In 'docking' branch with multi-viewport enabled, we extend this concept to have multiple active viewports.
  # - In the future we will extend this concept further to also represent Platform Monitor and support a "no main platform window" operation mode.
  def self.GetMainViewport()  # return primary/default viewport. This can never be NULL.
    igGetMainViewport()
  end

  # arg: button(ImGuiMouseButton)
  # ret: int
  def self.GetMouseClickedCount(button)  # return the number of successive mouse-clicks at the time where a click happen (otherwise 0).
    igGetMouseClickedCount(button)
  end

  # ret: int
  def self.GetMouseCursor()  # get desired mouse cursor shape. Important: reset in ImGui::NewFrame(), this is updated during the frame. valid before Render(). If you use software rendering by setting io.MouseDrawCursor ImGui will render those for you
    igGetMouseCursor()
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: void
  def self.GetMouseDragDelta(button = 0, lock_threshold = -1.0)  # return the delta from the initial clicking position while the mouse button is pressed or was just released. This is locked and return 0.0f until the mouse moves past a distance threshold at least once (if lock_threshold < -1.0f, uses io.MouseDraggingThreshold)
    pOut = ImVec2.new
    igGetMouseDragDelta(pOut, button, lock_threshold)
    return pOut
  end

  # ret: void
  def self.GetMousePos()  # shortcut to ImGui::GetIO().MousePos provided by user, to be consistent with other calls
    pOut = ImVec2.new
    igGetMousePos(pOut)
    return pOut
  end

  # ret: void
  def self.GetMousePosOnOpeningCurrentPopup()  # retrieve mouse position at the time of opening popup we have BeginPopup() into (helper to avoid user backing that value themselves)
    pOut = ImVec2.new
    igGetMousePosOnOpeningCurrentPopup(pOut)
    return pOut
  end

  # ret: float
  def self.GetScrollMaxX()  # get maximum scrolling amount ~~ ContentSize.x - WindowSize.x - DecorationsSize.x
    igGetScrollMaxX()
  end

  # ret: float
  def self.GetScrollMaxY()  # get maximum scrolling amount ~~ ContentSize.y - WindowSize.y - DecorationsSize.y
    igGetScrollMaxY()
  end

  # ret: float
  #
  # Windows Scrolling
  # - Any change of Scroll will be applied at the beginning of next frame in the first call to Begin().
  # - You may instead use SetNextWindowScroll() prior to calling Begin() to avoid this delay, as an alternative to using SetScrollX()/SetScrollY().
  def self.GetScrollX()  # get scrolling amount [0 .. GetScrollMaxX()]
    igGetScrollX()
  end

  # ret: float
  def self.GetScrollY()  # get scrolling amount [0 .. GetScrollMaxY()]
    igGetScrollY()
  end

  # ret: pointer
  def self.GetStateStorage()
    igGetStateStorage()
  end

  # ret: pointer
  def self.GetStyle()  # access the Style structure (colors, sizes). Always use PushStyleCol(), PushStyleVar() to modify style mid-frame!
    igGetStyle()
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorName(idx)  # get a string corresponding to the enum value (for display, saving, etc.).
    igGetStyleColorName(idx)
  end

  # arg: idx(ImGuiCol)
  # ret: pointer
  def self.GetStyleColorVec4(idx)  # retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwise use GetColorU32() to get style color with style alpha baked in.
    igGetStyleColorVec4(idx)
  end

  # ret: float
  def self.GetTextLineHeight()  # ~ FontSize
    igGetTextLineHeight()
  end

  # ret: float
  def self.GetTextLineHeightWithSpacing()  # ~ FontSize + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of text)
    igGetTextLineHeightWithSpacing()
  end

  # ret: double
  def self.GetTime()  # get global imgui time. incremented by io.DeltaTime every frame.
    igGetTime()
  end

  # ret: float
  def self.GetTreeNodeToLabelSpacing()  # horizontal distance preceding label when using TreeNode*() or Bullet() == (g.FontSize + style.FramePadding.x*2) for a regular unframed TreeNode
    igGetTreeNodeToLabelSpacing()
  end

  # ret: pointer
  def self.GetVersion()  # get the compiled version string e.g. "1.80 WIP" (essentially the value for IMGUI_VERSION from the compiled version of imgui.cpp)
    igGetVersion()
  end

  # ret: void
  def self.GetWindowContentRegionMax()  # content boundaries max for the full window (roughly (0,0)+Size-Scroll) where Size can be overridden with SetNextWindowContentSize(), in window coordinates
    pOut = ImVec2.new
    igGetWindowContentRegionMax(pOut)
    return pOut
  end

  # ret: void
  def self.GetWindowContentRegionMin()  # content boundaries min for the full window (roughly (0,0)-Scroll), in window coordinates
    pOut = ImVec2.new
    igGetWindowContentRegionMin(pOut)
    return pOut
  end

  # ret: pointer
  def self.GetWindowDrawList()  # get draw list associated to the current window, to append your own drawing primitives
    igGetWindowDrawList()
  end

  # ret: float
  def self.GetWindowHeight()  # get current window height (shortcut for GetWindowSize().y)
    igGetWindowHeight()
  end

  # ret: void
  def self.GetWindowPos()  # get current window position in screen space (useful if you want to do your own drawing via the DrawList API)
    pOut = ImVec2.new
    igGetWindowPos(pOut)
    return pOut
  end

  # ret: void
  def self.GetWindowSize()  # get current window size
    pOut = ImVec2.new
    igGetWindowSize(pOut)
    return pOut
  end

  # ret: float
  def self.GetWindowWidth()  # get current window width (shortcut for GetWindowSize().x)
    igGetWindowWidth()
  end

  # arg: user_texture_id(ImTextureID), size(ImVec2), uv0(ImVec2), uv1(ImVec2), tint_col(ImVec4), border_col(ImVec4)
  # ret: void
  #
  # Widgets: Images
  # - Read about ImTextureID here: https://github.com/ocornut/imgui/wiki/Image-Loading-and-Displaying-Examples
  def self.Image(user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), tint_col = ImVec4.create(1,1,1,1), border_col = ImVec4.create(0,0,0,0))  # Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), tint_col = ImVec4(1, 1, 1, 1), border_col = ImVec4(0, 0, 0, 0)
    igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
  end

  # arg: str_id(const char*), user_texture_id(ImTextureID), size(ImVec2), uv0(ImVec2), uv1(ImVec2), bg_col(ImVec4), tint_col(ImVec4)
  # ret: bool
  def self.ImageButton(str_id, user_texture_id, size, uv0 = ImVec2.create(0,0), uv1 = ImVec2.create(1,1), bg_col = ImVec4.create(0,0,0,0), tint_col = ImVec4.create(1,1,1,1))  # Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), bg_col = ImVec4(0, 0, 0, 0), tint_col = ImVec4(1, 1, 1, 1)
    igImageButton(str_id, user_texture_id, size, uv0, uv1, bg_col, tint_col)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Indent(indent_w = 0.0)  # Implied indent_w = 0.0f
    igIndent(indent_w)
  end

  # arg: label(const char*), v(double*), step(double), step_fast(double), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputDouble(label, v, step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0)  # Implied step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0
    igInputDouble(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float*), step(float), step_fast(float), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat(label, v, step = 0.0, step_fast = 0.0, format = "%.3f", flags = 0)  # Implied step = 0.0f, step_fast = 0.0f, format = "%.3f", flags = 0
    igInputFloat(label, v, step, step_fast, format, flags)
  end

  # arg: label(const char*), v(float[2]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat2(label, v, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igInputFloat2(label, v, format, flags)
  end

  # arg: label(const char*), v(float[3]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat3(label, v, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igInputFloat3(label, v, format, flags)
  end

  # arg: label(const char*), v(float[4]), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputFloat4(label, v, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igInputFloat4(label, v, format, flags)
  end

  # arg: label(const char*), v(int*), step(int), step_fast(int), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputInt(label, v, step = 1, step_fast = 100, flags = 0)  # Implied step = 1, step_fast = 100, flags = 0
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
  def self.InputScalar(label, data_type, p_data, p_step = nil, p_step_fast = nil, format = nil, flags = 0)  # Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0
    igInputScalar(label, data_type, p_data, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_step(const void*), p_step_fast(const void*), format(const char*), flags(ImGuiInputTextFlags)
  # ret: bool
  def self.InputScalarN(label, data_type, p_data, components, p_step = nil, p_step_fast = nil, format = nil, flags = 0)  # Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0
    igInputScalarN(label, data_type, p_data, components, p_step, p_step_fast, format, flags)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  #
  # Widgets: Input with Keyboard
  # - If you want to use InputText() with std::string or any custom dynamic string type, see misc/cpp/imgui_stdlib.h and comments in imgui_demo.cpp.
  # - Most of the ImGuiInputTextFlags flags are only useful for InputText() and not for InputFloatX, InputIntX, InputDouble etc.
  def self.InputText(label, buf, buf_size, flags = 0, callback = nil, user_data = nil)  # Implied callback = NULL, user_data = NULL
    igInputText(label, buf, buf_size, flags, callback, user_data)
  end

  # arg: label(const char*), buf(char*), buf_size(size_t), size(ImVec2), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextMultiline(label, buf, buf_size, size = ImVec2.create(0,0), flags = 0, callback = nil, user_data = nil)  # Implied size = ImVec2(0, 0), flags = 0, callback = NULL, user_data = NULL
    igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)
  end

  # arg: label(const char*), hint(const char*), buf(char*), buf_size(size_t), flags(ImGuiInputTextFlags), callback(ImGuiInputTextCallback), user_data(void*)
  # ret: bool
  def self.InputTextWithHint(label, hint, buf, buf_size, flags = 0, callback = nil, user_data = nil)  # Implied callback = NULL, user_data = NULL
    igInputTextWithHint(label, hint, buf, buf_size, flags, callback, user_data)
  end

  # arg: str_id(const char*), size(ImVec2), flags(ImGuiButtonFlags)
  # ret: bool
  def self.InvisibleButton(str_id, size, flags = 0)  # flexible button behavior without the visuals, frequently useful to build custom behaviors using the public api (along with IsItemActive, IsItemHovered, etc.)
    igInvisibleButton(str_id, size, flags)
  end

  # ret: bool
  def self.IsAnyItemActive()  # is any item active?
    igIsAnyItemActive()
  end

  # ret: bool
  def self.IsAnyItemFocused()  # is any item focused?
    igIsAnyItemFocused()
  end

  # ret: bool
  def self.IsAnyItemHovered()  # is any item hovered?
    igIsAnyItemHovered()
  end

  # ret: bool
  def self.IsAnyMouseDown()  # [WILL OBSOLETE] is any mouse button held? This was designed for backends, but prefer having backend maintain a mask of held mouse buttons, because upcoming input queue system will make this invalid.
    igIsAnyMouseDown()
  end

  # ret: bool
  def self.IsItemActivated()  # was the last item just made active (item was previously inactive).
    igIsItemActivated()
  end

  # ret: bool
  def self.IsItemActive()  # is the last item active? (e.g. button being held, text field being edited. This will continuously return true while holding mouse button on an item. Items that don't interact will always return false)
    igIsItemActive()
  end

  # arg: mouse_button(ImGuiMouseButton)
  # ret: bool
  def self.IsItemClicked(mouse_button = 0)  # Implied mouse_button = 0
    igIsItemClicked(mouse_button)
  end

  # ret: bool
  def self.IsItemDeactivated()  # was the last item just made inactive (item was previously active). Useful for Undo/Redo patterns with widgets that require continuous editing.
    igIsItemDeactivated()
  end

  # ret: bool
  def self.IsItemDeactivatedAfterEdit()  # was the last item just made inactive and made a value change when it was active? (e.g. Slider/Drag moved). Useful for Undo/Redo patterns with widgets that require continuous editing. Note that you may get false positives (some widgets such as Combo()/ListBox()/Selectable() will return true even when clicking an already selected item).
    igIsItemDeactivatedAfterEdit()
  end

  # ret: bool
  def self.IsItemEdited()  # did the last item modify its underlying value this frame? or was pressed? This is generally the same as the "bool" return value of many widgets.
    igIsItemEdited()
  end

  # ret: bool
  def self.IsItemFocused()  # is the last item focused for keyboard/gamepad navigation?
    igIsItemFocused()
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  #
  # Item/Widgets Utilities and Query Functions
  # - Most of the functions are referring to the previous Item that has been submitted.
  # - See Demo Window under "Widgets->Querying Status" for an interactive visualization of most of those functions.
  def self.IsItemHovered(flags = 0)  # is the last item hovered? (and usable, aka not blocked by a popup, etc.). See ImGuiHoveredFlags for more options.
    igIsItemHovered(flags)
  end

  # ret: bool
  def self.IsItemToggledOpen()  # was the last item open state toggled? set by TreeNode().
    igIsItemToggledOpen()
  end

  # ret: bool
  def self.IsItemVisible()  # is the last item visible? (items may be out of sight because of clipping/scrolling)
    igIsItemVisible()
  end

  # arg: key(ImGuiKey)
  # ret: bool
  #
  # Inputs Utilities: Keyboard/Mouse/Gamepad
  # - the ImGuiKey enum contains all possible keyboard, mouse and gamepad inputs (e.g. ImGuiKey_A, ImGuiKey_MouseLeft, ImGuiKey_GamepadDpadUp...).
  # - before v1.87, we used ImGuiKey to carry native/user indices as defined by each backends. About use of those legacy ImGuiKey values:
  #  - without IMGUI_DISABLE_OBSOLETE_KEYIO (legacy support): you can still use your legacy native/user indices (< 512) according to how your backend/engine stored them in io.KeysDown[], but need to cast them to ImGuiKey.
  #  - with    IMGUI_DISABLE_OBSOLETE_KEYIO (this is the way forward): any use of ImGuiKey will assert with key < 512. GetKeyIndex() is pass-through and therefore deprecated (gone if IMGUI_DISABLE_OBSOLETE_KEYIO is defined).
  def self.IsKeyDown(key)  # is key being held.
    igIsKeyDown(key)
  end

  # arg: key(ImGuiKey), repeat(bool)
  # ret: bool
  def self.IsKeyPressed(key, repeat = true)  # Implied repeat = true
    igIsKeyPressed(key, repeat)
  end

  # arg: key(ImGuiKey)
  # ret: bool
  def self.IsKeyReleased(key)  # was key released (went from Down to !Down)?
    igIsKeyReleased(key)
  end

  # arg: button(ImGuiMouseButton), repeat(bool)
  # ret: bool
  def self.IsMouseClicked(button, repeat = false)  # Implied repeat = false
    igIsMouseClicked(button, repeat)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseDoubleClicked(button)  # did mouse button double-clicked? Same as GetMouseClickedCount() == 2. (note that a double-click will also report IsMouseClicked() == true)
    igIsMouseDoubleClicked(button)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  #
  # Inputs Utilities: Mouse specific
  # - To refer to a mouse button, you may use named enums in your code e.g. ImGuiMouseButton_Left, ImGuiMouseButton_Right.
  # - You can also use regular integer: it is forever guaranteed that 0=Left, 1=Right, 2=Middle.
  # - Dragging operations are only reported after mouse has moved a certain distance away from the initial clicking position (see 'lock_threshold' and 'io.MouseDraggingThreshold')
  def self.IsMouseDown(button)  # is mouse button held?
    igIsMouseDown(button)
  end

  # arg: button(ImGuiMouseButton), lock_threshold(float)
  # ret: bool
  def self.IsMouseDragging(button, lock_threshold = -1.0)  # is mouse dragging? (if lock_threshold < -1.0f, uses io.MouseDraggingThreshold)
    igIsMouseDragging(button, lock_threshold)
  end

  # arg: r_min(ImVec2), r_max(ImVec2), clip(bool)
  # ret: bool
  def self.IsMouseHoveringRect(r_min, r_max, clip = true)  # Implied clip = true
    igIsMouseHoveringRect(r_min, r_max, clip)
  end

  # arg: mouse_pos(const ImVec2*)
  # ret: bool
  def self.IsMousePosValid(mouse_pos = nil)  # by convention we use (-FLT_MAX,-FLT_MAX) to denote that there is no mouse available
    igIsMousePosValid(mouse_pos)
  end

  # arg: button(ImGuiMouseButton)
  # ret: bool
  def self.IsMouseReleased(button)  # did mouse button released? (went from Down to !Down)
    igIsMouseReleased(button)
  end

  # arg: str_id(const char*), flags(ImGuiPopupFlags)
  # ret: bool
  #
  # Popups: query functions
  #  - IsPopupOpen(): return true if the popup is open at the current BeginPopup() level of the popup stack.
  #  - IsPopupOpen() with ImGuiPopupFlags_AnyPopupId: return true if any popup is open at the current BeginPopup() level of the popup stack.
  #  - IsPopupOpen() with ImGuiPopupFlags_AnyPopupId + ImGuiPopupFlags_AnyPopupLevel: return true if any popup is open.
  def self.IsPopupOpen(str_id, flags = 0)  # return true if the popup is open.
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
  #
  # Windows Utilities
  # - 'current window' = the window we are appending into while inside a Begin()/End() block. 'next window' = next window we will Begin() into.
  def self.IsWindowAppearing()
    igIsWindowAppearing()
  end

  # ret: bool
  def self.IsWindowCollapsed()
    igIsWindowCollapsed()
  end

  # arg: flags(ImGuiFocusedFlags)
  # ret: bool
  def self.IsWindowFocused(flags = 0)  # is current window focused? or its root/child, depending on flags. see flags for options.
    igIsWindowFocused(flags)
  end

  # arg: flags(ImGuiHoveredFlags)
  # ret: bool
  def self.IsWindowHovered(flags = 0)  # is current window hovered (and typically: not blocked by a popup/modal)? see flags for options. NB: If you are trying to check whether your mouse should be dispatched to imgui or to your app, you should use the 'io.WantCaptureMouse' boolean for that! Please read the FAQ!
    igIsWindowHovered(flags)
  end

  # arg: label(const char*), fmt(const char*), ...(...)
  # ret: void
  def self.LabelText(label, fmt, *varargs)  # display text+label aligned the same way as value+label widgets
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
  #
  # Settings/.Ini Utilities
  # - The disk functions are automatically called if io.IniFilename != NULL (default is "imgui.ini").
  # - Set io.IniFilename to NULL to load/save manually. Read io.WantSaveIniSettings description about handling .ini saving manually.
  # - Important: default value "imgui.ini" is relative to current working dir! Most apps will want to lock this to an absolute path (e.g. same path as executables).
  def self.LoadIniSettingsFromDisk(ini_filename)  # call after CreateContext() and before the first call to NewFrame(). NewFrame() automatically calls LoadIniSettingsFromDisk(io.IniFilename).
    igLoadIniSettingsFromDisk(ini_filename)
  end

  # arg: ini_data(const char*), ini_size(size_t)
  # ret: void
  def self.LoadIniSettingsFromMemory(ini_data, ini_size = 0)  # call after CreateContext() and before the first call to NewFrame() to provide .ini data from your own data source.
    igLoadIniSettingsFromMemory(ini_data, ini_size)
  end

  # ret: void
  def self.LogButtons()  # helper to display buttons for logging to tty/file/clipboard
    igLogButtons()
  end

  # ret: void
  def self.LogFinish()  # stop logging (close file, etc.)
    igLogFinish()
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.LogText(fmt, *varargs)  # pass text data straight to log (without being displayed)
    igLogText(fmt, *varargs)
  end

  # arg: auto_open_depth(int)
  # ret: void
  def self.LogToClipboard(auto_open_depth = -1)  # start logging to OS clipboard
    igLogToClipboard(auto_open_depth)
  end

  # arg: auto_open_depth(int), filename(const char*)
  # ret: void
  def self.LogToFile(auto_open_depth = -1, filename = nil)  # start logging to file
    igLogToFile(auto_open_depth, filename)
  end

  # arg: auto_open_depth(int)
  # ret: void
  #
  # Logging/Capture
  # - All text output from the interface can be captured into tty/file/clipboard. By default, tree nodes are automatically opened during logging.
  def self.LogToTTY(auto_open_depth = -1)  # start logging to tty (stdout)
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
  def self.NewFrame()  # start a new Dear ImGui frame, you can submit any command from this point until Render()/EndFrame().
    igNewFrame()
  end

  # ret: void
  def self.NewLine()  # undo a SameLine() or force a new line when in a horizontal-layout context.
    igNewLine()
  end

  # ret: void
  def self.NextColumn()  # next column, defaults to current row or next row if the current row is finished
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
  def self.OpenPopupOnItemClick(str_id = nil, popup_flags = 1)  # helper to open popup when clicked on last item. Default to ImGuiPopupFlags_MouseButtonRight == 1. (note: actually triggers on the mouse _released_ event to be consistent with popup behaviors)
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
  def self.PopID()  # pop from the ID stack.
    igPopID()
  end

  # ret: void
  def self.PopItemWidth()
    igPopItemWidth()
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleColor(count = 1)  # Implied count = 1
    igPopStyleColor(count)
  end

  # arg: count(int)
  # ret: void
  def self.PopStyleVar(count = 1)  # Implied count = 1
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
  def self.PushAllowKeyboardFocus(allow_keyboard_focus)  # == tab stop enable. Allow focusing using TAB/Shift-TAB, enabled by default but you can disable it for certain widgets
    igPushAllowKeyboardFocus(allow_keyboard_focus)
  end

  # arg: repeat(bool)
  # ret: void
  def self.PushButtonRepeat(repeat)  # in 'repeat' mode, Button*() functions return repeated true in a typematic manner (using io.KeyRepeatDelay/io.KeyRepeatRate setting). Note that you can call IsItemActive() after any Button() to tell if the button is held in the current frame.
    igPushButtonRepeat(repeat)
  end

  # arg: clip_rect_min(ImVec2), clip_rect_max(ImVec2), intersect_with_current_clip_rect(bool)
  # ret: void
  #
  # Clipping
  # - Mouse hovering is affected by ImGui::PushClipRect() calls, unlike direct calls to ImDrawList::PushClipRect() which are render only.
  def self.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
    igPushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
  end

  # arg: font(ImFont*)
  # ret: void
  #
  # Parameters stacks (shared)
  def self.PushFont(font)  # use NULL as a shortcut to push default font
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
  #
  # Parameters stacks (current window)
  def self.PushItemWidth(item_width)  # push width of items for common large "item+label" widgets. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side).
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
  def self.PushTextWrapPos(wrap_local_pos_x = 0.0)  # push word-wrapping position for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column); > 0.0f: wrap at 'wrap_pos_x' position in window local space
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
  def self.Render()  # ends the Dear ImGui frame, finalize the draw data. You can then get call GetDrawData().
    igRender()
  end

  # arg: button(ImGuiMouseButton)
  # ret: void
  def self.ResetMouseDragDelta(button = 0)  # Implied button = 0
    igResetMouseDragDelta(button)
  end

  # arg: offset_from_start_x(float), spacing(float)
  # ret: void
  def self.SameLine(offset_from_start_x = 0.0, spacing = -1.0)  # Implied offset_from_start_x = 0.0f, spacing = -1.0f
    igSameLine(offset_from_start_x, spacing)
  end

  # arg: ini_filename(const char*)
  # ret: void
  def self.SaveIniSettingsToDisk(ini_filename)  # this is automatically called (if io.IniFilename is not empty) a few seconds after any modification that should be reflected in the .ini file (and also by DestroyContext).
    igSaveIniSettingsToDisk(ini_filename)
  end

  # arg: out_ini_size(size_t*)
  # ret: pointer
  def self.SaveIniSettingsToMemory(out_ini_size = nil)  # return a zero-terminated string with the .ini data which you can save by your own mean. call when io.WantSaveIniSettings is set, then save data by your own mean and clear io.WantSaveIniSettings.
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
  #
  # Cursor / Layout
  # - By "cursor" we mean the current output position.
  # - The typical widget behavior is to output themselves at the current cursor position, then move the cursor one line down.
  # - You can call SameLine() between widgets to undo the last carriage return and output at the right of the preceding widget.
  # - Attention! We currently have inconsistencies between window-local and absolute positions we will aim to fix with future API:
  #    Window-local coordinates:   SameLine(), GetCursorPos(), SetCursorPos(), GetCursorStartPos(), GetContentRegionMax(), GetWindowContentRegion*(), PushTextWrapPos()
  #    Absolute coordinate:        GetCursorScreenPos(), SetCursorScreenPos(), all ImDrawList:: functions.
  def self.Separator()  # separator, generally horizontal. inside a menu bar or in horizontal layout mode, this becomes a vertical separator.
    igSeparator()
  end

  # arg: alloc_func(ImGuiMemAllocFunc), free_func(ImGuiMemFreeFunc), user_data(void*)
  # ret: void
  #
  # Memory Allocators
  # - Those functions are not reliant on the current context.
  # - DLL users: heaps and globals are not shared across DLL boundaries! You will need to call SetCurrentContext() + SetAllocatorFunctions()
  #   for each static/DLL boundary you are calling from. Read "Context and Memory Allocators" section of imgui.cpp for more details.
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
  def self.SetColorEditOptions(flags)  # initialize current options (generally on application startup) if you want to select a default format, picker type, etc. User will be able to change many settings, unless you pass the _NoOptions flag to your calls.
    igSetColorEditOptions(flags)
  end

  # arg: column_index(int), offset_x(float)
  # ret: void
  def self.SetColumnOffset(column_index, offset_x)  # set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column
    igSetColumnOffset(column_index, offset_x)
  end

  # arg: column_index(int), width(float)
  # ret: void
  def self.SetColumnWidth(column_index, width)  # set column width (in pixels). pass -1 to use current column
    igSetColumnWidth(column_index, width)
  end

  # arg: ctx(ImGuiContext*)
  # ret: void
  def self.SetCurrentContext(ctx)
    igSetCurrentContext(ctx)
  end

  # arg: local_pos(ImVec2)
  # ret: void
  def self.SetCursorPos(local_pos)  #    are using the main, absolute coordinate system.
    igSetCursorPos(local_pos)
  end

  # arg: local_x(float)
  # ret: void
  def self.SetCursorPosX(local_x)  #    GetWindowPos() + GetCursorPos() == GetCursorScreenPos() etc.)
    igSetCursorPosX(local_x)
  end

  # arg: local_y(float)
  # ret: void
  def self.SetCursorPosY(local_y)  #
    igSetCursorPosY(local_y)
  end

  # arg: pos(ImVec2)
  # ret: void
  def self.SetCursorScreenPos(pos)  # cursor position in absolute coordinates
    igSetCursorScreenPos(pos)
  end

  # arg: type(const char*), data(const void*), sz(size_t), cond(ImGuiCond)
  # ret: bool
  def self.SetDragDropPayload(type, data, sz, cond = 0)  # type is a user defined string of maximum 32 characters. Strings starting with '_' are reserved for dear imgui internal types. Data is copied and held by imgui. Return true when payload has been accepted.
    igSetDragDropPayload(type, data, sz, cond)
  end

  # ret: void
  def self.SetItemAllowOverlap()  # allow last item to be overlapped by a subsequent item. sometimes useful with invisible buttons, selectables, etc. to catch unused area.
    igSetItemAllowOverlap()
  end

  # ret: void
  #
  # Focus, Activation
  # - Prefer using "SetItemDefaultFocus()" over "if (IsWindowAppearing()) SetScrollHereY()" when applicable to signify "this is the default item"
  def self.SetItemDefaultFocus()  # make last item the default focused item of a window.
    igSetItemDefaultFocus()
  end

  # arg: offset(int)
  # ret: void
  def self.SetKeyboardFocusHere(offset = 0)  # Implied offset = 0
    igSetKeyboardFocusHere(offset)
  end

  # arg: cursor_type(ImGuiMouseCursor)
  # ret: void
  def self.SetMouseCursor(cursor_type)  # set desired mouse cursor shape
    igSetMouseCursor(cursor_type)
  end

  # arg: want_capture_keyboard(bool)
  # ret: void
  def self.SetNextFrameWantCaptureKeyboard(want_capture_keyboard)  # Override io.WantCaptureKeyboard flag next frame (said flag is left for your application to handle, typically when true it instructs your app to ignore inputs). e.g. force capture keyboard when your widget is being hovered. This is equivalent to setting "io.WantCaptureKeyboard = want_capture_keyboard"; after the next NewFrame() call.
    igSetNextFrameWantCaptureKeyboard(want_capture_keyboard)
  end

  # arg: want_capture_mouse(bool)
  # ret: void
  def self.SetNextFrameWantCaptureMouse(want_capture_mouse)  # Override io.WantCaptureMouse flag next frame (said flag is left for your application to handle, typical when true it instucts your app to ignore inputs). This is equivalent to setting "io.WantCaptureMouse = want_capture_mouse;" after the next NewFrame() call.
    igSetNextFrameWantCaptureMouse(want_capture_mouse)
  end

  # arg: is_open(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextItemOpen(is_open, cond = 0)  # set next TreeNode/CollapsingHeader open state.
    igSetNextItemOpen(is_open, cond)
  end

  # arg: item_width(float)
  # ret: void
  def self.SetNextItemWidth(item_width)  # set width of the _next_ common large "item+label" widget. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side)
    igSetNextItemWidth(item_width)
  end

  # arg: alpha(float)
  # ret: void
  def self.SetNextWindowBgAlpha(alpha)  # set next window background color alpha. helper to easily override the Alpha component of ImGuiCol_WindowBg/ChildBg/PopupBg. you may also use ImGuiWindowFlags_NoBackground.
    igSetNextWindowBgAlpha(alpha)
  end

  # arg: collapsed(bool), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowCollapsed(collapsed, cond = 0)  # set next window collapsed state. call before Begin()
    igSetNextWindowCollapsed(collapsed, cond)
  end

  # arg: size(ImVec2)
  # ret: void
  def self.SetNextWindowContentSize(size)  # set next window content size (~ scrollable client area, which enforce the range of scrollbars). Not including window decorations (title bar, menu bar, etc.) nor WindowPadding. set an axis to 0.0f to leave it automatic. call before Begin()
    igSetNextWindowContentSize(size)
  end

  # ret: void
  def self.SetNextWindowFocus()  # set next window to be focused / top-most. call before Begin()
    igSetNextWindowFocus()
  end

  # arg: pos(ImVec2), cond(ImGuiCond), pivot(ImVec2)
  # ret: void
  #
  # Window manipulation
  # - Prefer using SetNextXXX functions (before Begin) rather that SetXXX functions (after Begin).
  def self.SetNextWindowPos(pos, cond = 0, pivot = ImVec2.create(0,0))  # Implied pivot = ImVec2(0, 0)
    igSetNextWindowPos(pos, cond, pivot)
  end

  # arg: scroll(ImVec2)
  # ret: void
  def self.SetNextWindowScroll(scroll)  # set next window scrolling value (use < 0.0f to not affect a given axis).
    igSetNextWindowScroll(scroll)
  end

  # arg: size(ImVec2), cond(ImGuiCond)
  # ret: void
  def self.SetNextWindowSize(size, cond = 0)  # set next window size. set axis to 0.0f to force an auto-fit on this axis. call before Begin()
    igSetNextWindowSize(size, cond)
  end

  # arg: size_min(ImVec2), size_max(ImVec2), custom_callback(ImGuiSizeCallback), custom_callback_data(void*)
  # ret: void
  def self.SetNextWindowSizeConstraints(size_min, size_max, custom_callback = nil, custom_callback_data = nil)  # set next window size limits. use -1,-1 on either X/Y axis to preserve the current size. Sizes will be rounded down. Use callback to apply non-trivial programmatic constraints.
    igSetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data)
  end

  # arg: local_x(float), center_x_ratio(float)
  # ret: void
  def self.SetScrollFromPosX(local_x, center_x_ratio = 0.5)  # adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position.
    igSetScrollFromPosX(local_x, center_x_ratio)
  end

  # arg: local_y(float), center_y_ratio(float)
  # ret: void
  def self.SetScrollFromPosY(local_y, center_y_ratio = 0.5)  # adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position.
    igSetScrollFromPosY(local_y, center_y_ratio)
  end

  # arg: center_x_ratio(float)
  # ret: void
  def self.SetScrollHereX(center_x_ratio = 0.5)  # adjust scrolling amount to make current cursor position visible. center_x_ratio=0.0: left, 0.5: center, 1.0: right. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead.
    igSetScrollHereX(center_x_ratio)
  end

  # arg: center_y_ratio(float)
  # ret: void
  def self.SetScrollHereY(center_y_ratio = 0.5)  # adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead.
    igSetScrollHereY(center_y_ratio)
  end

  # arg: scroll_x(float)
  # ret: void
  def self.SetScrollX(scroll_x)  # set scrolling amount [0 .. GetScrollMaxX()]
    igSetScrollX(scroll_x)
  end

  # arg: scroll_y(float)
  # ret: void
  def self.SetScrollY(scroll_y)  # set scrolling amount [0 .. GetScrollMaxY()]
    igSetScrollY(scroll_y)
  end

  # arg: storage(ImGuiStorage*)
  # ret: void
  def self.SetStateStorage(storage)  # replace current window storage with our own (if you want to manipulate it yourself, typically clear subsection of it)
    igSetStateStorage(storage)
  end

  # arg: tab_or_docked_window_label(const char*)
  # ret: void
  def self.SetTabItemClosed(tab_or_docked_window_label)  # notify TabBar or Docking system of a closed tab/window ahead (useful to reduce visual flicker on reorderable tab bars). For tab-bar: call after BeginTabBar() and before Tab submissions. Otherwise call with a window name.
    igSetTabItemClosed(tab_or_docked_window_label)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.SetTooltip(fmt, *varargs)  # set a text-only tooltip, typically use with ImGui::IsItemHovered(). override any previous call to SetTooltip().
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
  def self.SetWindowFontScale(scale)  # [OBSOLETE] set font scale. Adjust IO.FontGlobalScale if you want to scale all windows. This is an old API! For correct scaling, prefer to reload font + rebuild ImFontAtlas + call style.ScaleAllSizes().
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
  def self.ShowAboutWindow(p_open = nil)  # create About window. display Dear ImGui version, credits and build/system information.
    igShowAboutWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowDebugLogWindow(p_open = nil)  # create Debug Log window. display a simplified log of important dear imgui events.
    igShowDebugLogWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  #
  # Demo, Debug, Information
  def self.ShowDemoWindow(p_open = nil)  # create Demo window. demonstrate most ImGui features. call this to learn about the library! try to make it always available in your application!
    igShowDemoWindow(p_open)
  end

  # arg: label(const char*)
  # ret: void
  def self.ShowFontSelector(label)  # add font selector block (not a window), essentially a combo listing the loaded fonts.
    igShowFontSelector(label)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowMetricsWindow(p_open = nil)  # create Metrics/Debugger window. display Dear ImGui internals: windows, draw commands, various internal state, etc.
    igShowMetricsWindow(p_open)
  end

  # arg: p_open(bool*)
  # ret: void
  def self.ShowStackToolWindow(p_open = nil)  # create Stack Tool window. hover items with mouse to query information about the source of their unique ID.
    igShowStackToolWindow(p_open)
  end

  # arg: ref(ImGuiStyle*)
  # ret: void
  def self.ShowStyleEditor(ref = nil)  # add style editor block (not a window). you can pass in a reference ImGuiStyle structure to compare to, revert to and save to (else it uses the default style)
    igShowStyleEditor(ref)
  end

  # arg: label(const char*)
  # ret: bool
  def self.ShowStyleSelector(label)  # add style selector block (not a window), essentially a combo listing the default styles.
    igShowStyleSelector(label)
  end

  # ret: void
  def self.ShowUserGuide()  # add basic help/info block (not a window): how to manipulate ImGui as an end-user (mouse/keyboard controls).
    igShowUserGuide()
  end

  # arg: label(const char*), v_rad(float*), v_degrees_min(float), v_degrees_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderAngle(label, v_rad, v_degrees_min = -360.0, v_degrees_max = +360.0, format = "%.0f deg", flags = 0)  # Implied v_degrees_min = -360.0f, v_degrees_max = +360.0f, format = "%.0f deg", flags = 0
    igSliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
  end

  # arg: label(const char*), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  #
  # Widgets: Regular Sliders
  # - CTRL+Click on any slider to turn them into an input box. Manually input values aren't clamped by default and can go off-bounds. Use ImGuiSliderFlags_AlwaysClamp to always clamp.
  # - Adjust format string to decorate the value with a prefix, a suffix, or adapt the editing and display precision e.g. "%.3f" -> 1.234; "%5.2f secs" -> 01.23 secs; "Biscuit: %.0f" -> Biscuit: 1; etc.
  # - Format string may also be set to NULL or use the default format ("%f" or "%d").
  # - Legacy: Pre-1.78 there are SliderXXX() function signatures that take a final `float power=1.0f' argument instead of the `ImGuiSliderFlags flags=0' argument.
  #   If you get a warning converting a float to ImGuiSliderFlags, read https://github.com/ocornut/imgui/issues/3361
  def self.SliderFloat(label, v, v_min, v_max, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igSliderFloat(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[2]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat2(label, v, v_min, v_max, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igSliderFloat2(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[3]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat3(label, v, v_min, v_max, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igSliderFloat3(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(float[4]), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderFloat4(label, v, v_min, v_max, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igSliderFloat4(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt(label, v, v_min, v_max, format = "%d", flags = 0)  # Implied format = "%d", flags = 0
    igSliderInt(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[2]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt2(label, v, v_min, v_max, format = "%d", flags = 0)  # Implied format = "%d", flags = 0
    igSliderInt2(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[3]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt3(label, v, v_min, v_max, format = "%d", flags = 0)  # Implied format = "%d", flags = 0
    igSliderInt3(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), v(int[4]), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderInt4(label, v, v_min, v_max, format = "%d", flags = 0)  # Implied format = "%d", flags = 0
    igSliderInt4(label, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalar(label, data_type, p_data, p_min, p_max, format = nil, flags = 0)  # Implied format = NULL, flags = 0
    igSliderScalar(label, data_type, p_data, p_min, p_max, format, flags)
  end

  # arg: label(const char*), data_type(ImGuiDataType), p_data(void*), components(int), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.SliderScalarN(label, data_type, p_data, components, p_min, p_max, format = nil, flags = 0)  # Implied format = NULL, flags = 0
    igSliderScalarN(label, data_type, p_data, components, p_min, p_max, format, flags)
  end

  # arg: label(const char*)
  # ret: bool
  def self.SmallButton(label)  # button with FramePadding=(0,0) to easily embed within text
    igSmallButton(label)
  end

  # ret: void
  def self.Spacing()  # add vertical spacing.
    igSpacing()
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsClassic(dst = nil)  # classic imgui style
    igStyleColorsClassic(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  #
  # Styles
  def self.StyleColorsDark(dst = nil)  # new, recommended style (default)
    igStyleColorsDark(dst)
  end

  # arg: dst(ImGuiStyle*)
  # ret: void
  def self.StyleColorsLight(dst = nil)  # best used with borders and a custom, thicker font
    igStyleColorsLight(dst)
  end

  # arg: label(const char*), flags(ImGuiTabItemFlags)
  # ret: bool
  def self.TabItemButton(label, flags = 0)  # create a Tab behaving like a button. return true when clicked. cannot be selected in the tab bar.
    igTabItemButton(label, flags)
  end

  # ret: int
  def self.TableGetColumnCount()  # return number of columns (value passed to BeginTable)
    igTableGetColumnCount()
  end

  # arg: column_n(int)
  # ret: int
  def self.TableGetColumnFlags(column_n = -1)  # return column flags so you can query their Enabled/Visible/Sorted/Hovered status flags. Pass -1 to use current column.
    igTableGetColumnFlags(column_n)
  end

  # ret: int
  def self.TableGetColumnIndex()  # return current column index.
    igTableGetColumnIndex()
  end

  # arg: column_n(int)
  # ret: pointer
  def self.TableGetColumnName(column_n = -1)  # return "" if column didn't have a name declared by TableSetupColumn(). Pass -1 to use current column.
    igTableGetColumnName(column_n)
  end

  # ret: int
  def self.TableGetRowIndex()  # return current row index.
    igTableGetRowIndex()
  end

  # ret: pointer
  #
  # Tables: Sorting & Miscellaneous functions
  # - Sorting: call TableGetSortSpecs() to retrieve latest sort specs for the table. NULL when not sorting.
  #   When 'sort_specs->SpecsDirty == true' you should sort your data. It will be true when sorting specs have
  #   changed since last call, or the first time. Make sure to set 'SpecsDirty = false' after sorting,
  #   else you may wastefully sort your data every frame!
  # - Functions args 'int column_n' treat the default value of -1 as the same as passing the current column index.
  def self.TableGetSortSpecs()  # get latest sort specs for the table (NULL if not sorting).  Lifetime: don't hold on this pointer over multiple frames or past any subsequent call to BeginTable().
    igTableGetSortSpecs()
  end

  # arg: label(const char*)
  # ret: void
  def self.TableHeader(label)  # submit one header cell manually (rarely used)
    igTableHeader(label)
  end

  # ret: void
  def self.TableHeadersRow()  # submit all headers cells based on data provided to TableSetupColumn() + submit context menu
    igTableHeadersRow()
  end

  # ret: bool
  def self.TableNextColumn()  # append into the next column (or first column of next row if currently in last column). Return true when column is visible.
    igTableNextColumn()
  end

  # arg: row_flags(ImGuiTableRowFlags), min_row_height(float)
  # ret: void
  def self.TableNextRow(row_flags = 0, min_row_height = 0.0)  # Implied row_flags = 0, min_row_height = 0.0f
    igTableNextRow(row_flags, min_row_height)
  end

  # arg: target(ImGuiTableBgTarget), color(ImU32), column_n(int)
  # ret: void
  def self.TableSetBgColor(target, color, column_n = -1)  # change the color of a cell, row, or column. See ImGuiTableBgTarget_ flags for details.
    igTableSetBgColor(target, color, column_n)
  end

  # arg: column_n(int), v(bool)
  # ret: void
  def self.TableSetColumnEnabled(column_n, v)  # change user accessible enabled/disabled state of a column. Set to false to hide the column. User can use the context menu to change this themselves (right-click in headers, or right-click in columns body with ImGuiTableFlags_ContextMenuInBody)
    igTableSetColumnEnabled(column_n, v)
  end

  # arg: column_n(int)
  # ret: bool
  def self.TableSetColumnIndex(column_n)  # append into the specified column. Return true when column is visible.
    igTableSetColumnIndex(column_n)
  end

  # arg: label(const char*), flags(ImGuiTableColumnFlags), init_width_or_weight(float), user_id(ImGuiID)
  # ret: void
  #
  # Tables: Headers & Columns declaration
  # - Use TableSetupColumn() to specify label, resizing policy, default width/weight, id, various other flags etc.
  # - Use TableHeadersRow() to create a header row and automatically submit a TableHeader() for each column.
  #   Headers are required to perform: reordering, sorting, and opening the context menu.
  #   The context menu can also be made available in columns body using ImGuiTableFlags_ContextMenuInBody.
  # - You may manually submit headers using TableNextRow() + TableHeader() calls, but this is only useful in
  #   some advanced use cases (e.g. adding custom widgets in header row).
  # - Use TableSetupScrollFreeze() to lock columns/rows so they stay visible when scrolled.
  def self.TableSetupColumn(label, flags = 0, init_width_or_weight = 0.0, user_id = 0)  # Implied init_width_or_weight = 0.0f, user_id = 0
    igTableSetupColumn(label, flags, init_width_or_weight, user_id)
  end

  # arg: cols(int), rows(int)
  # ret: void
  def self.TableSetupScrollFreeze(cols, rows)  # lock columns/rows so they stay visible when scrolled.
    igTableSetupScrollFreeze(cols, rows)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.Text(fmt, *varargs)  # formatted text
    igText(fmt, *varargs)
  end

  # arg: col(ImVec4), fmt(const char*), ...(...)
  # ret: void
  def self.TextColored(col, fmt, *varargs)  # shortcut for PushStyleColor(ImGuiCol_Text, col); Text(fmt, ...); PopStyleColor();
    igTextColored(col, fmt, *varargs)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.TextDisabled(fmt, *varargs)  # shortcut for PushStyleColor(ImGuiCol_Text, style.Colors[ImGuiCol_TextDisabled]); Text(fmt, ...); PopStyleColor();
    igTextDisabled(fmt, *varargs)
  end

  # arg: text(const char*), text_end(const char*)
  # ret: void
  #
  # Widgets: Text
  def self.TextUnformatted(text, text_end = nil)  # Implied text_end = NULL
    igTextUnformatted(text, text_end)
  end

  # arg: fmt(const char*), ...(...)
  # ret: void
  def self.TextWrapped(fmt, *varargs)  # shortcut for PushTextWrapPos(0.0f); Text(fmt, ...); PopTextWrapPos();. Note that this won't work on an auto-resizing window if there's no other widgets to extend the window width, yoy may need to set a size using SetNextWindowSize().
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
  def self.TreePop()  # ~ Unindent()+PopId()
    igTreePop()
  end

  # arg: str_id(const char*)
  # ret: void
  def self.TreePush_Str(str_id)
    igTreePush_Str(str_id)
  end

  # arg: ptr_id(const void*)
  # ret: void
  def self.TreePush_Ptr(ptr_id)
    igTreePush_Ptr(ptr_id)
  end

  # arg: indent_w(float)
  # ret: void
  def self.Unindent(indent_w = 0.0)  # Implied indent_w = 0.0f
    igUnindent(indent_w)
  end

  # arg: label(const char*), size(ImVec2), v(float*), v_min(float), v_max(float), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderFloat(label, size, v, v_min, v_max, format = "%.3f", flags = 0)  # Implied format = "%.3f", flags = 0
    igVSliderFloat(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), v(int*), v_min(int), v_max(int), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderInt(label, size, v, v_min, v_max, format = "%d", flags = 0)  # Implied format = "%d", flags = 0
    igVSliderInt(label, size, v, v_min, v_max, format, flags)
  end

  # arg: label(const char*), size(ImVec2), data_type(ImGuiDataType), p_data(void*), p_min(const void*), p_max(const void*), format(const char*), flags(ImGuiSliderFlags)
  # ret: bool
  def self.VSliderScalar(label, size, data_type, p_data, p_min, p_max, format = nil, flags = 0)  # Implied format = NULL, flags = 0
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
