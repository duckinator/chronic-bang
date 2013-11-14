# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chronic/bang/version'

Gem::Specification.new do |spec|
  spec.name          = "chronic-bang"
  spec.version       = Chronic::Bang::VERSION
  spec.authors       = ["Nick Markwell"]
  spec.email         = ["markwellna@upmc.edu"]
  spec.description   = %q{Adds the parse! method to Chronic (raises exception if it cannot parse the date).}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/duckinator/chronic-bang"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "chronic", "~> 0.9"
end
