# File created 5/25/2022 by Yuhao Yan
class Player
    # initialize player with name "John" and score 0.
    def initialize(name = "John",score = 0)
        @name = name
        @score = score
    end

    # Get the name of player.
    def getName()
        @name
    end

    # Set new player name.
    # Default: name "John"
    def setName(name = "John")
        @name = name
    end

    # Get the score of player.
    def getScore()
        @score
    end

    # Set new player name.
    # Default: score 0
    def setScore(score = 0)
        @score = score
    end

    # Increment score by input number{@points} of points
    # Default: score increments by 1
    def scoreIncrement(points = 1)
        @score += points
    end

    # Return an array of 3 indexes for 3 cards. Determined by user inputs.
    def chooseCards()
        indexes = [0,0,0]
        puts "Please input 3 indexes of cards (1 <= index <= 12)."
        print "First index:"
        input = gets
        indexes[0] = input[0...input.length-1].to_i
        
        print "Second index:"
        input = gets
        indexes[1] = input[0...input.length-1].to_i

        print "Third index:"
        input = gets
        indexes[2] = input[0...input.length-1].to_i

        indexes
    end
    

end




=begin

#test 
player1 = Player.new "Hao",50
player2 = Player.new

#test of chooseCards
puts player1.chooseCards().to_s


#test of name methods
puts player1.getName
puts player2.getName
player1.setName
puts player1.getName
player1.setName"nanren"
puts player1.getName

#test of score methods
puts player1.getScore
puts player2.getScore
player1.setScore
puts player1.getScore
player1.setScore 123
puts player1.getScore
player1.scoreIncrement
puts player1.getScore
player1.scoreIncrement 100
puts player1.getScore

=end