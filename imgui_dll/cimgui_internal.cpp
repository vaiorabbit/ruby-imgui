#include "cimgui/imgui/imgui.h"
#include "cimgui/imgui/imgui_internal.h"
#include "./cimgui_internal.h"

CIMGUI_API void igFocusWindow(ImGuiWindow* window)
{
    return ImGui::FocusWindow(window);
}
CIMGUI_API ImGuiWindow* igGetCurrentWindow()
{
    return ImGui::GetCurrentWindow();
}
