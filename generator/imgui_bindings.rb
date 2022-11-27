require 'ffi'
require 'json'

ImGuiTypedefMapEntry = Struct.new( :name, :type, :callback_signature, keyword_init: true )

ImGuiStructMemberEntry = Struct.new( :name, :type, :type_str, :is_array, :size, keyword_init: true )
ImGuiStructMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiEnumValEntry = Struct.new( :name, :value, :original, keyword_init: true )
ImGuiEnumMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiFunctionArgEntry = Struct.new( :name, :type, :type_name, :default, :is_array, :size, keyword_init: true )
ImGuiFunctionMapEntry = Struct.new( :name, :args, :retval, :return_udt, :method_of, :ctor, :dtor, :original_funcname, keyword_init: true )

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

  @@imGuiToCTypeMap = nil

  IgnoredTypedefs = [
    'value_type',
    'iterator',
    'const_iterator'
  ]
  def self.build_ffi_typedef_map(json_filename)
    return if @@imGuiToCTypeMap != nil
    type_map = Hash.new
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_typedefs = json['typedefs']

      json_typedefs.each do |typedef|
        type_name = typedef['name']
        type_info = typedef['type']
        type_cond = typedef['conditionals']
        if type_name == 'ImWchar'
          if type_cond[0]['condition'] == 'ifndef' && type_cond[0]['expression'] == 'IMGUI_USE_WCHAR32'
            typedef_ImWchar16 = json_typedefs.find { |t| t['name'] == 'ImWchar16' }['type']
            type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: get_ffi_type(typedef_ImWchar16['declaration']), callback_signature: nil)
          end
          next
        end
        unless (typedef_type_details = type_info['type_details']).nil?
          if typedef_type_details['flavour'] == 'function_pointer'
            ### Analyze signature of callback
            ret = get_ffi_type(typedef_type_details['return_type']['declaration'])

            args = []
            typedef_type_details['arguments'].each do |argument|
              args << get_ffi_type(argument['type']['declaration'])
            end

            type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: ":#{type_name}", callback_signature: [ret, args])
            next
          end
        end

        type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: get_ffi_type(type_info['declaration']), callback_signature: nil)
      end

      type_map.each_value do |type_entry|
        next unless type_entry.type.nil?

        actual_type_name = json_typedefs.find { |t| t['name'] == type_entry.name }['type']['declaration']
        resolved_type = type_map.values.find { |v| v.name == actual_type_name }
        type_entry.type = resolved_type['type']
      end
    end

    @@imGuiToCTypeMap = type_map

    return type_map
  end

  def self.add_ffi_typedef_map(type_name, ffi_type)
    return if (@@imGuiToCTypeMap.nil? || @@imGuiToCTypeMap.has_key?(type_name))

    @@imGuiToCTypeMap[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: ffi_type)
  end

  def self.build_struct_map(json_filename)
    structs = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_structs = json['structs']
      json_structs.each do |json_struct|
        next if json_struct['forward_declaration'] == true

        struct_name = json_struct['name']
        next if json_struct['name'].include? 'ImGuiStoragePair' # Use stub instead

        struct = ImGuiStructMapEntry.new(name: struct_name, members: [])
        json_fields = json_struct['fields']
        json_fields.each do |json_field|
          type_str = json_field['type']['declaration']
          ffi_type = get_ffi_type(type_str)
          json_names = json_field['names']
          json_names.each do |json_name|
            member = ImGuiStructMemberEntry.new(name: json_name['name'], type_str: type_str, type: ffi_type, is_array: json_name['is_array'])
            if member.is_array
              member.size = json_name['array_bounds'] # [TODO] handle "array_bounds": "(IM_UNICODE_CODEPOINT_MAX +1)/4096/8" ("Used4kPagesMap") and apply 'to_i' as before
            else
              member.size = 0
            end
            struct.members << member
          end
        end
        add_ffi_typedef_map(struct_name, ":#{struct_name}")
        structs << struct
      end
    end

    # ImVector stub
    structs.delete_if {|struct| struct.name == 'ImVector'}
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

end

if __FILE__ == $0 # test code snippets

  ImGuiBindings.build_ffi_typedef_map( '../third_party/dear_bindings/cimgui.json' )
  # exit()

  structs = ImGuiBindings.build_struct_map( '../third_party/dear_bindings/cimgui.json' )
  pp structs
  exit()

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
end
