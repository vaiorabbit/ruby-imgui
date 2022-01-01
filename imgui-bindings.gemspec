# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "imgui-bindings"
  gem.version       = "0.0.1"
  gem.authors       = ["vaiorabbit"]
  gem.email         = ["vaiorabbit@gmail.com"]
  gem.summary       = %q{Bindings for Dear ImGui}
  gem.homepage      = "https://github.com/vaiorabbit/ruby-imgui"
  gem.require_paths = ["lib"]
  gem.license       = "Zlib"
  gem.description   = <<-DESC
Ruby bindings for Dear ImGui.
  DESC

  gem.required_ruby_version = '>= 2.6.0'

  gem.files = Dir.glob("lib/*.rb") +
              Dir.glob("lib/*.dll") + Dir.glob("lib/*.dylib") +
              ["README.md", "LICENSE.txt", "ChangeLog"]
end
