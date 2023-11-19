# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "imgui-bindings"
  spec.version       = "0.1.9"
  spec.authors       = ["vaiorabbit"]
  spec.email         = ["vaiorabbit@gmail.com"]
  spec.summary       = %q{Bindings for Dear ImGui}
  spec.homepage      = "https://github.com/vaiorabbit/ruby-imgui"
  spec.require_paths = ["lib"]
  spec.license       = "Zlib"
  spec.description   = <<-DESC
Ruby bindings for Dear ImGui ( https://github.com/ocornut/imgui ).
  DESC

  spec.required_ruby_version = '>= 3.0.0'

  spec.add_runtime_dependency 'ffi', '~> 1.15'
  spec.add_runtime_dependency 'opengl-bindings2', '~> 2'

  spec.files = Dir.glob("lib/*") +
               ["README.md", "LICENSE.txt", "ChangeLog"]
end
