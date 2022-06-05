require_relative '../lib/card'
# File created 5/28/2022 by Noah Moon
# File Edited 5/30/2022 by Noah Moon
class Hand_Validate

  # Created 5/28/2022 by Noah Moon
  # Edited 5/29/2022 by Noah Moon
  # Edited 5/31/2022 by Daniel Wu: Fixed typos in comments and reformatted methods
  # cards: set of cards that the user selected
  # returns true if there is some attribute that is the same for all cards, ot there is no common attribute
  def self.validate_hand?(cards)
    valid = true
    attribute_array = cards.map{|card| card.get_attribute_array}
    attribute_array[0].each_index { |index|
      valid &= is_same?(attribute_array, index) || is_different?(attribute_array, index)
    }
    valid
  end

  private
  # Created 5/30/2022 by Noah Moon
  def self.is_same?(attribute_array, index)
    attribute_array[0][index] == attribute_array[1][index] && attribute_array[1][index] == attribute_array[2][index]
  end

  # Created 5/30/2022 by Noah Moon
  def self.is_different?(attribute_array, index)
    attribute_array[0][index] != attribute_array[1][index]  && attribute_array[0][index] != attribute_array[2][index] && attribute_array[1][index] != attribute_array[2][index]
  end
end