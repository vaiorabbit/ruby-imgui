# coding: utf-8

require_relative '../imgui'
require_relative '../imgui_impl_sdlrenderer'
require_relative '../imgui_impl_sdl2'

require_relative './about_window'

WINDOW_W = 1280
WINDOW_H = 720

include SDL2

if __FILE__ == $0

  $sdl2_path = case RUBY_PLATFORM
              when /mswin|msys|mingw|cygwin/
                Dir.pwd + '/' + 'SDL2.dll'
              when /darwin/
                sdl2_dylib = Dir.pwd + '/' + 'libSDL2.dylib'
                File.exist?(sdl2_dylib) ? sdl2_dylib : '/usr/local/lib/libSDL2.dylib'
              when /linux/
                '/usr/local/lib/libSDL2.so' # not tested
              else
                raise RuntimeError, "test.rb : Unknown OS: #{RUBY_PLATFORM}"
              end
  SDL2::load_lib($sdl2_path)

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
  window_flags = (SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE)# | SDL_WINDOW_ALLOW_HIGHDPI)
  window = SDL_CreateWindow("Ruby-ImGui (SDL2+SDL_Renderer)", 0, 0, WINDOW_W, WINDOW_H, window_flags)

  # Setup SDL_Renderer instance
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_PRESENTVSYNC | SDL_RENDERER_ACCELERATED)
  if renderer == nil
    SDL_Log("Error creating SDL_Renderer!")
    return -1
  end

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
  ImGui::ImplSDL2_Init(window)
  ImGui::ImplSDLRenderer_Init(renderer)

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
    ImGui::ImplSDLRenderer_NewFrame()
    ImGui::ImplSDL2_NewFrame()
    ImGui::NewFrame()

    ImGui::ShowDemoWindow()
=begin
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
=end
    ImGui::Render()
    SDL_SetRenderDrawColor(renderer, (0.45 * 255).to_i, (0.55 * 255).to_i, (0.60 * 255).to_i, (1.0 * 255).to_i)
    SDL_RenderClear(renderer)
    ImGui::ImplSDLRenderer_RenderDrawData(ImGui::GetDrawData())
    SDL_RenderPresent(renderer)
  end

  ImGui::ImplSDLRenderer_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL_DestroyRenderer(renderer)
  SDL_DestroyWindow(window)
  SDL_Quit()
end
