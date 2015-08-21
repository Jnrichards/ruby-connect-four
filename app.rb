require 'sinatra/base'

module ConnectFour
    class App < Sinatra::Base
        get "/" do
            erb :"index.html"
        end

        get %r{/games/([1-2])} do |player|
            erb :"board.html"
        end

        get "/assets/js/application.js" do
            content_type :js
            @scheme = ENV['RACK_ENV'] == "production" ? "wss://" : "ws://"
            erb :"application.js"
        end
    end
end
