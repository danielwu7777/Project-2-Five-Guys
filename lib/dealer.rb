require_relative 'card'
require_relative 'deck'
require_relative 'game_table'

# File created 5/24/2022 by Mingxuan Gong
# Edited 5/25/2022 by Mingxuan Gong
# Edited 5/31/2022 by Noah Moon
class Dealer
    # Created 5/31/2022 by Noah Moon
    attr_reader :dealt_cards, :deck

    # generate a table to show 12 cards
    # Edited 5/27/2022 by Jake McCann: fixed capitaliztion on deck
    def initialize
        @dealt_cards = Array.new
        @deck = Deck.new
        start_game
    end
    
    # Create 5/27/2022 by Mingxuan Gong
    # Edited 5/25/2022 by Mingxuan Gong
    # lay out 12 cards on the table    
    def start_game
        while @dealt_cards.length < 12 do
           deal_card
        end
        Game_Table.display_cards(@dealt_cards)
    end   
    
    # Edited 5/25/2022 by Mingxuan Gong  
    # pick the specified card
    def get_card(i)
        @dealt_cards[i]
    end
    
    # Edited 5/25/2022 by Mingxuan Gong
    # Edited 5/31/2022 by Noah Moon
    # adds 3 new cards to dealt cards
    def add_three_cards
        3.times {@dealt_cards.push(@deck.draw)}
    end
    
    # Edited 5/25/2022 by Mingxuan Gong
    # add a card from the deck and show it on the table 
    def deal_card
            
        card = @deck.draw
        @dealt_cards.push(card)
        
    end

    # Created 5/31/2022 by Noah Moon
    # Removes 3 specified cards from chosen cards
    # index_set: set of card indexes to be removed
    def remove_3_cards(index_set)
        index_set.each { |index| delete_card(index)  }
    end

    private
    # Edited 5/25/2022 by Mingxuan Gong
    # Edited 5/31/2022 by Noah Moon
    # remove one card from the table   
    def delete_card(card)
        @dealt_cards.delete_at(card)
    end

end