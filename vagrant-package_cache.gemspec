# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-package_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-package_cache"
  spec.version       = Vagrant::PackageCache::VERSION
  spec.authors       = ["Andreas Böhrnsen"]
  spec.email         = ["andreas@boehrnsen.de"]
  spec.description   = %q{Vagrant Linux Package Cache}
  spec.summary       = %q{Caches the packages per box to make testing of provisioners faster}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
