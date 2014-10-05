# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy/emoji/version'

Gem::Specification.new do |spec|
  spec.name          = "easy-emoji"
  spec.version       = EasyEmoji::VERSION
  spec.authors       = ["Paul King"]
  spec.email         = ["freedomlijinfa@gmail.com"]
  spec.summary       = "Easy way to use emoji on rails"
  spec.homepage      = "https://github.com/Aufree/easy-emoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

end

