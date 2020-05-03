# coding: utf-8
# Ref.: Dear ImGuiの使い方まとめ
# https://qiita.com/mizuma/items/73218dab2f6b022b0227

module ImGuiDemo

  # ShowAboutWindow
  @@font = nil

  def self.AddFont(ttf_filepath = './jpfont/GenShinGothic-Normal.ttf')
    io = ImGuiIO.new(ImGui::GetIO())
    ImGui::FontAtlas_AddFontDefault(io[:Fonts])
    # ?? GetGlyphRangesJapanese fails to render Japanese Kanji characters '漱', '吾', '獰', '逢', '頃' and '咽' in 'jpfont.txt'.
    # japanese_font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], './jpfont/GenShinGothic-Normal.ttf', 24.0, nil, ImGui::FontAtlas_GetGlyphRangesJapanese(io[:Fonts]))
    @@font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], ttf_filepath, 24.0, nil, ImGui::FontAtlas_GetGlyphRangesChineseFull(io[:Fonts]))
  end

  def self.GetFont()
    return @@font
  end

  def self.SetGlobalScale(scale = 1.0)
    io = ImGuiIO.new(ImGui::GetIO())
    io[:FontGlobalScale] = scale # フォントの大きさを一括で変更できます。
    style = ImGui::GetStyle()
    ImGui::ImGuiStyle_ScaleAllSizes(style, scale) # UIの大きさを一括で変更できます。
  end

  def self.ShowBasicWindow(is_open = nil)
    ImGui::PushFont(@@font)
    ImGui::Begin("ウィンドウタイトル")

    ImGui::Text("通常の文章")
    ImGui::TextColored(ImVec4.create(1.0,0.0,1.0,1.0), "2行目") # 色付き文字。ImVec4(R,G,B,A)で色指定します。
    ImGui::BulletText("白い丸が先頭に付いた文章\n\"改行\"した文章") # \n で改行します。 " を使いたいときは \" のようにします。

    ImGui::Indent()
    ImGui::BulletText("インデントされた文章")
    ImGui::TextDisabled("無効な文字") # グレーで表示されます。
    ImGui::Unindent()

    ImGui::Separator()
    ImGui::TextWrapped("とても長い文章でもウィンドウの横幅に応じて自動的に折り返して次の行に表示してくれます")
    ImGui::NewLine() # 空白行を追加します。

    ImGui::PushTextWrapPos(200.0) # 折り返しさせる幅を指定します。
    ImGui::Text("PushTextWrapPosからPopTextWrapPosまでの間のTextは折り返して表示されます")
    # ... 
    # ここに追加する文章はすべて PushTextWrapPos(200.0f) の影響を受けます。
    # ...
    ImGui::PopTextWrapPos()

    ImGui::End()
    ImGui::PopFont()
  end

  @@button_and_checkbox_is_open = FFI::MemoryPointer.new(:bool, 1) # static bool is_open = true;
  def self.ShowButtonAndCheckboxWindow(is_open = nil)
    ImGui::PushFont(@@font)
    ImGui::Begin("ボタンとチェックボックス")
    if ImGui::Button("Open/Close")
      # ボタンがクリックされるとここにきます。
      @@button_and_checkbox_is_open.write(:bool, !@@button_and_checkbox_is_open.read(:bool))
    end

    ImGui::SameLine() # 次に書くUIパーツを現在と同じ行に配置します。

    # チェックボックスがクリックされるとis_openが反転し、trueならチェックマークが表示されます。
    ImGui::Checkbox("Open/Close", @@button_and_checkbox_is_open)

    if @@button_and_checkbox_is_open.read(:bool) == true
      # is_openがtrueなら"別のウィンドウ"が表示されます。
      ImGui::Begin("別のウィンドウ@ボタンとチェックボックス", @@button_and_checkbox_is_open)
      ImGui::Text("Hello")
      ImGui::End()
    end
    ImGui::End()
    ImGui::PopFont()
  end

  @@radio_button_value = FFI::MemoryPointer.new(:int, 1) # static int radio = 0;
  def self.ShowRadioButtonWindow(is_open = nil)
    ImGui::PushFont(@@font)
    ImGui::Begin("ラジオボタン")
    # ラジオボタンがクリックされると第3引数の整数が第2引数のradioに格納されます。
    ImGui::RadioButtonIntPtr("ラジオボタン 0", @@radio_button_value, 0); ImGui::SameLine() # TODO define overload to hide RadioButtonIntPtr
    ImGui::RadioButtonIntPtr("ラジオボタン 1", @@radio_button_value, 1); ImGui::SameLine()
    ImGui::RadioButtonIntPtr("ラジオボタン 2", @@radio_button_value, 2);

    ImGui::Text("ラジオボタンは%dを選択しています", :int, @@radio_button_value.read(:int))
  end

  @@arrow_button_count = FFI::MemoryPointer.new(:int, 1) # static int counter = 0;
  def self.ShowArrowButtonWindow(is_open = nil)
    ImGui::PushFont(@@font)
    ImGui::Begin("長押しで急増/急減する三角矢印ボタン")
    ImGui::PushButtonRepeat(true)
    if ImGui::ArrowButton("##left", ImGuiDir_Left)
      @@arrow_button_count.write(:int, @@arrow_button_count.read(:int) - 1) # == counter--;
    end
    ImGui::SameLine();
    if ImGui::ArrowButton("##right", ImGuiDir_Right)
      @@arrow_button_count.write(:int, @@arrow_button_count.read(:int) + 1) # == counter++;
    end
    ImGui::PopButtonRepeat()
    ImGui::SameLine()
    ImGui::Text("%d", :int, @@arrow_button_count.read(:int))
  end

end # module ImGuiDemo

