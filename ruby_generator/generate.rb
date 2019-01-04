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

def generate_enum(out, enum)
  out.write("# " + enum.name)
  out.newline
  enum.members.each do |m|
    out.write("#{m.name} = #{m.value} # #{m.original}\n")
  end
  out.newline
end

def generate_struct(out, struct)
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
    if m.type.to_s.start_with?('Im')
      out.write(":#{m.name}, #{m.type}.by_value#{tail}")
    else
      out.write(":#{m.name}, :#{m.type}#{tail}")
    end
  end
  out.pop_indent
  out.write(")\n")
  out.pop_indent
  out.write("end\n\n")
end

def generate_function(out, func)
  func.args.map! {|arg| if arg.type.to_s.start_with?('Im') then arg.type.to_s + '.by_value' else ':' + arg.type.to_s end }
  func.retval = if func.retval.to_s.start_with?('Im')
                  func.retval.to_s + '.by_value'
                else
                  ':' + func.retval.to_s
                end
  out.write("attach_function :#{func.name}, :#{func.name}, [#{func.args.join(', ')}], #{func.retval}\n")
  # out.write("attach_function :#{func.name}, :#{func.name}, [#{func.args.collect{|arg| ':' + arg.type.to_s}.join(', ')}], :#{func.retval}\n")
end

if __FILE__ == $0
  # Setup
  ImGuiToCTypeMap = ImGuiBindings.build_ffi_typedef_map( '../cimgui/generator/output/typedefs_dict.json' )
  enums_map = ImGuiBindings.build_enum_map( '../cimgui/generator/output/structs_and_enums.json' )
  structs_map = ImGuiBindings.build_struct_map( '../cimgui/generator/output/structs_and_enums.json' )
  funcs_base_map = ImGuiBindings.build_function_map( '../cimgui/generator/output/definitions.json' )
  funcs_impl_map = ImGuiBindings.build_function_map( '../cimgui/generator/output/impl_definitions.json' )

  # Omit needless/unusable data
  omit_structs = [
    'CustomRect',
    'GlyphRangesBuilder',
    'ImDrawChannel',
    'ImDrawCmd',
    'ImDrawData',
    'ImDrawList',
    'ImDrawVert',
    'ImFont',
    'ImFontAtlas',
    'ImFontConfig',
    'ImFontGlyph',
    'ImGuiInputTextCallbackData',
    'ImGuiListClipper',
    'ImGuiOnceUponAFrame',
    'ImGuiPayload',
    'ImGuiSizeCallbackData',
    'ImGuiStorage',
    'ImGuiTextBuffer',
    'ImGuiTextFilter',
    'TextRange',
    'Pair',
    'ImVector',
  ]
  structs_map.delete_if {|struct| omit_structs.include?(struct.name)}

  funcs_base_map.delete_if {|func| func.name.start_with?('ig') == false} # end-user API only
  funcs_impl_map.delete_if {|func| func.name.include?('OpenGL3')} # not supported yet
  funcs_impl_map.delete_if {|func| func.name.include?('SDL2')} # not supported yet

  File.open('../imgui_glfw_opengl2.rb', 'wb') do |file|
    # prologue
    out = SourceWriter.new(file)
    out.write(<<-EOS)
# imgui-bindings
#
# [NOTICE] This is an automatically generated file.

require 'ffi'
    EOS
    out.newline
    out.write("module ImGui\n")
    out.newline
    out.push_indent
    out.write("extend FFI::Library\n")
    out.newline

    # enum
    enums_map.each do |enum|
      generate_enum(out, enum)
    end
    out.newline

    # struct

    # for forward declaration
    generate_struct(out, structs_map.find{|struct| struct.name == 'ImVec2'})
    structs_map.delete_if {|struct| struct.name == 'ImVec2'}
    # for forward declaration
    generate_struct(out, structs_map.find{|struct| struct.name == 'ImVec4'})
    structs_map.delete_if {|struct| struct.name == 'ImVec4'}

    structs_map.each do |struct|
      generate_struct(out, struct)
    end

    # functions
    out.pop_indent
    out.write(<<-EOS)
  @@imgui_import_done = false

  def self.load_lib(libpath = './imgui_glfw_opengl2.dylib')
    ffi_lib_flags :now, :global
    ffi_lib libpath
    import_symbols() unless @@imgui_import_done
  end

    EOS

    out.push_indent
    out.write("def self.import_symbols()")
    out.newline

    out.push_indent
    funcs_base_map.each do |func|
      generate_function(out, func)
    end
    funcs_impl_map.each do |func|
      generate_function(out, func)
    end
    out.pop_indent

    out.write("end # self.import_symbols\n")
    out.newline

    # epilogue
    out.pop_indent
    out.write("end # module ImGui")
    out.newline
  end

end

