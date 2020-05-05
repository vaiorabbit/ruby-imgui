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

  def self.write_enum(out, enum)
    out.write("# " + enum.name)
    out.newline
    enum.members.each do |m|
      out.write("#{m.name} = #{m.value} # #{m.original}\n")
    end
    out.newline
  end

  def self.write_typedef(out, typedef)
    return if typedef[1].callback_signature != nil
    out.write("typedef :#{typedef[1].type}, :#{typedef[0]}\n")
  end

  def self.write_struct(out, struct)
    out.write("class #{struct.name} < FFI::Struct\n")
    out.push_indent
    out.write("layout(\n")
    out.push_indent
    struct.members.each do |m|
      tail = if m.equal?(struct.members.last)
               "\n"
             else
               ",\n"
             end
      args = ""
      if m.is_array
        args = if m.type.to_s.start_with?('Im')
                 "[#{m.type}.by_value, #{m.size}]"
               else
                 "[:#{m.type}, #{m.size}]"
               end
      else
        args = if m.type.to_s.start_with?('Im')
                 "#{m.type}.by_value"
               else
                 ":#{m.type}"
               end
      end
      out.write(":#{m.name}, #{args}#{tail}")
    end
    out.pop_indent
    out.write(")\n")
    out.pop_indent
    out.write("end\n\n")
  end

  def self.write_attach_function(out, func)

    func_args = func.args.map do |arg|
      if arg.type.to_s.start_with?('Im')
        arg.type.to_s + '.by_value'
      else
        ':' + arg.type.to_s
      end
    end

    func.retval = if func.retval.to_s.start_with?('Im')
                    func.retval.to_s + '.by_value'
                  else
                    ':' + func.retval.to_s
                  end

    func_name_ruby = func.name
    func_name_c = func.name
    out.write("attach_function :#{func_name_ruby}, :#{func_name_c}, [#{func_args.join(', ')}], #{func.retval}\n")
  end

  def self.write_callback_signature(out, typedef)
    return if typedef[1].callback_signature == nil
    out.write("callback :#{typedef[1].name}, [#{typedef[1].callback_signature[1].join(', ')}], :#{typedef[1].callback_signature[0]}\n")
  end

  def self.write_method(out, func)

    arg_names = func.args.map do |arg|
      case arg.name
      # va_arg -> keyword argument
      when "..."
        "*varargs"
      # avoid conflict with ruby keywords by adding '_'s
      when "in", "self"
        "_#{arg.name}_"
      else
        arg.name
      end
    end

    # Make default values list
    # [TODO] write value sanitizing somewhere else
    arg_defaults = func.args.map do |arg|
      arg.default
    end
    arg_defaults.map! do |arg_default|
      case arg_default
      when /.*void\*.*/ # ((void*)0) -> nil
        "nil"
      when /^([-+]?[0-9]*\.[0-9]+)[f]*$/ # omit 'f' suffix of floating point number
        $1
      when /^ImVec2\((.+),(.+)\)$/ # use our own shorthand initializer
        "ImVec2.create(#{$1},#{$2})"
      when /^ImVec4\((.+),(.+),(.+),(.+)\)$/ # use our own shorthand initializer
        "ImVec4.create(#{$1},#{$2},#{$3},#{$4})"
      when /^ImColor\((.+),(.+),(.+),(.+)\)$/ # use our own shorthand initializer
        "ImColor.create(#{$1},#{$2},#{$3},#{$4})"
      when /^FLT_MAX$/ # C's FLT_MAX -> Ruby's Float::MAX
        "Float::MAX"
      else
        arg_default
      end
    end

    # Fix raw names into public API names by omitting some prefixes
    func_name_ruby = func.name
    func_name_c = func.name
    if func.name.start_with?('ig')
      func_name_ruby = func_name_c.gsub(/^ig/, '')
    elsif func.name.start_with?('ImGui_')
      func_name_ruby = func_name_c.gsub(/^ImGui_/, '')
    elsif func.name.start_with?('ImFontAtlas_')
      func_name_ruby = func_name_c.gsub(/^Im/, '')
    end

    # Make list of argument with default value
    arg_names_with_defaults = []
    arg_names.each_with_index do |arg_name, i|
      arg_names_with_defaults <<
        if arg_defaults[i]
          "#{arg_name} = #{arg_defaults[i]}"
        else
          arg_name
        end
    end

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

end # module Generator


if __FILE__ == $0
  #
  # Setup
  #
  typedefs_map = ImGuiBindings.build_ffi_typedef_map( '../cimgui/generator/output/typedefs_dict.json' )
  enums_map = ImGuiBindings.build_enum_map( '../cimgui/generator/output/structs_and_enums.json' )
  structs_map = ImGuiBindings.build_struct_map( '../cimgui/generator/output/structs_and_enums.json' )
  funcs_base_map = ImGuiBindings.build_function_map( '../cimgui/generator/output/definitions.json' )
  # funcs_impl_map = ImGuiBindings.build_function_map( '../cimgui/generator/output/impl_definitions.json' )
  funcs_impl_map = []

  # Omit needless/unusable data
  omit_structs = [
    'CustomRect',
    'GlyphRangesBuilder',
    'ImDrawChannel',
  # 'ImDrawCmd',
  # 'ImDrawData',
  # 'ImDrawList',
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
    'ImGuiTextFilter',
    'TextRange',
    'Pair',
  # 'ImVector',
  ]
  structs_map.delete_if {|struct| omit_structs.include?(struct.name)}

  # end-user API only
  funcs_base_map.delete_if {|func|
    !(func.name.start_with?('ig') ||
      func.name.start_with?('ImFontAtlas_') ||
      func.name.start_with?('ImGuiStyle_') ||
      func.name.start_with?('ImGuiIO_'))
  }

  # funcs_impl_map.delete_if {|func| func.name.include?('OpenGL2')}
  # funcs_impl_map.delete_if {|func| func.name.include?('OpenGL3')} # not supported yet
  # funcs_impl_map.delete_if {|func| func.name.include?('Glfw')}
  # funcs_impl_map.delete_if {|func| func.name.include?('SDL2')} # not supported yet

  #
  # Write to actual source code
  #
  output_path = '../'
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
    # Enums
    #
    enums_map.each do |enum|
      Generator.write_enum(out, enum)
    end
    out.newline

    #
    # Structs
    #

    ['ImVec2', 'ImVec4', 'ImVector', 'ImDrawListSplitter'].each do |name| # for forward declaration
      Generator.write_struct(out, structs_map.find{|struct| struct.name == name})
      structs_map.delete_if {|struct| struct.name == name}
    end

    structs_map.each do |struct|
      Generator.write_struct(out, struct)
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

def ImColor.create(r = 0, g = 0, b = 0, a = 0)
  instance = ImColor.new
  instance[:Value][:x] = r
  instance[:Value][:y] = g
  instance[:Value][:z] = b
  instance[:Value][:w] = a
  return instance
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

    # Typedefs
    typedefs_map.each do |typedef|
      if typedef[0] != typedef[1].type.to_s
        Generator.write_typedef(out, typedef)
      end
    end
    out.newline

    out.pop_indent
    out.write(<<-EOS)
  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui.dylib')
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols() unless @@imgui_import_done
  end

    EOS

    # Import Symbols
    out.push_indent
    out.write("def self.import_symbols()")
    out.newline

    out.push_indent
    [funcs_base_map, funcs_impl_map].each do |funcs_map|
      funcs_map.each do |func|
        Generator.write_attach_function(out, func)
      end
    end
    typedefs_map.each do |typedef|
      Generator.write_callback_signature(out, typedef)
    end
    out.pop_indent

    out.write("end # self.import_symbols\n")
    out.newline

    #
    # Methods
    #
    [funcs_base_map, funcs_impl_map].each do |funcs_map|
      funcs_map.each do |func|
        Generator.write_method(out, func)
      end
    end

    #
    # Epilogue
    #
    out.pop_indent
    out.write("end # module ImGui\n")
  end

end

