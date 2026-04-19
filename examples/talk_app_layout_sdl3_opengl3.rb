# coding: utf-8

require 'ffi'
require 'opengl'
require 'fiddle'

require_relative './basic_usage'

WINDOW_W = 1100
WINDOW_H = 760


def imgui_bindings_gem_available?
  Gem::Specification.find_by_name('imgui-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('imgui-bindings')
end


def setup_imgui_bindings
  if imgui_bindings_gem_available?
    require 'imgui'
    require 'imgui_impl_sdl3'
    require 'imgui_impl_opengl3'

    spec = Gem::Specification.find_by_name('imgui-bindings')
    shared_lib_path = File.join(spec.full_gem_path, 'lib')

    case RUBY_PLATFORM
    when /mswin|msys|mingw|cygwin/
      ImGui.load_lib(File.join(shared_lib_path, 'imgui.dll'))
    when /darwin/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(shared_lib_path, "imgui.#{arch}.dylib"))
    when /linux/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(shared_lib_path, "imgui.#{arch}.so"))
    else
      raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
    end
  else
    require_relative '../lib/imgui'
    require_relative '../lib/imgui_impl_sdl3'
    require_relative '../lib/imgui_impl_opengl3'

    local_lib_path = File.expand_path('../lib', __dir__)
    case RUBY_PLATFORM
    when /mswin|msys|mingw|cygwin/
      ImGui.load_lib(File.join(local_lib_path, 'imgui.dll'))
    when /darwin/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(local_lib_path, "imgui.#{arch}.dylib"))
    when /linux/
      arch = RUBY_PLATFORM.split('-')[0]
      ImGui.load_lib(File.join(local_lib_path, "imgui.#{arch}.so"))
    else
      raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
    end
  end
end


def setup_sdl3_bindings
  require 'sdl3'

  case RUBY_PLATFORM
  when /mswin|msys|mingw|cygwin/
    SDL.load_lib(File.join(__dir__, 'SDL3.dll'))
  when /darwin/
    SDL.load_lib('libSDL3.dylib')
  when /linux/
    SDL.load_lib('libSDL3.so')
  else
    raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
  end
end


def sdl_error_message
  err = SDL.GetError()
  err.nil? ? 'unknown error' : err.read_string
end


def load_texture_from_bmp(bmp_path)
  bmp_ptr = SDL.LoadBMP(FFI::MemoryPointer.from_string(bmp_path))
  raise "SDL.LoadBMP failed: #{sdl_error_message}" if bmp_ptr.nil?

  rgba_ptr = SDL.ConvertSurface(bmp_ptr, SDL::PIXELFORMAT_RGBA32)
  SDL.DestroySurface(bmp_ptr)
  raise "SDL.ConvertSurface failed: #{sdl_error_message}" if rgba_ptr.nil?

  surface = SDL::Surface.new(rgba_ptr)

  texture_buf = ' ' * 4
  GL.GenTextures(1, texture_buf)
  texture_id = texture_buf.unpack1('L')

  GL.BindTexture(GL::TEXTURE_2D, texture_id)
  GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MIN_FILTER, GL::LINEAR)
  GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_MAG_FILTER, GL::LINEAR)
  GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_WRAP_S, GL::CLAMP_TO_EDGE)
  GL.TexParameteri(GL::TEXTURE_2D, GL::TEXTURE_WRAP_T, GL::CLAMP_TO_EDGE)
  GL.PixelStorei(GL::UNPACK_ALIGNMENT, 1)

  pixels = Fiddle::Pointer.new(surface[:pixels].address)
  GL.TexImage2D(GL::TEXTURE_2D, 0, GL::RGBA, surface[:w], surface[:h], 0, GL::RGBA, GL::UNSIGNED_BYTE, pixels)
  GL.BindTexture(GL::TEXTURE_2D, 0)

  width = surface[:w]
  height = surface[:h]
  SDL.DestroySurface(rgba_ptr)

  tex_ref = ImTextureRef.new
  tex_ref[:_TexData] = nil
  tex_ref[:_TexID] = texture_id

  {
    tex_ref: tex_ref,
    texture_id: texture_id,
    width: width,
    height: height
  }
end


def destroy_texture(texture_id)
  return if texture_id.nil? || texture_id.zero?

  GL.DeleteTextures(1, [texture_id].pack('L'))
end


def draw_app_layout(ui_state, image)
  ImGui::PushFont(ImGuiDemo::GetFont(), 16.0)

  if ImGui::BeginMainMenuBar()
    if ImGui::BeginMenu('ファイル')
      ImGui::MenuItem('設定')
      ImGui::MenuItem('終了')
      ImGui::EndMenu()
    end
    ImGui::EndMainMenuBar()
  end

  viewport = ImGuiViewport.new(ImGui::GetMainViewport())

  ImGui::SetNextWindowPos(viewport[:WorkPos])
  ImGui::SetNextWindowSize(viewport[:WorkSize])

  ImGui::Begin('##app_layout', nil, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar)

  avail_top = ImGui::GetContentRegionAvail()
  footer_h = 42.0
  columns_h = avail_top[:y] - footer_h
  left_w = avail_top[:x] * 0.56

  ImGui::BeginChild('left_panel', ImVec2.create(left_w, columns_h), ImGuiChildFlags_Borders, 0)

  image_box_h = columns_h * 0.56
  ImGui::BeginChild('portrait_box', ImVec2.create(0, image_box_h), ImGuiChildFlags_Borders, 0)
  content = ImGui::GetContentRegionAvail()

  image_ratio = image[:height].to_f / image[:width]
  draw_w = content[:x]
  draw_h = draw_w * image_ratio
  if draw_h > content[:y]
    draw_h = content[:y]
    draw_w = draw_h / image_ratio
  end

  cursor = ImGui::GetCursorPos()
  ImGui::SetCursorPos(ImVec2.create(cursor[:x] + (content[:x] - draw_w) * 0.5, cursor[:y] + (content[:y] - draw_h) * 0.5))
  ImGui::Image(image[:tex_ref], ImVec2.create(draw_w, draw_h))
  ImGui::EndChild()

  ImGui::BeginChild('message_box', ImVec2.create(0, 0), ImGuiChildFlags_Borders, 0)
  ImGui::TextWrapped(ui_state[:current_message])
  ImGui::EndChild()

  ImGui::EndChild()

  ImGui::SameLine()

  ImGui::BeginChild('right_log', ImVec2.create(0, columns_h), ImGuiChildFlags_Borders, 0)
  ImGui::TextUnformatted('会話ログ')
  ImGui::Separator()
  ui_state[:history].each do |line|
    ImGui::TextWrapped(line)
  end
  ImGui::SetScrollHereY(1.0)
  ImGui::EndChild()

  send_now = false
  ImGui::InputText('##user_input', ui_state[:input_buf], ui_state[:input_buf].size, 0)
  send_now |= ImGui::IsItemDeactivatedAfterEdit()
  ImGui::SameLine()
  send_now |= ImGui::Button('送信', ImVec2.create(80, 0))

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

  ImGui::End()
  ImGui::PopFont()
end


if __FILE__ == $PROGRAM_NAME
  setup_imgui_bindings
  setup_sdl3_bindings

  unless SDL.Init(SDL::INIT_VIDEO | SDL::INIT_GAMEPAD)
    STDERR.puts("Error: SDL.Init failed: #{sdl_error_message}")
    exit 1
  end

  if RUBY_PLATFORM =~ /darwin/
    glsl_version = '#version 150'
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_FLAGS, SDL::GL_CONTEXT_FORWARD_COMPATIBLE_FLAG)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_PROFILE_MASK, SDL::GL_CONTEXT_PROFILE_CORE)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 3)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 2)
  else
    glsl_version = '#version 130'
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_FLAGS, 0)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_PROFILE_MASK, SDL::GL_CONTEXT_PROFILE_CORE)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MAJOR_VERSION, 3)
    SDL.GL_SetAttribute(SDL::GL_CONTEXT_MINOR_VERSION, 0)
  end

  SDL.GL_SetAttribute(SDL::GL_DOUBLEBUFFER, 1)
  SDL.GL_SetAttribute(SDL::GL_DEPTH_SIZE, 24)
  SDL.GL_SetAttribute(SDL::GL_STENCIL_SIZE, 8)

  main_scale = 1.0
  begin
    main_scale = SDL.GetDisplayContentScale(SDL.GetPrimaryDisplay())
  rescue
    main_scale = 1.0
  end

  window_flags = SDL::WINDOW_OPENGL | SDL::WINDOW_RESIZABLE | SDL::WINDOW_HIDDEN | SDL::WINDOW_HIGH_PIXEL_DENSITY
  window = SDL.CreateWindow('会話アプリ', (WINDOW_W * main_scale).to_i, (WINDOW_H * main_scale).to_i, window_flags)
  if window.nil?
    STDERR.puts("Error: SDL.CreateWindow failed: #{sdl_error_message}")
    SDL.Quit()
    exit 1
  end

  gl_context = SDL.GL_CreateContext(window)
  if gl_context.nil?
    STDERR.puts("Error: SDL.GL_CreateContext failed: #{sdl_error_message}")
    SDL.DestroyWindow(window)
    SDL.Quit()
    exit 1
  end

  SDL.GL_MakeCurrent(window, gl_context)
  SDL.GL_SetSwapInterval(1)

  begin
    SDL.SetWindowPosition(window, SDL::WINDOWPOS_CENTERED, SDL::WINDOWPOS_CENTERED)
  rescue
    SDL.SetWindowPosition(window, 64, 64)
  end
  SDL.ShowWindow(window)

  GL.load_lib()

  ImGui::CreateContext()
  io = ImGuiDemo::GetIO()
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableKeyboard
  io[:ConfigFlags] |= ImGuiConfigFlags_NavEnableGamepad

  ImGui::StyleColorsLight()
  style = ImGuiDemo::GetStyle()
  style.ScaleAllSizes(main_scale)
  style[:FontScaleDpi] = main_scale
  style[:WindowRounding] = 0.0
  style[:FrameRounding] = 0.0

  ImGui::ImplSDL3_InitForOpenGL(window, gl_context)
  ImGui::ImplOpenGL3_Init(glsl_version)

  begin
    ImGuiDemo::AddFont(File.join(__dir__, 'jpfont', 'GenShinGothic-Normal.ttf'), File.join(__dir__, 'iconfont', 'fontawesome-webfont.ttf'))
  rescue StandardError => e
    STDERR.puts("Warning: font load failed: #{e}")
  end

  image_path = File.join(__dir__, 'image', 'placeholder.bmp')
  image = load_texture_from_bmp(image_path)

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

  event = SDL::Event.new
  done = false
  window_id = SDL.GetWindowID(window)

  until done
    while SDL.PollEvent(event)
      ImGui::ImplSDL3_ProcessEvent(event)
      event_type = event[:type]
      if event_type == SDL::EVENT_QUIT
        done = true
      elsif event_type == SDL::EVENT_WINDOW_CLOSE_REQUESTED && event[:window][:windowID] == window_id
        done = true
      end
    end

    if (SDL.GetWindowFlags(window) & SDL::WINDOW_MINIMIZED) != 0
      next
    end

    ImGui::ImplOpenGL3_NewFrame()
    ImGui::ImplSDL3_NewFrame()
    ImGui::NewFrame()

    draw_app_layout(ui_state, image)

    ImGui::Render()
    GL.Viewport(0, 0, io[:DisplaySize][:x].to_i, io[:DisplaySize][:y].to_i)
    GL.ClearColor(0.78, 0.78, 0.78, 1.0)
    GL.Clear(GL::COLOR_BUFFER_BIT)
    ImGui::ImplOpenGL3_RenderDrawData(ImGui::GetDrawData())
    SDL.GL_SwapWindow(window)
  end

  destroy_texture(image[:texture_id])

  ImGui::ImplOpenGL3_Shutdown()
  ImGui::ImplSDL3_Shutdown()
  ImGui::DestroyContext(nil)

  SDL.GL_DestroyContext(gl_context)
  SDL.DestroyWindow(window)
  SDL.Quit()
end
