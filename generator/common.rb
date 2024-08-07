require 'ffi'
require 'json'

ImGuiTypedefMapEntry = Struct.new( :name, :type, :callback_signature, keyword_init: true )

ImGuiStructMemberEntry = Struct.new( :name, :type, :type_str, :is_array, :size, keyword_init: true )
ImGuiStructMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiEnumValEntry = Struct.new( :name, :value, :original, keyword_init: true )
ImGuiEnumMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiFunctionArgEntry = Struct.new( :name, :type, :type_name, :default, :is_array, :size, keyword_init: true )
ImGuiFunctionMapEntry = Struct.new( :name, :args, :retval, :return_udt, :method_of, :ctor, :dtor, :original_funcname, keyword_init: true )

ImGuiCommentEntry = Struct.new( :name, :comments, :children, keyword_init: true )

module ImGuiBindings

  CToFFITypeMap = {
    'bool' => :bool,
    'char' => :char,
    'signed char' => :char,
    'unsigned char' => :uchar,
    'short' => :short,
    'signed short' => :short,
    'unsigned short' => :ushort,
    'int' => :int,
    'signed int' => :int,
    'unsigned int' => :uint,
    'int32_t' => :int32,
    'uint32_t' => :uint32,
    'signed long long' => :int64,
    'unsigned long long' => :uint64,
    'int64_t' => :int64,
    'uint64_t' => :uint64,
    'float' => :float,
    'double' => :double,
    'ptrdiff_t' => :long,
    'void' => :void,
    'void*' => :pointer,
    'void *' => :pointer,
    'size_t' => :size_t,
    '...' => :varargs,
  }

  ImGuiBasicTytpTOFFITypeMap = {
    "ImS8" => :char,
    "ImS16" => :short,
    "ImS32" => :int32,
    "ImS64" => :int64,
    "ImU8" => :uchar,
    "ImU16" => :ushort,
    "ImU32" => :uint32,
    "ImU64" => :uint64,
  }

  @@imGuiToCTypeMap = nil

  IgnoredTypedefs = [
    'value_type',
    'iterator',
    'const_iterator'
  ]
  OpaqueStruct = [
    'ImDrawListSharedData',
  ]
  def self.build_ffi_typedef_map(typedefs_dict_json_filename, structs_and_enums_json_filename)
    return if @@imGuiToCTypeMap != nil
    type_map = Hash.new
    File.open(typedefs_dict_json_filename) do |file|
      json = JSON.load(file)
      json.keys.each do |imgui_type_name|
        next if IgnoredTypedefs.include?(imgui_type_name)

        # Resolve ImWchar : Now ImWchar is a typedef of ImWchar16 or ImWchar32 (v1.76 ~)
        # https://github.com/cimgui/cimgui/commit/f84d9c43015742dc5ad4434da92c5e1a99254d27#diff-2e9752529db931d99aade39734631cd0L70
        if imgui_type_name == "ImWchar"
          imwchar_type = json[imgui_type_name] # "ImWchar16" or "ImWchar32"
          type_map[imgui_type_name] = ImGuiTypedefMapEntry.new(name: imgui_type_name, type: get_ffi_type(json[imwchar_type]), callback_signature: nil)
          next
        end

        # Resolve Callback
        if imgui_type_name.end_with?("Callback")
          # json[imgui_type_name] contans the signture of callback function (e.g.: "void(*)(const ImDrawList* parent_list,const ImDrawCmd* cmd);")
          # Keep this information in 'callback_signature:' for later use

          ### Analyze signature of callback / TODO fragile code. need maintainance ###
          ret = nil
          args = []

          raw_callback_str = json[imgui_type_name]                    # e.g.) raw_callback_str = "void(*)(const ImDrawList* parent_list,const ImDrawCmd* cmd)"
          match_data = /(.+)\(\*\)\((.+)\)/.match(raw_callback_str)
          ret_type_str, raw_args = match_data[1], match_data[2]       # e.g.) ret_type_str="void", raw_args="const ImDrawList* parent_list,const ImDrawCmd* cmd"

          ret_type_sym = get_ffi_type(ret_type_str)
          ret_type_sym = ret_type_str.to_sym if ret_type_sym == nil   # e.g.) ret_type_sym = :void
          ret = ret_type_sym

          arg_strs = raw_args.split(",")                              # e.g.) arg_strs = ["const ImDrawList* parent_list", "const ImDrawCmd* cmd"]
          arg_strs.each do |arg_str|
            arg_str.gsub!(/const[ ]+/, '')                            # e.g.) arg_str = "ImDrawList* parent_list"
            elems = arg_str.split(" ")                                # e.g.) elems = ["ImDrawList*", "parent_list"]
            elems.pop                                                 # e.g.) elems = ["ImDrawList*"]
            raise RuntimeError if elems.length != 1
            arg_type_str = elems[0].gsub(/\*/, '')                    # e.g.) arg_type_str = "ImDrawList"
            arg_type_sym = get_ffi_type(arg_type_str)
            arg_type_sym = arg_type_str.to_sym if arg_type_sym == nil # e.g.) arg_type_sym = :ImDrawList
            args << arg_type_sym
          end
          ###

          # [NOTE] Register as a new ImGui to C type by specifing 'type: imgui_type_name.to_sym'
          # type_map[imgui_type_name] = ImGuiTypedefMapEntry.new(name: imgui_type_name, type: imgui_type_name.to_sym, callback_signature: [ret, args])
          type_map[imgui_type_name] = ImGuiTypedefMapEntry.new(name: imgui_type_name, type: get_ffi_type(json[imgui_type_name]), callback_signature: [ret, args])
          next
        end

        if OpaqueStruct.include?(imgui_type_name)
          type_map[imgui_type_name] = ImGuiTypedefMapEntry.new(name: imgui_type_name, type: :pointer, callback_signature: nil)
          next
        end
        # Resolve other types into the symbols of their names
        type_map[imgui_type_name] = ImGuiTypedefMapEntry.new(name: imgui_type_name, type: get_ffi_type(json[imgui_type_name]), callback_signature: nil)
      end
    end

    @@imGuiToCTypeMap = type_map

    File.open(structs_and_enums_json_filename) do |file|
      json = JSON.load(file)
      json_enumtypes = json['enumtypes'] # [2022-11-17] for ImGuiKey
      enumtypes_names = json_enumtypes.keys
      enumtypes_names.each do |enumtypes_name|
        type_map[enumtypes_name] = ImGuiTypedefMapEntry.new(name: enumtypes_name, type: get_ffi_type(json_enumtypes[enumtypes_name]), callback_signature: nil)
      end
    end

    return type_map
  end


  def self.build_struct_map(json_filename)
    structs = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_structs = json['structs']
      struct_names = json_structs.keys
      struct_names.each do |struct_name|
        struct = ImGuiStructMapEntry.new(name: struct_name, members: [])
        members = json_structs[struct_name]
        members.each do |m|
          # Some members in "structs" of "structs_and_enums.json" contains array brackets in its name (e.g.: "name": "Used4kPagesMap[(0xFFFF+1)/4096/8]",), which is not desirable as actual variable name.
          member_name = if m['name'].include? "["
                          m['name'].gsub(/\[.+\]/, '')
                        else
                          m['name']
                        end
          member = ImGuiStructMemberEntry.new(name: member_name, type_str: m['type'], type: get_ffi_type(m['type']), is_array: m.has_key?('size'))
          if member.is_array
            member.size = m['size'].to_i
            member.name.gsub!(/\[[\w\+]+\]/,'')
          else
            member.size = 0
          end
          struct.members << member
        end
        structs << struct
      end
    end

    # ImVector stub
    structs.delete_if {|struct| struct.name == "ImVector"}
    struct_imvector_stub = ImGuiStructMapEntry.new
    struct_imvector_stub.name = 'ImVector'
    struct_imvector_stub.members = [
      ImGuiStructMemberEntry.new(name: 'Size', type_str: 'int', type: :int, is_array: false, size: 0),
      ImGuiStructMemberEntry.new(name: 'Capacity', type_str: 'int', type: :int, is_array: false, size: 0),
      ImGuiStructMemberEntry.new(name: 'Data', type_str: 'T*', type: :pointer, is_array: false, size: 0),
    ]
    structs << struct_imvector_stub

    # substutite ImGuiStoragePair (a structure with unnamed union member) with stub
    # "ImGuiStoragePair": [
    #   {
    #     "name": "key",
    #     "type": "ImGuiID"
    #   },
    #   {
    #     "name": "",
    #     "type": "union { int val_i; float val_f; void* val_p;}"
    #   }
    # ],
    structs.delete_if {|struct| struct.name == "ImGuiStoragePair"}
    struct_pair_stub = ImGuiStructMapEntry.new
    struct_pair_stub.name = 'ImGuiStoragePair'
    struct_pair_stub.members = [
      ImGuiStructMemberEntry.new(name: 'key', type_str: 'unsinged int', type: :uint, is_array: false, size: 0),
      ImGuiStructMemberEntry.new(name: 'val_p', type_str: '', type: :pointer, is_array: false, size: 0),
    ]
    structs << struct_pair_stub

    return structs
  end

  def self.build_enum_map(json_filename)
    enums = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_enums = json['enums']
      enum_names = json_enums.keys
      enum_names.each do |enum_name|
        enum = ImGuiEnumMapEntry.new(name: enum_name, members: [])
        members = json_enums[enum_name]
        members.each do |m|
          member = ImGuiEnumValEntry.new(name: m['name'], value: m['calc_value'], original: m['value'])
          enum.members << member
        end
        enums << enum
      end
    end
    return enums
  end

  UDT = %w{ImVec2 ImVec4 ImColor ImRect}
  def self.is_udt(type_name)
    return UDT.include?(type_name)
  end

  def self.get_ffi_type(type_name)
    if type_name.include?('*') || type_name.include?('&') || type_name.include?(']')
      return :pointer
    end
    type_name.gsub!(/const[ ]+/, '')
    if type_name.include?('struct ')
      return type_name.gsub(/struct[ ]+/, '').to_sym
    end
    if type_name.include?('ImVector')
      return :ImVector # stub
    end
    if type_name.include?('Pair')
      return :Pair # stub
    end

    if @@imGuiToCTypeMap != nil && @@imGuiToCTypeMap.has_key?(type_name)
      return @@imGuiToCTypeMap[type_name].type
    end
    if ImGuiBasicTytpTOFFITypeMap.has_key?(type_name)
      return ImGuiBasicTytpTOFFITypeMap[type_name]
    end
    return CToFFITypeMap[type_name]
  end

  def self.create_new_function_map(func_info)
    func = ImGuiFunctionMapEntry.new

    # name
    func.name = if func_info.has_key?('ov_cimguiname')
                  func_info['ov_cimguiname']
                else
                  func_info['cimguiname']
                end

    # original_funcname
    func.original_funcname = func_info.has_key?('funcname') ? func_info['funcname'] : ""

    # arguments
    func.args = []
    if func_info['argsT'].any?
      args = func_info['argsT']
      args.each do |arg_info|
        # basic info
        is_array = false
        size = 0
        type_name = arg_info['type']
        type = get_ffi_type(arg_info['type'])
        if type == nil # This happens when arg_info['type'] contains '[' or ']'.
          is_array = true
          size = /\[([\w\+])+\]/.match(arg_info['type'])[1].to_i
          type = get_ffi_type(arg_info['type'].gsub(/\[[\w\+]+\]/,''))
        end
        # check if default argument exists
        default_arg = nil
        unless func_info['defaults'].empty?
          if func_info['defaults'].has_key?( arg_info['name'] )
            default_arg = func_info['defaults'][arg_info['name']]
          end
        end
        arg = ImGuiFunctionArgEntry.new(name: arg_info['name'], type: type, type_name: type_name, default: default_arg, is_array: is_array, size: size)
        func.args << arg
      end
    end

    # return value
    func.retval = if func_info.has_key?('ret')
                    if func_info['ret'].include?('_Simple')
                      func_info['ret'].gsub!(/_Simple/, '')
                    end
                    get_ffi_type(func_info['ret'])
                  elsif func_info.has_key?('constructor') # entries with "constructor" do NOT have "ret" but it's okay just to return ":pointer"
                    :pointer
                  else
                    :void
                  end

    #
    # check if return value is modified from original signature
    #
    # If you find an entry with 'nonUDT : 1' in 'definitions.json',
    # cimgui version API doesn't return the original value; instead has
    # 1st output argument to write the original return value.
    #
    # e.g.)  imgui.h : IMGUI_API ImVec2 GetMousePos();
    #       cimgui.h : CIMGUI_API void igGetMousePos(ImVec2 *pOut);
    #
    func.return_udt = func_info.has_key?('nonUDT')

    #
    # check if this function should also be generated as a method of class
    #
    # If you find an entry with 'stname : XXX' in 'definitions.json',
    # the original API is a method of the struct called 'XXX (e.g.: ImColor, ImFontAtlas, ...')
    #
    func.method_of = func_info.has_key?('stname') ? func_info['stname'] : nil
    if func.method_of != nil
      func.ctor = func_info.has_key?('constructor') ? func_info['constructor'] : nil
      func.dtor = func_info.has_key?('destructor') ? func_info['destructor'] : nil
    else
      func.ctor = nil
      func.dtor = nil
    end

    return func
  end

  def self.build_function_map(json_filename)
    functions = []
    File.open(json_filename) do |file|
      json = JSON.load(file) # <- <func_name, func_info_overloadings>
      func_names = json.keys
      func_names.each do |func_name|
        func_info_overloadings = json[func_name]
        func_info_overloadings.each do |func_info|

          # Ignore functions with 'va_list' arguments.  Use ':varargs (...)' versions instead.
          next if func_info['args'].include?('va_list')

          # Ignore ImVector methods.
          next if func_info['cimguiname'].start_with?('ImVector_')

          func = create_new_function_map(func_info)
          functions << func

        end
      end
    end
    return functions
  end

  def self.build_comment_map(dearbindings_json_filename = 'dearbindings.json')
    comments = {}
    comments['structs'] = {}
    comments['enums'] = {}
    comments['functions'] = {}

    File.open(dearbindings_json_filename) do |file|
      json_dearbindings = JSON.load(file)
      json_structs = json_dearbindings['structs']
      json_structs.each do |json_struct|
        json_comments = json_struct['comments']
        json_attached_comment = if json_comments and json_comments.has_key?('attached')
                                  " #{json_comments['attached'].gsub(/^\/\//, '#')}"
                                else
                                  ''
                                end
        json_preceding_comment = if json_comments and json_comments.has_key?('preceding')
                                   json_comments['preceding'].map{|comment| comment.gsub(/^\/\//, '#')}.join("\n") + "\n"
                                 else
                                   ''
                                 end
        struct_comment_entry = ImGuiCommentEntry.new(name: json_struct['name'], comments: {:preceding => json_preceding_comment, :attached => json_attached_comment}, children: {})
        json_fields = json_struct['fields']
        json_fields.each do |json_field|
          json_field_comments = json_field['comments']
          json_field_attached_comment = if json_field_comments and json_field_comments.has_key?('attached')
                                          " #{json_field_comments['attached'].gsub(/^\/\//, '#')}"
                                        else
                                          ''
                                        end
          if json_field['names']
            struct_field_comment_entry = ImGuiCommentEntry.new(name: json_field['names'][0]['name'], comments: {:preceding => '', :attached => json_field_attached_comment}, children: nil)
            struct_comment_entry.children[struct_field_comment_entry.name] = struct_field_comment_entry
          end
        end
        comments['structs'][json_struct['name']] = struct_comment_entry
      end

      json_enums = json_dearbindings['enums']
      json_enums.each do |json_enum|
        json_comments = json_enum['comments']
        json_attached_comment = if json_comments and json_comments.has_key?('attached')
                                  " #{json_comments['attached'].gsub(/^\/\//, '#')}"
                                else
                                  ''
                                end
        json_preceding_comment = if json_comments and json_comments.has_key?('preceding')
                                   json_comments['preceding'].map{|comment| comment.gsub(/^\/\//, '#')}.join("\n") + "\n"
                                 else
                                   ''
                                 end
        enum_comment_entry = ImGuiCommentEntry.new(name: json_enum['name'], comments: {:preceding => json_preceding_comment, :attached => json_attached_comment}, children: {})
        json_elements = json_enum['elements']
        json_elements.each do |json_element|
          json_element_comments = json_element['comments']
          json_element_attached_comment = if json_element_comments and json_element_comments.has_key?('attached')
                                            " #{json_element_comments['attached'].gsub(/^\/\//, '#')}"
                                          else
                                            ''
                                          end
          enum_element_comment_entry = ImGuiCommentEntry.new(name: json_element['name'], comments: {:preceding => '', :attached => json_element_attached_comment}, children: nil)
          enum_comment_entry.children[enum_element_comment_entry.name] = enum_element_comment_entry
        end
        comments['enums'][json_enum['name']] = enum_comment_entry
      end

      json_functions = json_dearbindings['functions']
      json_functions.each do |json_function|
        json_comments = json_function['comments']
        json_attached_comment = if json_comments and json_comments.has_key?('attached')
                                  " #{json_comments['attached'].gsub(/^\/\//, '#')}"
                                else
                                  ''
                                end
        json_preceding_comment = if json_comments and json_comments.has_key?('preceding')
                                   json_comments['preceding'].map{|comment| comment.gsub(/^\/\//, '#')}.join("\n") + "\n"
                                 else
                                   ''
                                 end
        function_comment_entry = ImGuiCommentEntry.new(name: json_function['name'], comments: {:preceding => json_preceding_comment, :attached => json_attached_comment}, children: {})
        comments['functions'][json_function['name']] = function_comment_entry
      end
    end

    return comments
  end
end

if __FILE__ == $0 # test code snippets

=begin
  ImGuiBindings.build_ffi_typedef_map( '../cimgui/generator/output/typedefs_dict.json', '../cimgui/generator/output/structs_and_enums.json' )
  # exit()

  structs = ImGuiBindings.build_struct_map( '../cimgui/generator/output/structs_and_enums.json' )
  # pp structs
  # exit()

  enums = ImGuiBindings.build_enum_map( '../cimgui/generator/output/structs_and_enums.json' )
  # enums.each do |e|
  #   print "#{e.name}\n"
  #   e.members.each do |m|
  #     print "    #{m.name} = #{m.value} # #{m.original}\n"
  #   end
  # end
  # exit()

  funcs_base = ImGuiBindings.build_function_map( '../cimgui/generator/output/definitions.json' )
  # pp funcs_base

  funcs_impl = ImGuiBindings.build_function_map( '../cimgui/generator/output/impl_definitions.json' )
  funcs_impl.select! {|f| f.name.include?('OpenGL2') or f.name.include?('Glfw')}
  # pp funcs_impl
=end

  pp ImGuiBindings.build_comment_map

end
