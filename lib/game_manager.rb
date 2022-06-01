# File created 5/25/2022 by Daniel Wu 
require_relative 'dealer'
require_relative 'player'
require_relative 'hand_validator'
class GameManager   
    # Created 5/25/2022 by Daniel Wu
    # Edited 5/26/2022 by Daniel Wu: Deleted player scores since player class will handle
    # Edited 5/27/2022 by Daniel Wu: Moved getting number of players to method and changed name from startGame to initialize
    # Edited 5/31/2022 by Daniel Wu: Changed to single player game and deleted unnecessary methods/instance variables
    def initialize
        puts "Welcome to the game of Set!"
        puts "GAME START"
        @player = Player.new
        @dealer = Dealer.new
        #playerAction    commented out for now
    end   

    # Created 5/31/2022 by Daniel Wu
    def playerAction
        cardIndexSet = @player.choose_cards
        cardSet = Set.new
        # convert to a set of 3 cards
        # validate hand
        if Hand_Validate.validate_hand? cardSet
            puts "Valid hand! 1 point added to your score"
            @player.score_increment!
            if @dealer.deck.get_count >= 3
                playerAction
            else 
                puts "No more cards to draw"
                endGame 
            end
        else 
            puts "Invalid hand!"  
            if @dealer.deck.get_count >= 3
                playerAction
            else 
                puts "No more cards to draw"
                endGame 
            end
        end
    end

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Changed call for getting player's scores
    # Edited 5/31/2022 by Daniel Wu: Changed to single player
    def endGame  
        puts "GAME ENDED"
        puts "Score Breakdown:"
        puts "You had a score of " + @player.get_score.to_s     
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