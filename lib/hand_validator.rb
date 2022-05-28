require_relative '../lib/card'
# File created 5/28/2022 by Noah Moon
class Hand_Validate

  # Created 5/28/2022 by Noah Moon
  # cards: set of cards that the user selected
  # returns true if there is some attribute that is the same for all cards, ot there is no common attribute
  def self.validate_hand(cards)
    different = true
    attribue_array = cards.map{|card| card.get_attribute_array}
    card1 = attribue_array[0]
    card2 = attribue_array[1]
    card3 = attribue_array[2]
    card1.each_index { |index|
      return true if card1[index] == card2[index] and card2[index] == card3[index]
      different = different && card1[index] != card2[index] && card2[index] != card3[index]
    }
    return different

  end
end

