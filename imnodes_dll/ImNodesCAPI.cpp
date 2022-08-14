#include "ImNodesCAPI.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
// CanvasState

ImNodesCanvasState* ImNodesCanvasStateCtor()
{
    return IM_NEW(ImNodes::CanvasState);
}

void ImNodesCanvasStateDtor(ImNodesCanvasState* instance)
{
    IM_DELETE(instance);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public API (Base)

void ImNodesBeginCanvas(ImNodesCanvasState* canvas)
{
    ImNodes::BeginCanvas(canvas);
}

void ImNodesEndCanvas()
{
    ImNodes::EndCanvas();
}

bool ImNodesBeginNode(void* node_id, ImVec2* pos, bool* selected)
{
    return ImNodes::BeginNode(node_id, pos, selected);
}

void ImNodesEndNode()
{
    ImNodes::EndNode();
}

bool ImNodesIsNodeHovered()
{
    return ImNodes::IsNodeHovered();
}

void ImNodesAutoPositionNode(void* node_id)
{
    ImNodes::AutoPositionNode(node_id);
}

bool ImNodesGetNewConnection(void** input_node, const char** input_slot_title, void** output_node, const char** output_slot_title)
{
    return ImNodes::GetNewConnection(input_node, input_slot_title, output_node, output_slot_title);
}

bool ImNodesGetPendingConnection(void** node_id, const char** slot_title, int* slot_kind)
{
    return ImNodes::GetPendingConnection(node_id, slot_title, slot_kind);
}

bool ImNodesConnection(void* input_node, const char* input_slot, void* output_node, const char* output_slot)
{
    return ImNodes::Connection(input_node, input_slot, output_node, output_slot);
}

ImNodesCanvasState* ImNodesGetCurrentCanvas()
{
    return ImNodes::GetCurrentCanvas();
}

int ImNodesInputSlotKind(int kind)
{
    return ImNodes::InputSlotKind(kind);
}

int ImNodesOutputSlotKind(int kind)
{
    return ImNodes::OutputSlotKind(kind);
}

bool ImNodesIsInputSlotKind(int kind)
{
    return ImNodes::IsInputSlotKind(kind);
}

bool ImNodesIsOutputSlotKind(int kind)
{
    return ImNodes::IsOutputSlotKind(kind);
}

bool ImNodesBeginSlot(const char* title, int kind)
{
    return ImNodes::BeginSlot(title, kind);
}

bool ImNodesBeginInputSlot(const char* title, int kind)
{
    return ImNodes::BeginInputSlot(title, kind);
}

bool ImNodesBeginOutputSlot(const char* title, int kind)
{
    return ImNodes::BeginOutputSlot(title, kind);
}

void ImNodesEndSlot()
{
    ImNodes::EndSlot();
}

bool ImNodesIsSlotCurveHovered()
{
    return ImNodes::IsSlotCurveHovered();
}

bool ImNodesIsConnectingCompatibleSlot()
{
    return ImNodes::IsConnectingCompatibleSlot();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public API (Ez)

ImNodesEzContext* ImNodesEzCreateContext()
{
    return ImNodes::Ez::CreateContext();
}

void ImNodesEzFreeContext(ImNodesEzContext *ctx)
{
    ImNodes::Ez::FreeContext(ctx);
}

void ImNodesEzSetContext(ImNodesEzContext *ctx)
{
    ImNodes::Ez::SetContext(ctx);
}

ImNodesCanvasState* ImNodesEzGetState()
{
    return &ImNodes::Ez::GetState();
}

void ImNodesEzBeginCanvas()
{
    ImNodes::Ez::BeginCanvas();
}

void ImNodesEzEndCanvas()
{
    ImNodes::Ez::EndCanvas();
}

bool ImNodesEzBeginNode(void* node_id, const char* title, ImVec2* pos, bool* selected)
{
    return ImNodes::Ez::BeginNode(node_id, title, pos, selected);
}

void ImNodesEzEndNode()
{
    ImNodes::Ez::EndNode();
}

void ImNodesEzInputSlots(const ImNodesEzSlotInfo* slots, int snum)
{
    ImNodes::Ez::InputSlots(slots, snum);
}

void ImNodesEzOutputSlots(const ImNodesEzSlotInfo* slots, int snum)
{
    ImNodes::Ez::OutputSlots(slots, snum);
}

bool ImNodesEzConnection(void* input_node, const char* input_slot, void* output_node, const char* output_slot)
{
    return ImNodes::Ez::Connection(input_node, input_slot, output_node, output_slot);
}

void ImNodesEzPushStyleVarFloat(ImNodesStyleVar idx, float val)
{
    ImNodes::Ez::PushStyleVar(idx, val);
}

void ImNodesEzPushStyleVarVec2(ImNodesStyleVar idx, const ImVec2 *val)
{
    ImNodes::Ez::PushStyleVar(idx, *val);
}

void ImNodesEzPopStyleVar(int count)
{
    ImNodes::Ez::PopStyleVar(count);
}

void ImNodesEzPushStyleColorU32(ImNodesStyleCol idx, ImU32 col)
{
    ImNodes::Ez::PushStyleColor(idx, col);
}

void ImNodesEzPushStyleColorVec4(ImNodesStyleCol idx, const ImVec4* col)
{
    ImNodes::Ez::PushStyleColor(idx, *col);
}

void ImNodesEzPopStyleColor(int count)
{
    ImNodes::Ez::PopStyleVar(count);
}
