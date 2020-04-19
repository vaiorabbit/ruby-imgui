# coding: utf-8
require_relative '../imgui'
require_relative '../imgui_impl_opengl2'
require_relative '../imgui_impl_glfw'

require_relative './imgui_demo'

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

OpenGL.load_lib()
if RUBY_PLATFORM =~ /linux/
  GLFW.load_lib('libglfw.so', '.')
else
  GLFW.load_lib
end
ImGui.load_lib($lib_path)

include OpenGL
include GLFW

errorcb = GLFW::create_callback(:GLFWerrorfun) do |error, desc|
  printf("GLFW error %d: %s\n", error, desc)
end

# Press ESC to exit.
key = GLFW::create_callback(:GLFWkeyfun) do |window, key, scancode, action, mods|
  if key == GLFW_KEY_ESCAPE && action == GLFW_PRESS
    glfwSetWindowShouldClose(window, GL_TRUE)
  end
end

if __FILE__ == $0

  if glfwInit() == GL_FALSE
    puts("Failed to init GLFW.")
    exit
  end

  glfwSetErrorCallback(errorcb)

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2)
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0)

  window = glfwCreateWindow(1280, 720, "Ruby-ImGui (GLFW+OpenGL)", nil, nil)
  if window == 0
    glfwTerminate()
    exit
  end

  glfwSetKeyCallback( window, key )

  # Init
  glfwMakeContextCurrent( window )
  glfwSwapInterval(1)

  japanese_utf8_text = IO.readlines('./jpfont/jpfont.txt').join()

  ImGui::CreateContext()

  # ImGui::ImplGlfw_InitForOpenGL(window_ffi, true)
  ImGui::ImplGlfw_InitForOpenGL(window, true)
  ImGui::ImplOpenGL2_Init()

  io = ImGuiIO.new(ImGui::GetIO())

  ImGui::FontAtlas_AddFontDefault(io[:Fonts])
  # ?? GetGlyphRangesJapanese fails to render Japanese Kanji characters '漱', '吾', '獰', '逢', '頃' and '咽' in 'jpfont.txt'.
  # japanese_font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], './jpfont/GenShinGothic-Normal.ttf', 24.0, nil, ImGui::FontAtlas_GetGlyphRangesJapanese(io[:Fonts]))
  japanese_font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], './jpfont/GenShinGothic-Normal.ttf', 24.0, nil, ImGui::FontAtlas_GetGlyphRangesChineseFull(io[:Fonts]))

  mx_buf = ' ' * 8
  my_buf = ' ' * 8
  winWidth_buf  = ' ' * 8
  winHeight_buf = ' ' * 8
  fbWidth_buf  = ' ' * 8
  fbHeight_buf = ' ' * 8
  while glfwWindowShouldClose( window ) == 0
    glfwPollEvents()

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
    glfwGetCursorPos(window, mx_buf, my_buf)
    glfwGetWindowSize(window, winWidth_buf, winHeight_buf)
    glfwGetFramebufferSize(window, fbWidth_buf, fbHeight_buf)
    mx = mx_buf.unpack('D')[0]
    my = my_buf.unpack('D')[0]
    winWidth = winWidth_buf.unpack('L')[0]
    winHeight = winHeight_buf.unpack('L')[0]
    fbWidth = fbWidth_buf.unpack('L')[0]
    fbHeight = fbHeight_buf.unpack('L')[0]

    glViewport(0, 0, fbWidth, fbHeight)
    glClearColor(0.45, 0.55, 0.60, 1.00)
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT)

    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())

    glfwMakeContextCurrent( window )
    glfwSwapBuffers( window )
  end

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplGlfw_Shutdown()
  ImGui::DestroyContext(nil)

  glfwDestroyWindow(window)
  glfwTerminate()
end
