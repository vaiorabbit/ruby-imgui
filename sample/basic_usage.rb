# coding: utf-8
# Ref.: Dear ImGuiの使い方まとめ
# https://qiita.com/mizuma/items/73218dab2f6b022b0227

####################################################################################################

module ImGuiDemo

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
  @@items_string = ["AAA", "BBB", "CCC"].map! {|s| FFI::MemoryPointer.from_string(s)}
  @@items.write_array_of_pointer(@@items_string)

  @@item_current = FFI::MemoryPointer.new(:int, 1) # static int item_current = 0; // 0なら"AAA", 1なら"BBB", 2なら"CCC"
  @@str0 = FFI::MemoryPointer.new(:char, 128) # static char str0[128] = "";
  @@str1 = FFI::MemoryPointer.new(:char, 128) # static char str1[128] = "";
  @@i0 = FFI::MemoryPointer.new(:int, 1); @@i0.put_int32(0, 123) # static int i0 = 123;
  @@f0 = FFI::MemoryPointer.new(:float, 1); @@f0.put_float32(0, 0.001) # static float f0 = 0.001f;
  @@vec3 = FFI::MemoryPointer.new(:float, 3); @@vec3.put_array_of_float32(0, [0.10, 0.20, 0.30]) # static float vec3[3] = { 0.10f, 0.20f, 0.30f};
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
  @@i1 = FFI::MemoryPointer.new(:int, 1); @@i1.put_int32(0, 50)  # static int i1 = 50, i2 = 42;
  @@i2 = FFI::MemoryPointer.new(:int, 1); @@i2.put_int32(0, 42)  # static int i1 = 50, i2 = 42;
  @@f1 = FFI::MemoryPointer.new(:float, 1); @@f1.put_float32(0, 1.0)  # static float f1 = 1.00f;
  @@i3 = FFI::MemoryPointer.new(:int, 1); @@i3.put_int32(0, 0)  # static int i3 = 0;
  @@f2 = FFI::MemoryPointer.new(:float, 1); @@f2.put_float32(0, 0.123)  # static float f2 = 0.123f, f3 = 0.0f;
  @@f3 = FFI::MemoryPointer.new(:float, 1); @@f3.put_float32(0, 0.0)  # static float f2 = 0.123f, f3 = 0.0f;

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
  @@angle = FFI::MemoryPointer.new(:float, 1); @@angle.put_float32(0, 0.0) # static float angle = 0.0f;
  @@begin = FFI::MemoryPointer.new(:float, 1); @@begin.put_float32(0, 10) # static float begin = 10, end = 90;
  @@end = FFI::MemoryPointer.new(:float, 1); @@end.put_float32(0, 90) # static float begin = 10, end = 90;
  @@vec3f = FFI::MemoryPointer.new(:float, 3); @@vec3f.put_array_of_float32(0, [0.10, 0.20, 0.30]) # static float vec3f[4] = { 0.10f, 0.20f, 0.30f };
  @@x = FFI::MemoryPointer.new(:float, 1); @@x.put_float32(0, 1.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;
  @@y = FFI::MemoryPointer.new(:float, 1); @@y.put_float32(0, 2.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;
  @@z = FFI::MemoryPointer.new(:float, 1); @@z.put_float32(0, 3.0)  # static float x = 1.0f, y = 2.0f, z = 3.0f;

  @@items = FFI::MemoryPointer.new(:pointer, 4) # const char* items[] = { "AAA", "BBB", "CCC", "DDD" };
  @@items_string = ["AAA", "BBB", "CCC", "DDD"].map! {|s| FFI::MemoryPointer.from_string(s)}
  @@items.write_array_of_pointer(@@items_string)
  @@item = FFI::MemoryPointer.new(:int, 1); @@item.put_int32(0, -1) # static int item = -1;

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

