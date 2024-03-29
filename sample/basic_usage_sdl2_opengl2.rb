# coding: utf-8

require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative 'util/setup_sdl2_dll'

require_relative './basic_usage'

WINDOW_W = 1920
WINDOW_H = 1080

if __FILE__ == $PROGRAM_NAME

  success = SDL.Init(SDL::INIT_VIDEO | SDL::INIT_TIMER | SDL::INIT_GAMECONTROLLER)
  exit if success < 0

  # Setup window
  SDL.GL_SetAttribute(SDL::GL_DOUBLEBUFFER, 1)
  SDL.GL_SetAttribute(SDL::GL_DEPTH_SIZE, 24)
  SDL.GL_SetAttribute(SDL::GL_STENCIL_SIZE, 8)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 2)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 2)
  window_flags = (SDL::WINDOW_OPENGL | SDL::WINDOW_RESIZABLE | SDL::WINDOW_ALLOW_HIGHDPI)
  window = SDL.CreateWindow("Ruby-ImGui (SDL2+OpenGL)", 0, 0, WINDOW_W, WINDOW_H, window_flags)
  gl_context = SDL.GL_CreateContext(window)
  SDL.GL_MakeCurrent(window, gl_context)
  SDL.GL_SetSwapInterval(1) # Enable vsync

  GL.load_lib()

  # Setup Dear ImGui context
  ImGui::CreateContext()
  io = ImGuiDemo::GetIO()
  # Load layout information fromm file, but never overwrite it
  ImGui::LoadIniSettingsFromDisk("./basic_usage_layout.ini")
  io[:IniFilename] = nil # FFI::MemoryPointer.from_string("./basic_usage_layout.ini")
  io[:WantSaveIniSettings] = false

  # Setup Dear ImGui style
  ImGui::StyleColorsDark()

  # Setup Platform/Renderer bindings
  ImGui::ImplSDL2_Init(window, nil)
  ImGui::ImplOpenGL2_Init()

  ImGuiDemo::AddFont('./jpfont/GenShinGothic-Normal.ttf', './iconfont/fontawesome-webfont.ttf')
  ImGuiDemo::SetGlobalScale(0.8)

  event = SDL::Event.new
  done = false
  until done
    while SDL.PollEvent(event) != 0
      ImGui::ImplSDL2_ProcessEvent(event)
      done = true if event[:type] == SDL::QUIT

      # 'type' and 'timestamp' are common members for all SDL Event structs.
      event_type = event[:common][:type]

      # puts "Event : type=0x#{event_type.to_s(16)}, timestamp=#{event_timestamp}"
      case event_type
      when SDL::KEYDOWN
        if event[:key][:keysym][:sym] == SDL::SDLK_ESCAPE
          done = true
        end
      end
    end

    # Start the Dear ImGui frame
    ImGui::ImplOpenGL2_NewFrame()
    ImGui::ImplSDL2_NewFrame()
    ImGui::NewFrame()

    ImGuiDemo::BasicWindow::Show()
    ImGuiDemo::ButtonAndCheckboxWindow::Show()
    ImGuiDemo::RadioButtonWindow::Show()
    ImGuiDemo::ArrowButtonWindow::Show()
    ImGuiDemo::DropdownListAndInputWindow::Show()
    ImGuiDemo::SlidersWindow1::Show()
    ImGuiDemo::SlidersWindow2::Show()
    ImGuiDemo::SlidersWindow3::Show()
    ImGuiDemo::EnumAndColorSelectionWindow::Show()
    ImGuiDemo::ListBoxWindow::Show()
    ImGuiDemo::InputTextWindow::Show()
    ImGuiDemo::TreeNodeWindow::Show()
    ImGuiDemo::TooltipAndPopupWindow::Show()
    ImGuiDemo::PlotAndProgressWindow::Show()
    ImGuiDemo::ChildWindow::Show()
    ImGuiDemo::TabWindow::Show()
    ImGuiDemo::SearchWindow::Show()
    ImGuiDemo::MainMenuBarWindow::Show()
    ImGuiDemo::ClippingAndDummyWindow::Show()
    ImGuiDemo::StackToolWindow::Show()
    ImGuiDemo::SeparatorTextWindow::Show()
    ok_clicked = ImGuiDemo::PopupWindow::Show()
    done = true if ok_clicked

    ImGui::Render()
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(0.45, 0.55, 0.60, 1.00)
    GL.Clear(GL::COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())
    SDL.GL_SwapWindow(window)
  end

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DeleteContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
