require_relative '../lib/game_logic'
require_relative '../lib/user_interface'


class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def show_player
    puts @name
    puts @symbol
  end
end

player1 = create_player
player2 = create_player

puts "#{player1.name} has the symbol #{player1.symbol}!"
puts "#{player2.name} has the symbol #{player2.symbol}!"
# puts board_val

# implement the play

puts "#{player1.name} make your move! Between 1 - 9"
position = gets.chomp.to_i
board_val[position - 1] = player1.symbol
board(board_val)
puts "#{player2.name} make your move!"
position2 = gets.chomp.to_i
board_val[position2 - 1] = player2.symbol
board(board_val)

puts 'You won!'
puts 'You lose!'
