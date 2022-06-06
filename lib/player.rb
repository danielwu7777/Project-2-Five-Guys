# File created 5/25/2022 by Yuhao Yan
# Edited 5/26/2022 by Yuhao Yan
# Edited 6/1/2022 by Noah Moon
# edited 6/52022 by Jake McCann: remove name class variable
require 'set'

class Player
    # Created 6/1/2022 by Noah Moon
    attr_accessor :score

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Edited 6/1/2022 by Noah Moon: parallel assignment
    # # Edited 6/5/2022 by Jake McCann: remove name argument.
    def initialize
        @score = 0
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Edited 6/5/2022 by Jake McCann: remove arguments.
    # Increment score by input number{@points} of points
    # Default: score increments by 1
    def score_increment!
        @score += 1
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name. Change the way of manipulating Strings from user inputs
    # Edited 6/1/2022 by Noah Moon: removed parenthesis
    # Edited 6/5/2022 by Jake McCann: add input validation
    # Return a set of 3 indexes for 3 cards. Determined by user inputs.
    def choose_cards(available_card_count)
        indexSet = Set.new
        puts "Please input 3 indexes of cards."
        while indexSet.size < 3 do
            print "Enter index index:"
            input = STDIN.gets.chomp!.to_i - 1
            if indexSet.include? input then puts 'You already entered this card!' end
            if input >= 0 and input < available_card_count then indexSet.add(input) else puts 'Invalid card number' end
        end
        indexSet
    end
end