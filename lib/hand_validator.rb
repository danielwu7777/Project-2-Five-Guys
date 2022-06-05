require_relative '../lib/card'
# File created 5/28/2022 by Noah Moon
# File Edited 5/30/2022 by Noah Moon
class Hand_Validate

  # Created 5/28/2022 by Noah Moon
  # Edited 5/29/2022 by Noah Moon
  # Edited 6/4/2022 by Yuhao Yan
  # cards: set of cards that the user selected
  # returns true if there is some attribute that is the same for all cards, ot there is no common attribute
  def self.validate_hand?(cards)
    valid = true
    attribute_array = cards.map{|card| card.get_attribute_array}

    attribute_array[0].each_index { |index|
      valid &= attribute_valid? attribute_array, index
    }
    valid

  end

  private
  # Created 6/4/2022 by Yuhao Yan
  # Edited 6/4/2022 by Yuhao Yan
  def self.attribute_valid?(attribute_array, index)
    attribute_counter = [0, 0, 0, 0]

    attribute_array.each_index { |card_index|
      attribute = attribute_array[card_index][index] -1
      attribute_counter[attribute] += 1
    }

    attribute_counter.each { |num|
      if num == 2 then return false end
    }
    true
  end

end

