# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui

require 'ffi'

module ImGui

  extend FFI::Library

  @@imgui_import_internal_done = false

  def self.import_internal_symbols(output_error = false)

    symbols = [
      :igFocusWindow,
      :igGetCurrentWindow,
    ]

    args = {
      :igFocusWindow => [:pointer],
      :igGetCurrentWindow => [],
    }

    retvals = {
      :igFocusWindow => :void,
      :igGetCurrentWindow => :pointer,
    }

    symbols.each do |sym|
      begin
        attach_function sym, args[sym], retvals[sym]
      rescue FFI::NotFoundError
        $stderr.puts("[Warning] Failed to import #{sym}.\n") if output_error
      end
    end

    @@imgui_import_internal_done = true
  end # self.import_internal_symbols

  def self.GetCurrentWindow()
    igGetCurrentWindow()
  end

  def self.FocusWindow(window)
    igFocusWindow(window)
  end

end # module ImGui
