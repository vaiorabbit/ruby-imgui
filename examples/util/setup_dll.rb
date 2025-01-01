def imgui_bindings_gem_available?
  Gem::Specification.find_by_name('imgui-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('imgui-bindings')
end

if imgui_bindings_gem_available?
  # puts("Loading from Gem system path.")
  require 'imgui'
  require 'imgui_impl_opengl2'
  require 'imgui_impl_opengl3'
  require 'imgui_impl_glfw'

  s = Gem::Specification.find_by_name('imgui-bindings')
  shared_lib_path = s.full_gem_path + '/lib/'

  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    ImGui.load_lib(shared_lib_path + 'imgui.dll')
  when /darwin/
    arch = RUBY_PLATFORM.split('-')[0]
    ImGui.load_lib(shared_lib_path + "imgui.#{arch}.dylib")
  when /linux/
    arch = RUBY_PLATFORM.split('-')[0]
    ImGui.load_lib(shared_lib_path + "imgui.#{arch}.so")
  else
    raise RuntimeError, "setup_dll.rb : Unknown OS: #{RUBY_PLATFORM}"
  end
else
  # puts("Loaging from local path.")
  require '../lib/imgui'
  require_relative '../../lib/imgui_impl_opengl2'
  require_relative '../../lib/imgui_impl_opengl3'
  require_relative '../../lib/imgui_impl_glfw'

  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll')
  when /darwin/
    arch = RUBY_PLATFORM.split('-')[0]
    ImGui.load_lib(Dir.pwd + '/../lib/' + "imgui.#{arch}.dylib")
  when /linux/
    arch = RUBY_PLATFORM.split('-')[0]
    ImGui.load_lib(Dir.pwd + '/../lib/' + "imgui.#{arch}.so")
  else
    raise RuntimeError, "setup_dll.rb : Unknown OS: #{RUBY_PLATFORM}"
  end
end
