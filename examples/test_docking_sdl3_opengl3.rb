require 'ffi'
require 'opengl'


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
    require 'imgui_impl_docking_sdl3'
    require 'imgui_impl_docking_opengl3'

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
    require_relative '../lib/imgui_impl_docking_sdl3'
    require_relative '../lib/imgui_impl_docking_opengl3'

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
  window = SDL.CreateWindow('Dear ImGui SDL3+OpenGL3 docking example', (1280 * main_scale).to_i, (800 * main_scale).to_i, window_flags)
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
  io = ImGuiIO.new(ImGui::GetIO())
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad
  io[:ConfigFlags] |= ImGuiConfigFlags_DockingEnable
  io[:ConfigFlags] |= ImGuiConfigFlags_ViewportsEnable

  ImGui::StyleColorsDark()
  style = ImGuiStyle.new(ImGui::GetStyle())
  style.ScaleAllSizes(main_scale)
  style[:FontScaleDpi] = main_scale

  # When viewports are enabled, tweak WindowRounding/WindowBg so platform windows look identical to regular ones.
  if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) != 0
    style[:WindowRounding] = 0.0
    style[:Colors][ImGuiCol_WindowBg][:w] = 1.0
  end

  ImGui::ImplDockingSDL3_InitForOpenGL(window, gl_context)
  ImGui::ImplDockingOpenGL3_Init(glsl_version)

  show_demo_window = FFI::MemoryPointer.new(:bool, 1)
  show_demo_window.write(:bool, true)
  show_another_window = FFI::MemoryPointer.new(:bool, 1)
  show_another_window.write(:bool, false)
  f_value = FFI::MemoryPointer.new(:float, 1)
  f_value.write(:float, 0.0)
  counter = FFI::MemoryPointer.new(:int, 1)
  counter.write(:int, 0)
  clear_color = ImVec4.create(0.45, 0.55, 0.60, 1.0)

  event = SDL::Event.new
  done = false
  window_id = SDL.GetWindowID(window)

  until done
    while SDL.PollEvent(event)
      ImGui::ImplDockingSDL3_ProcessEvent(event)
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

    ImGui::ImplDockingOpenGL3_NewFrame()
    ImGui::ImplDockingSDL3_NewFrame()
    ImGui::NewFrame()

    ImGui::ShowDemoWindow(show_demo_window) if show_demo_window.read(:bool)

    ImGui::Begin('Hello, world!')
    ImGui::Text('This is some useful text.')
    ImGui::Checkbox('Demo Window', show_demo_window)
    ImGui::Checkbox('Another Window', show_another_window)
    ImGui::SliderFloat('float', f_value, 0.0, 1.0)
    ImGui::ColorEdit3('clear color', clear_color.to_ptr)

    if ImGui::Button('Button')
      counter.write(:int, counter.read(:int) + 1)
    end
    ImGui::SameLine()
    ImGui::Text('counter = %d', :int, counter.read(:int))
    ImGui::Text('Application average %.3f ms/frame (%.1f FPS)', :float, 1000.0 / io[:Framerate], :float, io[:Framerate])
    ImGui::End()

    if show_another_window.read(:bool)
      ImGui::Begin('Another Window', show_another_window)
      ImGui::Text('Hello from another window!')
      show_another_window.write(:bool, false) if ImGui::Button('Close Me')
      ImGui::End()
    end

    ImGui::Render()
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(clear_color[:x] * clear_color[:w], clear_color[:y] * clear_color[:w], clear_color[:z] * clear_color[:w], clear_color[:w])
    GL.Clear(GL::COLOR_BUFFER_BIT)
    ImGui::ImplDockingOpenGL3_RenderDrawData(ImGui::GetDrawData())

    # Update and render additional platform windows when viewports are enabled.

    begin # if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) != 0
      backup_current_window = SDL.GL_GetCurrentWindow()
      backup_current_context = SDL.GL_GetCurrentContext()
      ImGui::UpdatePlatformWindows()
      ImGui::RenderPlatformWindowsDefault()
      SDL.GL_MakeCurrent(backup_current_window, backup_current_context)
    end

    SDL.GL_SwapWindow(window)
  end

  ImGui::ImplDockingOpenGL3_Shutdown()
  ImGui::ImplDockingSDL3_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DestroyContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
