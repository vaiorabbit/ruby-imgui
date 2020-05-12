# Ref.: imgui_demo.cpp (v1.76)
# https://github.com/ocornut/imgui/blob/v1.76/imgui_demo.cpp

module ImGuiDemo

  # ShowAboutWindow
  @@show_config_info = FFI::MemoryPointer.new(:bool, 1)

  def self.ShowAboutWindow(p_open)
    ImGui::Begin("About Dear ImGui", p_open, ImGuiWindowFlags_AlwaysAutoResize)
    ImGui::Text("Dear ImGui, %s", :pointer, ImGui::GetVersion())
    ImGui::Separator()
    ImGui::Text("By Omar Cornut and all dear imgui contributors.")
    ImGui::Text("Dear ImGui is licensed under the MIT License, see LICENSE for more information.")

    ImGui::Checkbox("Config/Build Information", @@show_config_info)
    if @@show_config_info.read(:bool) == true
      io = ImGuiIO.new(ImGui::GetIO())
      style = ImGuiStyle.new(ImGui::GetStyle())

      cfginfos_frame = ImVec2.create(0, ImGui::GetTextLineHeightWithSpacing() * 18)
      copy_to_clipboard = ImGui::Button("Copy to clipboard")
      ImGui::BeginChildFrame(ImGui::GetIDStr("cfginfos"), cfginfos_frame, ImGuiWindowFlags_NoMove)
      max_depth = -1
      ImGui::LogToClipboard(max_depth) if copy_to_clipboard

      ImGui::Text("Dear ImGui %s", :pointer, ImGui::GetVersion().read_string())
      ImGui::Separator();

      ImGui::Text("io.ConfigFlags: 0x%08X", :uint, io[:ConfigFlags])
      ImGui::Text(" NavEnableKeyboard")     if (io[:ConfigFlags] & ImGuiConfigFlags_NavEnableKeyboard) != 0
      ImGui::Text(" NavEnableGamepad")      if (io[:ConfigFlags] & ImGuiConfigFlags_NavEnableGamepad) != 0
      ImGui::Text(" NavEnableSetMousePos")  if (io[:ConfigFlags] & ImGuiConfigFlags_NavEnableSetMousePos) != 0
      ImGui::Text(" NavNoCaptureKeyboard")  if (io[:ConfigFlags] & ImGuiConfigFlags_NavNoCaptureKeyboard) != 0
      ImGui::Text(" NoMouse")               if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouse) != 0
      ImGui::Text(" NoMouseCursorChange")   if (io[:ConfigFlags] & ImGuiConfigFlags_NoMouseCursorChange) != 0
      ImGui::Text(" IsSRGB")                if (io[:ConfigFlags] & ImGuiConfigFlags_IsSRGB) != 0
      ImGui::Text(" IsTouchScreen")         if (io[:ConfigFlags] & ImGuiConfigFlags_IsTouchScreen) != 0
      ImGui::Text(" MouseDrawCursor")              if io[:MouseDrawCursor]
      ImGui::Text(" ConfigMacOSXBehaviors")        if io[:ConfigMacOSXBehaviors]
      ImGui::Text(" ConfigInputTextCursorBlink")   if io[:ConfigInputTextCursorBlink]
      ImGui::Text(" ConfigResizeWindowsFromEdges") if io[:ConfigWindowsResizeFromEdges]
      ImGui::Text("io.BackendFlags: 0x%08X", :uint, io[:BackendFlags])
      ImGui::Text(" HasGamepad")      if (io[:BackendFlags] & ImGuiBackendFlags_HasGamepad) != 0
      ImGui::Text(" HasMouseCursors") if (io[:BackendFlags] & ImGuiBackendFlags_HasMouseCursors) != 0
      ImGui::Text(" HasSetMousePos")  if (io[:BackendFlags] & ImGuiBackendFlags_HasSetMousePos) != 0
      ImGui::Text("io.BackendPlatformName: %s", :pointer, io[:BackendPlatformName] != nil ? io[:BackendPlatformName].read_string_to_null : "NULL")
      ImGui::Text("io.BackendRendererName: %s", :pointer, io[:BackendRendererName] != nil ? io[:BackendRendererName].read_string_to_null : "NULL")

      ImGui::Separator()
      font_atlas = io[:Fonts]
      ImGui::Text("io.Fonts: %d fonts, Flags: 0x%08X, TexSize: %d,%d", :int, font_atlas[:Fonts][:Size], :uint, font_atlas[:Flags], :int, font_atlas[:TexWidth], :int, font_atlas[:TexHeight])
      ImGui::Text("io.DisplaySize: %.2f,%.2f", :float, io[:DisplaySize][:x], :float, io[:DisplaySize][:y])
      ImGui::Separator()
      ImGui::Text("style[:WindowPadding]: %.2f,%.2f", :float, style[:WindowPadding][:x], :float, style[:WindowPadding][:y])
      ImGui::Text("style.WindowBorderSize: %.2f", :float, style[:WindowBorderSize])
      ImGui::Text("style.FramePadding: %.2f,%.2f", :float, style[:FramePadding][:x], :float, style[:FramePadding][:y])
      ImGui::Text("style.FrameRounding: %.2f", :float, style[:FrameRounding])
      ImGui::Text("style.FrameBorderSize: %.2f", :float, style[:FrameBorderSize])
      ImGui::Text("style.ItemSpacing: %.2f,%.2f", :float, style[:ItemSpacing][:x], :float, style[:ItemSpacing][:y])
      ImGui::Text("style.ItemInnerSpacing: %.2f,%.2f", :float, style[:ItemInnerSpacing][:x], :float, style[:ItemInnerSpacing][:y])

      ImGui::LogFinish() if copy_to_clipboard
      ImGui::EndChildFrame()
    end

    ImGui::End()
  end

end # module ImGuiDemo

