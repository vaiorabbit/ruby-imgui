# coding: utf-8
require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative 'util/setup_sdl2_dll'

WINDOW_W = 480
WINDOW_H = 320

Node = Struct.new( :name, :pos, :selected, :inslot, :outslot, keyword_init: true )

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

  # Setup nodes
  node_src = Node.new(name: FFI::MemoryPointer.from_string("src"),
                      pos: ImVec2.create(50, 50),
                      selected: FFI::MemoryPointer.new(:bool, 1),
                      inslot: ImNodes::SlotInfo.create("InSlot", 1),
                      outslot: ImNodes::SlotInfo.create("OutSlot", 1))
  node_dst = Node.new(name: FFI::MemoryPointer.from_string("dst"),
                      pos: ImVec2.create(150, 150),
                      selected: FFI::MemoryPointer.new(:bool, 1),
                      inslot: ImNodes::SlotInfo.create("InSlot", 1),
                      outslot: ImNodes::SlotInfo.create("OutSlot", 1))

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
    ImGui::SetNextWindowSize(ImVec2.create(400, 260), ImGuiCond_Once)

    # Node editor view starts here
    ImGui::Begin("Basic")
    ImNodes::EzBeginCanvas()

    if ImNodes::EzBeginNode(node_src.name, node_src.name, node_src.pos, node_src.selected)
      ImNodes::EzInputSlots(nil, 0)
      ImGui::Text("Source Node")
      ImNodes::EzOutputSlots(node_src.outslot, 1)
    end
    ImNodes::EzEndNode()

    if ImNodes::EzBeginNode(node_dst.name, node_dst.name, node_dst.pos, node_dst.selected)
      ImNodes::EzInputSlots(node_dst.inslot, 1)
      ImGui::Text("Destination Node")
      ImNodes::EzOutputSlots(nil, 0)
    end
    ImNodes::EzEndNode()

    ImNodes::EzConnection(node_dst.name, node_dst.inslot[:title], node_src.name, node_src.outslot[:title])
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
