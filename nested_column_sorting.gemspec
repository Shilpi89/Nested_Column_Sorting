# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nested_column_sorting/version'

Gem::Specification.new do |spec|
  spec.name          = "nested_column_sorting"
  spec.version       = Nested_Column::Sorting::VERSION
  spec.authors       = ["Shilpi Prasad", "Himanshu Joshi"]
  spec.description   = %q{Sort Nested Columns of tables in ruby}
  spec.summary       = %q{Sort Nested Columns of tables in ruby}
  #spec.homepage      = "https://github.com/Manik-Ratna/github-contributions"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.2'

  #spec.add_dependency 'github_api'
  spec.add_development_dependency 'rake', '~>10.1.1'
  spec.add_development_dependency 'rspec'
end
