require 'opengl'
require 'glfw'
require_relative '../imgui_glfw_opengl2'

$lib_path = '../imgui_glfw_opengl2.dylib'

OpenGL.load_lib()
GLFW.load_lib()
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

  window = glfwCreateWindow( 1280, 720, "Dear ImGui GLFW+OpenGL2/Ruby example", nil, nil )
  if window == 0
    glfwTerminate()
    exit
  end

  glfwSetKeyCallback( window, key )

  # Init
  glfwMakeContextCurrent( window )
  glfwSwapInterval(1)

  ImGui::CreateContext(nil)
  io = ImGui::GetIO()
  style = ImGui::GetStyle()

  window_ffi = FFI::Pointer.new(FFI::Pointer, window.to_i)
  ImGui::ImplGlfw_InitForOpenGL(window_ffi, true)
  ImGui::ImplOpenGL2_Init()

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

    ImGui::ShowDemoWindow(nil)

    # See https://github.com/ffi/ffi/wiki/Structs
    pos = ImVec2.new
    pos[:x] = 50
    pos[:y] = 20
    pivot = ImVec2.new
    pivot[:x] = 0
    pivot[:y] = 0
    ImGui::SetNextWindowPos(pos, ImGuiCond_FirstUseEver, pivot)

    p_open = nil
    window_flags = ImGuiWindowFlags_AlwaysAutoResize
    ImGui::Begin("Ruby-ImGui 1st Window", p_open, window_flags)
    ImGui::Text("Loaded shared library '%s'", :string, $lib_path) # See https://github.com/ffi/ffi/wiki/Examples#using-varargs
    ImGui::End()

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

  # term

  glfwTerminate()
end
