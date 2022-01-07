require_relative '../../lib/imgui'

case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll')
when /darwin/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dylib')
when /linux/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.so')
else
  raise RuntimeError, "setup_dll.rb : Unknown OS: #{RUBY_PLATFORM}"
end
