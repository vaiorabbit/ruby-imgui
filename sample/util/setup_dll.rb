require_relative '../../lib/imgui'
require_relative '../../lib/imgui_internal'
require_relative '../../lib/imnodes'

case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin/
  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll')
  ImGui.import_internal_symbols()
  ImNodes.load_lib(Dir.pwd + '/../lib/' + 'imnodes.dll')
when /darwin/
  arch = RUBY_PLATFORM.split('-')[0]
  ImGui.load_lib(Dir.pwd + '/../lib/' + "imgui.#{arch}.dylib")
  ImGui.import_internal_symbols()
  ImNodes.load_lib(Dir.pwd + '/../lib/' + "imnodes.#{arch}.dylib")
when /linux/
  arch = RUBY_PLATFORM.split('-')[0]
  ImGui.load_lib(Dir.pwd + '/../lib/' + "imgui.#{arch}.so")
  ImGui.import_internal_symbols()
  ImNodes.load_lib(Dir.pwd + '/../lib/' + "imnodes.#{arch}.so")
else
  raise RuntimeError, "setup_dll.rb : Unknown OS: #{RUBY_PLATFORM}"
end
