require 'sinatra/base'
require "json"
require_relative 'routes'

module ConnectFour
  class App < Sinatra::Base
    register Sinatra::ConnectFour::Routing

    error RuntimeError do
      "A RuntimeError occured"
    end
  end
end
