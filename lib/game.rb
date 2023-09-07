#array of 4 numbers, each between 1-6
#player can make the code or guess
#1. Guess
#2. Make

#12-slot array, made of 4-slot arrays (previous guesses)

# Colors
BLACK   = "\e[30m" #{BLACK}
RED     = "\e[31m" #{RED}
GREEN   = "\e[32m" #{GREEN}
YELLOW  = "\e[33m" #{YELLOW}
BLUE    = "\e[34m" #{BLUE}
MAGENTA = "\e[35m" #{MAGENTA}
CYAN    = "\e[36m" #{CYAN}
WHITE   = "\e[37m" #{WHITE}
PIN     = "\u25CF" #{PIN}

GREEN_PIN   = "\e[32m\u25CF"
BLACK_PIN   = "\e[30m\u25CF\e[32m" # Return it to green at the end
RED_PIN     = "\e[31m\u25CF\e[32m"
YELLOW_PIN  = "\e[33m\u25CF\e[32m"
BLUE_PIN    = "\e[34m\u25CF\e[32m"
MAGENTA_PIN = "\e[35m\u25CF\e[32m"
CYAN_PIN    = "\e[36m\u25CF\e[32m"
WHITE_PIN   = "\e[37m\u25CF\e[32m"
PINS = [ "#{BLACK_PIN}", "#{WHITE_PIN}", "#{CYAN_PIN}", "#{MAGENTA_PIN}", "#{BLUE_PIN}", "#{YELLOW_PIN}", "#{GREEN_PIN}", "#{RED_PIN}", ]
#{PIN}
def show_stuff()
    #puts "\n\e[31m \u25CF Red \e[0m \u25CF White \e[33m \u25CF Yellow \e[35m \u25CF Purple \e[34m \u25CF Blue \e[32m \u25CF Green"
    #puts "\n#{BLACK}#{PIN} #{WHITE}#{PIN} #{CYAN}#{PIN} #{MAGENTA}#{PIN} #{BLUE}#{PIN} #{YELLOW}#{PIN} #{GREEN}#{PIN} #{RED}#{PIN}#{GREEN}"
    #puts "1 2 3 4 5 6 7 8"
    #puts "\n #{WHITE}#{PIN} #{CYAN}#{PIN} #{MAGENTA}#{PIN} #{BLUE}#{PIN} #{YELLOW}#{PIN} #{GREEN}#{PIN} \n 1 2 3 4 5 6 #{GREEN}"
    #puts "\n 1 correct \n #{RED}#{PIN} #{BLACK}#{PIN} #{BLACK}#{PIN} #{BLACK}#{PIN}#{GREEN}"
    #puts "\n #{GREEN_PIN}#{WHITE_PIN}#{RED_PIN}#{YELLOW_PIN}#{BLUE_PIN}#{MAGENTA_PIN}#{CYAN_PIN}#{BLACK_PIN}"
    #PINS.each { |x| puts x }
    #puts "#{PINS.join}#{PINS.join}\n #{CYAN_PIN} MASTERMIND #{BLUE_PIN} \n#{PINS.join}#{PINS.join}"
    system('clear') || system('cls')
    # Use this one:      
    puts "\n     #{GREEN_PIN}#{WHITE_PIN}#{RED_PIN}#{YELLOW_PIN}#{BLUE_PIN}#{MAGENTA_PIN}#{CYAN_PIN}#{GREEN_PIN}#{WHITE_PIN}#{RED_PIN}#{YELLOW_PIN}#{BLUE_PIN}#{MAGENTA_PIN}#{CYAN_PIN}"
    puts "     #{CYAN_PIN} MASTERMIND #{BLUE_PIN}"
    puts "     #{MAGENTA_PIN}#{BLUE_PIN}#{YELLOW_PIN}#{RED_PIN}#{WHITE_PIN}#{GREEN_PIN}#{CYAN_PIN}#{MAGENTA_PIN}#{BLUE_PIN}#{YELLOW_PIN}#{RED_PIN}#{WHITE_PIN}#{GREEN_PIN}#{MAGENTA_PIN}"
    #12345678901234
    puts "#{PINS[0]} Correct | #{PINS[7]} Incorrect "
    puts "      #{PINS[1]} #{PINS[2]} #{PINS[3]} #{PINS[4]} #{PINS[5]} #{PINS[6]}"
    puts "      1 2 3 4 5 6 "
    x = 3
    correct = String.new()
    code_colors = Array.new()
    code_string = String.new()
    code = [ rand(1..6), rand(1..6), rand(1..6), rand(1..6) ]
    code.each{ |c| code_string += PINS[c].to_s }
    #puts code_string
    #puts code.join
    for i in 0..3
        code_colors[i] = PINS[code[i]].to_s
    end
    puts code_colors.join(" ")
    puts code.join(" ")
    #puts "#{code_string}    #{code_colors.join(" ")}"
    #puts "#{code.join}    #{code.join(" ")}"
    y = 4 - x
    for i in 1..x
        correct += " #{PINS[0]}"
    end
    for i in 1..y
        correct += " #{PINS[7]}"
    end
    puts "#{correct} | #{x} Correct"
    gets.chomp
end

show_stuff()
