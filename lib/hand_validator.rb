require_relative '../lib/card'
# File created 5/28/2022 by Noah Moon
# File Edited 5/30/2022 by Noah Moon
class Hand_Validate

  # Created 5/28/2022 by Noah Moon
  # Edited 5/29/2022 by Noah Moon
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

  # Created 6/5/2022 by Yuhao Yan
  # Edited 6/5/2022 by Yuhao Yan
  # cards: set of cards that are on the table
  # returns true if there is at least one valid set
  def self.validate_table?(table)

    range = table.length
    if range < 3
      return false
    end

    for index1 in 0...(range - 2)
      for index2 in (index1+1)...(range - 1)
        for index3 in (index2 + 1)...range
          set = Array.new
          set.push table[index1], table[index2], table[index3]

          if self.validate_hand? set
            return true
          end

        end
      end
   end
   false

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

