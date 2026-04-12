require 'ffi'
require 'json'

ImGuiTypedefMapEntry = Struct.new( :name, :type, :callback_signature, keyword_init: true )

ImGuiStructMemberEntry = Struct.new( :name, :type, :type_str, :is_array, :size, keyword_init: true )
ImGuiStructMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiEnumValEntry = Struct.new( :name, :value, :original, keyword_init: true )
ImGuiEnumMapEntry = Struct.new( :name, :members, keyword_init: true )

ImGuiDefineMapEntry = Struct.new( :name, :content, :value, keyword_init: true )

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
              args << ":#{get_ffi_type(argument['type']['declaration'])}"
            end

            # type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: "#{type_name}", callback_signature: [ret, args])
            type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: :pointer, callback_signature: [ret, args])
            next
          end
        end

        type_map[type_name] = ImGuiTypedefMapEntry.new(name: type_name, type: get_ffi_type(type_info['declaration']), callback_signature: nil)
      end

      type_map.each_value do |type_entry|
        next unless type_entry.type.nil?

        actual_type_name = json_typedefs.find { |t| t['name'] == type_entry.name }['type']['declaration']
        resolved_type = type_map.values.find { |v| v.name == actual_type_name }
        type_entry.type = resolved_type['type'] unless resolved_type == nil
        # Opaque/internal helper aliases may remain unresolved in metadata.
        type_entry.type = :pointer if type_entry.type.nil?
        # if resolved_type == nil
        #   pp "couldn't resolve: #{actual_type_name}"
        # end
      end
    end

    @@imGuiToCTypeMap ||= {}
    type_map.each do |name, entry|
      @@imGuiToCTypeMap[name] = entry
    end

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
        # next if json_struct['name'].include? 'ImGuiStoragePair' # Use stub instead

        struct = ImGuiStructMapEntry.new(name: struct_name, members: [])
        json_fields = json_struct['fields']
        json_fields.each do |json_field|
          next if json_field['name'].to_s.start_with?('__anonymous') # skip anonymous union stubs
          type_str = json_field['type']['declaration']
          # Arrays in metadata are encoded as declarations like "char[80]".
          # For struct layout we need the element type (e.g. :char), not :pointer.
          ffi_type = if json_field['is_array'] && /\A(.+)\[[^\]]+\]\z/ =~ type_str
                       get_ffi_type($1.strip)
                     else
                       get_ffi_type(type_str)
                     end
          # puts "#{ffi_type}"
          begin
            member = ImGuiStructMemberEntry.new(name: json_field['name'], type_str: type_str, type: ffi_type, is_array: json_field['is_array'])
            if member.is_array
              member.size = json_field['array_bounds']
              if member.size.include? 'IM_UNICODE_CODEPOINT_MAX' # handle "array_bounds": "(IM_UNICODE_CODEPOINT_MAX +1)/8192/8" ("Used8kPagesMap")
                member.size = eval(member.size.gsub('IM_UNICODE_CODEPOINT_MAX', '0xFFFF')).to_s # == ifndef IMGUI_USE_WCHAR32
              end
            else
              member.size = 0
            end
            struct.members << member
          end
        end
        add_ffi_typedef_map(struct_name, "#{struct_name}")
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
    # structs.delete_if {|struct| struct.name == "ImGuiStoragePair"}
    # struct_pair_stub = ImGuiStructMapEntry.new
    # struct_pair_stub.name = 'ImGuiStoragePair'
    # struct_pair_stub.members = [
    #   ImGuiStructMemberEntry.new(name: 'key', type_str: 'unsinged int', type: :uint, is_array: false, size: 0),
    #   ImGuiStructMemberEntry.new(name: 'val_p', type_str: '', type: :pointer, is_array: false, size: 0),
    # ]
    # structs << struct_pair_stub

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
        add_ffi_typedef_map(enum_type_name, :int) # enums are int-sized in ImGui
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
                  v = json_element['value']
                  v.is_a?(Integer) ? v : eval(v.to_s)
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

  def self.parse_define_numeric_content(content)
    return nil if content.nil?

    expr = content.to_s.strip
    return nil if expr.empty?

    # Simple numeric literals (integer and float)
    begin
      return Integer(expr, 0)
    rescue ArgumentError
    end
    begin
      return Float(expr)
    rescue ArgumentError
    end

    # Allow arithmetic/bitwise expressions composed of numeric literals only.
    return nil unless expr.match?(/\A[0-9a-fA-FxXuUlLfF\+\-\*\/\%\(\)\<\>\|\&\^\~\.\s]+\z/)

    normalized_expr = expr.gsub(/(?<=\h)[uUlLfF]+\b/, '')
    begin
      value = eval(normalized_expr)
      value.is_a?(Numeric) ? value : nil
    rescue StandardError
      nil
    end
  end

  def self.evaluate_if_expression(expression, conditions = [])
    expr = expression.to_s.strip
    return false if expr.empty?

    expr.gsub!(/defined\s*\(\s*([A-Za-z_]\w*)\s*\)/) { conditions.include?($1).to_s }
    expr.gsub!(/defined\s+([A-Za-z_]\w*)/) { conditions.include?($1).to_s }

    # Keep this conservative: only boolean operators and literals are allowed after replacement.
    return false unless expr.match?(/\A[\s\(\)!&|a-zA-Z]+\z/)

    begin
      !!eval(expr)
    rescue StandardError
      false
    end
  end

  def self.condition_satisfied?(condition, expression, conditions = [])
    case condition
    when 'ifdef'
      conditions.include?(expression)
    when 'ifndef'
      !conditions.include?(expression)
    when 'if'
      evaluate_if_expression(expression, conditions)
    when 'ifnot'
      !evaluate_if_expression(expression, conditions)
    else
      true
    end
  end

  def self.build_define_map(json_filename, conditions = [])
    defines_by_name = {}
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_defines = json['defines']
      json_defines.each do |json_define|
        define_name = json_define['name']

        if json_define.has_key? 'conditionals'
          json_define_conditionals = json_define['conditionals']
          unless json_define_conditionals.nil? || json_define_conditionals.empty?
            should_emit = json_define_conditionals.all? do |cond|
              condition_satisfied?(cond['condition'], cond['expression'], conditions)
            end
            next unless should_emit
          end
        end

        next unless json_define.has_key?('content')

        define_content = json_define['content']
        define_value = parse_define_numeric_content(define_content)
        next if define_value.nil?

        defines_by_name[define_name] = ImGuiDefineMapEntry.new(name: define_name, content: define_content, value: define_value)
      end
    end
    return defines_by_name.values
  end

  def self.get_ffi_type(type_name)
    if type_name.include?('*') || type_name.include?('&') || type_name.include?(']')
      return :pointer
    end
    type_name.gsub!(/const[ ]+/, '')
    type_name.gsub!(/^::/, '') # strip C++ global namespace prefix (e.g. ::ImVec2 -> ImVec2)
    if type_name.include?('struct ')
      return type_name.gsub(/struct[ ]+/, '').to_sym
    end
    if type_name.include?('ImVector')
      return :ImVector # stub
    end
    # if type_name.include?('Pair')
    #   return :Pair # stub
    # end

    if @@imGuiToCTypeMap != nil && @@imGuiToCTypeMap.has_key?(type_name)
      return @@imGuiToCTypeMap[type_name].type
    end
    result = CToFFITypeMap[type_name]
    
    # If not found but is an Im* type, try to resolve through built-in Im* typedefs
    if result.nil? && type_name.start_with?('Im')
      # Built-in Im* type mappings for common integer types
      case type_name
      when 'ImS8'   then result = :char
      when 'ImU8'   then result = :uchar
      when 'ImS16'  then result = :short
      when 'ImU16'  then result = :ushort
      when 'ImS32'  then result = :int32
      when 'ImU32'  then result = :uint32
      when 'ImS64'  then result = :int64
      when 'ImU64'  then result = :uint64
      when 'ImDrawIdx' then result = :ushort
      when 'ImGuiID'   then result = :uint
      when 'ImTextureID' then result = :uint64  # ImTextureID is defined as ImU64
      end
    end
    
    # Unknown Im* types are ImGui enums not yet in the typedef map; treat as int
    return result || (type_name.start_with?('Im') ? :int : nil)
  end

  def self.create_new_function_map(json_function, json, conditions = [])

    func = ImGuiFunctionMapEntry.new

    if json_function.has_key? 'conditionals'
      # pp json_function['name']
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
      type_name = if json_argument['is_varargs']
                    '...'
                  else
                    json_argument['type']['declaration']
                  end
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

    if json_function.has_key? 'original_class'
      func.method_of = json_function['original_class']
    else
      func.method_of = nil
    end

    # if func.name == 'GetKeyIndex' # [TODO]
    #   func.method_of = nil
    # else
    #   func_prefix = /(.+)_(.+)/.match(func.name)[1] # e.g.: "ImFontAtlas_AddFont" -> func_prefix = "ImFontAtlas"
    #   func.method_of = if func_prefix != 'ImGui'
    #                      func_prefix
    #                    else
    #                      nil
    #                    end
    # end
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
        # next if json_function['name'].start_with?('ImVector_')

        # Ignore functions with explicit 'va_list' arguments.
        # Keep C variadic (...) APIs such as ImGui_Text(fmt, ...) so they can be bound as :varargs.
        has_explicit_va_list = false
        json_arguments = json_function['arguments']
        json_arguments.each do |json_argument|
          arg_type_decl = json_argument.dig('type', 'declaration')
          if arg_type_decl == 'va_list'
            has_explicit_va_list = true
            break
          end
        end
        next if has_explicit_va_list

        func = create_new_function_map(json_function, json, conditions)
        functions << func unless func.nil?
      end

      func_names = json.keys
    end
    return functions
  end

end

if __FILE__ == $0 # test code snippets

  type_map = ImGuiBindings.build_ffi_typedef_map( '../third_party/dear_bindings/generated/dcimgui.json' )
  type_map_i = ImGuiBindings.build_ffi_typedef_map( '../third_party/dear_bindings/generated/dcimgui_internal.json' )
  # pp type_map
  # pp type_map_i
  # exit()

  structs = ImGuiBindings.build_struct_map( '../third_party/dear_bindings/generated/dcimgui.json' )
  structs_i = ImGuiBindings.build_struct_map( '../third_party/dear_bindings/generated/dcimgui_internal.json' )
  # pp structs
  # pp structs_i
  # exit()

  enums = ImGuiBindings.build_enum_map( '../third_party/dear_bindings/generated/dcimgui.json' )
  # enums.each do |e|
  #   print "#{e.name}\n"
  #   e.members.each do |m|
  #     print "    #{m.name} = #{m.value} # #{m.original}\n"
  #   end
  # end
  enums_i = ImGuiBindings.build_enum_map( '../third_party/dear_bindings/generated/dcimgui_internal.json' )
  # enums_i.each do |e|
  #   print "#{e.name}\n"
  #   e.members.each do |m|
  #     print "    #{m.name} = #{m.value} # #{m.original}\n"
  #   end
  # end
  # exit()

  defines = ImGuiBindings.build_define_map( '../third_party/dear_bindings/generated/dcimgui.json' )
  defines_i = ImGuiBindings.build_define_map( '../third_party/dear_bindings/generated/dcimgui_internal.json' )
  # pp defines
  # pp defines_i
  # exit()

  funcs_base = ImGuiBindings.build_function_map( '../third_party/dear_bindings/generated/dcimgui.json' )
  funcs_base_i = ImGuiBindings.build_function_map( '../third_party/dear_bindings/generated/dcimgui_internal.json' )
  # pp funcs_base
  # pp funcs_base_i
end
