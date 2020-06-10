# coding: utf-8

require_relative '../imgui'
require_relative '../imgui_impl_opengl2'
require_relative '../imgui_impl_sdl2'

require_relative './about_window'

WINDOW_W = 1280
WINDOW_H = 720

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

  japanese_utf8_text = IO.readlines('./jpfont/jpfont.txt').join()

  # Setup Dear ImGui context
  ImGui::CreateContext()
  io = ImGuiIO.new(ImGui::GetIO())

  # Setup Dear ImGui style
  ImGui::StyleColorsDark()

  # Setup Platform/Renderer bindings
  ImGui::ImplSDL2_Init(window)
  ImGui::ImplOpenGL2_Init()

  io[:Fonts].AddFontDefault()
  # ?? GetGlyphRangesJapanese fails to render Japanese Kanji characters '漱', '吾', '獰', '逢', '頃' and '咽' in 'jpfont.txt'.
  # japanese_font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], './jpfont/GenShinGothic-Normal.ttf', 24.0, nil, ImGui::FontAtlas_GetGlyphRangesJapanese(io[:Fonts]))
  japanese_font = io[:Fonts].AddFontFromFileTTF('./jpfont/GenShinGothic-Normal.ttf', 24.0, nil, io[:Fonts].GetGlyphRangesChineseFull())

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

    ImGui::ShowDemoWindow()

    ImGuiDemo::ShowAboutWindow(nil)

    # See https://github.com/ffi/ffi/wiki/Structs
    pos = ImVec2.create(50, 20)
    ImGui::SetNextWindowPos(pos, ImGuiCond_FirstUseEver)

    p_open = nil
    window_flags = ImGuiWindowFlags_AlwaysAutoResize
    ImGui::PushFont(japanese_font)
    ImGui::Begin("Ruby-ImGui : はじめてのウィンドウ＆日本語", p_open, window_flags)
    ImGui::Text("Loaded shared library '%s'", :string, $lib_path) # See https://github.com/ffi/ffi/wiki/Examples#using-varargs
    ImGui::TextWrapped(japanese_utf8_text)
    ImGui::End()
    ImGui::PopFont()

    tab_bar_flags = ImGuiTabBarFlags_None
    if ImGui::BeginTabBar("MyTabBar", tab_bar_flags)
      if ImGui::BeginTabItem("Avocado")
        ImGui::Text("This is the Avocado tab!\nblah blah blah blah blah")
        ImGui::EndTabItem()
      end
      if ImGui::BeginTabItem("Broccoli")
        ImGui::Text("This is the Broccoli tab!\nblah blah blah blah blah")
        ImGui::EndTabItem()
      end
      if ImGui::BeginTabItem("Cucumber")
        ImGui::Text("This is the Cucumber tab!\nblah blah blah blah blah")
        ImGui::EndTabItem()
      end
      ImGui::EndTabBar()
    end

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
