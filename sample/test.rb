#
# Ref.: https://github.com/memononen/nanovg/blob/master/example/example_gl2.c
#
require 'opengl'
require 'glfw'
require_relative '../imgui_glfw_opengl2'

OpenGL.load_lib()
GLFW.load_lib()
ImGui.load_lib('../imgui_glfw_opengl2.dylib')

include OpenGL
include GLFW
include ImGui

errorcb = GLFW::create_callback(:GLFWerrorfun) do |error, desc|
  printf("GLFW error %d: %s\n", error, desc)
end

# Press ESC to exit.
key = GLFW::create_callback(:GLFWkeyfun) do |window, key, scancode, action, mods|
  if key == GLFW_KEY_ESCAPE && action == GLFW_PRESS
    glfwSetWindowShouldClose(window, GL_TRUE)
  end
  if key == GLFW_KEY_SPACE && action == GLFW_PRESS
    #
  end
  if key == GLFW_KEY_S && action == GLFW_PRESS
    #
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

  window = glfwCreateWindow( 1280, 720, "Dear ImGui GLFW+OpenGL2 example", nil, nil )
  if window == 0
    glfwTerminate()
    exit
  end

  glfwSetKeyCallback( window, key )

  # Init
  glfwMakeContextCurrent( window )
  glfwSwapInterval(1)

  igCreateContext(nil)
  io = igGetIO()

  window_ffi = FFI::Pointer.new(FFI::Pointer, window.to_i)
  ImGui_ImplGlfw_InitForOpenGL(window_ffi, true)
  ImGui_ImplOpenGL2_Init()

  glfwSetTime(0)
  prevt = glfwGetTime()

  mx_buf = ' ' * 8
  my_buf = ' ' * 8
  winWidth_buf  = ' ' * 8
  winHeight_buf = ' ' * 8
  fbWidth_buf  = ' ' * 8
  fbHeight_buf = ' ' * 8
  while glfwWindowShouldClose( window ) == 0
    glfwPollEvents()

    ImGui_ImplOpenGL2_NewFrame()
    ImGui_ImplGlfw_NewFrame()

    igNewFrame()

    igShowDemoWindow(nil)

    t = glfwGetTime()
    dt = t - prevt
    prevt = t

    igRender();

    glfwGetCursorPos(window, mx_buf, my_buf)
    glfwGetWindowSize(window, winWidth_buf, winHeight_buf)
    glfwGetFramebufferSize(window, fbWidth_buf, fbHeight_buf)
    mx = mx_buf.unpack('D')[0]
    my = my_buf.unpack('D')[0]
    winWidth = winWidth_buf.unpack('L')[0]
    winHeight = winHeight_buf.unpack('L')[0]
    fbWidth = fbWidth_buf.unpack('L')[0]
    fbHeight = fbHeight_buf.unpack('L')[0]

    pxRatio = fbWidth.to_f / winWidth.to_f

    glViewport(0, 0, fbWidth, fbHeight)
    glClearColor(0.45, 0.55, 0.60, 1.00)
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT)

    ImGui_ImplOpenGL2_RenderDrawData(igGetDrawData())

    glfwMakeContextCurrent( window )
    glfwSwapBuffers( window )
  end

  # term

  glfwTerminate()
end
