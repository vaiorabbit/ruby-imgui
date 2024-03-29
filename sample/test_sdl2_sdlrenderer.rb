# coding: utf-8

require_relative 'util/setup_dll'
require_relative 'util/setup_sdl2_dll'
require_relative './about_window'

WINDOW_W = 1280
WINDOW_H = 720

if __FILE__ == $PROGRAM_NAME

  # Windows
  # SDL_SetHint(SDL_HINT_RENDER_DRIVER, "direct3d11")

  success = SDL.Init(SDL::INIT_VIDEO | SDL::INIT_TIMER | SDL::INIT_GAMECONTROLLER)
  exit if success < 0

  # Setup window
  window_flags = (SDL::WINDOW_RESIZABLE)# | SDL::WINDOW_ALLOW_HIGHDPI) # [FIXME] Correct wrong clipping problem caused when we enable ALLOW_HIGHDPI
  window = SDL.CreateWindow("Ruby-ImGui (SDL2+SDL_Renderer)", 64, 64, WINDOW_W, WINDOW_H, window_flags)

  # Setup SDL_Renderer instance
  renderer = SDL.CreateRenderer(window, -1, SDL::RENDERER_PRESENTVSYNC | SDL::RENDERER_ACCELERATED)
  if renderer == nil
    SDL.Log("Error creating SDL_Renderer!")
    exit
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
  ImGui::ImplSDL2_Init(window, nil)
  ImGui::ImplSDLRenderer_Init(renderer)

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
    ImGui::ImplSDLRenderer_NewFrame()
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
    SDL.SetRenderDrawColor(renderer, (0.45 * 255).to_i, (0.55 * 255).to_i, (0.60 * 255).to_i, (1.0 * 255).to_i)
    SDL.RenderClear(renderer)
    ImGui::ImplSDLRenderer_RenderDrawData(ImGui::GetDrawData())
    SDL.RenderPresent(renderer)
  end

  ImGui::ImplSDLRenderer_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.DestroyRenderer(renderer)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
