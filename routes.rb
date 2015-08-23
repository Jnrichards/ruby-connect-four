module Sinatra
  module ConnectFour
    module Routing
      def self.registered(app)           
        app.get "/" do
          erb :"index.html"
        end

        app.get %r{/games/([1-2])} do |player|
          erb :"board.html", :locals => {:player => player} 
        end

        app.get "/assets/js/application.js" do
          content_type :js
          @scheme = ENV['RACK_ENV'] == "production" ? "wss://" : "ws://"
          erb :"application.js"
        end
      end
    end
  end
end
