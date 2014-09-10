# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'framework7rails/version'

Gem::Specification.new do |spec|
  spec.name          = "framework7rails"
  spec.version       = Framework7rails::VERSION
  spec.authors       = ["Pulkit Kathuria"]
  spec.email         = ["kevincobain2000@gmail.com"]
  spec.summary       = %q{http://www.idangero.us/framework7/}
  spec.description   = %q{Gem for Framework7 which is a Full Featured HTML Framework For Building iOS Apps}
  spec.homepage      = "http://www.idangero.us/framework7/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
