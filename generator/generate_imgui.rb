require_relative 'common'

class SourceWriter

  INDENT = 2

  attr_reader :indent, :ostream

  def initialize(ostream)
    @indent = 0
    @ostream = ostream
  end

  def push_indent()
    @indent += INDENT
  end

  def pop_indent()
    @indent -= INDENT
    @indent = 0 if @indent < 0
  end

  def write(str)
    ostream.print("#{' ' * @indent}" + str)
  end

  def newline()
    ostream.puts()
  end

end

module Generator

  def self.sanitize_arg_names(func_args)
    arg_names = func_args.map do |arg|
      case arg.name
      # va_arg -> keyword argument
      when "..."
        "*varargs"
      # avoid conflict with ruby keywords by adding '_'s
      when "in" #, "self"
        "_#{arg.name}_"
      else
        arg.name
      end
    end
    return arg_names
  end

  def self.floating_num(flt)
    if /^([-+]?[0-9]*\.[0-9]+)[f]*$/ =~ flt # omit 'f' suffix of floating point number
      $1
    else
      flt
    end
  end

  def self.sanitize_default_value(default_values)
    default_values.map! do |default_value|
      case default_value
      when /.*void\*.*/ # ((void*)0) -> nil
        "nil"
      when /^([-+]?[0-9]*\.[0-9]+)[f]*$/ # omit 'f' suffix of floating point number
        $1
      when /^ImVec2\((.+),(.+)\)$/ # use our own shorthand initializer
        "ImVec2.create(#{floating_num($1)},#{floating_num($2)})"
      when /^ImVec4\((.+),(.+),(.+),(.+)\)$/ # use our own shorthand initializer
        "ImVec4.create(#{floating_num($1)},#{floating_num($2)},#{floating_num($3)},#{floating_num($4)})"
      when /^ImColor\((.+),(.+),(.+),(.+)\)$/ # use our own shorthand initializer
        "ImColor.create(#{$1},#{$2},#{$3},#{$4})"
      when /^FLT_MAX$/ # C's FLT_MAX -> Ruby's Float::MAX
        "Float::MAX"
      when /^sizeof\(float\)$/ # sizeof(float) -> FFI::TYPE_FLOAT32.size (Ref.: https://www.rubydoc.info/github/ffi/ffi/FFI/NativeType)
        "FFI::TYPE_FLOAT32.size"
      when "(((ImU32)(255)<<24)|((ImU32)(255)<<16)|((ImU32)(255)<<8)|((ImU32)(255)<<0))" # #define IM_COL32_WHITE IM_COL32(255,255,255,255)
        "ImColor.create(255,255,255,255)"
      when "4294967295" # #define IM_COL32_WHITE IM_COL32(255,255,255,255)  // Opaque white = 0xFFFFFFFF
        "ImColor.col32(255,255,255,255)"
      when "NULL"
        "nil"
      else
        default_value
      end
    end
    return default_values
  end

  def self.write_enum(out, enum, enum_comment_entries = nil)
    enum_comment_entry = if enum_comment_entries
                           enum_comment_entries[enum.name]
                         else
                           nil
                         end
    out.write("# " + enum.name)
    out.newline
    if enum_comment_entry
      out.write(enum_comment_entry.comments[:preceding])
    end
    enum.members.each do |m|
      if enum_comment_entry
        enum_element_comment = enum_comment_entry.children[m.name].comments[:attached]
        out.write("#{m.name} = #{m.value} # #{m.original} #{enum_element_comment}\n")
      else
        out.write("#{m.name} = #{m.value} # #{m.original}\n")
      end
    end
    out.newline
  end

  def self.write_typedef(out, typedef)
    return if typedef[1].callback_signature != nil
    out.write("FFI.typedef :#{typedef[1].type}, :#{typedef[0]}\n") # typedef[1].class == ImGuiTypedefMapEntry
  end

  def self.write_struct_method(out, func)
    arg_names = sanitize_arg_names(func.args)

    # Make default values list
    default_values = func.args.map do |arg|
      arg.default
    end
    sanitize_default_value(default_values)

    # Fix raw names into public API names by omitting some prefixes
    func_name_ruby = func.name
    func_name_c = func.name
    if /^(Im[^_]+_)/.match(func.name)
      func_name_ruby = func_name_c.gsub($1, '')
    end

    # Make list of argument with default value
    arg_names_with_defaults = []
    arg_names.each_with_index do |arg_name, i|
      next if arg_name == "self"
      arg_names_with_defaults <<
        if default_values[i]
          "#{arg_name} = #{default_values[i]}"
        else
          arg_name
        end
    end

    if func.return_udt
      ret = arg_names_with_defaults.shift # == "pOut"
      var_type = /([^\*]+)/.match(func.args[0].type_name)[0] # e.g.) ImVec2* -> ImVec2
      out.write("def #{func_name_ruby}(#{arg_names_with_defaults.join(', ')})\n")
      out.push_indent
      out.write("#{ret} = #{var_type}.new\n")
      out.write("ImGui::#{func.name}(#{arg_names.join(', ')})\n")
      out.write("return #{ret}\n")
      out.pop_indent
      out.write("end\n\n")
    elsif func.ctor
      out.write("def self.create(#{arg_names_with_defaults.join(', ')})\n")
      out.push_indent
      out.write("return #{func.method_of}.new(ImGui::#{func.name}(#{arg_names.join(', ')}))\n")
      out.pop_indent
      out.write("end\n\n")
    else
      out.write("def #{func_name_ruby}(#{arg_names_with_defaults.join(', ')})\n")
      out.push_indent
      out.write("ImGui::#{func.name}(#{arg_names.join(', ')})\n")
      out.pop_indent
      out.write("end\n\n")
    end
  end

  StructMemberStringEntry = Struct.new(:code, :comment, keyword_init: true)

  def self.write_struct(out, struct, methods, typedefs_map, struct_comment_entries = nil)
    struct_comment_entry = if struct_comment_entries
                           struct_comment_entries[struct.name]
                         else
                           nil
                         end
    if struct_comment_entry
      out.write(struct_comment_entry.comments[:preceding])
    end

    out.write("class #{struct.name} < FFI::Struct\n")
    out.push_indent
    # write member layout
    out.write("layout(\n")
    out.push_indent

    struct_member_string_max_code_length = 0
    struct_member_strings = []

    struct.members.each do |m|
      struct_member_string = StructMemberStringEntry.new
      struct_field_comment = if struct_comment_entry && struct_comment_entry.children[m.name]
                               struct_comment_entry.children[m.name].comments[:attached]
                             else
                               ''
                             end
      struct_member_string.comment = struct_field_comment
      args = ""
      if m.is_array
        args = if m.type.to_s.start_with?('Im') # e.g.) :MouseClickedPos, [ImVec2.by_value, 5],
                 "[#{m.type}.by_value, #{m.size}]"
               else # e.g.) :MouseClickedTime, [:double, 5],
                 "[:#{m.type}, #{m.size}]"
               end
      else
        args = if m.type.to_s.start_with?('Im') # e.g.) :MouseDelta, ImVec2.by_value,
                 "#{m.type}.by_value"
               elsif m.type_str.start_with?('Im') && (m.type_str.include?('*') || m.type_str.include?('&')) # e.g.) :Fonts, ImFontAtlas.ptr,
                 imgui_struct_or_typedef = m.type_str.gsub(/[*&]+/, '') # omit asterisk, etc. e.g.) ImDrawList** -> ImDrawList
                 # e.g.) ImDrawIdx (Starts with "Im" but just a typedef of unsinged int): then the ImGuiTypedefMapEntry looks like:
                 # "ImDrawIdx"=>
                 # #<struct ImGuiTypedefMapEntry
                 #     name="ImDrawIdx",
                 #     type=:ushort,
                 #     callback_signature=nil>,
                 #
                 # e.g.) ImDrawVert (Starts with "Im" and one of a true FFI::Struct): then the ImGuiTypedefMapEntry looks like:
                 # "ImDrawVert"=>
                 #     #<struct ImGuiTypedefMapEntry
                 #     name="ImDrawVert",
                 #     type=:ImDrawVert,
                 #     callback_signature=nil>,
                 #
                 # -> entry.type.to_s == entry.name ? FFI::Struct : :pointer
                 #
                 if typedefs_map[imgui_struct_or_typedef].type.to_s == typedefs_map[imgui_struct_or_typedef].name
                   # FFI::Struct -> use .ptr
                   "#{imgui_struct_or_typedef}.ptr"
                 else
                   # Not any of FFI::Struct instances -> use base type (:pointer, etc.)
                   ":#{m.type}"
                 end
               else # e.g.) :IniFilename, :pointer,
                 ":#{m.type}"
               end
      end
      struct_member_string.code = ":#{m.name}, #{args}"
      struct_member_string_max_code_length = [struct_member_string.code.length, struct_member_string_max_code_length].max
      struct_member_strings << struct_member_string
    end

    struct_member_strings.each do |struct_member_string|
      spaces_for_alignment = struct_member_string_max_code_length - struct_member_string.code.length + 1
      tail = if struct_member_string.comment.empty?
               struct_member_string.equal?(struct_member_strings.last) ? "\n" : ",\n"
             else
               if struct_member_string.equal?(struct_member_strings.last)
                 " #{' ' * spaces_for_alignment}#{struct_member_string.comment}\n"
               else
                 ",#{' ' * spaces_for_alignment}#{struct_member_string.comment}\n"
               end
             end
      out.write("#{struct_member_string.code}#{tail}")
    end

    out.pop_indent
    out.write(")\n")
    out.pop_indent

    # write methods
    unless methods.empty?
      out.write("\n")
      out.push_indent
      methods.each do |func|
        self.write_struct_method(out, func)
      end
      out.pop_indent
    end

    out.pop_indent
    out.write("end\n\n")
  end

  def self.write_attach_functions(out, funcs_map)
    func_entries = {}
    funcs_map.each do |func|
      sym = func.name
      # args map
      func_args = func.args.map do |arg|
        if arg.type_name.to_s.end_with?('Callback')
          ':' + arg.type_name.to_s
        elsif arg.type.to_s.start_with?('Im')
          arg.type.to_s + '.by_value'
        else
          ':' + arg.type.to_s
        end
      end
      # retval map
      func.retval = if func.retval.to_s.start_with?('Im')
                      func.retval.to_s + '.by_value'
                    else
                      ':' + func.retval.to_s
                    end
      func_entries[sym] = [func_args.join(', '), func.retval]
    end

    out.write("entries = [\n")
    out.push_indent
    func_entries.each do |func_sym, func_entry|
      out.write("[:#{func_sym}, [#{func_entry[0]}], #{func_entry[1]}],\n")
    end
    out.pop_indent
    out.write("]\n\n")
    out.write("entries.each do |entry|\n")
    out.push_indent
    out.write("attach_function entry[0], entry[1], entry[2]\n")
    out.pop_indent
    out.write("rescue FFI::NotFoundError => e\n")
    out.push_indent
    out.write("warn \"[Warning] Failed to import \#{entry[0]} (\#{e}).\"\n")
    out.pop_indent
    out.write("end\n\n")

    ## ImWchar special handling (Ref.: cimgui_template.cpp)
    out.write("attach_function :ImVector_ImWchar_create, :ImVector_ImWchar_create, [], :pointer\n")
    out.write("attach_function :ImVector_ImWchar_destroy, :ImVector_ImWchar_destroy, [:pointer], :void\n")
    out.write("attach_function :ImVector_ImWchar_Init, :ImVector_ImWchar_destroy, [:pointer], :void\n")
    out.write("attach_function :ImVector_ImWchar_UnInit, :ImVector_ImWchar_destroy, [:pointer], :void\n")
  end

=begin
  # [obsolete]
  def self.write_attach_functions0(out, funcs_map)
    # symbols array
    out.write("symbols = [\n")
    out.push_indent
    funcs_map.each do |func|
      out.write(":#{func.name},\n")
    end
    out.pop_indent
    out.write("]\n\n")

    # args map
    out.write("args = {\n")
    out.push_indent
    funcs_map.each do |func|
      func_args = func.args.map do |arg|
        if arg.type_name.to_s.end_with?('Callback')
          ':' + arg.type_name.to_s
        elsif arg.type.to_s.start_with?('Im')
          arg.type.to_s + '.by_value'
        else
          ':' + arg.type.to_s
        end
      end
      out.write(":#{func.name} => [#{func_args.join(', ')}],\n")
    end
    out.pop_indent
    out.write("}\n\n")

    # retval map
    out.write("retvals = {\n")
    out.push_indent
    funcs_map.each do |func|
      func.retval = if func.retval.to_s.start_with?('Im')
                      func.retval.to_s + '.by_value'
                    else
                      ':' + func.retval.to_s
                    end
      out.write(":#{func.name} => #{func.retval},\n")
    end
    out.pop_indent
    out.write("}\n\n")

    out.write("symbols.each do |sym|\n")
    out.push_indent
    out.write("begin\n")
    out.push_indent
    out.write("attach_function sym, args[sym], retvals[sym]\n")
    out.pop_indent
    out.write("rescue FFI::NotFoundError\n")
    out.push_indent
    out.write("$stderr.puts(\"[Warning] Failed to import \#{sym}.\\n\") if output_error\n")
    out.pop_indent
    out.write("end\n")
    out.pop_indent
    out.write("end\n\n")

    ## ImWchar special handling (Ref.: cimgui_template.cpp)
    out.write("attach_function :ImVector_ImWchar_create, :ImVector_ImWchar_create, [], :pointer\n")
    out.write("attach_function :ImVector_ImWchar_destroy, :ImVector_ImWchar_destroy, [:pointer], :void\n")
    out.write("attach_function :ImVector_ImWchar_Init, :ImVector_ImWchar_destroy, [:pointer], :void\n")
    out.write("attach_function :ImVector_ImWchar_UnInit, :ImVector_ImWchar_destroy, [:pointer], :void\n")
  end
=end

  def self.write_callback_signature(out, typedef)
    return if typedef[1].callback_signature == nil
    out.write("callback :#{typedef[1].name}, [#{typedef[1].callback_signature[1].join(', ')}], :#{typedef[1].callback_signature[0]}\n")
  end

  def self.write_module_method(out, func)

    return unless func.name.start_with?('ig')

    arg_names = sanitize_arg_names(func.args)

    # Make default values list
    default_values = func.args.map do |arg|
      arg.default
    end
    sanitize_default_value(default_values)

    # Fix raw names into public API names by omitting some prefixes
    func_name_ruby = func.name
    func_name_c = func.name
    if func.name.start_with?('ig')
      func_name_ruby = func_name_c.gsub(/^ig/, '')
    end

    # Make list of argument with default value
    arg_names_with_defaults = []
    arg_names.each_with_index do |arg_name, i|
      arg_names_with_defaults <<
        if default_values[i]
          "#{arg_name} = #{default_values[i]}"
        else
          arg_name
        end
    end

    args_comment = []
    func.args.length.times do |i|
      next if i == 0 && func.return_udt # skip pOut
      args_comment << "#{func.args[i].name}(#{func.args[i].type_name})"
    end

    retval_comment = func.retval.gsub(/^:/,'')

    out.write("# arg: #{args_comment.join(', ')}\n") unless args_comment.empty?
    out.write("# ret: #{retval_comment}\n")
    if func.return_udt
      ret = arg_names_with_defaults.shift # == "pOut"
      var_type = /([^\*]+)/.match(func.args[0].type_name)[0] # e.g.) ImVec2* -> ImVec2
      out.write("def self.#{func_name_ruby}(#{arg_names_with_defaults.join(', ')})\n")
      out.push_indent
      out.write("#{ret} = #{var_type}.new\n")
      out.write("#{func.name}(#{arg_names.join(', ')})\n")
      out.write("return #{ret}\n")
      out.pop_indent
      out.write("end\n\n")
    else
      out.write("def self.#{func_name_ruby}(#{arg_names_with_defaults.join(', ')})\n")
      out.push_indent
      out.write("#{func.name}(#{arg_names.join(', ')})\n")
      out.pop_indent
      out.write("end\n\n")
    end
  end

  def self.write_overload_module_methods(out, funcs_map, typedefs_map)

    # extract function names that require overload definition
    original_funcnames = funcs_map.collect {|func| func.original_funcname}.filter {|original_funcname| !original_funcname.empty?}
    overload_funcnames = original_funcnames.find_all {|ofn| original_funcnames.count(ofn) > 1}.uniq!

    # remove candidates that aren't the ImGui module methods (e.g. ImGuiTextRange_ImGuiTextRange_Nil)
    overload_funcnames.delete_if do |ofn|
      ovl_funcs = funcs_map.filter {|func| func.original_funcname == ofn}
      ovl_funcs.any? { |ovl_func| /^(Im[^_]+_)/.match(ovl_func.name) }
    end

    out.write("# Overload functions\n\n")
    overload_funcnames.each do |ofn|
      ovl_funcs = funcs_map.filter {|func| func.original_funcname == ofn}

      out.write("def self.#{ofn}(*arg)\n")
      out.push_indent
      ovl_funcs.each do |ovl_func|

        # Make list of argument
        has_vararg = false
        type_check = []
        ovl_func.args.length.times do |i|
          type_name = ovl_func.args[i].type_name
          has_bool = false
          ruby_type = if type_name.include?(']')
                        FFI::Pointer
                      elsif type_name.include?('char*')
                        String
                      elsif type_name.include?('*')
                        FFI::Pointer
                      elsif type_name.include?('int')
                        Integer
                      elsif type_name.include?('float')
                        Float
                      elsif type_name.include?('bool')
                        has_bool = true
                      elsif type_name.include?('...')
                        has_vararg = true
                      elsif typedefs_map.has_key?(type_name) # { |typedef| typedef[0] == type_name}
                        case typedefs_map[type_name][1]
                        when /int/
                          Integer
                        when /pointer/
                          FFI::Pointer
                        else
                          typedefs_map[type_name][0] # e.g.) ImVec2, ImVec4
                        end
                      else
                        pp type_name
                        type_name # bool
                      end
          if has_bool
            type_check << "(arg[#{i}].is_a?(TrueClass) || arg[#{i}].is_a?(FalseClass))"
          elsif has_vararg
            # skip type check and pass directly to method
          else
            type_check << "arg[#{i}].kind_of?(#{ruby_type})"
          end
        end

        args = []
        ovl_func.args.length.times do |i|
          args << "arg[#{i}]"
        end
        if has_vararg
          args[-1] = "arg[#{args.length-1}..]"
        end

        args_comment = []
        ovl_func.args.length.times do |i|
          args_comment << "#{i}:#{ovl_func.args[i].name}(#{ovl_func.args[i].type_name})"
        end

        retval_comment = ovl_func.retval.gsub(/^:/,'')

        out.write("# arg: #{args_comment.join(', ')}\n")
        out.write("# ret: #{retval_comment}\n")
        if has_vararg
          out.write("return #{ovl_func.name}(#{args.join(', ')}) if arg.length >= #{ovl_func.args.length - 1} && (#{type_check.join(' && ')})\n")
        else
          out.write("return #{ovl_func.name}(#{args.join(', ')}) if arg.length == #{ovl_func.args.length} && (#{type_check.join(' && ')})\n")
        end
      end
      out.write('$stderr.puts("[Warning] ' + "#{ofn}" + ' : No matching functions found (#{arg})")' + "\n")
      out.pop_indent
      out.write("end\n")
      out.newline
    end

  end

end # module Generator


if __FILE__ == $PROGRAM_NAME
  #
  # Setup
  #
  typedefs_map = ImGuiBindings.build_ffi_typedef_map( '../imgui_dll/cimgui/generator/output/typedefs_dict.json', '../imgui_dll/cimgui/generator/output/structs_and_enums.json' )
  enums_map = ImGuiBindings.build_enum_map( '../imgui_dll/cimgui/generator/output/structs_and_enums.json' )
  structs_map = ImGuiBindings.build_struct_map( '../imgui_dll/cimgui/generator/output/structs_and_enums.json' )
  funcs_base_map = ImGuiBindings.build_function_map( '../imgui_dll/cimgui/generator/output/definitions.json' )
  # funcs_impl_map = ImGuiBindings.build_function_map( '../imgui_dll/cimgui/generator/output/impl_definitions.json' )
  funcs_impl_map = []

  comments_map = ImGuiBindings.build_comment_map( './dearbindings.json' )

  # Omit needless/unusable data
  omit_structs = [
    'CustomRect',
    'GlyphRangesBuilder',
    'ImDrawChannel',
  # 'ImDrawCmd',
  # 'ImDrawData',
  # 'ImDrawList',
    'ImDrawListSharedData',
  # 'ImDrawVert',
  # 'ImFont',
  # 'ImFontAtlas',
  # 'ImFontConfig',
    'ImFontGlyph',
  # 'ImGuiInputTextCallbackData',
    'ImGuiListClipper',
    'ImGuiOnceUponAFrame',
    'ImGuiPayload',
  # 'ImGuiSizeCallbackData',
    'ImGuiStorage',
    'ImGuiTextBuffer',
  # 'ImGuiTextFilter',
    'ImGuiTextRange',
    'Pair',
  # 'ImVector',
  ]
  structs_map.delete_if {|struct| omit_structs.include?(struct.name)}

  # end-user API only
  funcs_base_map.delete_if {|func|
    !(func.name.start_with?('ig') ||
      func.name.start_with?('ImFontAtlas_') ||
      func.name.start_with?('ImGuiStyle_') ||
      func.name.start_with?('ImGuiIO_') ||
      func.name.start_with?('ImGuiTextFilter_') ||
      func.name.start_with?('ImGuiTextRange_') ||
      func.name.start_with?('ImFontGlyphRangesBuilder_') ||
      func.name.start_with?('ImFontConfig_') ||
      func.name.start_with?('ImDrawList_'))
  }

  # funcs_impl_map.delete_if {|func| func.name.include?('OpenGL2')}
  # funcs_impl_map.delete_if {|func| func.name.include?('OpenGL3')} # not supported yet
  # funcs_impl_map.delete_if {|func| func.name.include?('Glfw')}
  # funcs_impl_map.delete_if {|func| func.name.include?('SDL2')} # not supported yet

  funcs_map = funcs_base_map + funcs_impl_map

  #
  # Write to actual source code
  #
  output_path = '../lib/'
  output_filename = 'imgui.rb'
  File.open(output_path + output_filename, 'wb') do |file|
    #
    # Prologue
    #
    out = SourceWriter.new(file)
    out.write(<<-EOS)
# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui
#
# [NOTICE] This is an automatically generated file.

require 'ffi'
    EOS
    out.newline

    #
    # Typedefs
    #
    typedefs_map.each do |typedef|
      if typedef[0] != typedef[1].type.to_s
        Generator.write_typedef(out, typedef)
      end
    end
    out.newline

    #
    # Enums
    #
    enums_map.each do |enum|
      Generator.write_enum(out, enum, comments_map['enums'])
    end
    out.newline

    #
    # Structs
    #

    ['ImVec2', 'ImVec4', 'ImVector', 'ImDrawVert', 'ImDrawListSplitter', 'ImDrawCmd', 'ImDrawCmdHeader', 'ImDrawList', 'ImFontAtlas', 'ImGuiKeyData'].each do |name| # for forward declaration [TODO] resolve definition order with topological sort or something
      methods = funcs_map.find_all { |func| func.method_of != nil && func.method_of == name }
      Generator.write_struct(out, structs_map.find{|struct| struct.name == name}, methods, typedefs_map, comments_map['structs'])
      structs_map.delete_if {|struct| struct.name == name}
    end

    structs_map.each do |struct|
      methods = funcs_map.find_all { |func| func.method_of != nil && func.method_of == struct.name }
      Generator.write_struct(out, struct, methods, typedefs_map, comments_map['structs'])
    end

    # define shorthand initializer for ImVec2 and ImVec4
    # - See https://github.com/ffi/ffi/wiki/Structs
    out.write(<<-EOS)
# shorthand initializer
def ImVec2.create(x = 0, y = 0)
  instance = ImVec2.new
  instance[:x] = x
  instance[:y] = y
  return instance
end

def ImVec4.create(x = 0, y = 0, z = 0, w = 0)
  instance = ImVec4.new
  instance[:x] = x
  instance[:y] = y
  instance[:z] = z
  instance[:w] = w
  return instance
end

def ImColor.create(r = 0, g = 0, b = 0, a = 255)
  sc = 1.0 / 255.0
  instance = ImColor.new
  instance[:Value][:x] = r.to_f * sc
  instance[:Value][:y] = g.to_f * sc
  instance[:Value][:z] = b.to_f * sc
  instance[:Value][:w] = a.to_f * sc
  return instance
end

def ImColor.col32(r = 0, g = 0, b = 0, a = 255)
  return ((a.to_i << 24) | (b.to_i << 0) | (g.to_i << 8) | (r.to_i << 16))
end

    EOS

    #
    # Import Symbols/Typedefs
    #
    out.write("module ImGui\n")
    out.newline
    out.push_indent
    out.write("extend FFI::Library\n")
    out.newline

    out.pop_indent
    out.write(<<-EOS)
  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui.dylib', output_error = false)
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols(output_error) unless @@imgui_import_done
  end

    EOS

    # Import Symbols
    out.push_indent
    out.write("def self.import_symbols(output_error = false)")
    out.newline

    out.push_indent
    # callback
    typedefs_map.each do |typedef|
      Generator.write_callback_signature(out, typedef)
    end
    out.newline

    # attach_function
    # funcs_map.each do |func|
    #   Generator.write_attach_function(out, func)
    # end
    Generator.write_attach_functions(out, funcs_map)

    out.newline
    out.write("@@imgui_import_done = true")
    out.pop_indent

    out.write("end # self.import_symbols\n")
    out.newline

    #
    # ImGui module methods
    #
    funcs_map.each do |func|
      Generator.write_module_method(out, func)
    end

    Generator.write_overload_module_methods(out, funcs_map, typedefs_map)

    #
    # Epilogue
    #
    out.pop_indent
    out.write("end # module ImGui\n")
  end

end

