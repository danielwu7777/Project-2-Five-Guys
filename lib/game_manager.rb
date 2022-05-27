# File created 5/25/2022 by Daniel Wu 
require_relative 'dealer'
require_relative 'player'
class GameManager   
  
    # Created 5/25/2022 by Daniel Wu
    # Edited 5/26/2022 by Daniel Wu: Deleted player scores since player class will handle
    # Initializes game
    def startGame
        # Get number of players
        puts "Enter number of players(2 maximum): "      # maybe put 11-15 in method
        numPlayers = gets.to_i #maybe chomp?
        if numPlayers != 1 && numPlayers != 2
            puts "Invalid number of players. Expected 1 or 2 but got " + numPlayers.to_s
        end
        # Assuming there's only one player for checkpoint 1
        @playerOne = Player.new
        # (1 means playerOne's turn, 2 means playerTwo's turn)
        @playerTurn = 1;
        @dealer = Dealer.new
    end   
     
    # Created 5/26/2022 by Daniel Wu
    # Gets turn
    def getTurn # use ..........attr_reader :playerTurn .................5/27 stand up- maybe we don't need this getter
        return @playerTurn
    end

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/26/2022 by Daniel Wu: Added call for player to choose cards
    # Switch turn for players
    def switchTurn  
        if @playerTurn == 1
            @playerTurn = 2
            chosenCardsArray = @playerOne.choose_cards # should be playerTwo
            # do something with array
        else
            @playerTurn = 1
            chosenCardsArray = @playerOne.choose_cards
            # do something with array
        end
    end      

    # Created 5/25/2022 by Daniel Wu
    # End game by displaying winner
    def endGame  
        puts "GAME ENDED"
        puts "Score Breakdown:"
        puts "Player 1 had a score of " + @playerOne.get_score.to_s
        #puts "Player 2 had a score of " + playerTwoScore.to_s
# Commented out as there's only 1 player for checkpoint 1        
=begin  puts
        x = playerOneScore <=> playerTwoScore
        if x == -1
            puts "Player 2 wins!"
        elsif x == 1
            puts "Player 1 wins!"
        else
            puts "It's a TIE!"
        end
=end        
    end
end 