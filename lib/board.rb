
# The board holds the given answers, history of answers, and functions to check this data
# For each of the given answers, check against the code

# Colors
BLACK   = "\e[30m" #{BLACK}     |   Present   
RED     = "\e[31m" #{RED}       |   Not Present
GREEN   = "\e[32m" #{GREEN}     |   6 and Text Color
YELLOW  = "\e[33m" #{YELLOW}    |   5
BLUE    = "\e[34m" #{BLUE}      |   4
MAGENTA = "\e[35m" #{MAGENTA}   |   3
CYAN    = "\e[36m" #{CYAN}      |   2
WHITE   = "\e[37m" #{WHITE}     |   1 and Precise
PIN     = "\u25CF" #{PIN}       |   

GREEN_PIN   = "\e[32m\u25CF\e[32m" # Trailing green code unnecessary, but I wanted it to be even.  
BLACK_PIN   = "\e[30m\u25CF\e[32m" # Return it to green at the end
RED_PIN     = "\e[31m\u25CF\e[32m"
YELLOW_PIN  = "\e[33m\u25CF\e[32m"
BLUE_PIN    = "\e[34m\u25CF\e[32m"
MAGENTA_PIN = "\e[35m\u25CF\e[32m"
CYAN_PIN    = "\e[36m\u25CF\e[32m"
WHITE_PIN   = "\e[37m\u25CF\e[32m"
PINS = [ "#{BLACK_PIN}", "#{WHITE_PIN}", "#{CYAN_PIN}", "#{MAGENTA_PIN}", "#{BLUE_PIN}", "#{YELLOW_PIN}", "#{GREEN_PIN}", "#{RED_PIN}", ]
#{PIN}



class Board
    def initialize
        @boardArray = Array.new()
        @boardArray[0] = "\n         #{GREEN_PIN}#{WHITE_PIN}#{RED_PIN}#{YELLOW_PIN}#{BLUE_PIN}#{MAGENTA_PIN}#{CYAN_PIN}#{GREEN_PIN}#{WHITE_PIN}#{RED_PIN}#{YELLOW_PIN}#{BLUE_PIN}#{MAGENTA_PIN}#{CYAN_PIN}"
        @boardArray[1] = "         #{CYAN_PIN} MASTERMIND #{BLUE_PIN}"
        @boardArray[2] = "         #{MAGENTA_PIN}#{BLUE_PIN}#{YELLOW_PIN}#{RED_PIN}#{WHITE_PIN}#{GREEN_PIN}#{CYAN_PIN}#{MAGENTA_PIN}#{BLUE_PIN}#{YELLOW_PIN}#{RED_PIN}#{WHITE_PIN}#{GREEN_PIN}#{MAGENTA_PIN}"
        @boardArray[3] = "#{RED_PIN} Present | #{BLACK_PIN} Absent | #{WHITE_PIN} Precise  "
        @boardArray[4] = "          #{PINS[1]} #{PINS[2]} #{PINS[3]} #{PINS[4]} #{PINS[5]} #{PINS[6]}"
        @boardArray[5] = "          1 2 3 4 5 6 "
    end
    
    def show()
        system('clear') || system('cls')
        @boardArray.each do |i|
            puts i
        end
        "Next Move?" 
    end

    def next_move( guess, correct )
        #
    end

    # Needs to keep track of previoius guesses
    # Precise, Present, Not present

    # check():
    # first compare correct[i] == guess[i]?(add to precise guesses):(add to present guesses)
end

