# coding: utf-8

require 'ffi'
require 'raylib'

WINDOW_W = 1100
WINDOW_H = 760


def imgui_bindings_gem_available?
  Gem::Specification.find_by_name('imgui-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('imgui-bindings')
end


def shared_lib_suffix
  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    'dll'
  when /darwin/
    arch = RUBY_PLATFORM.split('-')[0]
    "#{arch}.dylib"
  when /linux/
    arch = RUBY_PLATFORM.split('-')[0]
    "#{arch}.so"
  else
    raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
  end
end


def setup_raylib_bindings
  raylib_spec = Gem::Specification.find_by_name('raylib-bindings')
  shared_lib_path = File.join(raylib_spec.full_gem_path, 'lib')
  Raylib.load_lib(File.join(shared_lib_path, "libraylib.#{shared_lib_suffix}"))
end


def setup_imgui_bindings
  if imgui_bindings_gem_available?
    require 'imgui'
    require 'imgui_impl_docking_raylib'

    spec = Gem::Specification.find_by_name('imgui-bindings')
    shared_lib_path = File.join(spec.full_gem_path, 'lib')
    ImGui.load_lib(File.join(shared_lib_path, "imgui.#{shared_lib_suffix}"))
  else
    require_relative '../lib/imgui'
    require_relative '../lib/imgui_impl_docking_raylib'

    local_lib_path = File.expand_path('../lib', __dir__)
    ImGui.load_lib(File.join(local_lib_path, "imgui.#{shared_lib_suffix}"))
  end
end


def load_texture_from_image(image_path)
  texture = Raylib.LoadTexture(image_path)
  raise "Raylib.LoadTexture failed: #{image_path}" if texture[:id] == 0

  tex_ref = ImTextureRef.new
  tex_ref[:_TexData] = nil
  tex_ref[:_TexID] = texture[:id]

  {
    tex_ref: tex_ref,
    texture: texture,
    width: texture[:width],
    height: texture[:height]
  }
end


def destroy_texture(image)
  return if image.nil?
  return if image[:texture].nil?
  return if image[:texture][:id] == 0

  Raylib.UnloadTexture(image[:texture])
end


def draw_app_layout(ui_state, image)
  if ImGui.BeginMainMenuBar()
    if ImGui.BeginMenu('ファイル')
      ImGui.MenuItem('設定')
      ImGui.MenuItem('終了')
      ImGui.EndMenu()
    end
    ImGui.EndMainMenuBar()
  end

  viewport = ImGuiViewport.new(ImGui.GetMainViewport())

  ImGui.SetNextWindowPos(viewport[:WorkPos])
  ImGui.SetNextWindowSize(viewport[:WorkSize])

  flags = ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar
  ImGui.Begin('##app_layout', nil, flags)

  avail_top = ImGui.GetContentRegionAvail()
  footer_h = 42.0
  columns_h = avail_top[:y] - footer_h
  left_w = avail_top[:x] * 0.56

  ImGui.BeginChild('left_panel', ImVec2.create(left_w, columns_h), ImGuiChildFlags_Borders, 0)

  image_box_h = columns_h * 0.56
  ImGui.BeginChild('portrait_box', ImVec2.create(0, image_box_h), ImGuiChildFlags_Borders, 0)
  content = ImGui.GetContentRegionAvail()

  image_ratio = image[:height].to_f / image[:width]
  draw_w = content[:x]
  draw_h = draw_w * image_ratio
  if draw_h > content[:y]
    draw_h = content[:y]
    draw_w = draw_h / image_ratio
  end

  cursor = ImGui.GetCursorPos()
  ImGui.SetCursorPos(ImVec2.create(cursor[:x] + (content[:x] - draw_w) * 0.5, cursor[:y] + (content[:y] - draw_h) * 0.5))
  ImGui.Image(image[:tex_ref], ImVec2.create(draw_w, draw_h))
  ImGui.EndChild()

  ImGui.BeginChild('message_box', ImVec2.create(0, 0), ImGuiChildFlags_Borders, 0)
  ImGui.TextWrapped(ui_state[:current_message])
  ImGui.EndChild()

  ImGui.EndChild()

  ImGui.SameLine()

  ImGui.BeginChild('right_log', ImVec2.create(0, columns_h), ImGuiChildFlags_Borders, 0)
  ImGui.TextUnformatted('会話ログ')
  ImGui.Separator()
  ui_state[:history].each do |line|
    ImGui.TextWrapped(line)
  end
  ImGui.SetScrollHereY(1.0)
  ImGui.EndChild()

  send_now = false
  ImGui.InputText('##user_input', ui_state[:input_buf], ui_state[:input_buf].size, 0)
  send_now |= ImGui.IsItemDeactivatedAfterEdit()
  ImGui.SameLine()
  send_now |= ImGui.Button('送信', ImVec2.create(80, 0))

  if send_now
    text = ui_state[:input_buf].read_string
    unless text.empty?
      ui_state[:history] << "あなた: #{text}"
      ui_state[:msg_index] = (ui_state[:msg_index] + 1) % ui_state[:script_lines].length
      ui_state[:current_message] = ui_state[:script_lines][ui_state[:msg_index]]
      ui_state[:history] << "案内役: #{ui_state[:current_message]}"
      ui_state[:input_buf].write_string('')
    end
  end

  ImGui.End()
end


if __FILE__ == $PROGRAM_NAME
  setup_raylib_bindings
  setup_imgui_bindings

  Raylib.InitWindow(WINDOW_W, WINDOW_H, '会話アプリ (raylib + docking backend)')
  Raylib.SetTargetFPS(60)

  ImGui.CreateContext()
  io = ImGuiIO.new(ImGui.GetIO())
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad
  io[:ConfigFlags] |= ImGuiConfigFlags_DockingEnable
  io[:ConfigFlags] |= ImGuiConfigFlags_ViewportsEnable

  ImGui.StyleColorsLight()
  style = ImGuiStyle.new(ImGui.GetStyle())
  style[:WindowRounding] = 0.0
  style[:FrameRounding] = 0.0

  # raylib backend does not support multi-viewports and will disable it internally.
  ImGui.ImplDockingRaylib_Init()

  begin
    io_fonts = ImFontAtlas.new(io[:Fonts])
    io_fonts.AddFontFromFileTTF(File.join(__dir__, 'jpfont', 'GenShinGothic-Normal.ttf'))
  rescue StandardError => e
    STDERR.puts("Warning: font load failed: #{e}")
  end

  image_path = File.join(__dir__, 'image', 'placeholder.bmp')
  image = load_texture_from_image(image_path)

  ui_state = {
    script_lines: [
      'みなさん こんにちは。今日は いっしょに 操作の確認をします。',
      '右のログ領域には 会話の履歴が たまっていきます。',
      '下の入力欄に文字を入れて 送信ボタンを押してください。',
      '対話アプリケーションを想定した2カラム+入力をImGuiで表現するサンプルです。'
    ],
    msg_index: 0,
    current_message: 'みなさん こんにちは。今日は いっしょに 操作の確認をします。',
    history: [
      '案内役: デモを開始しました。',
      '案内役: 右側はログ表示領域です。'
    ],
    input_buf: FFI::MemoryPointer.new(:char, 256).write_string('')
  }

  until Raylib.WindowShouldClose()
    ImGui.ImplDockingRaylib_NewFrame()
    ImGui.NewFrame()

    draw_app_layout(ui_state, image)

    ImGui.Render()
    Raylib.BeginDrawing()
    Raylib.ClearBackground(Raylib::Color.from_u8(199, 199, 199, 255))
    ImGui.ImplDockingRaylib_RenderDrawData(ImGui.GetDrawData())
    Raylib.EndDrawing()
  end

  destroy_texture(image)

  ImGui.ImplDockingRaylib_Shutdown()
  ImGui.DestroyContext(nil)
  Raylib.CloseWindow()
end
