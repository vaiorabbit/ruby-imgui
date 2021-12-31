require_relative '../../lib/imgui_impl_opengl2'
require_relative '../../lib/imgui_impl_opengl3'
require_relative '../../lib/imgui_impl_glfw'

def opengl_bindings_gem_available?
  Gem::Specification.find_by_name('opengl-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('opengl-bindings')
end

if opengl_bindings_gem_available?
  # puts("Loading from Gem system path.")
  require 'opengl'
  require 'glfw'
else
  # puts("Loaging from local path.")
  require '../../lib/opengl'
  require '../../lib/glfw'
end

case OpenGL.get_platform
when :OPENGL_PLATFORM_WINDOWS
  OpenGL.load_lib('opengl32.dll', 'C:/Windows/System32')
  GLFW.load_lib('glfw3.dll', Dir.pwd)
when :OPENGL_PLATFORM_MACOSX
  OpenGL.load_lib('libGL.dylib', '/System/Library/Frameworks/OpenGL.framework/Libraries')
  GLFW.load_lib('libglfw.dylib', Dir.pwd)
when :OPENGL_PLATFORM_LINUX
  OpenGL.load_lib('libGL.so', '/usr/lib/x86_64-linux-gnu')
  GLFW.load_lib('libglfw.so', Dir.pwd)
else
  raise RuntimeError, "Unsupported platform."
end

include OpenGL
include GLFW
