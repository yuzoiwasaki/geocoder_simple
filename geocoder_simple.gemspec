# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocoder_simple/version'

Gem::Specification.new do |spec|
  spec.name          = "geocoder_simple"
  spec.version       = GeocoderSimple::VERSION
  spec.authors       = ["yuzoiwasaki"]
  spec.email         = ["yuzoiwasaki0929@gmail.com"]

  spec.summary       = %q{Simple geocode getter}
  spec.description   = %q{Simple geocode getter}
  spec.homepage      = "https://github.com/yuzoiwasaki/geocoder_simple"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
