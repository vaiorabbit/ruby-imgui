# coding: utf-8
require_relative '../lib/imgui'
require_relative '../lib/imgui_impl_glfw'
require_relative 'util/setup_opengl_dll.rb'

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

  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll', true)

  ImGui::CreateContext()
  ImGui::StyleColorsDark()

  glsl_version = "#version 410";

  ImGui::ImplGlfw_InitForOpenGL(window, true)

  io = ImGuiIO.new(ImGui::GetIO())
  io[:DisplaySize] = ImVec2.create(1280, 720)
  io[:BackendFlags] |= ImGuiBackendFlags_RendererHasTextures

  # ImFontAtlas.new(io[:Fonts]).AddFontDefault()

  ImGui::NewFrame()
  ImGui::ShowDemoWindow(nil)

  ImGui::Begin("test")
  ImGui::End()
  ImGui::Render()

  # ImGui::ImplOpenGL3_Shutdown()
  ImGui::ImplGlfw_Shutdown()
  ImGui::DestroyContext(nil)

  GLFW.DestroyWindow(window)
  GLFW.Terminate()
end
