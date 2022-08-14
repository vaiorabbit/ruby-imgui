# coding: utf-8
require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative 'util/setup_sdl2_dll'

WINDOW_W = 1280
WINDOW_H = 720

$nodes = []

class Connection
  attr_reader :input_node_ptr, :input_slot_ptr, :output_node_ptr, :output_slot_ptr

  def initialize
    @input_node_ptr = FFI::MemoryPointer.new(:pointer, 1)
    @input_slot_ptr = FFI::MemoryPointer.new(:pointer, 1)
    @output_node_ptr = FFI::MemoryPointer.new(:pointer, 1)
    @output_slot_ptr = FFI::MemoryPointer.new(:pointer, 1)
  end

  def input_node = @input_node_ptr.read_pointer;
  def input_slot = @input_slot_ptr.read_pointer;
  def output_node = @output_node_ptr.read_pointer;
  def output_slot = @output_slot_ptr.read_pointer;

  def ==(other)
    return @input_node_ptr.read_pointer == other.input_node_ptr.read_pointer &&
      @input_slot_ptr.read_pointer == other.input_slot_ptr.read_pointer &&
      @output_node_ptr.read_pointer == other.output_node_ptr.read_pointer &&
      @output_slot_ptr.read_pointer == other.output_slot_ptr.read_pointer
  end

  def get_nodes
    input_node = $nodes.find {|n| n.id == @input_node_ptr.read_pointer}
    output_node = $nodes.find {|n| n.id == @output_node_ptr.read_pointer}
    return input_node, output_node
  end
end

NodeSlotPosition = 1
NodeSlotRotation = 2
NodeSlotMatrix = 3

class MyNode
  attr_reader :title, :id, :selected, :pos, :connections, :input_slots, :output_slots

  def initialize(title, input_slots, output_slots)
    @title = title
    @id = FFI::MemoryPointer.from_string(@title)
    @selected = FFI::MemoryPointer.new(:bool, 1)
    @pos = ImVec2.create(0, 0)
    @connections = [] # array of Connection
    @input_slots = input_slots # array of ImNodesEzSlotInfo
    @output_slots = output_slots # array of ImNodesEzSlotInfo
  end

  def delete_connection(connection)
    @connections.delete_if {|c| c == connection}
  end

  def is_selected?
    @selected.read(FFI::NativeType::BOOL)
  end

  # Make on-memory data suitable for ImNodes::EzInputSlots from @input_slots
  def input_slots_memory
    memory = FFI::MemoryPointer.new(ImNodes::SlotInfo, @input_slots.length) # [TODO] cache
    @input_slots.length.times do |i|
      si = ImNodes::SlotInfo.new(memory + i * ImNodes::SlotInfo.size)
      si[:title] = @input_slots[i][:title]
      si[:kind] = @input_slots[i][:kind]
    end
    memory
  end

  # Make on-memory data suitable for ImNodes::EzOutputSlots from @output_slots
  def output_slots_memory
    memory = FFI::MemoryPointer.new(ImNodes::SlotInfo, @output_slots.length) # [TODO] cache
    @output_slots.length.times do |i|
      si = ImNodes::SlotInfo.new(memory + i * ImNodes::SlotInfo.size)
      si[:title] = @output_slots[i][:title]
      si[:kind] = @output_slots[i][:kind]
    end
    memory
  end

end

$available_nodes = {
  "Compose" => lambda { return MyNode.new("Compose",
                                          [ImNodes::SlotInfo.create("Position", NodeSlotPosition),     # Input slots
                                           ImNodes::SlotInfo.create("Rotation", NodeSlotRotation)],
                                          [ImNodes::SlotInfo.create("Matrix", NodeSlotMatrix)]) },   # Output slot
  "Decompose" => lambda { return MyNode.new("Decompose",
                                            [ImNodes::SlotInfo.create("Matrix", NodeSlotMatrix)],    # Input slot
                                            [ImNodes::SlotInfo.create("Position", NodeSlotPosition),   # Output slots
                                             ImNodes::SlotInfo.create("Rotation", NodeSlotRotation)]) },
}

if __FILE__ == $0

  success = SDL.Init(SDL::INIT_VIDEO | SDL::INIT_TIMER | SDL::INIT_GAMECONTROLLER)
  exit if success < 0

  # Setup window
  SDL.GL_SetAttribute(SDL::GL_DOUBLEBUFFER, 1)
  SDL.GL_SetAttribute(SDL::GL_DEPTH_SIZE, 24)
  SDL.GL_SetAttribute(SDL::GL_STENCIL_SIZE, 8)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 2)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 2)
  window_flags = (SDL::WINDOW_OPENGL | SDL::WINDOW_RESIZABLE | SDL::WINDOW_ALLOW_HIGHDPI)
  window = SDL.CreateWindow("ImNodes/Ruby-ImGui (SDL2+OpenGL)", 64, 64, WINDOW_W, WINDOW_H, window_flags)

  gl_context = SDL.GL_CreateContext(window)
  SDL.GL_MakeCurrent(window, gl_context)
  SDL.GL_SetSwapInterval(1) # Enable vsync

  GL.load_lib()

  # Setup Dear ImGui context
  ImGui::CreateContext()

  io = ImGuiIO.new(ImGui::GetIO())
  io[:Fonts].AddFontDefault()

  # Setup Dear ImGui style
  ImGui::StyleColorsDark()

  # Setup Platform/Renderer bindings
  ImGui::ImplSDL2_Init(window, nil)
  ImGui::ImplOpenGL2_Init()

  # Setup ImNodes
  imnodes_context = ImNodes::EzCreateContext()

  event = SDL::Event.new
  done = false
  until done
    while SDL.PollEvent(event) != 0
      ImGui::ImplSDL2_ProcessEvent(event)
      done = true if event[:type] == SDL::QUIT

      # 'type' and 'timestamp' are common members for all SDL Event structs.
      event_type = event[:common][:type]
      # event_timestamp = event[:common][:timestamp]
      # puts "Event : type=0x#{event_type.to_s(16)}, timestamp=#{event_timestamp}"
      case event_type
      when SDL::KEYDOWN
        if event[:key][:keysym][:sym] == SDL::SDLK_ESCAPE
          done = true
        end
      end
    end

    ImGui::ImplOpenGL2_NewFrame()
    ImGui::ImplSDL2_NewFrame()
    ImGui::NewFrame()

    ImGui::SetNextWindowPos(ImVec2.create(30, 30), ImGuiCond_Once)
    ImGui::SetNextWindowSize(ImVec2.create(1000, 500), ImGuiCond_Once)

    # Node editor view starts here
    ImGui::Begin("Node Editor : Click right button to show available nodes")
    ImNodes::EzBeginCanvas()

    node_deleted = []

    $nodes.each do |node|
      if ImNodes::EzBeginNode(node.id, node.title, node.pos, node.selected)
        ImNodes::EzInputSlots(node.input_slots_memory, node.input_slots.length)
        ImGui::Text("Content of #{node.title}")
        ImNodes::EzOutputSlots(node.output_slots_memory, node.output_slots.length)

        new_connection = Connection.new
        if ImNodes::GetNewConnection(new_connection.input_node_ptr, new_connection.input_slot_ptr, new_connection.output_node_ptr, new_connection.output_slot_ptr)
          input_node, output_node = new_connection.get_nodes
          input_node.connections << new_connection
          output_node.connections << new_connection
        end

        node.connections.each do |connection|
          input_node, output_node = connection.get_nodes
          next if output_node.id != node.id
          if !ImNodes::Connection(connection.input_node, connection.input_slot, connection.output_node, connection.output_slot)
            input_node.delete_connection(connection)
            output_node.delete_connection(connection)
          end
        end
      end
      ImNodes::EzEndNode()

      if node.is_selected? && (ImGui::IsKeyPressed(ImGuiKey_Delete) || ImGui::IsKeyPressed(ImGuiKey_Backspace)) && ImGui::IsWindowFocused()
        node.connections.each do |connection|
          input_node, output_node = connection.get_nodes
          if output_node.id == node.id
            input_node.delete_connection(connection)
          else
            output_node.delete_connection(connection)
          end
        end
        node.connections.clear
        node_deleted << node
      end

    end

    node_deleted.each do |node|
      $nodes.delete(node)
    end

    # Context Menu
    if ImGui::IsMouseReleased(1) && ImGui::IsWindowHovered() && !ImGui::IsMouseDragging(1)
      ImGui::FocusWindow(ImGui::GetCurrentWindow())
      ImGui::OpenPopup("NodesContextMenu", 0)
    end

    if ImGui::BeginPopup("NodesContextMenu")
      $available_nodes.each do |name, node_creator|
        if ImGui::MenuItem(name, "", false, true) # [TODO] support default arguments for MenuItem
          $nodes << node_creator.call()
          ImNodes::AutoPositionNode($nodes.last.id)
        end
      end

      ImGui::Separator()
      if ImGui::MenuItem("Reset Zoom", "", false, true) # [TODO] support default arguments for MenuItem
        ImNodes::CanvasState.new(ImNodes::GetCurrentCanvas())[:Zoom] = 1
      end
      if ImGui::IsAnyMouseDown() && !ImGui::IsWindowHovered()
        ImGui::CloseCurrentPopup()
      end
      ImGui::EndPopup()
    end

    ImNodes::EzEndCanvas()
    ImGui::End()
    # End of node editor view

    ImGui::Render()
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(0.45, 0.55, 0.60, 1.00)
    GL.Clear(GL::COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())
    SDL.GL_SwapWindow(window)
  end

  ImNodes::EzFreeContext(imnodes_context)

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DeleteContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
