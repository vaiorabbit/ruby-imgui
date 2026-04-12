# coding: utf-8

require 'ffi'
require 'opengl'

require_relative './basic_usage'

WINDOW_W = 1920
WINDOW_H = 1080


def imgui_bindings_gem_available?
  Gem::Specification.find_by_name('imgui-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('imgui-bindings')
end


def setup_imgui_bindings
  if imgui_bindings_gem_available?
    require 'imgui'
    require 'imgui_impl_sdl3'
    require 'imgui_impl_opengl3'

    spec = Gem::Specification.find_by_name('imgui-bindings')
    shared_lib_path = File.join(spec.full_gem_path, 'lib')

    case RUBY_PLATFORM
    when /mswin|msys|mingw|cygwin/
      ImGui.load_lib(File.join(shared_lib_path, 'imgui.dll'))
    when /darwin/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(shared_lib_path, "imgui.#{arch}.dylib"))
    when /linux/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(shared_lib_path, "imgui.#{arch}.so"))
    else
      raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
    end
  else
    require_relative '../lib/imgui'
    require_relative '../lib/imgui_impl_sdl3'
    require_relative '../lib/imgui_impl_opengl3'

    local_lib_path = File.expand_path('../lib', __dir__)
    case RUBY_PLATFORM
    when /mswin|msys|mingw|cygwin/
      ImGui.load_lib(File.join(local_lib_path, 'imgui.dll'))
    when /darwin/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(local_lib_path, "imgui.#{arch}.dylib"))
    when /linux/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(local_lib_path, "imgui.#{arch}.so"))
    else
      raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
    end
  end
end


def setup_sdl3_bindings
  require 'sdl3'

  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    SDL.load_lib(File.join(__dir__, 'SDL3.dll'))
  when /darwin/
    SDL.load_lib('libSDL3.dylib')
  when /linux/
    SDL.load_lib('libSDL3.so')
  else
    raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
  end
end


def sdl_error_message
  err = SDL.GetError()
  err == nil ? 'unknown error' : err.read_string
end


def render_basic_usage_demo
  ImGuiDemo::BasicWindow::Show()
  ImGuiDemo::ButtonAndCheckboxWindow::Show()
  ImGuiDemo::RadioButtonWindow::Show()
  ImGuiDemo::ArrowButtonWindow::Show()
  ImGuiDemo::DropdownListAndInputWindow::Show()
  ImGuiDemo::SlidersWindow1::Show()
  ImGuiDemo::SlidersWindow2::Show()
  ImGuiDemo::SlidersWindow3::Show()
  ImGuiDemo::EnumAndColorSelectionWindow::Show()
  ImGuiDemo::ListBoxWindow::Show()
  ImGuiDemo::InputTextWindow::Show()
  ImGuiDemo::TreeNodeWindow::Show()
  ImGuiDemo::TooltipAndPopupWindow::Show()
  ImGuiDemo::PlotAndProgressWindow::Show()
  ImGuiDemo::ChildWindow::Show()
  ImGuiDemo::TabWindow::Show()
  # ImGuiDemo::SearchWindow::Show()
  ImGuiDemo::MainMenuBarWindow::Show()
  # ImGuiDemo::ClippingAndDummyWindow::Show()
  ImGuiDemo::StackToolWindow::Show()
  ImGuiDemo::SeparatorTextWindow::Show()
  ImGuiDemo::PopupWindow::Show()
end


if __FILE__ == $PROGRAM_NAME
  setup_imgui_bindings
  setup_sdl3_bindings

  unless SDL.Init(SDL::INIT_VIDEO | SDL::INIT_GAMEPAD)
    STDERR.puts("Error: SDL.Init failed: #{sdl_error_message}")
    exit 1
  end

  if RUBY_PLATFORM =~ /darwin/
    glsl_version = '#version 150'
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_FLAGS, SDL::GL_CONTEXT_FORWARD_COMPATIBLE_FLAG)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_PROFILE_MASK, SDL::GL_CONTEXT_PROFILE_CORE)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 3)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 2)
  else
    glsl_version = '#version 130'
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_FLAGS, 0)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_PROFILE_MASK, SDL::GL_CONTEXT_PROFILE_CORE)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 3)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 0)
  end

  SDL.GL_SetAttribute(SDL::GL_DOUBLEBUFFER, 1)
  SDL.GL_SetAttribute(SDL::GL_DEPTH_SIZE, 24)
  SDL.GL_SetAttribute(SDL::GL_STENCIL_SIZE, 8)

  main_scale = 1.0
  begin
    main_scale = SDL.GetDisplayContentScale(SDL.GetPrimaryDisplay())
  rescue
    main_scale = 1.0
  end

  window_flags = SDL::WINDOW_OPENGL | SDL::WINDOW_RESIZABLE | SDL::WINDOW_HIDDEN | SDL::WINDOW_HIGH_PIXEL_DENSITY
  window = SDL.CreateWindow('Ruby-ImGui (SDL3+OpenGL3)', (WINDOW_W * main_scale).to_i, (WINDOW_H * main_scale).to_i, window_flags)
  if window == nil
    STDERR.puts("Error: SDL.CreateWindow failed: #{sdl_error_message}")
    SDL.Quit()
    exit 1
  end

  gl_context = SDL.GL_CreateContext(window)
  if gl_context == nil
    STDERR.puts("Error: SDL.GL_CreateContext failed: #{sdl_error_message}")
    SDL.DestroyWindow(window)
    SDL.Quit()
    exit 1
  end

  SDL.GL_MakeCurrent(window, gl_context)
  SDL.GL_SetSwapInterval(1)

  begin
    SDL.SetWindowPosition(window, SDL::WINDOWPOS_CENTERED, SDL::WINDOWPOS_CENTERED)
  rescue
    SDL.SetWindowPosition(window, 64, 64)
  end
  SDL.ShowWindow(window)

  GL.load_lib()

  ImGui::CreateContext()
  io = ImGuiDemo::GetIO()
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad

  layout_path = File.join(__dir__, 'basic_usage_layout.ini')
  ImGui::LoadIniSettingsFromDisk(layout_path)
  io[:IniFilename] = nil
  io[:WantSaveIniSettings] = false

  ImGui::StyleColorsDark()
  style = ImGuiDemo::GetStyle()
  style.ScaleAllSizes(main_scale)
  style[:FontScaleDpi] = main_scale

  ImGui::ImplSDL3_InitForOpenGL(window, gl_context)
  ImGui::ImplOpenGL3_Init(glsl_version)

  ImGuiDemo::AddFont(File.join(__dir__, 'jpfont', 'GenShinGothic-Normal.ttf'), File.join(__dir__, 'iconfont', 'fontawesome-webfont.ttf'))
  ImGuiDemo::SetGlobalScale(0.8)

  event = SDL::Event.new
  done = false
  window_id = SDL.GetWindowID(window)

  until done
    while SDL.PollEvent(event)
      ImGui::ImplSDL3_ProcessEvent(event)
      event_type = event[:type]
      if event_type == SDL::EVENT_QUIT
        done = true
      elsif event_type == SDL::EVENT_WINDOW_CLOSE_REQUESTED && event[:window][:windowID] == window_id
        done = true
      end
    end

    if (SDL.GetWindowFlags(window) & SDL::WINDOW_MINIMIZED) != 0
      next
    end

    ImGui::ImplOpenGL3_NewFrame()
    ImGui::ImplSDL3_NewFrame()
    ImGui::NewFrame()

    ok_clicked = render_basic_usage_demo
    done = true if ok_clicked

    ImGui::Render()
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(0.45, 0.55, 0.60, 1.0)
    GL.Clear(GL::COLOR_BUFFER_BIT)

    ImGui::ImplOpenGL3_RenderDrawData(ImGui::GetDrawData())
    SDL.GL_SwapWindow(window)
  end

  ImGui::ImplOpenGL3_Shutdown()
  ImGui::ImplSDL3_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DestroyContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
