# coding: utf-8
# Ref.: Dear ImGuiの使い方まとめ
# https://qiita.com/mizuma/items/73218dab2f6b022b0227

####################################################################################################

require 'stringio'

module ImGuiDemo

  # Ref.: "Combine two fonts into one:", imgui/docs/FONTS.txt
  ICON_MIN_FA = 0xf000
  ICON_MAX_FA = 0xf3ff

  @@font = nil
  @@io = nil

  def self.GetIO()
    @@io = ImGuiIO.new(ImGui::GetIO()) if @@io == nil
    return @@io
  end

  def self.AddFont(japanese_ttf_filepath = './jpfont/GenShinGothic-Normal.ttf', icon_ttf_filepath = './iconfont/fontawesome-webfont.ttf')
    io = GetIO()
    ImGui::FontAtlas_AddFontDefault(io[:Fonts])
    # ?? GetGlyphRangesJapanese fails to render Japanese Kanji characters '漱', '吾', '獰', '逢', '頃' and '咽' in 'jpfont.txt'.
    # @@font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], japanese_ttf_filepath, 24.0, nil, ImGui::FontAtlas_GetGlyphRangesChineseFull(io[:Fonts]))
    # @@font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], japanese_ttf_filepath, 24.0, nil, ImGui::FontAtlas_GetGlyphRangesJapanese(io[:Fonts]))

    config = ImFontConfig.new(ImGui::FontConfig_ImFontConfig())

    builder_raw = ImGui::FontGlyphRangesBuilder_ImFontGlyphRangesBuilder()
    builder = ImFontGlyphRangesBuilder.new(builder_raw)

    # Japanese fonts
    additional_ranges = ImGui::ImVector_ImWchar_create() # ranges == ImVector_ImWchar*
    ImGui::FontGlyphRangesBuilder_AddText(builder.pointer, FFI::MemoryPointer.from_string("奈也")) # GetGlyphRangesJapaneseに追加したい文字を並べて書きます。
    ImGui::FontGlyphRangesBuilder_AddRanges(builder.pointer, ImGui::FontAtlas_GetGlyphRangesJapanese(io[:Fonts]))
    ImGui::FontGlyphRangesBuilder_BuildRanges(builder.pointer, additional_ranges)
    @@font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], japanese_ttf_filepath, 24.0, config, ImVector.new(additional_ranges)[:Data])

    # Icon fonts
    size_icon = 20.0
    config[:MergeMode] = true # フォントテクスチャを合体させます。
    config[:PixelSnapH] = true
    config[:GlyphMinAdvanceX] = size_icon # アイコンを等幅にします。
    icon_ranges = FFI::MemoryPointer.new(:short, 3).write_array_of_short([ICON_MIN_FA, ICON_MAX_FA, 0])  # static const ImWchar icon_ranges[] = { ICON_MIN_FA, ICON_MAX_FA, 0 }
    @@font = ImGui::FontAtlas_AddFontFromFileTTF(io[:Fonts], icon_ttf_filepath, size_icon, config, icon_ranges)

    ImGui::FontAtlas_Build(io[:Fonts])
  end

  def self.GetFont()
    return @@font
  end

  def self.SetGlobalScale(scale = 1.0)
    io = GetIO()
    io[:FontGlobalScale] = scale # フォントの大きさを一括で変更できます。
    style = ImGui::GetStyle()
    ImGui::Style_ScaleAllSizes(style, scale) # UIの大きさを一括で変更できます。
  end

end # module ImGuiDemo

####################################################################################################

module ImGuiDemo::BasicWindow
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
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
end

####################################################################################################

module ImGuiDemo::ButtonAndCheckboxWindow
  @@is_open = FFI::MemoryPointer.new(:bool, 1) # static bool is_open = true;
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ボタンとチェックボックス")
    if ImGui::Button("Open/Close")
      # ボタンがクリックされるとここにきます。
      @@is_open.write(:bool, !@@is_open.read(:bool))
    end

    ImGui::SameLine() # 次に書くUIパーツを現在と同じ行に配置します。

    # チェックボックスがクリックされるとis_openが反転し、trueならチェックマークが表示されます。
    ImGui::Checkbox("Open/Close", @@is_open)

    if @@is_open.read(:bool) == true
      # is_openがtrueなら"別のウィンドウ"が表示されます。
      ImGui::Begin("別のウィンドウ@ボタンとチェックボックス", @@is_open)
      ImGui::Text("Hello")
      ImGui::End()
    end
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::RadioButtonWindow
  @@radio = FFI::MemoryPointer.new(:int, 1) # static int radio = 0;
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ラジオボタン")
    # ラジオボタンがクリックされると第3引数の整数が第2引数のradioに格納されます。
    ImGui::RadioButtonIntPtr("ラジオボタン 0", @@radio, 0); ImGui::SameLine() # TODO define overload to hide RadioButtonIntPtr
    ImGui::RadioButtonIntPtr("ラジオボタン 1", @@radio, 1); ImGui::SameLine()
    ImGui::RadioButtonIntPtr("ラジオボタン 2", @@radio, 2);

    ImGui::Text("ラジオボタンは%dを選択しています", :int, @@radio.read(:int))
  end
end

####################################################################################################

module ImGuiDemo::ArrowButtonWindow
  @@counter = FFI::MemoryPointer.new(:int, 1) # static int counter = 0;
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("長押しで急増/急減する三角矢印ボタン")
    ImGui::PushButtonRepeat(true)
    if ImGui::ArrowButton("##left", ImGuiDir_Left)
      @@counter.write(:int, @@counter.read(:int) - 1) # == counter--;
    end
    ImGui::SameLine();
    if ImGui::ArrowButton("##right", ImGuiDir_Right)
      @@counter.write(:int, @@counter.read(:int) + 1) # == counter++;
    end
    ImGui::PopButtonRepeat()
    ImGui::SameLine()
    ImGui::Text("%d", :int, @@counter.read(:int))
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::DropdownListAndInputWindow
  @@items = FFI::MemoryPointer.new(:pointer, 3)
  @@items_string = %w{AAA BBB CCC}.map! {|s| FFI::MemoryPointer.from_string(s)}
  @@items.write_array_of_pointer(@@items_string)

  @@item_current = FFI::MemoryPointer.new(:int, 1) # static int item_current = 0; // 0なら"AAA", 1なら"BBB", 2なら"CCC"
  @@str0 = FFI::MemoryPointer.new(:char, 128) # static char str0[128] = "";
  @@str1 = FFI::MemoryPointer.new(:char, 128) # static char str1[128] = "";
  @@i0 = FFI::MemoryPointer.new(:int, 1).put_int32(0, 123) # static int i0 = 123;
  @@f0 = FFI::MemoryPointer.new(:float, 1).put_float32(0, 0.001) # static float f0 = 0.001f;
  @@vec3 = FFI::MemoryPointer.new(:float, 3).put_array_of_float32(0, [0.10, 0.20, 0.30]) # static float vec3[3] = { 0.10f, 0.20f, 0.30f};
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ドロップダウンリストと文章入力欄/数字入力欄")
    ImGui::LabelText("ラベル", "値")

    ImGui::ComboStr_arr("ドロップダウンリスト##1", @@item_current, @@items, @@items_string.length)
    # 別の書き方として \0 で項目を区切って書く方法があります。
    ImGui::ComboStr("ドロップダウンリスト##2", @@item_current, "AAA\0BBB\0CCC\0")

    item_current = @@item_current.read(:int)
    items = @@items.get_array_of_pointer(0, @@items_string.length)
    ImGui::Text("現在選択されているのは %d で、%s です", :int, item_current, :string, items[item_current].read_string)

    ImGui::InputText("文章入力欄##1", @@str0, @@str0.size)
    ImGui::InputTextWithHint("文章入力欄##2", "空欄時に表示される文章を指定できます", @@str1, @@str1.size)

    ImGui::InputInt("整数入力欄", @@i0)
    ImGui::InputFloat("小数入力欄", @@f0, 0.01, 1.0, "%.3f")

    ImGui::InputFloat3("３つの値", @@vec3, "%.2f")
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::SlidersWindow1
  @@i1 = FFI::MemoryPointer.new(:int, 1).put_int32(0, 50)  # static int i1 = 50, i2 = 42;
  @@i2 = FFI::MemoryPointer.new(:int, 1).put_int32(0, 42)  # static int i1 = 50, i2 = 42;
  @@f1 = FFI::MemoryPointer.new(:float, 1).put_float32(0, 1.0)  # static float f1 = 1.00f;
  @@i3 = FFI::MemoryPointer.new(:int, 1).put_int32(0, 0)  # static int i3 = 0;
  @@f2 = FFI::MemoryPointer.new(:float, 1).put_float32(0, 0.123)  # static float f2 = 0.123f, f3 = 0.0f;
  @@f3 = FFI::MemoryPointer.new(:float, 1).put_float32(0, 0.0)  # static float f2 = 0.123f, f3 = 0.0f;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("スライダー(1)")
    ImGui::DragInt("ドラッグして整数変更", @@i1, 1)
    ImGui::DragInt("％表示", @@i2, 1, 0, 100, "%d%%") # 最後の引数で値の表示の仕方を指定できます。

    ImGui::SetNextItemWidth(100) # 次のUIパーツの幅を100にします。

    ImGui::DragFloat("ドラッグして小数変更", @@f1, 0.005)

    # 次のUIパーツの幅をウィンドウ幅の半分にします。
    ImGui::SetNextItemWidth(ImGui::GetWindowWidth() * 0.5)

    # -1から3までドラッグして変化させることができます。
    ImGui::SliderInt("スライダーで整数変更", @@i3, -1, 3)

    # 次のUIパーツの幅をウィンドウの左端から、右端から100の位置までにします。
    ImGui::SetNextItemWidth(-100)

    # 0から1まで変化します。"ratio = %.3f"の部分で値の表示の仕方を指定できます。
    ImGui::SliderFloat("スライダーで小数変更##1", @@f2, 0.0, 1.0, "ratio = %.3f")

    # 最後の引数を5.0fとしていることでスライダーを左右の端に近づくほど値が大きく増減するようになります。
    # 逆にスライダーが中央付近にある場合は小さな値でしか増減しないようになります。
    # -10 から 10 までドラッグして変化させることができます。
    ImGui::SliderFloat("スライダーで小数変更##2", @@f3, -10.0, 10.0, "%.4f", 5.0)
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::SlidersWindow2
  @@angle = FFI::MemoryPointer.new(:float, 1).put_float32(0, 0.0) # static float angle = 0.0f;
  @@begin = FFI::MemoryPointer.new(:float, 1).put_float32(0, 10) # static float begin = 10, end = 90;
  @@end = FFI::MemoryPointer.new(:float, 1).put_float32(0, 90) # static float begin = 10, end = 90;
  @@vec3f = FFI::MemoryPointer.new(:float, 3).put_array_of_float32(0, [0.10, 0.20, 0.30]) # static float vec3f[4] = { 0.10f, 0.20f, 0.30f };
  @@x = FFI::MemoryPointer.new(:float, 1).put_float32(0, 1.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;
  @@y = FFI::MemoryPointer.new(:float, 1).put_float32(0, 2.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;
  @@z = FFI::MemoryPointer.new(:float, 1).put_float32(0, 3.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;

  @@items = FFI::MemoryPointer.new(:pointer, 4) # const char* items[] = { "AAA", "BBB", "CCC", "DDD" };
  @@items_string = %w{AAA BBB CCC DDD}.map! {|s| FFI::MemoryPointer.from_string(s)}
  @@items.write_array_of_pointer(@@items_string)
  @@item = FFI::MemoryPointer.new(:int, 1).put_int32(0, -1) # static int item = -1;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("スライダー(2)")

    ImGui::SliderAngle("角度", @@angle) # -360から360までドラッグして変化させることができます。

    # 最小値0,最大値100のスライダーを2つ作成します。
    # "Min:"のスライダーは、"Max:"のスライダーの値を超えないようにスライダーで動かすことができます。
    # 0.2fはドラッグする時に値が変化する量です。2.0fにした場合は2ずつ値が変化するようになります。
    ImGui::DragFloatRange2("range", @@begin, @@end, 0.2, 0.0, 100.0, "Min: %.1f %%", "Max: %.1f %%")

    # 各項目を 0 から 1 までドラッグして変化させることができます。
    ImGui::SliderFloat3("3つの値をスライダー操作", @@vec3f, 0.0, 1.0)

    ImGui::PushItemWidth(70) # これから先のUIパーツの幅を70で固定します。

    ImGui::ComboStr_arr("##XYZ", @@item, @@items, @@items_string.length)

    ImGui::SameLine(0, 10) # 次のUIパーツを同じ行に配置し、その際、右に10だけスペースを空けます。

    ImGui::SliderFloat("X", @@x, 0.0, 5.0); ImGui::SameLine()
    ImGui::SliderFloat("Y", @@y, 0.0, 5.0); ImGui::SameLine()
    ImGui::SliderFloat("Z", @@z, 0.0, 5.0);

    ImGui::PopItemWidth()
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::SlidersWindow3
  @@values = [0.0, 0.60, 0.35, 0.9, 0.70, 0.20, 0.0].map! {|f| FFI::MemoryPointer.new(:float, 1).put_float32(0, f) }
  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("スライダー(3)")
    7.times do |i|
      ImGui::SameLine() if i > 0
      ImGui::PushIDInt(i)

      # 垂直スライダーを幅18,高さ160,最小値0,最大値1で作成します。
      ImGui::VSliderFloat("##v", ImVec2.create(18,160), @@values[i], 0.0, 1.0, "")

      # スライダー上をマウスオーバーした時に現在の値がポップアップで表示されます。
      ImGui::SetTooltip("%.3f", :float, @@values[i].get_float32(0)) if ImGui::IsItemActive() || ImGui::IsItemHovered()

      ImGui::PopID()
    end
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::EnumAndColorSelectionWindow

  module Element # enum Element { Element_Fire, Element_Earth, Element_Air, Element_Water, Element_COUNT };
    Fire = 0
    Earth = 1
    Air = 2
    Water = 3
    COUNT = 4
  end

  @@current_element = FFI::MemoryPointer.new(:int, 1).put_int32(0, Element::Fire) # static int current_element = Element_Fire;
  @@element_names = %w{Fire Earth Air Water}

  @@col1 = FFI::MemoryPointer.new(:float, 3).put_array_of_float32(0, [1.0, 0.0, 0.2]) # static float col1[3] = { 1.0f,0.0f,0.2f };
  @@col2 = FFI::MemoryPointer.new(:float, 4).put_array_of_float32(0, [0.4, 0.7, 0.0, 0.5]) # static float col2[4] = { 0.4f,0.7f,0.0f,0.5f };

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("enum選択UIとカラー選択UI")
    current_element = @@current_element.get_int32(0)
    current_element_name = (0 <= current_element && current_element < Element::COUNT) ? @@element_names[current_element] : "Unknown"
    ImGui::SliderInt("enumの選択", @@current_element, 0, Element::COUNT - 1, current_element_name)

    ImGui::ColorEdit3("カラー 1", @@col1) # RGB
    ImGui::ColorEdit4("カラー 2", @@col2) # RGBAのアルファ付き

    flag = ImGuiColorEditFlags_Float # 0 ~ 255表記ではなく、0.0 ~ 1.0表記にします。
    flag |= ImGuiColorEditFlags_NoInputs # 数字入力欄を非表示にします。
    flag |= ImGuiColorEditFlags_NoLabel  # カラーボックスの右隣に配置されるラベルをなくします。
    ImGui::ColorEdit3("カラーID", @@col1, flag)
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::ListBoxWindow

  @@listbox_item_current = FFI::MemoryPointer.new(:int, 1).put_int32(0, 1) # static int listbox_item_current = 1;
  @@listbox_items_str = %w{ Apple Banana Cherry Kiwi Mango Orange Pineapple Strawberry Watermelon }.map! {|s| FFI::MemoryPointer.from_string(s)}
  @@listbox_items = FFI::MemoryPointer.new(:string, @@listbox_items_str.length).write_array_of_pointer(@@listbox_items_str) # const char* listbox_items[] = { "Apple", "Banana", "Cherry", "Kiwi", "Mango", "Orange", "Pineapple", "Strawberry", "Watermelon" };

  @@selection_values = [0, 1, 0, 0, 0]
  @@selection = FFI::MemoryPointer.new(:int8, @@selection_values.length).put_array_of_int8(0, @@selection_values) # static bool selection[5] = { false, true, false, false, false };

  @@reorder_item_names = ["並び替え可能 1", "並び替え可能 2", "並び替え可能 3", "並び替え可能 4", "並び替え可能 5"]
  @@reorder_item_current = @@reorder_item_names[0] # static const char* item_current = item_names[0]; // 最初は"並び替え可能 1"を選択している状態です。
  @@reorder_items_str = @@reorder_item_names.map {|s| FFI::MemoryPointer.from_string(s)} # static const char* item_names[] = { "並び替え可能 1", "並び替え可能 2", "並び替え可能 3", "並び替え可能 4", "並び替え可能 5" };

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("リストボックス/複数選択")
    ImGui::ListBoxStr_arr("リストボックス", @@listbox_item_current, @@listbox_items, @@listbox_items_str.length, 4)

    ################################################################################
    ImGui::NewLine()

    ImGui::SelectableBoolPtr("複数選択項目 1", @@selection[0])
    ImGui::SelectableBoolPtr("複数選択項目 2", @@selection[1])

    if ImGui::SelectableBool("複数選択項目 3", !@@selection[2].read_int8().zero?, ImGuiSelectableFlags_AllowDoubleClick) == true
      # ダブルクリックした時だけ選択できるようにするには次のようにします。
      # 引数の 0 は左クリックを表します。 1 なら右クリック。 2 なら中央ボタンクリックです。
      if ImGui::IsMouseDoubleClicked(0) == true
        @@selection[2].write(:int8, @@selection[2].read_int8() ^ 1) # @@selection[2] = !@@selection[2];
      end
    end

    if ImGui::SelectableBool("複数選択項目 4", !@@selection[3].read_int8().zero?) == true
      # CTRL+クリックの時だけ選択できるようにするには次のようにします。
      if ImGuiDemo::GetIO()[:KeyCtrl] == true
        @@selection[3].write(:int8, @@selection[3].read_int8() ^ 1) # @@selection[3] = !@@selection[3];
      end
    end

    # 選択項目をそもそも選択できないようにするには次のようにします
    ImGui::SelectableBool("複数選択項目 5", !@@selection[4].read_int8().zero?, ImGuiSelectableFlags_Disabled)

    ################################################################################
    ImGui::NewLine()

    names_count = @@reorder_item_names.length
    names_count.times do |n|
      item = @@reorder_item_names[n]
      is_selected = item == @@reorder_item_current
      @@reorder_item_current = item if ImGui::SelectableBool(item, is_selected)
      if ImGui::IsItemActive() && !ImGui::IsItemHovered()
        n_next = n + (ImGui::GetMouseDragDelta()[:y] < 0.0 ? -1 : 1)
        if n_next >= 0 && n_next < names_count
          @@reorder_item_names[n] = @@reorder_item_names[n_next]
          @@reorder_item_names[n_next] = item
          ImGui::ResetMouseDragDelta()
        end
      end
    end
    ImGui::Text("現在 %s が選択されています", :string, @@reorder_item_current)

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::InputTextWindow

  @@text = <<-HERE
(複数行の文章を表示しています。
クリックするとカーソルが表示され、
キーボードで文字を入力できます。
文字を選択することもできます。
)
HERE
  @@text_buf = FFI::MemoryPointer.new(:char, 256+1).write_string(@@text) # +1 == \0

  @@buf1 = FFI::MemoryPointer.new(:char, 64).write_string("") # static char buf1[64] = "";
  @@buf2 = FFI::MemoryPointer.new(:char, 64).write_string("") # static char buf2[64] = "";
  @@buf3 = FFI::MemoryPointer.new(:char, 64).write_string("") # static char buf3[64] = "";
  @@bufpass = FFI::MemoryPointer.new(:char, 64).write_string("password123") # static char bufpass[64] = "password123"; // 最初に入力しておく文字

  # static int TextFilters::FilterImGuiLetters(ImGuiInputTextCallbackData* data)
  @@filter_imgui_letters = Proc.new do |data_ptr| # data: ImGuiInputTextCallbackData*
    data = ImGuiInputTextCallbackData.new(data_ptr)
    ret = if data[:EventChar] < 256 && "imgui".include?(data[:EventChar].chr)
            0
          else
            1
          end
    ret
  end

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("文章入力欄")
    flags = ImGuiInputTextFlags_AllowTabInput # Tabキーを押すことでタブが入力されるようになります。
    # flags |= ImGuiInputTextFlags_ReadOnly; # 編集できないようにするにはこのようにします。

    # 高さが3行の文章入力欄を作成します。
    # スクロールすることで下の行も見ることができます。
    # "##"をつけていることでラベル名は表示されません。
    buf_capacity = @@text_buf.size()-1
    ImGui::Text("残り %d / バッファ %d (単位はバイト)", :int, buf_capacity - @@text_buf.read_string().length, :int, buf_capacity) # -1 == \n0
    ImGui::InputTextMultiline("##text", @@text_buf, @@text_buf.size(), ImVec2.create(-1, ImGui::GetTextLineHeight() * 3), flags)

    ImGui::NewLine()

    ImGui::InputText("入力欄", @@buf1, 64)
    # ImGuiInputTextFlags_CharsDecimal をつけることで 0123456789.+-*/ の文字しか入力できない入力欄になります。
    # InputTextWithHintを使うことで入力欄が空白の時にグレーで表示される文章を指定できます。
    ImGui::InputTextWithHint("数字入力欄", "only 0123456789.+-*/", @@buf2, 64, ImGuiInputTextFlags_CharsDecimal)

    # ***表示のパスワード入力欄にするには ImGuiInputTextFlags_Password を使います。
    # 空白を許可しない入力欄にするには ImGuiInputTextFlags_CharsNoBlank を使います。
    ImGui::InputText("Password", @@bufpass, 64, ImGuiInputTextFlags_Password | ImGuiInputTextFlags_CharsNoBlank)

    # "i","m","g","u","i"という文字しか入力ができないような入力欄にするには次のようにします。
    ImGui::InputText("\"imgui\" letters", @@buf3, 64, ImGuiInputTextFlags_CallbackCharFilter, @@filter_imgui_letters)

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::TreeNodeWindow

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ツリーノード")

    if ImGui::CollapsingHeaderTreeNodeFlags("開閉可能なフィールド")
      # このフィールドを開いている場合にしたい処理をここに書きます。
      if ImGui::TreeNodeStr("ツリーノード A")
        # "ツリーノード A"が開いている場合にしたい処理をここに書きます。
        if ImGui::IsKeyDown(ImGui::GetKeyIndex(ImGuiKey_A))
          ImGui::Text("Aキーが押されている場合は表示されます")
        end
        ImGui::TreePop()
      end
      # SetNextItemOpenを使うことで次のツリーノードは最初から開いている状態になります。
      ImGui::SetNextItemOpen(true, ImGuiCond_Once)
      if ImGui::TreeNodeStr("ツリーノード B")
        ImGui::Text("ツリーノード Bは最初から開いた状態です")
        ImGui::TreePop()
      end
    end

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::TooltipAndPopupWindow

  @@names = %w{AAA BBB CCC DDD}.map! {|s| FFI::MemoryPointer.from_string(s)} # const char* names[] = { "AAA", "BBB", "CCC", "DDD" };
  @@selected = FFI::MemoryPointer.new(:int, 1).put_int32(0, -1) # static int selected = -1;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ツールチップ/ポップアップ")

    ImGui::TextDisabled("(?)")
    if (ImGui::IsItemHovered())
      # "(?)"という文字をマウスオーバーしている場合にしたい処理をここに書きます。
      ImGui::BeginTooltip()
      # ポップアップウィンドウの横幅をフォントサイズの35倍の長さにします。
      # これを超える文章の時は自動的にその下の行に続きます(2行になります)。
      ImGui::PushTextWrapPos(ImGui::GetFontSize() * 35.0)
      ImGui::TextUnformatted("ポップアップ時に表示される文章をここに書きます")
      ImGui::PopTextWrapPos()
      ImGui::EndTooltip()
    end

    ################################################################################

    if (ImGui::Button("選択.."))
      # "選択.."ボタンがクリックされた場合にここにきます。
      # 引数の"popupID"と同じID名のBeginPopupをポップアップとして表示します。
      ImGui::OpenPopup("popupID")
    end
    ImGui::SameLine()
    ImGui::TextUnformatted(@@selected.read_int == -1 ? "<None>" : @@names[@@selected.read_int].read_string)

    if (ImGui::BeginPopup("popupID"))
      ImGui::Text("選択項目")
      ImGui::Separator()
      @@names.length.times do |i|
        if ImGui::SelectableBool(@@names[i].read_string)
          @@selected.put_int32(0, i)
        end
      end
      ImGui::EndPopup()
    end
    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::PlotAndProgressWindow

  @@arr = [0.6, 0.1, 1.0, 0.5, 0.92, 0.1, 0.2] # static float arr[] = { 0.6f, 0.1f, 1.0f, 0.5f, 0.92f, 0.1f, 0.2f };
  @@arr_ptr = FFI::MemoryPointer.new(:float, @@arr.length).put_array_of_float32(0, @@arr)
  @@progress = FFI::MemoryPointer.new(:float, 1).put_float(0, 0.22) # static float progress = 0.22f;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("折れ線グラフ・ヒストグラム・プログレスバー")

    # 最小値 0, 最大値 1 のグラフを作成します。
    # ImVec2(0,50)としていることで、幅は自動で決まり、高さは50になります。
    ImGui::PlotLinesFloatPtr("プロットライン", @@arr_ptr, @@arr.length, 0, "タイトル", 0.0, 1.0, ImVec2.create(0,50))

    ImGui::PlotHistogramFloatPtr("ヒストグラム", @@arr_ptr, @@arr.length, 0, nil, 0.0, 1.0, ImVec2.create(0,50))

    # 0 ~ 1 までの中での 0.22 が何％の位置にいるのかを表示します。
    ImGui::ProgressBar(@@progress.read_float, ImVec2.create(0.0, 0.0))

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::ChildWindow

  @@line = FFI::MemoryPointer.new(:int, 1).put_int32(0, 50) # static int line = 50;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("子ウィンドウ")

    goto_line = ImGui::Button("Goto")
    ImGui::SameLine() # 次のUIパーツを同じ行に配置します。

    # ImGuiInputTextFlags_EnterReturnsTrue をつけることで、入力欄で文字を入力してからEnterキーを押すことでInputInt関数がtrueを返すようになります。
    # "##"をつけることでラベル名は表示されません。
    goto_line |= ImGui::InputInt("##Line", @@line, 0, 0, ImGuiInputTextFlags_EnterReturnsTrue)
    # "Goto"ボタンを押すかまたは入力欄で数字を入力してからEnterキーを押すことで、goto_lineはtrueになります。

    ImGui::PushStyleVarFloat(ImGuiStyleVar_ChildRounding, 5.0) # 外枠を角丸にします。
    ImGui::PushStyleColorVec4(ImGuiCol_ChildBg, ImColor.create(60, 0, 0, 100)) # 子ウィンドウの背景色を変更します。
    ImGui::SetNextItemWidth(100) # 次のUIパーツの幅を100にします。
    flag = 0 # ImGuiWindowFlags
    # flag |= ImGuiWindowFlags_NoScrollWithMouse # 子ウィンドウの中でマウススクロールしても子ウィンドウ内はスクロールされなくなります。
    flag |= ImGuiWindowFlags_MenuBar # 子ウィンドウにBeginMenuBarをつけることを可能にします。
    # 第3引数をtrueにすることで外枠が表示されます。
    ImGui::BeginChildStr("ChildID", ImVec2.create(ImGui::GetWindowContentRegionWidth() * 0.5, 260), true, flag)
    if ImGui::BeginMenuBar()
      if ImGui::BeginMenu("Menu")
        # "Menu"をクリックしたら開くメニュー項目を書いていきます。
        if ImGui::MenuItemBool("New")
          # ...
        end
        ImGui::EndMenu()
      end
      ImGui::EndMenuBar()
    end

    # 子ウィンドウの中に100行作成します。
    100.times do |i|
      ImGui::Text("%04d: スクロール可能領域", :int, i)
      if goto_line && @@line.read_int == i
        # SetScrollHereYは現在の位置にスクロール位置を持ってきます。
        # "Goto"ボタンを押した時の行数の位置が子ウィンドウの真ん中の位置になるように瞬時にスクロールされます。
        ImGui::SetScrollHereY()
        # ImGui::SetScrollHereY(0.0) # 子ウィンドウの一番上に来るように瞬時にスクロールされます。
        # ImGui::SetScrollHereY(1.0) # 子ウィンドウの一番下に来るように瞬時にスクロールされます。
      end
    end
    ImGui::SetScrollHereY() if goto_line && @@line.read_int >= 100

    ImGui::EndChild()
    ImGui::PopStyleColor()
    ImGui::PopStyleVar()

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::TabWindow

  @@names = ["同じタブ名##1", "同じタブ名##2", "タブ2", "タブ3", "タブ4", "タブ5", "タブ6", "タブ7"].map! {|s| FFI::MemoryPointer.from_string(s)} # const char* names[8] = {...}
  @@opened_values = [1, 1, 1, 1, 1, 1, 1, 1] # static bool opened[8] = { true, true, true, true, true, true, true, true };
  @@opened = FFI::MemoryPointer.new(:int8, @@opened_values.length).put_array_of_int8(0, @@opened_values) # static bool opened[8] = { true, true, true, true, true, true, true, true };

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("タブ")

    flag = ImGuiTabBarFlags_Reorderable                   # タブをドラッグして並び替えができるようになります。
    flag |= ImGuiTabBarFlags_TabListPopupButton           # タブの一番左端にドロップダウンリストが表示される下向き三角形のクリックエリアを作成し、そこからタブを選択できるようになります。
    flag |= ImGuiTabBarFlags_AutoSelectNewTabs            # タブを新しく作成した時に自動でそのタブを選択状態にします。
  # flag |= ImGuiTabBarFlags_NoCloseWithMiddleMouseButton # タブの中でマウス中央ボタンクリックすることでタブを閉じることができる機能を無効にします。
  # flag |= ImGuiTabBarFlags_NoTooltip                    # タブ上にマウスオーバーした場合に表示されるタブ名のポップアップ表示を無効にします。
  # flag |= ImGuiTabBarFlags_FittingPolicyResizeDown      # タブがウィンドウ幅を超えてたくさんある場合にタブの幅を自動でリサイズしてフィットさせることができます。
    flag |= ImGuiTabBarFlags_FittingPolicyScroll          # タブの幅を自動でリサイズさせずに左右の矢印ボタンを右端に配置してそこからタブを順番に選択できるようにします。

    if ImGui::BeginTabBar("TabBarID", flag)
      @@opened_values.length.times do |n|
        # 第2引数の&opened[n]を省略すると閉じるボタン(X)が作成されません。
        if !@@opened[n].read_int8().zero? && ImGui::BeginTabItem(@@names[n], @@opened[n])
          ImGui::Text("これは %s のタブです", :string, @@names[n].read_string)
          ImGui::EndTabItem()
        end
      end
      ImGui::EndTabBar()
    end

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::SearchWindow

  @@lines = ["橋本環奈", "橋下徹", "橋本奈々未", "橋本真也", "あいうえお", "abc", "かんな橋本"].map! {|s| FFI::MemoryPointer.from_string(s)} # const char* lines[] = { ... };

  @@filter = ImGuiTextFilter.new # static ImGuiTextFilter filter;

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("文字検索機能・フィルタリング")

    ImGui::TextFilter_Draw(@@filter.pointer, FFI::MemoryPointer.from_string("フィルターラベル"))

    @@lines.length.times do |i|
      if ImGui::TextFilter_PassFilter(@@filter, @@lines[i])
        ImGui::BulletText("%s", :string, @@lines[i].read_string)
      end
    end

    ImGui::Text("%s among %d items", :string, (0xf002).chr(Encoding::UTF_8), :int, 10) # 0xf002 == fa-search (Ref.: https://fontawesome.com/v4.7.0/cheatsheet/ )
    ImGui::Text("%s Search", :string, (0xf002).chr(Encoding::UTF_8))
    icons_str = StringIO.new
    (0xf000...0xf0ff).each do |code|
      icons_str << code.chr(Encoding::UTF_8)
    end
    ImGui::TextWrapped("%s Search", :string, icons_str.string)

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::MainMenuBarWindow

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())

    if (ImGui::BeginMainMenuBar())
      # メインメニューを表示している時の処理をここに書きます。
      if (ImGui::BeginMenu("File"))
        # "File"をクリックしてFileメニューを開いた時の処理をここに書きます。
        # bool MenuItem(const char* label, const char* shortcut = NULL,
        #               bool selected = false, bool enabled = true);
        ImGui::MenuItemBool("(dummy menu)", nil, false, false) # enabledをfalseにすることでグレー表示できます。 
        if (ImGui::MenuItemBool("New"))
          # "New"がクリックされた時の処理をここに書きます。
        end
        # ショートカットキー表示は第2引数に書きます。
        if (ImGui::MenuItemBool("Open", "Ctrl+O"))
        end
        if (ImGui::BeginMenu("Open Recent"))
          ImGui::MenuItemBool("fish_hat.c")
          ImGui::MenuItemBool("fish_hat.inl")
          ImGui::MenuItemBool("fish_hat.h")
          if (ImGui::BeginMenu("More.."))
            ImGui::MenuItemBool("Hello")
            ImGui::MenuItemBool("Sailor")
            if (ImGui::BeginMenu("Recurse.."))
              # ...
              ImGui::EndMenu()
            end
            ImGui::EndMenu()
          end
          ImGui::EndMenu()
        end
        if (ImGui::MenuItemBool("Save", "Ctrl+S"))
        end
        if (ImGui::MenuItemBool("Save As.."))
        end
        ImGui::Separator()
        if (ImGui::BeginMenu("Options"))
          ImGui::EndMenu()
        end
        if (ImGui::BeginMenu("Colors"))
          ImGui::EndMenu()
        end
        if (ImGui::BeginMenu("Disabled", false))
          ImGui::EndMenu()
        end
        if (ImGui::MenuItemBool("Checked", nil, true)) # selectedをtrueにすることでチェックマークをつけることができます
        end
        if (ImGui::MenuItemBool("Quit", "Alt+F4"))
        end
        ImGui::EndMenu()
      end
      if (ImGui::BeginMenu("Edit"))
        ImGui::EndMenu()
      end
      ImGui::EndMainMenuBar()
    end

    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::ClippingAndDummyWindow

  @@size_buf = FFI::MemoryPointer.new(:float, 2)
  @@size = ImVec2.create(100, 100) # static ImVec2 size(100, 100), offset(50, 20);
  @@offset = ImVec2.create(50, 20)

  def self.Show(is_open = nil)
    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("クリッピング/ダミー")

    ImGui::DragFloat2("size", @@size_buf, 0.5, 1.0, 200.0, "%.0f")
    pos = ImGui::GetCursorScreenPos()
    clip_rect = ImVec4.create(pos[:x], pos[:y], pos[:x] + @@size[:x], pos[:y] + @@size[:y])
    # InvisibleButtonを使うことで描画はされませんがマウスによる動作の反応をしてくれるエリアを作成することができます。
    ImGui::InvisibleButton("##dummy", @@size)
    # IsItemActiveは直前に書いたUIパーツがアクティブかどうかを返します。
    if ImGui::IsItemActive() && ImGui::IsMouseDragging(ImGuiMouseButton_Left)
      io = ImGuiDemo::GetIO()
      @@offset[:x] += io[:MouseDelta][:x]
      @@offset[:y] += io[:MouseDelta][:y]
    end
    # ドラッグエリアの塗りつぶしをします。
    draw_list = ImGui::GetWindowDrawList()
    ImGui::DrawList_AddRectFilled(draw_list,
                                  pos,
                                  ImVec2.create(pos[:x] + @@size[:x], pos[:y] + @@size[:y]),
                                  ImColor.col32(90, 90, 120, 255)
                                 )
    # 文字を作成します(指定したエリアでしか見えないようになります。クリッピングされます)
    ImGui::DrawList_AddTextFontPtr(draw_list, ImGui::GetFont(), ImGui::GetFontSize() * 2.0, 
                                        ImVec2.create(pos[:x] + @@offset[:x], pos[:y] + @@offset[:y]),
                                        ImColor.col32(255, 255, 255, 255), "Click and drag", nil, 0.0, clip_rect)

    ################################################################################
    ImGui::NewLine()

    button_size = ImVec2.create(40, 40)
    ImGui::Button("A", button_size)
    ImGui::SameLine()
    ImGui::Dummy(button_size) # ダミーを使って間隔を空けることができます。
    ImGui::SameLine()
    if (ImGui::Button("B", button_size))
      # ボタンが押された時にしたい処理を書きます。
    end

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

module ImGuiDemo::PopupWindow

  def self.Show(is_open = nil)

    ok_clicked = false

    ImGui::PushFont(ImGuiDemo::GetFont())
    ImGui::Begin("ポップアップ")

    if ImGui::Button("アプリの終了")
      ImGui::OpenPopup("アプリケーションを終了しますか?")
    end
    if ImGui::BeginPopupModal("アプリケーションを終了しますか?", nil, ImGuiWindowFlags_AlwaysAutoResize)
      if ImGui::Button("はい", ImVec2.create(120, 0))
        ok_clicked = true
        ImGui::CloseCurrentPopup()
      end
      ImGui::SetItemDefaultFocus()
      ImGui::SameLine()
      if ImGui::Button("いいえ", ImVec2.create(120, 0))
        ImGui::CloseCurrentPopup()
      end
      ImGui::EndPopup();

      return ok_clicked
    end

    ImGui::End()
    ImGui::PopFont()
  end
end

####################################################################################################

