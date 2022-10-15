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
  @@num = ''
  @@choices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  
  def self.play_game(p_1, p_2)
    puts "#{p_1.name} and #{p_2.name} want to play"

    while @@choices.length != 0
      puts "#{p_1.name}'s turn, choose from #{@@choices}"
      game(p_1)
      #p p_1.choice
      break if winner_check(p_1.name, p_1.choice) == true
    end
  end

  def self.game(player)
    @@num = gets.chomp.to_i
    player.choice << @@num
    p player.choice
    @@choices.delete(@@num)
  end

  def self.winner_check(player, choice)
    WIN_COMBO.each do |combo|
      if combo.eql?(choice)
        puts "#{player} has won the game"
        return true
      end
    end
  end

end

class Player
  attr_accessor :name, :choice
  def initialize(name)
    @name = name
    @choice = []
  end
end

player_1 = Player.new('Player 1')
player_2 = Player.new('Player 2')

TicTac.play_game(player_1, player_2)