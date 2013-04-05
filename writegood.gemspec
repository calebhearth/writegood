# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'writegood/version'

Gem::Specification.new do |spec|
  spec.name          = 'writegood'
  spec.version       = Writegood::VERSION
  spec.authors       = ['Caleb Thompson']
  spec.email         = ['cjaysson@gmail.com']
  spec.summary       = 'Write gooder'
  spec.description   = 'Finds and highlights potential problems in your writing'
  spec.homepage      = 'https://github.com/calebthompson/writegood'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'active_support'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
