# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui

require 'ffi'

# ImNodes::StyleColor
ImNodesStyleColor_ColCanvasLines = 0
ImNodesStyleColor_ColNodeBg = 1
ImNodesStyleColor_ColNodeActiveBg = 2
ImNodesStyleColor_ColNodeBorder = 3
ImNodesStyleColor_ColConnection = 4
ImNodesStyleColor_ColConnectionActive = 5
ImNodesStyleColor_ColSelectBg = 6
ImNodesStyleColor_ColSelectBorder = 7
ImNodesStyleColor_ColMax = 8

# ImNodesStyleVar
ImNodesStyleVar_GridSpacing = 0        # float
ImNodesStyleVar_CurveThickness = 1     # float
ImNodesStyleVar_CurveStrength = 2      # float
ImNodesStyleVar_SlotRadius = 3         # float
ImNodesStyleVar_NodeRounding = 4       # float
ImNodesStyleVar_NodeSpacing = 5        # ImVec2
ImNodesStyleVar_ItemSpacing = 6        # ImVec2
ImNodesStyleVar_COUNT = 7

# ImNodesStyleCol
ImNodesStyleCol_GridLines = 0
ImNodesStyleCol_NodeBodyBg = 1
ImNodesStyleCol_NodeBodyBgHovered = 2
ImNodesStyleCol_NodeBodyBgActive = 3
ImNodesStyleCol_NodeBorder = 4
ImNodesStyleCol_Connection = 5
ImNodesStyleCol_ConnectionActive = 6
ImNodesStyleCol_SelectBg = 7
ImNodesStyleCol_SelectBorder = 8
ImNodesStyleCol_NodeTitleBarBg = 9
ImNodesStyleCol_NodeTitleBarBgHovered = 10
ImNodesStyleCol_NodeTitleBarBgActive = 11
ImNodesStyleCol_COUNT = 12

module ImNodes

  extend FFI::Library

  @@imnodes_import_done = false

  class CanvasStyle < FFI::Struct
    layout(
      # Thickness of curves that connect slots together.
      :CurveThickness, :float,
      # Indent connection into slot widget a little. Useful when slot content covers connection end with some kind
      # of icon (like a circle) and then no seam between icon and connection end is visible.
      :ConnectionIndent, :float,
      :GridSpacing, :float,
      :CurveStrength, :float,
      :NodeRounding, :float,
      :NodeSpacing, ImVec2.by_value
    )
  end

  class CanvasState < FFI::Struct
    layout(
      # Current zoom of canvas.
      :Zoom, :float,
      # Current scroll offset of canvas.
      :Offset, ImVec2.by_value,
      # Colors used to style elements of this canvas.
      :Colors, [ImColor.by_value, ImNodesStyleColor_ColMax],
      # Style parameters
      :Style, CanvasStyle.by_value,
      # Implementation detail.
      :_Impl, :pointer
    )

    def self.create()
      return CanvasState.new(ImNodesCanvasStateCtor())
    end

    def destroy()
      ImNodesCanvasStateDtor(self)
    end
  end

  class SlotInfo < FFI::Struct
    layout(
      :title, :pointer,
      :kind, :int
    )

    def self.create(title, kind)
      instance = SlotInfo.new
      instance[:title] = FFI::MemoryPointer.from_string(title)
      instance[:kind] = kind
      return instance
    end
  end

  def self.load_lib(libpath = './imnodes.dylib', output_error = false)
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols(output_error) unless @@imnodes_import_done
  end

  def self.import_symbols(output_error = false)

    symbols = [
      # name, func, args, returns
      [:CanvasStateCtor, :ImNodesCanvasStateCtor, [], :pointer],
      [:CanvasStateDtor, :ImNodesCanvasStateDtor, [:pointer], :void],
      [:BeginCanvas, :ImNodesBeginCanvas, [:pointer], :void],
      [:EndCanvas, :ImNodesEndCanvas, [], :void],
      [:BeginNode, :ImNodesBeginNode, [:pointer, :pointer, :pointer], :bool],
      [:EndNode, :ImNodesEndNode, [], :void],
      [:IsNodeHovered, :ImNodesIsNodeHovered, [], :bool],
      [:AutoPositionNode, :ImNodesAutoPositionNode, [:pointer], :void],
      [:GetNewConnection, :ImNodesGetNewConnection, [:pointer, :pointer, :pointer, :pointer], :bool],
      [:GetPendingConnection, :ImNodesGetPendingConnection, [:pointer, :pointer, :pointer], :bool],
      [:Connection, :ImNodesConnection, [:pointer, :pointer, :pointer, :pointer], :bool],
      [:GetCurrentCanvas, :ImNodesGetCurrentCanvas, [], :pointer],
      [:InputSlotKind, :ImNodesInputSlotKind, [:int], :int],
      [:OutputSlotKind, :ImNodesOutputSlotKind, [:int], :int],
      [:IsInputSlotKind, :ImNodesIsInputSlotKind, [:int], :bool],
      [:IsOutputSlotKind, :ImNodesIsOutputSlotKind, [:int], :bool],
      [:BeginSlot, :ImNodesBeginSlot, [:pointer, :int], :bool],
      [:BeginInputSlot, :ImNodesBeginInputSlot, [:pointer, :int], :bool],
      [:BeginOutputSlot, :ImNodesBeginOutputSlot, [:pointer, :int], :bool],
      [:EndSlot, :ImNodesEndSlot, [], :void],
      [:IsSlotCurveHovered, :ImNodesIsSlotCurveHovered, [], :bool],
      [:IsConnectingCompatibleSlot, :ImNodesIsConnectingCompatibleSlot, [], :bool],
      [:EzCreateContext, :ImNodesEzCreateContext, [], :pointer],
      [:EzFreeContext, :ImNodesEzFreeContext, [:pointer], :void],
      [:EzSetContext, :ImNodesEzSetContext, [:pointer], :void],
      [:EzGetState, :ImNodesEzGetState, [], :pointer],
      [:EzBeginCanvas, :ImNodesEzBeginCanvas, [], :void],
      [:EzEndCanvas, :ImNodesEzEndCanvas, [], :void],
      [:EzBeginNode, :ImNodesEzBeginNode, [:pointer, :pointer, :pointer, :pointer], :bool],
      [:EzEndNode, :ImNodesEzEndNode, [], :void],
      [:EzInputSlots, :ImNodesEzInputSlots, [:pointer, :int], :void],
      [:EzOutputSlots, :ImNodesEzOutputSlots, [:pointer, :int], :void],
      [:EzConnection, :ImNodesEzConnection, [:pointer, :pointer, :pointer, :pointer], :bool],
      [:EzPushStyleVarFloat, :ImNodesEzPushStyleVarFloat, [:int, :float], :void],
      [:EzPushStyleVarVec2, :ImNodesEzPushStyleVarVec2, [:int, :pointer], :void],
      [:EzPopStyleVar, :ImNodesEzPopStyleVar, [:int], :void],
      [:EzPushStyleColorU32, :ImNodesEzPushStyleColorU32, [:int, :uint], :void],
      [:EzPushStyleColorVec4, :ImNodesEzPushStyleColorVec4, [:int, :pointer], :void],
      [:EzPopStyleColor, :ImNodesEzPopStyleColor, [:int], :void],
    ]

    symbols.each do |sym|
      begin
        attach_function *sym
      rescue FFI::NotFoundError
        $stderr.puts("[Warning] Failed to import #{sym}.\n") if output_error
      end
    end

  end # self.import_symbols

end # module ImNodes
