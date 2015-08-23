require 'sinatra/base'
require_relative 'routes'

module ConnectFour
  class App < Sinatra::Base
    register Sinatra::ConnectFour::Routing
  end
end
