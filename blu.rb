require 'sinatra'
require 'tilt/haml'
require 'tilt/sass'

set :haml, :format => :html5

def media_url(uri = nil)
  File.join('//media.blu.pub', url(uri, false))
end

get '/' do
  haml :index
end
