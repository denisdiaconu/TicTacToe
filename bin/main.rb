require_relative '../lib/game_logic'
require_relative '../lib/user_interface'


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
