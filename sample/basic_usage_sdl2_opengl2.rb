# coding: utf-8

require_relative '../imgui'
require_relative '../imgui_impl_opengl2'
require_relative '../imgui_impl_sdl2'

require_relative './basic_usage'

WINDOW_W = 1920
WINDOW_H = 1080

if __FILE__ == $0

  $sdl2_path = case RUBY_PLATFORM
              when /mswin|msys|mingw|cygwin/
                Dir.pwd + '/' + 'SDL2.dll'
              when /darwin/
                '/usr/local/lib/libSDL2.dylib'
              when /linux/
                '/usr/local/lib/libSDL2.so' # not tested
              else
                raise RuntimeError, "test.rb : Unknown OS: #{RUBY_PLATFORM}"
              end
  SDL2::load_lib($sdl2_path)

  case OpenGL.get_platform
  when :OPENGL_PLATFORM_WINDOWS
    OpenGL.load_lib('opengl32.dll', 'C:/Windows/System32')
  when :OPENGL_PLATFORM_MACOSX
    OpenGL.load_lib('libGL.dylib', '/System/Library/Frameworks/OpenGL.framework/Libraries')
  when :OPENGL_PLATFORM_LINUX
    OpenGL.load_lib()
  else
    raise RuntimeError, "Unsupported platform."
  end

  $lib_path = case RUBY_PLATFORM
              when /mswin|msys|mingw|cygwin/
                Dir.pwd + '/../' + 'imgui.dll'
              when /darwin/
                '../imgui.dylib'
              when /linux/
                '../cimgui_impl_dll/build/imgui.so'
              else
                raise RuntimeError, "test.rb : Unknown OS: #{RUBY_PLATFORM}"
              end
  ImGui.load_lib($lib_path)

  success = SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER)
  exit if success < 0

  # Setup window
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1)
  SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24)
  SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8)
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2)
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2)
  window_flags = (SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI)
  window = SDL_CreateWindow("Ruby-ImGui (SDL2+OpenGL)", 0, 0, WINDOW_W, WINDOW_H, window_flags)
  gl_context = SDL_GL_CreateContext(window)
  SDL_GL_MakeCurrent(window, gl_context)
  SDL_GL_SetSwapInterval(1) # Enable vsync

  # Setup Dear ImGui context
  ImGui::CreateContext()
  io = ImGuiIO.new(ImGui::GetIO())

  # Setup Dear ImGui style
  ImGui::StyleColorsDark()

  # Setup Platform/Renderer bindings
  ImGui::ImplSDL2_InitForOpenGL(window, gl_context)
  ImGui::ImplOpenGL2_Init()

  ImGuiDemo::AddFont('./jpfont/GenShinGothic-Normal.ttf', './iconfont/fontawesome-webfont.ttf')
  ImGuiDemo::SetGlobalScale(0.8)

  event = SDL_Event.new
  done = false
  until done
    while SDL_PollEvent(event) != 0
      ImGui::ImplSDL2_ProcessEvent(event)
      done = true if event[:type] == SDL_QUIT

      # 'type' and 'timestamp' are common members for all SDL Event structs.
      event_type = event[:common][:type]
      event_timestamp = event[:common][:timestamp]
      # puts "Event : type=0x#{event_type.to_s(16)}, timestamp=#{event_timestamp}"
      case event_type
      when SDL_KEYDOWN
        if event[:key][:keysym][:sym] == SDLK_ESCAPE
          done = true
        end
      end
    end

    # Start the Dear ImGui frame
    ImGui::ImplOpenGL2_NewFrame()
    ImGui::ImplSDL2_NewFrame(window)
    ImGui::NewFrame()

    p_open = nil

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

    ImGui::Render()
    glViewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    glClearColor(0.45, 0.55, 0.60, 1.00)
    glClear(GL_COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())
    SDL_GL_SwapWindow(window)
  end

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL_GL_DeleteContext(gl_context)
  SDL_DestroyWindow(window)
  SDL_Quit()
end
