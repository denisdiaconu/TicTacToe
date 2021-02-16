#!/usr/bin/env ruby
require_relative '../lib/game_logic'
require_relative '../lib/user_interface'

# puts board_val

# implement the play
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

GameLogic.new
