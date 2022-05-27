require_relative 'card'
require_relative 'deck'
require_relative 'game_table'

class Dealer
    # generate a table to show 12 cards 
    def initialize
        @dealt_cards = Array.new
        @deck = deck.new
    end
         
    # lay out 12 cards on the table    
    def start_game(deck) 
        while @dealt_cards.length < 12 do
            add_cards(deck)
        end
    end     
    # pick the specified card
    def get_card(i)
        @table[i]
    end
          
    # if there aren't a set in the table then add 3 more cards to the table
    def add_three_cards(deck)
        if deck.length > 0
            for i in 0..2
                add_cards(deck)
            end
        end
    end
             
    # add a card from the deck and show it on the table 
    def deal_cards(deck)
            
        card = @deck.draw
        @dealt_cards.push(card)
        Game_Table.display_card
    end 
                
    # remove one card from the table   
    def delete_card(card)
        @dealt_cards.delete(card)
    end
   
    # return the length of the card
    def length
    	@table.length()
    end
end