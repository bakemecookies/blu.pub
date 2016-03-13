require 'rubygems'
require 'bundler/setup'

require 'simplecov'

SimpleCov.start

require 'codecov'

SimpleCov.formatter = SimpleCov::Formatter::Codecov

require 'rack/test'
require 'test/unit'

require_relative '../blu'

# Test suite for blu.pub.
class SiteTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_root
    get '/'
    assert last_response.ok?
  end
end
