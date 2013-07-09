require 'rspec'
require 'hashie'

Dir["./spec/support/**/*.rb"].each {|f| require f}

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
