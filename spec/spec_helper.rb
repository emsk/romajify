require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'romajify'

RSpec.configure do |config|
  config.disable_monkey_patching!
end
