# File created 5/25/2022 by Daniel Wu 
class GameManager   
  
    # Created 5/25/2022 by Daniel Wu
    # Initializes game
    def startGame
        # Get number of players
        puts "Enter number of players(2 maximum): "
        numPlayers = gets.to_i
        # Create players
        createPlayer numPlayers
        # Create instance variables to determine who's turn it is (1 means playerOne's turn, 2 means playerTwo's turn)
        @playerTurn = 1;
        # Initiate deck and dealer
        deck.initialize
        dealer.initialize
    end   
     
    # Created 5/25/2022 by Daniel Wu
    # Creates instance variables for each player's score
    def createPlayer(numPlayers)   
        if numPlayers == 1
            @playerOneScore = 0
        elsif numPlayers == 2
            @playerOneScore = 0
            @playerTwoScore = 0
        else 
            puts "Invalid number of players. Expected 1 or 2 but got " + numPlayers.to_s
        end
    end   
     
    # Created 5/25/2022 by Daniel Wu
    # Switch turn for players
    def switchTurn   
        if playerTurn == 1
            playerTurn = 2
        else
            playerTurn = 1
        end
    end      

    # Created 5/25/2022 by Daniel Wu
    # End game by displaying winner
    def endGame  
        puts "GAME ENDED"
        puts "Score Breakdown:"
        puts "Player 1 had a score of " + playerOneScore.to_s
        puts "Player 2 had a score of " + playerTwoScore.to_s
        puts
        x = playerOneScore <=> playerTwoScore
        if x == -1
            puts "Player 2 wins!"
        elsif x == 1
            puts "Player 1 wins!"
        else
            puts "It's a TIE!"
        end
    end
  end 