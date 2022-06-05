# File created 5/25/2022 by Daniel Wu 
require_relative 'dealer'
require_relative 'player'
require_relative 'hand_validator'
require 'set'

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
        playerAction
    end   

    # Created 5/31/2022 by Daniel Wu
    def playerAction
        # Player keeps drawing cards until deck size is < 3
        while @dealer.deck.count >= 3
            cardIndexSet = Set.new
            cardIndexSet = @player.choose_cards
            cardSet = Set.new
            cardSet = @dealer.retrieve_cards cardIndexSet
            if Hand_Validate.validate_hand? cardSet
                puts "Valid hand! 1 point added to your score"
                @player.score_increment!
            else 
                puts "Invalid hand!"  
            end
        end
    end

    # Created 5/25/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Changed call for getting player's scores
    # Edited 6/1/2022 by Jake McCann: removed use of get_scores
    # Edited 6/4/2022 by Daniel Wu: Changed to single player
    def endGame  
        puts "GAME ENDED"
        puts "Score Breakdown:"
        puts "You had a score of " + @player.score
    end
end 
