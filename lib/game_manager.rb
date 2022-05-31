# File created 5/25/2022 by Daniel Wu 
require_relative 'dealer'
require_relative 'player'
require_relative 'hand_validator'
class GameManager   
    attr_reader :playerTurn

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/26/2022 by Daniel Wu: Deleted player scores since player class will handle
    # Edited 5/27/2022 by Daniel Wu: Moved getting number of players to method and changed name from startGame to initialize
    def initialize
        getNumPlayers
        # (1 means playerOne's turn, 2 means playerTwo's turn, etc.)
        @playerTurn = 1;
        @dealer = Dealer.new
    end   

    # Created 5/27/2022 by Daniel Wu
    def getNumPlayers 
        print "Enter number of players(2 maximum): "      
        numPlayers = $stdin.gets.chomp.to_i
        # Keep asking until user gives a valid input
        while numPlayers != 1 && numPlayers != 2
            puts "Invalid number of players. Expected 1 or 2 but got " + numPlayers.to_s + ". Please try again"
            print "Enter number of players(2 maximum): "      
            numPlayers = $stdin.gets.chomp.to_i
        end
        @playerOne = Player.new
        @playerTwo = Player.new
    end

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/26/2022 by Daniel Wu: Added call for player to choose cards
    # Switch turn for players
    def switchTurn  
        if @playerTurn == 1
            @playerTurn = 2
            chosenCardsArray = @playerTwo.choose_cards
            # do something with array 
        else
            @playerTurn = 1
            chosenCardsArray = @playerOne.choose_cards
            # do something with array
        end
    end      

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Changed call for getting player's scores
    def endGame  
        puts "GAME ENDED"
        puts "Score Breakdown:"
        puts "Player 1 had a score of " + @playerOne.get_score.to_s
        puts "Player 2 had a score of " + @playerTwo.get_score.to_s
        puts
        x = @playerOne.get_score <=> @playerTwo.get_score
        if x == -1
            puts "Player 2 wins!"
        elsif x == 1
            puts "Player 1 wins!"
        else
            puts "It's a TIE!"
        end      
    end
end 

=begin
 if Hand_Validate.validate_hand chosenCardsArray
    puts "Valid hand! 1 point added to Player 2"
    @playerTwo.score_increment!
else 
    puts "Invalid hand!"
    if @dealer.deck.get_count >= 3
        puts "Player 1, it's your turn"
        switchTurn
    else 
        puts "No more cards to draw"
        endGame
    end
end

if Hand_Validate.validate_hand chosenCardsArray
    puts "Valid hand! 1 point added to Player 1"
    @playerOne.score_increment!
else 
    puts "Invalid hand!"
    if @dealer.deck.get_count >= 3
        puts "Player 2, it's your turn"
        switchTurn
    else 
        puts "No more cards to draw"
        endGame
    end
end
=end