# coding: utf-8
require '../lib/imgui'

if __FILE__ == $PROGRAM_NAME

  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll', true)

  ImGui::CreateContext()

  io = ImGuiIO.new(ImGui::GetIO())

  # ImGui::ShowDemoWindow()

  # ImGui::Begin("Ruby-ImGui : はじめてのウィンドウ＆日本語") #, p_open, window_flags)
  # ImGui::End()

  ImGui::DestroyContext(nil)
end
