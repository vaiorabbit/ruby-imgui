require 'ffi'


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
    require 'imgui_impl_sdl3renderer'

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
    require_relative '../lib/imgui_impl_sdl3renderer'

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

  main_scale = 1.0
  begin
    main_scale = SDL.GetDisplayContentScale(SDL.GetPrimaryDisplay())
  rescue
    main_scale = 1.0
  end

  window_flags = SDL::WINDOW_RESIZABLE | SDL::WINDOW_HIDDEN | SDL::WINDOW_HIGH_PIXEL_DENSITY
  window = SDL.CreateWindow('Dear ImGui SDL3+SDL_Renderer example', (1280 * main_scale).to_i, (800 * main_scale).to_i, window_flags)
  if window == nil
    STDERR.puts("Error: SDL.CreateWindow failed: #{sdl_error_message}")
    SDL.Quit()
    exit 1
  end

  renderer = SDL.CreateRenderer(window, nil)
  if renderer == nil
    STDERR.puts("Error: SDL.CreateRenderer failed: #{sdl_error_message}")
    SDL.DestroyWindow(window)
    SDL.Quit()
    exit 1
  end

  SDL.SetRenderVSync(renderer, 1)
  SDL.SetWindowPosition(window, 64, 64)
  SDL.ShowWindow(window)

  ImGui::CreateContext()
  io = ImGuiIO.new(ImGui::GetIO())
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad

  ImGui::StyleColorsDark()
  style = ImGuiStyle.new(ImGui::GetStyle())
  style.ScaleAllSizes(main_scale)
  style[:FontScaleDpi] = main_scale

  ImGui::ImplSDL3_InitForSDLRenderer(window, renderer)
  ImGui::ImplSDL3Renderer_Init(renderer)

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

    ImGui::ImplSDL3Renderer_NewFrame()
    ImGui::ImplSDL3_NewFrame()
    ImGui::NewFrame()

    ImGui::ShowDemoWindow(show_demo_window) if show_demo_window.read(:bool)

    ImGui::Begin('Hello, world!')
    ImGui::TextUnformattedEx('This is some useful text.') # ImGui::Text('This is some useful text.')
    ImGui::Checkbox('Demo Window', show_demo_window)
    ImGui::Checkbox('Another Window', show_another_window)
    ImGui::SliderFloatEx('float', f_value, 0.0, 1.0) # ImGui::SliderFloat('float', f_value, 0.0, 1.0)
    ImGui::ColorEdit3('clear color', clear_color.to_ptr)

    if ImGui::ButtonEx('Button') # ImGui::Button('Button')
      counter.write(:int, counter.read(:int) + 1)
    end
    ImGui::SameLineEx() # ImGui::SameLine()
    # ImGui::Text('counter = %d', :int, counter.read(:int))
    # ImGui::Text('Application average %.3f ms/frame (%.1f FPS)', :float, 1000.0 / io[:Framerate], :float, io[:Framerate])
    ImGui::End()

    if show_another_window.read(:bool)
      ImGui::Begin('Another Window', show_another_window)
      ImGui::TextUnformattedEx('Hello from another window!') # ImGui::Text('Hello from another window!')
      show_another_window.write(:bool, false) if ImGui::Button('Close Me')
      ImGui::End()
    end

    ImGui::Render()
    SDL.SetRenderScale(renderer, io[:DisplayFramebufferScale][:x], io[:DisplayFramebufferScale][:y])
    SDL.SetRenderDrawColorFloat(renderer, clear_color[:x], clear_color[:y], clear_color[:z], clear_color[:w])
    SDL.RenderClear(renderer)
    ImGui::ImplSDL3Renderer_RenderDrawData(ImGui::GetDrawData(), renderer)
    SDL.RenderPresent(renderer)
  end

  ImGui::ImplSDL3Renderer_Shutdown()
  ImGui::ImplSDL3_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.DestroyRenderer(renderer)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
