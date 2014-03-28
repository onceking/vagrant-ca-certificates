# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/ca/certificates/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-ca-certificates"
  spec.version       = Vagrant::Ca::Certificates::VERSION
  spec.authors       = ["William Bailey"]
  spec.email         = ["wbailey4@bloomberg.net"]
  spec.summary       = %q{Install custom CA certificates}
  spec.description   = %q{Install custom CA certificates}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end