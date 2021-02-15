require_relative '../lib/game_logic'
require_relative '../lib/user_interface'

def board(board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts "__________"
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts "__________"
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
  puts "__________"

end

board_val = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

board(board_val)