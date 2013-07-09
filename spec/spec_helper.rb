require 'rspec'
require 'hashie'


if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
