source 'https://rubygems.org'

gemspec

if Gem::Version.create(RUBY_VERSION) >= Gem::Version.create('2.2.0') && Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.3.0')
  gem 'rubocop', '< 0.65.0'
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.1.0')
  gem 'rubocop', '< 0.51.0'
end
