require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'computer.rb'

#array of 4 numbers, each between 1-6
#player can make the code or guess
#1. Guess
#2. Make

#12-slot array, made of 4-slot arrays (previous guesses)

class Game
    def initialize
        @the_board = Board.new()
    end
    def run
        @the_board.show()
        "Have a good day!"
    end
end

 