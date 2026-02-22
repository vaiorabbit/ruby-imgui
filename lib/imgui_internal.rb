# imgui-bindings : Yet another ImGui wrapper for Ruby
#
# * https://github.com/vaiorabbit/ruby-imgui

require 'ffi'

module ImGui

  extend FFI::Library

  @@imgui_import_internal_done = false

  def self.import_internal_symbols(output_error = false)

    entries = [
      [:ImGui_FocusWindow,      [:pointer, :int], :void],
      [:ImGui_GetCurrentWindow, [],               :pointer],
    ]

    entries.each do |entry|
      begin
        attach_function entry[0], entry[1], entry[2]
      rescue FFI::NotFoundError => e
        warn "[Warning] Failed to import #{entry[0]} (#{e})." if output_error
      end
    end

    @@imgui_import_internal_done = true
  end # self.import_internal_symbols

  def self.GetCurrentWindow()
    ImGui_GetCurrentWindow()
  end

  # flags: ImGuiFocusRequestFlags (default 0)
  def self.FocusWindow(window, flags = 0)
    ImGui_FocusWindow(window, flags)
  end

end # module ImGui

