require_relative '../lib/user_interface'

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
    @board.board_grids[cell.to_i - 1] = player.symbol
    @board.print_board
  end

  def player_input(player)
    loop do
      puts "#{player.name} enter a value between 1-9 so we put #{player.symbol} on the board"
      @num = gets.chomp
      break if @board.board_grids[@num.to_i - 1] != @num.to_i && @board.board_grids[@num.to_i - 1] != player.symbol

      puts 'enters a valid symbol'
    end
    @num
  end

  def current_player
    @winner = nil
    until is_over?
      player_turn(@player1)
      @winner = @player1 if @board.end_game?
      break if is_over?

      player_turn(@player2)
      @winner = @player2 if @board.end_game?
    end
  end

  def is_over?
    @board.complete_line?(player1.symbol, player2.symbol) || @winner
  end

  def display_winner
    puts "You Won #{@winner.name}" if @winner
  end
end
