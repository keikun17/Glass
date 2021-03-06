ENV["RAILS_ENV"] = 'test'
require 'simplecov'
require 'coveralls'
require 'rspec'
require 'glass'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  add_filter "/spec/"
end


require File.expand_path("../test_app/config/environment", __FILE__)

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include RSpec::Matchers

  config.before(:each) do
    Glass::Config.reset
  end

  config.after(:each) do
  end

end
