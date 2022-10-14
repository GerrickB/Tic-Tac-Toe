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
  @@num = a
  @@choices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  
  def self.play_game(p_1, p_2)
    puts "#{p_1.name} and #{p_2.name} want to play"
    
    while @@choices.length != 0
      until @@choices.include?(@@num)
        puts "choose from #{@@choices}"
        num = gets.chomp.to_i
        player_1.choice << num
      end
    end
end

class Player
  attr_accessor :name, :choice
  def initialize(name)
    @name = name
    @choice = []
  end

  def choose_number
    @choice << gets.chomp.to_i
  end

end

player_1 = Player.new('Player 1')
player_2 = Player.new('Player 2')
p player_1
puts player_1.name
puts player_1.choice

TicTac.play_game(player_1, player_2)