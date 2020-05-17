# coding: utf-8
# OpenGL Setup (https://github.com/vaiorabbit/ruby-opengl/)
require 'opengl'
include OpenGL
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

# SDL2 Setup (https://github.com/vaiorabbit/sdl2-bindings)
require 'sdl2'
include SDL2

# ImGUI Setup (https://github.com/vaiorabbit/ruby-imgui/)
require_relative '../imgui'
require_relative '../imgui_impl_opengl2'
require_relative '../imgui_impl_sdl2'
case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin/
  ImGui.load_lib(Dir.pwd + '/../' + 'imgui.dll')
when /darwin/
  ImGui.load_lib('../imgui.dylib')
when /linux/
  ImGui.load_lib('../imgui_dll/build/imgui.so')
else
  raise RuntimeError, "Unsupported platform: #{RUBY_PLATFORM}"
end

# Ref.: testgl2.c (https://hg.libsdl.org/SDL/file/tip/test/testgl2.c)
$color =
  [[ 1.0,  1.0,  0.0].pack("D3"),
   [ 1.0,  0.0,  0.0].pack("D3"),
   [ 0.0,  0.0,  0.0].pack("D3"),
   [ 0.0,  1.0,  0.0].pack("D3"),
   [ 0.0,  1.0,  1.0].pack("D3"),
   [ 1.0,  1.0,  1.0].pack("D3"),
   [ 1.0,  0.0,  1.0].pack("D3"),
   [ 0.0,  0.0,  1.0].pack("D3")]

$cube =
  [[ 0.5,  0.5, -0.5].pack("D3"),
   [ 0.5, -0.5, -0.5].pack("D3"),
   [-0.5, -0.5, -0.5].pack("D3"),
   [-0.5,  0.5, -0.5].pack("D3"),
   [-0.5,  0.5,  0.5].pack("D3"),
   [ 0.5,  0.5,  0.5].pack("D3"),
   [ 0.5, -0.5,  0.5].pack("D3"),
   [-0.5, -0.5,  0.5].pack("D3")]

def render()
  glClearColor(0.0, 0.0, 0.0, 1.0)
  glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)

  glBegin(GL_QUADS)

  glColor3dv($color[0])
  glVertex3dv($cube[0])
  glColor3dv($color[1])
  glVertex3dv($cube[1])
  glColor3dv($color[2])
  glVertex3dv($cube[2])
  glColor3dv($color[3])
  glVertex3dv($cube[3])

  glColor3dv($color[3])
  glVertex3dv($cube[3])
  glColor3dv($color[4])
  glVertex3dv($cube[4])
  glColor3dv($color[7])
  glVertex3dv($cube[7])
  glColor3dv($color[2])
  glVertex3dv($cube[2])

  glColor3dv($color[0])
  glVertex3dv($cube[0])
  glColor3dv($color[5])
  glVertex3dv($cube[5])
  glColor3dv($color[6])
  glVertex3dv($cube[6])
  glColor3dv($color[1])
  glVertex3dv($cube[1])

  glColor3dv($color[5])
  glVertex3dv($cube[5])
  glColor3dv($color[4])
  glVertex3dv($cube[4])
  glColor3dv($color[7])
  glVertex3dv($cube[7])
  glColor3dv($color[6])
  glVertex3dv($cube[6])

  glColor3dv($color[5])
  glVertex3dv($cube[5])
  glColor3dv($color[0])
  glVertex3dv($cube[0])
  glColor3dv($color[3])
  glVertex3dv($cube[3])
  glColor3dv($color[4])
  glVertex3dv($cube[4])

  glColor3dv($color[6])
  glVertex3dv($cube[6])
  glColor3dv($color[1])
  glVertex3dv($cube[1])
  glColor3dv($color[2])
  glVertex3dv($cube[2])
  glColor3dv($color[7])
  glVertex3dv($cube[7])

  glEnd()

  glMatrixMode(GL_MODELVIEW)
  glRotated(5.0, 1.0, 1.0, 1.0)
end


# Main
if __FILE__ == $0

  # Initialize SDL2
  SDL2.load_lib('/usr/local/lib/libSDL2.dylib')
  success = SDL_Init(SDL_INIT_EVERYTHING)
  exit if success < 0

  WINDOW_W = 400
  WINDOW_H = 320
  window = SDL_CreateWindow("Ruby OpenGL + SDL2 + ImGUI bindings", 0, 0, WINDOW_W, WINDOW_H, SDL_WINDOW_OPENGL)

  ratio = WINDOW_W.to_f / WINDOW_H

  context = SDL_GL_CreateContext(window)
  SDL_GL_MakeCurrent(window, context)
  SDL_GL_SetSwapInterval(1)

  # Initialize ImGUI
  ImGui::CreateContext(nil)
  ImGui::ImplSDL2_InitForOpenGL(window, context)
  ImGui::ImplOpenGL2_Init()

  glViewport( 0, 0, WINDOW_W, WINDOW_H )
  glMatrixMode( GL_PROJECTION )
  glLoadIdentity( )
  glOrtho(-ratio, ratio, -1.0, 1.0, -1.0, 1.0)
  glMatrixMode( GL_MODELVIEW )
  glLoadIdentity( )

  glEnable(GL_DEPTH_TEST)
  glDepthFunc(GL_LESS)
  glShadeModel(GL_SMOOTH)

  delay_counter = 0

  # Main loop
  event = SDL_Event.new
  done = false
  while not done
    while SDL_PollEvent(event) != 0
      ImGui::ImplSDL2_ProcessEvent(event)
      done = true if event[:type] == SDL_QUIT

      event_type = event[:common][:type]
      event_timestamp = event[:common][:timestamp]
      case event_type
      when SDL_KEYDOWN
        if event[:key][:keysym][:sym] == SDLK_ESCAPE
          done = true
        end
      end
    end

    render()

    ImGui::ImplOpenGL2_NewFrame()
    ImGui::ImplSDL2_NewFrame(window)
    ImGui::NewFrame()

    # ImGui::ShowDemoWindow(nil)

    pos = ImVec2.create(50, 20)
    pivot = ImVec2.create(0, 0)
    size = ImVec2.create(150, 70)
    ImGui::SetNextWindowPos(pos, ImGuiCond_FirstUseEver, pivot)
    ImGui::SetNextWindowSize(size, 0)
    ImGui::SetNextWindowBgAlpha(0.35)

    p_open = nil
    window_flags = 0 # ImGuiWindowFlags_AlwaysAutoResize
    ImGui::Begin("SDL_Delay", p_open, window_flags)

    # Arrow buttons with Repeater
    spacing = ImGuiStyle.new(ImGui::GetStyle())[:ItemInnerSpacing][:x]

    ImGui::PushButtonRepeat(true)
    delay_counter -= 1 if ImGui::ArrowButton("##left", ImGuiDir_Left) and delay_counter > 0
    ImGui::SameLine(0.0, spacing)
    delay_counter += 1 if ImGui::ArrowButton("##right", ImGuiDir_Right) and delay_counter < 100
    ImGui::PopButtonRepeat()
    ImGui::SameLine(0.0, -1.0)
    ImGui::Text("%3d", :int, delay_counter)

    ImGui::End()


    ImGui::Render()
    ImGui::ImplOpenGL2_RenderDrawData(ImGui::GetDrawData())

    SDL_GL_SwapWindow(window)

    SDL_Delay(delay_counter)
  end

  ImGui::ImplOpenGL2_Shutdown()
  ImGui::ImplSDL2_Shutdown()
  ImGui::DestroyContext(nil)

  SDL_GL_DeleteContext(context)
  SDL_DestroyWindow(window)
  SDL_Quit()
end
