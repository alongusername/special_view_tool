# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'special_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "special_view_tool"
  spec.version       = SpecialViewTool::VERSION
  spec.authors       = ["Jordan Hudgens"]
  spec.email         = ["jordan@devcamp.com"]

  spec.summary       = %q{"View methods for applications"}
  spec.description   = %q{"provides html data for rails"}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
