require_relative 'card'
require_relative 'deck'

class Dealer
        # generate a table to show 12 cards 
        def initialize
            @dealer = Array.new
        end
    
        # show up the table
        def show_table
            puts "Cards on table: "
            i = 0
            until i == @table.length() do
                3.times do
                    card = @table[i]
                    str = (i+1).to_s + ". " + card.to_s
                    (34 - str.length).times { str += " " }
                    print str
                    i += 1
                end
                puts "\n"
            end
        end
         
        # lay out 12 cards on the table    
        def start_game(deck) 
            while @dealer.length < 12 do
            add_cards(deck)
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
        def add_cards(deck)
            
            card = deck.get_card(index)
            deck.deleteCard(card)
            @dealer.push(card)
        end 
        
        # remove one card from the table   
        def delete_card(card)
            @dealer.delete(card)
        end
   
        # return the length of the card
        def length
    	@table.length()
        end
    end
