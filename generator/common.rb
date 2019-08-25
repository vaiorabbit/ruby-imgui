require 'ffi'
require 'json'

ImGuiStructMemberEntry = Struct.new( :name, :type, :is_array, :size )
ImGuiStructMapEntry = Struct.new( :name, :members )

ImGuiEnumValEntry = Struct.new( :name, :value, :original )
ImGuiEnumMapEntry = Struct.new( :name, :members )

ImGuiFunctionMemberEntry = Struct.new( :name, :type, :is_array, :size )
ImGuiFunctionMapEntry = Struct.new( :name, :args, :retval )

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
      json.keys.each do |imgui_type_name|
        next if IgnoredTypedefs.include?(imgui_type_name)
        type_map[imgui_type_name] = get_ffi_type(json[imgui_type_name])
      end
    end

    @@imGuiToCTypeMap = type_map

    return type_map
  end


  def self.build_struct_map(json_filename)
    structs = []
    File.open(json_filename) do |file|
      json = JSON.load(file)
      json_structs = json['structs']
      struct_names = json_structs.keys
      struct_names.each do |struct_name|
        struct = ImGuiStructMapEntry.new
        struct.name = struct_name
        struct.members = []
        members = json_structs[struct_name]
        members.each do |m|
          member = ImGuiStructMemberEntry.new
          member.name = m['name']
          member.type = get_ffi_type(m['type'])
          member.is_array = m.has_key?('size')
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
      ImGuiStructMemberEntry.new('Size', :int, false, 0),
      ImGuiStructMemberEntry.new('Capture', :int, false, 0),
      ImGuiStructMemberEntry.new('Data', :pointer, false, 0),
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
      ImGuiStructMemberEntry.new('key', :uint, false, 0),
      ImGuiStructMemberEntry.new('val_p', :pointer, false, 0),
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
        enum = ImGuiEnumMapEntry.new
        enum.name = enum_name
        enum.members = []
        members = json_enums[enum_name]
        members.each do |m|
          member = ImGuiEnumValEntry.new
          member.name = m['name']
          member.value = m['calc_value']
          member.original = m['value']
          enum.members << member
        end
        enums << enum
      end
    end
    return enums
  end

  def self.get_ffi_type(type_name)
    if type_name.include?('*') || type_name.include?('&')
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
      return @@imGuiToCTypeMap[type_name]
    end
    return CToFFITypeMap[type_name]
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

          func = ImGuiFunctionMapEntry.new

          # name
          func.name = if func_info.has_key?('ov_cimguiname')
            func_info['ov_cimguiname']
          else
            func_info['cimguiname']
          end

          # arguments
          func.args = []
          if func_info['argsT'].any?
            args = func_info['argsT']
            args.each do |arg_info|
              is_array = false
              size = 0
              type = get_ffi_type(arg_info['type'])
              if type == nil # This happens when arg_info['type'] contains '[' or ']'.
                is_array = true
                size = /\[([\w\+])+\]/.match(arg_info['type'])[1].to_i
                type = get_ffi_type(arg_info['type'].gsub(/\[[\w\+]+\]/,''))
              end
              arg = ImGuiFunctionMemberEntry.new
              arg.name = arg_info['name']
              arg.is_array = is_array
              arg.size = size
              arg.type = type
              func.args << arg
            end
          end

          # return value
          func.retval = if func_info.has_key?('ret')
                          if func_info['ret'].include?('_Simple')
                            func_info['ret'].gsub!(/_Simple/, '')
                          end
                          get_ffi_type(func_info['ret'])
                        else
                          :void
                        end

          functions << func

        end
      end
    end
    return functions
  end

end

if __FILE__ == $0 # test code snippets

  ImGuiBindings.build_ffi_typedef_map( '../cimgui/generator/output/typedefs_dict.json' )
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
end
