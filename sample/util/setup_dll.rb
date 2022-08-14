require_relative '../../lib/imgui'
require_relative '../../lib/imgui_internal'
require_relative '../../lib/imnodes'

case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll')
  ImGui.import_internal_symbols()
  ImNodes.load_lib(Dir.pwd + '/../lib/' + 'imnodes.dll')
when /darwin/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dylib')
  ImGui.import_internal_symbols()
  ImNodes.load_lib(Dir.pwd + '/../lib/' + 'imnodes.dylib')
when /linux/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.so')
else
  raise RuntimeError, "setup_dll.rb : Unknown OS: #{RUBY_PLATFORM}"
end
