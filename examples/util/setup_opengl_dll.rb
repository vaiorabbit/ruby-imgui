require 'opengl'
require 'glfw'

require_relative '../../lib/imgui_impl_opengl2'
require_relative '../../lib/imgui_impl_opengl3'
require_relative '../../lib/imgui_impl_glfw'

module SampleUtil

  def self.gl_library_path()
    case GL.get_platform
    when :OPENGL_PLATFORM_WINDOWS
      'C:/Windows/System32/opengl32.dll'
    when :OPENGL_PLATFORM_MACOSX
      '/System/Library/Frameworks/OpenGL.framework/Libraries/libGL.dylib'
    when :OPENGL_PLATFORM_LINUX
      "/usr/lib/#{RUBY_PLATFORM}-gnu/libGL.so"
    else
      raise RuntimeError, "Unsupported platform."
    end
  end

  def self.glfw_library_path()
    case GL.get_platform
    when :OPENGL_PLATFORM_WINDOWS
      Dir.pwd + '/glfw3.dll'
    when :OPENGL_PLATFORM_MACOSX
      './libglfw.dylib'
    when :OPENGL_PLATFORM_LINUX
      "/usr/lib/#{RUBY_PLATFORM}-gnu/libglfw.so.3"
    else
      raise RuntimeError, "Unsupported platform."
    end
  end

end
