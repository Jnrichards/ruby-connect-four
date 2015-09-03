require "json"
module ConnectFour
  class Game
    attr_accessor :player, :board

    def initialize(redis_con, player)
      @redis = redis_con
      @board = JSON.parse(@redis.get("board")) 
      @player = player.to_i
    end

    def move(m)
      if @board[m.to_s].size < 6
        @board[m.to_s][@board[m.to_s].size.to_s] = @player
        @redis.set("board", @board.to_json)
        turn = player==2 ? 1 : 2
        @redis.set("turn", turn.to_s)
      end
    end

    def winner?
      if check_horizontal?
        true
      else 
        false
      end
    end

    private
    def check_horizontal?
      for l in 0..5
        in_line = 0
        for c in 0..6
          next if @board[c.to_s].size < l+1
          if @board[c.to_s][l.to_s] == player
            in_line += 1
          else
            in_line = 0
          end
          return true if in_line == 4
        end
      end
      return false
    end
  end
end
