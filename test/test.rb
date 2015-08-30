require 'rubygems'
require 'bundler/setup'

require 'rack/test'
require 'test/unit'

require_relative '../blu'

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
