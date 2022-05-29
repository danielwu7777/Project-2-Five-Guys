require_relative 'attribute_enums'

# File created 5/24/2022 by Jake McCann
# Edited 5/25/2022 by Jake McCann: added attribute translation methods
# Edited 5/29/2022 by Jake McCann: removed attribute translation methods
class Card

  # Created 5/24/2022 by Jake McCann
  # Edited 5/29/2022 by Jake McCann: Changed order of attribute array so to_s makes grammatical sense
  def initialize(shading, shape, color, count)
    @attribute_array = [count, shading, color, shape]
  end

  # Created 5/24/2022 by Jake McCann
  def get_attribute_array
    return @attribute_array
  end

  # Created 5/24/2022 by Jake McCann
  # Edited 5/25/2022 by Jake McCann: Used translation methods to make more concise
  # Edited 5/29/2022 by Jake McCann: Use nested dictionary to remove translation methods
  def to_s
    @attributes_as_string = Array. new
    @attribute_array.each_index { |index| @attributes_as_string << ATTRIBUTES_ENUM[index].key(@attribute_array[index]).to_s }
    @attributes_as_string.join " "
  end
end
