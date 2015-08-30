require 'rubygems'
require 'bundler/setup'

require 'rack/test'
require 'test/unit'
require 'coveralls'

Coveralls.wear!

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
