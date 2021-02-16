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

def create_player
  puts 'Enter your name player:'
  player = gets.chomp
  puts 'Symbols: X or O'
  puts "Enter your symbol #{player}:"
  player_symbol = gets.chomp
  true_sym = %W[X O]
  while !true_sym.include?(player_symbol.upcase)
    puts 'Wrong symbol, enter the symbol again!'
    puts "Enter your symbol #{player}:"
    player_symbol = gets.chomp
  end
  player_symbol = player_symbol.upcase

  Player.new(player, player_symbol)
end

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

puts board_val

puts "#{player1.name} make your move!"

puts "#{player2.name} make your move!"

flag_on = true

def move
  
end

