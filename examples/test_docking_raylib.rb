require 'ffi'
require 'raylib'


def imgui_bindings_gem_available?
  Gem::Specification.find_by_name('imgui-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('imgui-bindings')
end


def shared_lib_suffix
  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    'dll'
  when /darwin/
    arch = RUBY_PLATFORM.split('-')[0]
    "#{arch}.dylib"
  when /linux/
    arch = RUBY_PLATFORM.split('-')[0]
    "#{arch}.so"
  else
    raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
  end
end


def setup_raylib_bindings
  raylib_spec = Gem::Specification.find_by_name('raylib-bindings')
  shared_lib_path = File.join(raylib_spec.full_gem_path, 'lib')
  Raylib.load_lib(File.join(shared_lib_path, "libraylib.#{shared_lib_suffix}"))
end


def setup_imgui_bindings
  if imgui_bindings_gem_available?
    require 'imgui'
    require 'imgui_impl_docking_raylib'

    spec = Gem::Specification.find_by_name('imgui-bindings')
    shared_lib_path = File.join(spec.full_gem_path, 'lib')
    ImGui.load_lib(File.join(shared_lib_path, "imgui.#{shared_lib_suffix}"))
  else
    require_relative '../lib/imgui'
    require_relative '../lib/imgui_impl_docking_raylib'

    local_lib_path = File.expand_path('../lib', __dir__)
    ImGui.load_lib(File.join(local_lib_path, "imgui.#{shared_lib_suffix}"))
  end
end


if __FILE__ == $PROGRAM_NAME
  setup_raylib_bindings
  setup_imgui_bindings

  screen_width = 1280
  screen_height = 800

  Raylib.InitWindow(screen_width, screen_height, 'Dear ImGui raylib docking example')
  Raylib.SetTargetFPS(60)

  ImGui.CreateContext()
  io = ImGuiIO.new(ImGui.GetIO())
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad
  io[:ConfigFlags] |= ImGuiConfigFlags_DockingEnable
  io[:ConfigFlags] |= ImGuiConfigFlags_ViewportsEnable

  ImGui.StyleColorsDark()

  style = ImGuiStyle.new(ImGui.GetStyle())
  if (io[:ConfigFlags] & ImGuiConfigFlags_ViewportsEnable) != 0
    style[:WindowRounding] = 0.0
    style[:Colors][ImGuiCol_WindowBg][:w] = 1.0
  end

  ImGui.ImplDockingRaylib_Init()

  show_demo_window = FFI::MemoryPointer.new(:bool, 1)
  show_demo_window.write(:bool, true)
  show_another_window = FFI::MemoryPointer.new(:bool, 1)
  show_another_window.write(:bool, false)
  f_value = FFI::MemoryPointer.new(:float, 1)
  f_value.write(:float, 0.0)
  counter = FFI::MemoryPointer.new(:int, 1)
  counter.write(:int, 0)
  clear_color = ImVec4.create(0.45, 0.55, 0.60, 1.0)

  until Raylib.WindowShouldClose()
    ImGui.ImplDockingRaylib_NewFrame()
    ImGui.NewFrame()

    ImGui.ShowDemoWindow(show_demo_window) if show_demo_window.read(:bool)

    ImGui.Begin('Hello, world!')
    ImGui.Text('This is some useful text.')
    ImGui.Checkbox('Demo Window', show_demo_window)
    ImGui.Checkbox('Another Window', show_another_window)
    ImGui.SliderFloat('float', f_value, 0.0, 1.0)
    ImGui.ColorEdit3('clear color', clear_color.to_ptr)

    if ImGui.Button('Button')
      counter.write(:int, counter.read(:int) + 1)
    end
    ImGui.SameLine()
    ImGui.Text('counter = %d', :int, counter.read(:int))
    ImGui.Text('Application average %.3f ms/frame (%.1f FPS)', :float, 1000.0 / io[:Framerate], :float, io[:Framerate])
    ImGui.End()

    if show_another_window.read(:bool)
      ImGui.Begin('Another Window', show_another_window)
      ImGui.Text('Hello from another window!')
      show_another_window.write(:bool, false) if ImGui.Button('Close Me')
      ImGui.End()
    end

    ImGui.Render()

    Raylib.BeginDrawing()
    Raylib.ClearBackground(Raylib::Color.from_u8(
      (clear_color[:x] * clear_color[:w] * 255.0).to_i,
      (clear_color[:y] * clear_color[:w] * 255.0).to_i,
      (clear_color[:z] * clear_color[:w] * 255.0).to_i,
      (clear_color[:w] * 255.0).to_i
    ))
    ImGui.ImplDockingRaylib_RenderDrawData(ImGui.GetDrawData())
    Raylib.EndDrawing()
  end

  ImGui.ImplDockingRaylib_Shutdown()
  ImGui.DestroyContext(nil)
  Raylib.CloseWindow()
end
