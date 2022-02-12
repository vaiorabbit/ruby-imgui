# coding: utf-8

require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative 'util/setup_sdl2_dll'
require_relative './about_window'

WINDOW_W = 1280
WINDOW_H = 720

def check_error( desc )
  e = glGetError()
  if e != GL_NO_ERROR
    $stderr.printf "OpenGL error in \"#{desc}\": e=0x%08x\n", e.to_i
    exit
  else
    $stderr.printf "OpenGL no error in \"#{desc}\"\n", e.to_i
  end
end

if __FILE__ == $PROGRAM_NAME

  success = SDL.Init(SDL::INIT_VIDEO | SDL::INIT_TIMER | SDL::INIT_GAMECONTROLLER)
  exit if success < 0

  # Setup window
  # __APPLE__
  glsl_version = "#version 410";
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_FLAGS, SDL::GL_CONTEXT_FORWARD_COMPATIBLE_FLAG) # __APPLE__
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_PROFILE_MASK, SDL::GL_CONTEXT_PROFILE_CORE)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 4)
  SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 1)

  SDL.GL_SetAttribute(SDL::GL_DOUBLEBUFFER, 1)
  SDL.GL_SetAttribute(SDL::GL_DEPTH_SIZE, 24)
  SDL.GL_SetAttribute(SDL::GL_STENCIL_SIZE, 8)
  window_flags = (SDL::WINDOW_OPENGL | SDL::WINDOW_RESIZABLE | SDL::WINDOW_ALLOW_HIGHDPI)
  window = SDL.CreateWindow("Ruby-ImGui (SDL2+OpenGL3)", 0, 0, WINDOW_W, WINDOW_H, window_flags)
  gl_context = SDL.GL_CreateContext(window)

  SDL.GL_MakeCurrent(window, gl_context)
  SDL.GL_SetSwapInterval(1) # Enable vsync

  GL.load_lib()

  japanese_utf8_text = IO.readlines('./jpfont/jpfont.txt').join()

  # Setup Dear ImGui context
  ImGui::CreateContext()
  io = ImGuiIO.new(ImGui::GetIO())

  config = ImFontConfig.create
  builder = ImFontGlyphRangesBuilder.create

  additional_ranges = ImGui::ImVector_ImWchar_create() # ranges == ImVector_ImWchar*
  builder.AddRanges(io[:Fonts].GetGlyphRangesJapanese()) # 常用漢字・人名用漢字を追加します。
  builder.AddText(FFI::MemoryPointer.from_string("獰")) # GetGlyphRangesJapaneseに追加したい文字を並べて書きます。
  builder.BuildRanges(additional_ranges)

  io[:Fonts].AddFontDefault()
  japanese_font = io[:Fonts].AddFontFromFileTTF('./jpfont/GenShinGothic-Normal.ttf', 24.0, config, ImVector.new(additional_ranges)[:Data])

  # Setup Dear ImGui style
  ImGui::StyleColorsDark()

  # Setup Platform/Renderer bindings
  ImGui::ImplSDL2_Init(window, nil)
  ImGui::ImplOpenGL3_Init(glsl_version)

  event = SDL::Event.new
  done = false
  until done
    while SDL.PollEvent(event) != 0
      ImGui::ImplSDL2_ProcessEvent(event)
      done = true if event[:type] == SDL::QUIT

      # 'type' and 'timestamp' are common members for all SDL Event structs.
      event_type = event[:common][:type]
      event_timestamp = event[:common][:timestamp]
      # puts "Event : type=0x#{event_type.to_s(16)}, timestamp=#{event_timestamp}"
      case event_type
      when SDL::KEYDOWN
        if event[:key][:keysym][:sym] == SDL::SDLK_ESCAPE
          done = true
        end
      end
    end

    # Start the Dear ImGui frame
    ImGui::ImplOpenGL3_NewFrame()
    ImGui::ImplSDL2_NewFrame()
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
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(0.45, 0.55, 0.60, 1.00)
    GL.Clear(GL::COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL3_RenderDrawData(ImGui::GetDrawData())
    SDL.GL_SwapWindow(window)
  end

  ImGui::ImplOpenGL3_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DeleteContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
