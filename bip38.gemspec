# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bip38/version'

Gem::Specification.new do |spec|
  spec.name          = "bip38"
  spec.version       = Bip38::VERSION
  spec.authors       = ["Yoshihiro TAKAHARA"]
  spec.email         = ["y.takahara@gmail.com"]
  spec.description   = %q{A Ruby implementation of the BIP-0038 draft for encryption of Bitcoin keys}
  spec.summary       = %q{A Ruby implementation of the BIP-0038 draft for encryption of Bitcoin keys}
  spec.homepage      = "https://github.com/tumf/bip38"
  spec.license       = "MIT"

  #spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
