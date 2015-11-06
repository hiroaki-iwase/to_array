# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_array/version'

Gem::Specification.new do |spec|
  spec.name          = "to_array"
  spec.version       = ToArray::VERSION
  spec.authors       = ["hiroaki-iwase"]
  spec.email         = ["hiroaki.iwase.r@gmail.com"]

  spec.summary       = %q{This gem convert from String which follow Array format to collectively ArrayClass.}
  spec.description   = %Q{This gem convert from String which follow Array format to collectively ArrayClass.\r\nYou can revert string which was converted by 'to_s' method.}
  spec.homepage      = "https://github.com/hiroaki-iwase/to_array"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
