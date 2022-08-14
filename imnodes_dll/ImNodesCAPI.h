#pragma once

#include "ImNodes/ImNodes.h"
#include "ImNodes/ImNodesEz.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
// Typedefs, Enums, Structs

typedef ImNodes::CanvasState ImNodesCanvasState;
typedef ImNodes::Ez::SlotInfo ImNodesEzSlotInfo;
typedef ImNodes::Ez::Context ImNodesEzContext;

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public API (Base)

extern "C" {

IMGUI_API ImNodesCanvasState* ImNodesCanvasStateCtor();
IMGUI_API void ImNodesCanvasStateDtor(ImNodesCanvasState* instance);

/// Create a node graph canvas in current window.
IMGUI_API void ImNodesBeginCanvas(ImNodesCanvasState* canvas);
/// Terminate a node graph canvas that was created by calling BeginCanvas().
IMGUI_API void ImNodesEndCanvas();
/// Begin rendering of node in a graph. Render node content when returns `true`.
IMGUI_API bool ImNodesBeginNode(void* node_id, ImVec2* pos, bool* selected);
/// Terminates current node. Should be called regardless of BeginNode() returns value.
IMGUI_API void ImNodesEndNode();
/// Returns `true` if the current node is hovered. Call between `BeginNode()` and `EndNode()`.
IMGUI_API bool ImNodesIsNodeHovered();
/// Specified node will be positioned at the mouse cursor on next frame. Call when new node is created.
IMGUI_API void ImNodesAutoPositionNode(void* node_id);
/// Returns `true` when new connection is made. Connection information is returned into `connection` parameter. Must be
/// called at id scope created by BeginNode().
IMGUI_API bool ImNodesGetNewConnection(void** input_node, const char** input_slot_title, void** output_node, const char** output_slot_title);
/// Get information of connection that is being made and has only one end connected. Returns true when pending connection exists, false otherwise.
IMGUI_API bool ImNodesGetPendingConnection(void** node_id, const char** slot_title, int* slot_kind);
/// Render a connection. Returns `true` when connection is present, `false` if it is deleted.
IMGUI_API bool ImNodesConnection(void* input_node, const char* input_slot, void* output_node, const char* output_slot);
/// Returns active canvas state when called between BeginCanvas() and EndCanvas(). Returns nullptr otherwise. This function is not thread-safe.
IMGUI_API ImNodesCanvasState* ImNodesGetCurrentCanvas();
/// Convert kind id to input type.
IMGUI_API int ImNodesInputSlotKind(int kind);
/// Convert kind id to output type.
IMGUI_API int ImNodesOutputSlotKind(int kind);
/// Returns `true` if `kind` is from input slot.
IMGUI_API bool ImNodesIsInputSlotKind(int kind);
/// Returns `true` if `kind` is from output slot.
IMGUI_API bool ImNodesIsOutputSlotKind(int kind);
/// Begins slot region. Kind is unique value indicating slot type. Negative values mean input slots, positive - output slots.
IMGUI_API bool ImNodesBeginSlot(const char* title, int kind);
/// Begins slot region. Kind is unique value whose sign is ignored.
IMGUI_API bool ImNodesBeginInputSlot(const char* title, int kind);
/// Begins slot region. Kind is unique value whose sign is ignored.
IMGUI_API bool ImNodesBeginOutputSlot(const char* title, int kind);
/// Rends rendering of slot. Call only if Begin*Slot() returned `true`.
IMGUI_API void ImNodesEndSlot();
/// Returns `true` if curve connected to current slot is hovered. Call between `Begin*Slot()` and `EndSlot()`. In-progress
/// connection is considered hovered as well.
IMGUI_API bool ImNodesIsSlotCurveHovered();
/// Returns `true` when new slot is being created and current slot can be connected. Call between `Begin*Slot()` and `EndSlot()`.
IMGUI_API bool ImNodesIsConnectingCompatibleSlot();

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public API (Ez)

IMGUI_API ImNodesEzContext* ImNodesEzCreateContext();
IMGUI_API void ImNodesEzFreeContext(ImNodesEzContext *ctx);
IMGUI_API void ImNodesEzSetContext(ImNodesEzContext *ctx);

IMGUI_API ImNodesCanvasState* ImNodesEzGetState();

IMGUI_API void ImNodesEzBeginCanvas();
IMGUI_API void ImNodesEzEndCanvas();

/// Begin rendering of node in a graph. Render node content when returns `true`.
IMGUI_API bool ImNodesEzBeginNode(void* node_id, const char* title, ImVec2* pos, bool* selected);
/// Terminates current node. Should be called regardless of BeginNode() returns value.
IMGUI_API void ImNodesEzEndNode();
/// Renders input slot region. Kind is unique value whose sign is ignored.
/// This function must always be called after BeginNode() and before OutputSlots().
/// When no input slots are rendered call InputSlots(nullptr, 0);
IMGUI_API void ImNodesEzInputSlots(const ImNodesEzSlotInfo* slots, int snum);
/// Renders output slot region. Kind is unique value whose sign is ignored. This function must always be called after InputSlots() and function call is required (not optional).
/// This function must always be called after InputSlots() and before EndNode().
/// When no input slots are rendered call OutputSlots(nullptr, 0);
IMGUI_API void ImNodesEzOutputSlots(const ImNodesEzSlotInfo* slots, int snum);

IMGUI_API bool ImNodesEzConnection(void* input_node, const char* input_slot, void* output_node, const char* output_slot);

IMGUI_API void ImNodesEzPushStyleVarFloat(ImNodesStyleVar idx, float val);
IMGUI_API void ImNodesEzPushStyleVarVec2(ImNodesStyleVar idx, const ImVec2 *val);
IMGUI_API void ImNodesEzPopStyleVar(int count = 1);

IMGUI_API void ImNodesEzPushStyleColorU32(ImNodesStyleCol idx, ImU32 col);
IMGUI_API void ImNodesEzPushStyleColorVec4(ImNodesStyleCol idx, const ImVec4* col);
IMGUI_API void ImNodesEzPopStyleColor(int count);

} // extern "C"
