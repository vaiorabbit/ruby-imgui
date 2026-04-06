# coding: utf-8
require '../lib/imgui'

if __FILE__ == $PROGRAM_NAME

  ImGui.load_lib(Dir.pwd + '/../lib/' + 'imgui.dll', true)

  ImGui::CreateContext()
  ImGui::StyleColorsDark()

  io = ImGuiIO.new(ImGui::GetIO())
  io[:DisplaySize] = ImVec2.create(1280, 720)
  io[:BackendFlags] |= ImGuiBackendFlags_RendererHasTextures

  # ImFontAtlas.new(io[:Fonts]).AddFontDefault()

  ImGui::NewFrame()
  ImGui::ShowDemoWindow(nil)

  ImGui::Begin("test")
  ImGui::End()
  ImGui::Render()

  ImGui::DestroyContext(nil)
end
