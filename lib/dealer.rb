require_relative 'card'
require_relative 'deck'
require_relative 'game_table'

# File created 5/24/2022 by Mingxuan Gong
# Edited 5/25/2022 by Mingxuan Gong
class Dealer
    # generate a table to show 12 cards 
    def initialize
        @dealt_cards = Array.new
        @deck = Deck.new
        start_game
    end
    
    # Create 5/27/2022 by Mingxuan Gong
    # Edited 5/25/2022 by Mingxuan Gong     
    # lay out 12 cards on the table    
    def start_game() 
        while @dealt_cards.length < 12 do
           deal_card
        end
        Game_Table.display_cards(@dealt_cards)
    end   
    
    # Edited 5/25/2022 by Mingxuan Gong  
    # pick the specified card
    def get_card(i)
        @table[i]
    end
    
    # Edited 5/25/2022 by Mingxuan Gong
    # if there aren't a set in the table then add 3 more cards to the table
    def add_three_cards()

    end
    
    # Edited 5/25/2022 by Mingxuan Gong
    # add a card from the deck and show it on the table 
    def deal_card()
            
        card = @deck.draw
        @dealt_cards.push(card)
        
    end 
    
    # Edited 5/25/2022 by Mingxuan Gong
    # remove one card from the table   
    def delete_card(card)
        @dealt_cards.delete(card)
    end
    
    # Edited 5/25/2022 by Mingxuan Gong
    # return the length of the card
    def length
    	@table.length()
    end
end