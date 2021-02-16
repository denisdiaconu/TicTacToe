#!/usr/bin/env ruby

require_relative '../lib/create_player'
require_relative '../lib/user_interface'

# implement the play

class GameLogic
  attr_accessor :player1, :player2

  def initialize
    puts 'Welcome to the Tic Tac Toe game!'
    @player1 = create_player(1)
    @player2 = create_player(2, player1.symbol)
    play_game
  end

  def create_player(num, symbol = nil)
    puts "Enter your name player #{num}:"
    name = gets.chomp
    puts "Enter your symbol #{name}"
    symbol = get_symbol(symbol)
    Player.new(name, symbol)
  end

  def get_symbol(sym_dup)
    loop do
      puts 'What 1 letter/character would you like to be your game marker?'
      puts "It can not be #{sym_dup} " if sym_dup
      @input = gets.chomp.upcase
      break if @input.match?(/^.$/) && @input != sym_dup

      puts 'Sorry, that is an invalid answer. Please, try again'
    end
    @input
  end

  def play_game
    @board = Board.new
    @board.print_board
    current_player
    display_winner
  end

  def player_turn(player)
    cell = player_input(player)
    @board.board_grids[cell - 1] = player.symbol
    @board.print_board
  end

  def player_input(player)
    loop do
      puts "#{player.name} enter a value between 1-9 so we put #{player.symbol} on the board"
      num = gets.chomp.to_i
      @num = num if num.is_a?(Integer)

      break if @num.positive? && @num < 10 && @board.board_grids[@num - 1].to_i == @num

      puts 'enters a valid integer or position is occupied'
    end
    @num
  end

  def current_player
    @winner = nil
    until game_over?
      player_turn(@player1)
      @winner = @player1 if @board.end_game?
      break if game_over?

      player_turn(@player2)
      @winner = @player2 if @board.end_game?
    end
  end

  def game_over?
    @board.complete_line?(player1.symbol, player2.symbol) || @winner
  end

  def display_winner
    if @winner
      puts "You Won #{@winner.name}"
    else
      puts "it's a tie"
    end
  end
end

GameLogic.new
