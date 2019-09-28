# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/public_methods/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-public_methods'
  spec.version       = RuboCop::PublicMethods::VERSION
  spec.authors       = ['Steven Allen']
  spec.email         = ['sallen@amberstyle.ca']

  spec.summary       = 'Public method style rules'
  spec.description   = <<-DESCRIPTION
    Rubocop plugin to provide rules for enforcing styles on public methods
  DESCRIPTION
  spec.homepage = 'https://github.com/stevenallen05/rubocop-public_methods'
  spec.licenses = ['MIT']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '>= 0.70.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'pry' unless ENV['CI']
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
