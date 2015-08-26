module ConnectFour
  class Game
    attr_accessor :player

    def initialize(reddis_con, player)
      @reddis = reddis_con
      @player = player
    end
  end
end
