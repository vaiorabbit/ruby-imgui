# coding: utf-8
require_relative 'util/setup_dll'
require_relative 'util/setup_opengl_dll'
require_relative './about_window'

def check_error( desc )
  e = GL.GetError()
  if e != GL::NO_ERROR
    $stderr.printf "OpenGL error in \"#{desc}\": e=0x%08x\n", e.to_i
    exit
  else
    $stderr.printf "OpenGL no error in \"#{desc}\"\n", e.to_i
  end
end

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

  w = 1280
  h = 720

  window = 0
  versions = [[4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [4, 0],
              [3, 3], [3, 2], [3, 1], [3, 0],
              [2, 1], [2, 0],
              [1, 5], [1, 4], [1, 3], [1, 2], [1, 1], [1, 0]]
  versions.each do |version|
    ver_major = version[0]
    ver_minor = version[1]
    GLFW.DefaultWindowHints()
    if GL.get_platform == :OPENGL_PLATFORM_MACOSX
      GLFW.WindowHint(GLFW::OPENGL_FORWARD_COMPAT, GL::TRUE)
    end
    if ver_major >= 4 || (ver_major >= 3 && ver_minor >= 2)
      GLFW.WindowHint(GLFW::OPENGL_PROFILE, GLFW::OPENGL_CORE_PROFILE)
    else
      GLFW.WindowHint(GLFW::OPENGL_PROFILE, GLFW::OPENGL_ANY_PROFILE)
    end
    GLFW.WindowHint(GLFW::CONTEXT_VERSION_MAJOR, ver_major)
    GLFW.WindowHint(GLFW::CONTEXT_VERSION_MINOR, ver_minor)
    window = GLFW.CreateWindow(w, h, "Ruby-ImGui (GLFW+OpenGL3)", nil, nil)
    break unless window.null?
  end

  if window == 0
    GLFW.Terminate()
    exit()
  end

  GLFW.SetErrorCallback(errorcb)


  GLFW.SetKeyCallback( window, key )

  # Init
  GLFW.MakeContextCurrent( window )
  GLFW.SwapInterval(1)

  GL.load_lib()

  japanese_utf8_text = IO.readlines('./jpfont/jpfont.txt').join()

  ImGui::CreateContext()

  glsl_version = "#version 410";

  # ImGui::ImplGlfw_InitForOpenGL(window_ffi, true)
  ImGui::ImplGlfw_InitForOpenGL(window, true)
  ImGui::ImplOpenGL3_Init(glsl_version)

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

    ImGui::ImplOpenGL3_NewFrame()
    ImGui::ImplGlfw_NewFrame()
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
    GL.Clear(GL::COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL3_RenderDrawData(ImGui::GetDrawData())

    GLFW.MakeContextCurrent( window )
    GLFW.SwapBuffers( window )
  end

  ImGui::ImplOpenGL3_Shutdown()
  ImGui::ImplGlfw_Shutdown()
  ImGui::DestroyContext(nil)

  GLFW.DestroyWindow(window)
  GLFW.Terminate()
end
