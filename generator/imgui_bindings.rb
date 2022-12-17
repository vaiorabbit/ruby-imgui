require 'ffi'
require 'json'

ImGuiTypedefMapEntry = Struct.new( :name, :type, :callback_signature, keyword_init: true )

ImGuiStructMemberEntry = Struct.new( :name, :type, :type_str, :is_array, :size, keyword_init: true )
ImGuiStructMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiEnumValEntry = Struct.new( :name, :value, :original, keyword_init: true )
ImGuiEnumMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiFunctionArgEntry = Struct.new( :name, :type, :type_name, :default, :is_array, :size, keyword_init: true )
ImGuiFunctionMapEntry = Struct.new( :name, :args, :retval, :replaced_name, :generate_module_method, :generate_overload_method, :method_of, :ctor, :dtor, :original_funcname, keyword_init: true )

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
    'va_list' => :varargs,
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

  def self.build_enum_map(json_filename, conditions = [])
    enums = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_enums = json['enums']
      json_enums.each do |json_enum|
        enum_current_value = 0
        enum_type_name = json_enum['name']

        enum = ImGuiEnumMapEntry.new(name: enum_type_name, members: [])
        json_elements = json_enum['elements']
        json_elements.each do |json_element|

          enum_name = json_element['name']
          next if enum_name == 'ImGuiMod_Shortcut' # depends on the host os (whether macOS or other)

          if json_element.has_key? 'conditionals' # e.g.) ImGuiKey_KeysData_xxx
            json_element_conditionals = json_element['conditionals']
            condition = json_element_conditionals[0]['condition']
            macro_value = json_element_conditionals[0]['expression']
            should_macro_defined = (condition == 'ifdef')
            macro_defined = conditions.include? macro_value
            next if ((should_macro_defined && !macro_defined) || (!should_macro_defined && macro_defined))
          end

          val = if json_element.has_key? 'value'
                  eval(json_element['value'])
                else
                  enum_current_value
                end
          enum_value = val
          enum_current_value = val + 1
          Kernel.const_set(enum_name, enum_value)
          member = ImGuiEnumValEntry.new(name: enum_name, value: enum_value, original: json_element['value'])
          enum.members << member
        end
        enums << enum
      end
    end
    return enums
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

  def self.create_new_function_map(json_function, json, conditions = [])

    func = ImGuiFunctionMapEntry.new

    if json_function.has_key? 'conditionals'
      pp 'ho',  json_function['name']
      json_function_conditionals = json_function['conditionals']
      condition = json_function_conditionals[0]['condition']
      macro_value = json_function_conditionals[0]['expression']
      should_macro_defined = (condition == 'ifdef' or condition == 'if')
      macro_defined = conditions.include? macro_value
      return nil if ((should_macro_defined && !macro_defined) || (!should_macro_defined && macro_defined))
    end

    # name
    func.name = json_function['name']

    # original_funcname
    func.original_funcname = json_function['original_fully_qualified_name']

    func.replaced_name = nil
    func.generate_module_method = true
    func.generate_overload_method = false
    if func.name.start_with? 'ImGui_'
      api_name_c = func.name[6..]
      api_name_cpp = func.original_funcname[7..]
      if api_name_c != api_name_cpp
#        func.generate_module_method = false
        func.generate_overload_method = true
        if api_name_c.sub(api_name_cpp, '') == 'Ex'
          func.replaced_name = api_name_cpp
        end
      end
    end

    # arguments
    func.args = []
    json_function['arguments'].each do |json_argument|
      # basic info
      type_name = json_argument['type']['declaration']
      type = get_ffi_type(type_name)
      size = 0
      is_array = json_argument['is_array']
      if is_array
        if json_argument['array_bounds'] == 'None'
          size = 0
          is_array = false
        else
          size = json_argument['array_bounds'].to_i
        end
      end
      # check if default argument exists
      default_arg = if json_argument.has_key? 'default_value'
                      json_argument['default_value']
                    else
                      nil
                    end

      arg = ImGuiFunctionArgEntry.new(name: json_argument['name'], type: type, type_name: type_name, default: default_arg, is_array: is_array, size: size)
      func.args << arg
    end

    # return value
    func.retval = get_ffi_type(json_function['return_type']['declaration'])

    #
    # check if this function should also be generated as a method of class
    #
    # If you find an entry with 'stname : XXX' in 'definitions.json',
    # the original API is a method of the struct called 'XXX (e.g.: ImColor, ImFontAtlas, ...')
    #

    if func.name == 'GetKeyIndex' # [TODO]
      func.method_of = nil
    else
      func_prefix = /(.+)_(.+)/.match(func.name)[1] # e.g.: "ImFontAtlas_AddFont" -> func_prefix = "ImFontAtlas"
      func.method_of = if func_prefix != 'ImGui'
                         func_prefix
                       else
                         nil
                       end
    end
    func.ctor = nil
    func.dtor = nil

    return func
  end

  def self.build_function_map(json_filename, conditions = [])
    functions = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_functions = json['functions']
      json_functions.each do |json_function|

        # Ignore ImVector methods.
        next if json_function['name'].start_with?('ImVector_')
        next if json_function['is_default_argument_helper'] == true

        # Ignore functions with 'va_list' arguments.  Use ':varargs (...)' versions instead.
        has_va_list = false
        json_arguments = json_function['arguments']
        json_arguments.each do |json_argument|
          if json_argument['is_varargs']
            has_va_list = true
            break
          end
        end
        next if has_va_list

        func = create_new_function_map(json_function, json, conditions)
        functions << func unless func.nil?
      end

      func_names = json.keys
    end
    return functions
  end

end

if __FILE__ == $0 # test code snippets

  ImGuiBindings.build_ffi_typedef_map( '../third_party/dear_bindings/cimgui.json' )
  # exit()

  structs = ImGuiBindings.build_struct_map( '../third_party/dear_bindings/cimgui.json' )
  # pp structs
  # exit()

  enums = ImGuiBindings.build_enum_map( '../third_party/dear_bindings/cimgui.json' )
  # enums.each do |e|
  #   print "#{e.name}\n"
  #   e.members.each do |m|
  #     print "    #{m.name} = #{m.value} # #{m.original}\n"
  #   end
  # end
  # exit()

  funcs_base = ImGuiBindings.build_function_map( '../third_party/dear_bindings/cimgui.json' )
  pp funcs_base

  # funcs_impl = ImGuiBindings.build_function_map( '../cimgui/generator/output/impl_definitions.json' )
  # funcs_impl.select! {|f| f.name.include?('OpenGL2') or f.name.include?('Glfw')}
  # pp funcs_impl
end
