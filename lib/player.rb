# File created 5/25/2022 by Yuhao Yan
# Edited 5/26/2022 by Yuhao Yan
# Edited 5/31/2022 by Daniel Wu: Changed index array to set
require 'set'
class Player

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # initialize player with name "John" and score 0.
    def initialize(name = "John",score = 0)
        @name = name
        @score = score
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Get the name of player.
    def get_name()
        @name
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Set new player name.
    # Default: name "John"
    def set_name!(name = "John")
        @name = name
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Get the score of player.
    def get_score()
        @score
    end

    # Created 5/25/2022 by Yuhao Yan
    # Edited 5/26/2022 by Yuhao Yan: Change of method name.
    # Set new player name.
    # Default: score 0
    def set_score!(score = 0)
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
    # Return a set of 3 indexes for 3 cards. Determined by user inputs.
    # Edited 5/31/2022 by Daniel Wu: Changed index array to set
    def choose_cards()
        indexSet = Set.new
        puts "Please input 3 indexes of cards (1 <= index <= 12)."
        print "First index:"
        indexSet.add($stdin.gets.chomp!.to_i)
        
        print "Second index:"
        indexSet.add($stdin.gets.chomp!.to_i)

        print "Third index:"
        indexSet.add($stdin.gets.chomp!.to_i)
        indexSet
    end

end




=begin

#test 
player1 = Player.new "Hao",50
player2 = Player.new

#test of chooseCards
puts player1.choose_cards.to_s

#test of name methods
puts player1.get_name   #expected print: Hao
puts player2.get_name   #expected print: John
player1.set_name!
puts player1.get_name   #expected print: John
player1.set_name! "nanren"
puts player1.get_name   #expected print: nanren

#test of score methods
puts player1.get_score          #expected score: 50
puts player2.get_score          #expected score: 0
player1.set_score!
puts player1.get_score          #expected score: 0
player1.set_score! 123
puts player1.get_score          #expected score: 123
player1.score_increment!        #expected score: 124
puts player1.get_score
player1.score_increment! 100    #expected score: 224
puts player1.get_score


=end