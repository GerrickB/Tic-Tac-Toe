class TicTac
  WIN_COMBO = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ]
  @@choices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  
  def self.play_game(p_1, p_2)
  end
end

class Player
  def initialize(name)
    @name = name
    @choice = []
  end
end