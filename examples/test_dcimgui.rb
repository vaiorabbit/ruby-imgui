# coding: utf-8
require '../lib/imgui'

if __FILE__ == $PROGRAM_NAME

  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll', true)

  ImGui::CreateContext()
  ImGui::StyleColorsDark()

  io = ImGuiIO.new(ImGui::GetIO())
  # ImFontAtlas.new(io[:Fonts]).AddFontDefault()

  # ImGui::NewFrame()
  # ImGui::ShowDemoWindow(nil)

  ImGui::Begin("", nil, 0)
  ImGui::End()
  ImGui::Render()

  ImGui::DestroyContext(nil)
end
