module Sinatra
  module ConnectFour
    module Routing
      def self.registered(app)           
        app.get "/" do
          uri = URI.parse(ENV["REDISCLOUD_URL"])
          @redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)
          #@redis.set("board", Hash.new.to_json)
          board = {
            0=> { 0=> 1, 1=> 2, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
            1=> { 0=> 1, 1=> 1, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
            2=> { 0=> 1, 1=> 1, 2=> 2, 3=> 0, 4=> 0, 5=> 0 },
            3=> { 0=> 0, 1=> 0, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
            4=> { 0=> 0, 1=> 0, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
            5=> { 0=> 0, 1=> 0, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
            6=> { 0=> 0, 1=> 0, 2=> 0, 3=> 0, 4=> 0, 5=> 0 },
          }
          @redis.set("board", board.to_json)
          @redis.set("turn", 1)
          @redis.set("winner", 0)
          erb :"index.html"
        end

        app.get %r{/games/([1-2])} do |player|
          #puts params.inspect
          begin  
            uri = URI.parse(ENV["REDISCLOUD_URL"])
            @redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)
            data = {
              board: JSON.parse(@redis.get("board")),
              player: player,
              uri: uri,
              turn: @redis.get("turn"),
              winner: @redis.get("winner"),
            }
          rescue Exception => e  
            puts e.message  
            puts e.backtrace.inspect  
            raise RuntimeError.new("Error getting params.")
          end 
          erb :"board.html", :locals => data
        end

        app.get "/assets/js/application.js" do
          content_type :js
          @scheme = ENV['RACK_ENV'] == "production" ? "wss://" : "ws://"
          uri = URI.parse(ENV["REDISCLOUD_URL"])
          @redis = Redis.new(host: uri.host, port: uri.port, password: uri.password, db: 10)
          erb :"application.js", :locals => {board: @redis.get("board")}
        end
      end
    end
  end
end
