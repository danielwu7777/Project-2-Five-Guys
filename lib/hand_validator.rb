require_relative '../lib/card'
# File created 5/28/2022 by Noah Moon
class Hand_Validate

  # Created 5/28/2022 by Noah Moon
  # cards: set of cards that the user selected
  # returns true if there is some attribute that is the same for all cards, ot there is no common attribute
  def self.validate_hand(cards)
    different = true
    attribue_array = cards.map{|card| card.get_attribute_array}

    attribue_array[0].each_index { |index|
      return true if attribue_array[0][index] == attribue_array[1][index] and attribue_array[1][index] == attribue_array[2][index]
      different = different && attribue_array[0][index] != attribue_array[1][index] && attribue_array[1][index] != attribue_array[2][index]
    }
    different

  end
end

