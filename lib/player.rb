# handle user input usable_input(x,y)
# keep name, if given
class Player
    def usable_input( question = "", acceptable_values = [1,2,3,4,5,6], except = "" )
        # Set initial
        not_usable = true
        input = ""
        # loop until usable input
        while not_usable do
            puts question
            input = gets.chomp
            acceptable_values.each do |i| 
                if ( input == i.to_s ) && ( input != except.to_s )
                    not_usable = false
                end
            end
            if not_usable
                puts "Sorry, try again.\n"
            end
        end
        return input
    end
end