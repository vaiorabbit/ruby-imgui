def sdl2_bindings_gem_available?
  Gem::Specification.find_by_name('sdl2-bindings')
rescue Gem::LoadError
  false
rescue
  Gem.available?('sdl2-bindings')
end

if sdl2_bindings_gem_available?
  # puts("Loading from Gem system path.")
  require 'sdl2'
  require_relative 'imgui_impl_sdl2'
  require_relative 'imgui_impl_sdlrenderer'
else
  # puts("Loaging from local path.")
  require '../../lib/sdl2'
  require_relative '../../lib/imgui_impl_sdl2'
  require_relative '../../lib/imgui_impl_sdlrenderer'
end

case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin/
  SDL.load_lib(Dir.pwd + '/' + 'SDL2.dll')
when /darwin/
  SDL.load_lib(Dir.pwd + '/' + 'libSDL2.dylib')
when /linux/
  SDL.load_lib("/usr/lib/#{RUBY_PLATFORM}-gnu/libSDL2.so")
else
  raise RuntimeError, "Unknown OS: #{RUBY_PLATFORM}"
end
