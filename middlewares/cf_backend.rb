require 'faye/websocket'
require 'thread'
require 'redis'
require 'json'
require 'erb'
require './controllers/connect_four'

module ConnectFour
  class CFBackend
    KEEPALIVE_TIME = 15 # in seconds
    CHANNEL        = "chat-demo"

    def initialize(app)
      @app     = app
      @clients = []
      uri      = URI.parse(ENV["REDISCLOUD_URL"])
      @redis   = Redis.new(host: uri.host, port: uri.port, password: uri.password)
      Thread.new do
        redis_sub = Redis.new(host: uri.host, port: uri.port, password: uri.password)
        redis_sub.subscribe(CHANNEL) do |on|
          on.message do |channel, msg|
            @clients.each do |ws| 
              m = JSON.parse(msg)
              if m['msg_type'] == 'chat'
                ws.send(msg) 
              elsif m['msg_type'] == 'move'
                g = ConnectFour::Game.new(@redis, m['player'])
                r = {:msg_type=>"opponent-move", :player=>g.player, :move=>m['move']}
                ws.send(r.to_json)
                r = {:msg_type=>"turn", :turn=> g.player.to_i==2 ? 1 : 2}
                ws.send(r.to_json)
              end
            end
          end
        end
      end
    end

    def call(env)
      if Faye::WebSocket.websocket?(env)
        ws = Faye::WebSocket.new(env, nil, {ping: KEEPALIVE_TIME })
        ws.on :open do |event|
          p [:open, ws.object_id]
          @clients << ws
        end

        ws.on :message do |event|
          p [:message, event.data]
          @redis.publish(CHANNEL, sanitize(event.data))
        end

        ws.on :close do |event|
          p [:close, ws.object_id, event.code, event.reason]
          @clients.delete(ws)
          ws = nil
        end

        # Return async Rack response
        ws.rack_response

      else
        @app.call(env)
      end
    end

    private
    def sanitize(message)
      json = JSON.parse(message)
      json.each {|key, value| json[key] = ERB::Util.html_escape(value) }
      JSON.generate(json)
    end
  end
end
