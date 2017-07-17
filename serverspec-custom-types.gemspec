# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverspec-custom-types/version'

Gem::Specification.new do |spec|
  spec.name          = "serverspec-custom-types"
  spec.version       = ServerspecCustomTypes::VERSION
  spec.authors       = ["Emma Fass"]
  spec.email         = ["enf5cb@virginia.edu"]
  spec.summary       = %q{Extra types for ServerSpec 2.x (developed using 2.39.1)}
  spec.description   = %q{This gem provides types to test the timezone and disk space on a server. It is in no way associated with the ServerSpec project or developers.}
  spec.homepage      = "https://github.com/emmafass/serverspec-custom-types"
  spec.license       = ""
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "serverspec", "~> 2"
  spec.add_dependency "specinfra", "~> 2"
  spec.add_dependency 'rspec', '>= 3.0'
 #spec.add_dependency 'faraday'

  spec.add_development_dependency "bundler", "~> 1.15.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'yardstick'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency("json", "~> 1.8") if RUBY_VERSION < "1.9"
end
