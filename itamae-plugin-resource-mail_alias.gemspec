# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/resource/mail_alias/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-resource-mail_alias"
  spec.version       = Itamae::Plugin::Resource::MailAlias::VERSION
  spec.authors       = ["Gosuke Miyashita"]
  spec.email         = ["gosukenator@gmail.com"]
  spec.summary       = %q{Itamae plugin of mail alias resource}
  spec.description   = %q{Itamae plugin of mail alias resource}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
