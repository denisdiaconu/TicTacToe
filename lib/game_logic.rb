class GameLogic
  attr_accessor :player1, :player2

  def initialize
    puts 'Welcome to the Tic Tac Toe game!'
    @player1 = create
    @player2
  end

  def create_player(num)
    puts "Enter your name player #{num}:"
    name = gets.chomp
    puts "Enter your symbol #{name}"
    symbol = gets.chomp
  end

  def get_symbol(sym_dup)
    loop do
      puts 'What 1 letter/character would you like to be your game marker?'
      puts "It can not be#{sym_dup} if sym_dup"
      @input = gets.chomp
      break if @input.match?(/^.$/) && @input != sym_dup

      puts 'Sorry, that is an invalid answer. Please, try again'
    end
    @input
  end
end
