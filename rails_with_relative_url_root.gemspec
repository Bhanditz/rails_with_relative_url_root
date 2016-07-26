# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_with_relative_url_root/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_with_relative_url_root'
  spec.version       = RailsWithRelativeUrlRoot::VERSION
  spec.authors       = ['Richard Doe']
  spec.email         = ['richard.doe@rwdit.net']

  spec.summary       = %q{Run Rails with relative URL root.}
  spec.description   = %q{Enforces Rails relative URL root at the Rack level, i.e. before requests reach Rails.}
  spec.homepage      = 'https://github.com/europeana/rails_with_relative_url_root'
  spec.licenses      = ['EUPL-1.1']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rack', '~> 1.0'
  spec.add_dependency 'rack-rewrite', '~> 1.0'
  spec.add_dependency 'rails', '~> 4.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
