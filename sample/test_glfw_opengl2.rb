# coding: utf-8
require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative 'about_window'

errorcb = GLFW::create_callback(:GLFWerrorfun) do |error, desc|
  printf("GLFW error %d: %s\n", error, desc)
end

# Press ESC to exit.
key = GLFW::create_callback(:GLFWkeyfun) do |window, key, scancode, action, mods|
  if key == GLFW::KEY_ESCAPE && action == GLFW::PRESS
    GLFW.SetWindowShouldClose(window, GL::TRUE)
  end
end

if __FILE__ == $PROGRAM_NAME

  GLFW.load_lib(SampleUtil.glfw_library_path)

  if GLFW.Init() == GL::FALSE
    puts("Failed to init GLFW.")
    exit
  end

  GLFW.SetErrorCallback(errorcb)

  GLFW.WindowHint(GLFW::CONTEXT_VERSION_MAJOR, 2)
  GLFW.WindowHint(GLFW::CONTEXT_VERSION_MINOR, 0)

  window = GLFW.CreateWindow(1280, 720, "Ruby-ImGui (GLFW+OpenGL)", nil, nil)
  if window == 0
    GLFW.Terminate()
    exit
  end

  GLFW.SetKeyCallback( window, key )

  # Init
  GLFW.MakeContextCurrent( window )
  GLFW.SwapInterval(1)

  GL.load_lib()

  japanese_utf8_text = IO.readlines('./jpfont/jpfont.txt').join()

  ImGui::CreateContext()

  ImGui::ImplGlfw_InitForOpenGL(window, true)
  ImGui::ImplOpenGL2_Init()

  io = ImGuiIO.new(ImGui::GetIO())

  config = ImFontConfig.create
  builder = ImFontGlyphRangesBuilder.create

  additional_ranges = ImGui::ImVector_ImWchar_create() # ranges == ImVector_ImWchar*
  builder.AddRanges(io[:Fonts].GetGlyphRangesJapanese()) # 常用漢字・人名用漢字を追加します。
  builder.AddText(FFI::MemoryPointer.from_string("獰")) # GetGlyphRangesJapaneseに追加したい文字を並べて書きます。
  builder.BuildRanges(additional_ranges)

  io[:Fonts].AddFontDefault()
  japanese_font = io[:Fonts].AddFontFromFileTTF('./jpfont/GenShinGothic-Normal.ttf', 24.0, config, ImVector.new(additional_ranges)[:Data])

  mx_buf = ' ' * 8
  my_buf = ' ' * 8
  winWidth_buf  = ' ' * 8
  winHeight_buf = ' ' * 8
  fbWidth_buf  = ' ' * 8
  fbHeight_buf = ' ' * 8
  while GLFW.WindowShouldClose( window ) == 0
    GLFW.PollEvents()

    ImGui::ImplOpenGL2_NewFrame()
    ImGui::ImplGlfw_NewFrame()
    ImGui::NewFrame()

    ImGui::ShowDemoWindow()

    ImGuiDemo::ShowAboutWindow(nil)

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
    GLFW.GetCursorPos(window, mx_buf, my_buf)
    GLFW.GetWindowSize(window, winWidth_buf, winHeight_buf)
    GLFW.GetFramebufferSize(window, fbWidth_buf, fbHeight_buf)
    mx = mx_buf.unpack('D')[0]
    my = my_buf.unpack('D')[0]
    winWidth = winWidth_buf.unpack('L')[0]
    winHeight = winHeight_buf.unpack('L')[0]
    fbWidth = fbWidth_buf.unpack('L')[0]
    fbHeight = fbHeight_buf.unpack('L')[0]

    GL.Viewport(0, 0, fbWidth, fbHeight)
    GL.ClearColor(0.45, 0.55, 0.60, 1.00)
    GL.Clear(GL::COLOR_BUFFER_BIT|GL::DEPTH_BUFFER_BIT|GL::STENCIL_BUFFER_BIT)

    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())

    GLFW.MakeContextCurrent( window )
    GLFW.SwapBuffers( window )
  end

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplGlfw_Shutdown()
  ImGui::DestroyContext(nil)

  GLFW.DestroyWindow(window)
  GLFW.Terminate()
end
