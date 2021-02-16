class Board
    attr_accessor :board_grids
  
    def initialize
      @board_grids = %w[1 2 3 4 5 6 7 8 9]
    end
  
    def print_board
      puts "#{@board_grids[0]} | #{@board_grids[1]} | #{@board_grids[2]}"
      puts '----------'
      puts "#{@board_grids[3]} | #{@board_grids[4]} | #{@board_grids[5]}"
      puts '----------'
      puts "#{@board_grids[6]} | #{@board_grids[7]} | #{@board_grids[8]}"
      puts '----------'
    end
  
    def complete_line?(symbol1, symbol2)
      @board_grids.all? { |cell| cell == symbol1 || cell == symbol2 }
    end
  
    def end_game?
      win_combo = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
      win_combo.any? do |combo|
        board_grids[combo[0]] == board_grids[combo[1]] && board_grids[combo[0]] == board_grids[combo[2]]
      end
    end
  end
  
   
  