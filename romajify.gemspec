lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'romajify/version'

Gem::Specification.new do |spec|
  spec.name          = 'romajify'
  spec.version       = Romajify::VERSION
  spec.authors       = ['emsk']
  spec.email         = ['emsk1987@gmail.com']

  spec.summary       = %q{Japanese romanization library for Ruby.}
  spec.description   = %q{A Ruby library for converting Japanese Kana to Roman alphabet.}
  spec.homepage      = 'https://github.com/emsk/romajify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'thor', '~> 0.20'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'codecov', '~> 0.1'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'redcarpet', '~> 3.4'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rubocop', '~> 0.56'
  spec.add_development_dependency 'simplecov', '~> 0.14'
  spec.add_development_dependency 'yard', '~> 0.9'
end
