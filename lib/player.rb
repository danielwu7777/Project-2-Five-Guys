# File created 5/25/2022 by Yuhao Yan
# Edited 5/26/2022 by Yuhao Yan
# Edited 6/1/2022 by Noah Moon
class Player
    # Created 6/1/2022 by Noah Moon
    attr_accessor :name, :score

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # initialize player with name "John" and score 0.
    def initialize(name = "John",score = 0)
        @name = name
        @score = score
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Increment score by input number{@points} of points
    # Default: score increments by 1
    def score_increment!(points = 1)
        @score += points
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name. Change the way of manipulating Strings from user inputs
    # Return an array of 3 indexes for 3 cards. Determined by user inputs.
    def choose_cards
        indexes = [nil,nil,nil]
        puts "Please input 3 indexes of cards (1 <= index <= 12)."
        print "First index:"
        indexes[0] = gets.chomp!.to_i
        
        print "Second index:"
        indexes[1] = gets.chomp!.to_i

        print "Third index:"
        indexes[2] = gets.chomp!.to_i

        indexes
    end
end
