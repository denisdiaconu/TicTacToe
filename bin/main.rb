require_relative '../lib/game_logic'
require_relative '../lib/user_interface'

def board(board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts '----------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '----------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
  puts '----------'
end

board_val = %w[1 2 3 4 5 6 7 8 9]

board(board_val)

class Players
  def create_player
    puts 'Enter your name player:'
    player = gets.chomp
    puts "Enter your symbol #{player}:"
    player_symbol = gets.chomp

    return [player, player_symbol]
  end
end

player_one = Players.new
player = player_one.create_player

player2 = player_one.create_player

puts player,player2