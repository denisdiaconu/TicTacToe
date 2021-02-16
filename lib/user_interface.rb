class Board
  attr_accessor :board_girds

  def initialize
    @board_girds = %w[x x x 4 5 6 7 8 9]
  end

  def print_board
    puts "#{@board_girds[0]} | #{@board_girds[1]} | #{@board_girds[2]}"
    puts '----------'
    puts "#{@board_girds[3]} | #{@board_girds[4]} | #{@board_girds[5]}"
    puts '----------'
    puts "#{@board_girds[6]} | #{@board_girds[7]} | #{@board_girds[8]}"
    puts '----------'
  end

  def complete_line?(symbol1, symbol2)
    @board_girds.all? { |cell| cell == symbol1 || cell == symbol2 }
  end

  def end_game?
    win_combo = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
    win_combo.any? do |combo|
      board_girds[combo[0]] == board_girds[combo[1]] && board_girds[combo[0]] == board_girds[combo[2]]
    end
  end
end

board = Board.new
puts board.end_game?
