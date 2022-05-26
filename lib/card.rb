require_relative 'attribute_enums'

# File created 5/24/2022 by Jake McCann
# Edited 5/25/2022 by Jake McCann
class Card

  # Created 5/24/2022 by Jake McCann
  def initialize(shading, shape, color, count)
    @attribute_array = [shading, shape, color, count]
  end

  # Created 5/24/2022 by Jake McCann
  def get_attribute_array
    return @attribute_array
  end

  # Created 5/25/2022 by Jake McCann
  def shading_translation
    SHADING_TYPE.key(@attribute_array[0]).to_s
  end

  # Created 5/25/2022 by Jake McCann
  def shape_translation
    SHAPE_TYPE.key(@attribute_array[1]).to_s
  end

  # Created 5/25/2022 by Jake McCann
  def color_translation
    COLOR_TYPE.key(@attribute_array[2]).to_s
  end

  # Created 5/25/2022 by Jake McCann
  def count_translation
    COUNT_TYPE.key(@attribute_array[3]).to_s
  end

  # Created 5/24/2022 by Jake McCann
  # Edited 5/25/2022 by Jake McCann: Used translation methods to make more concise
  def to_s
    "#{count_translation} #{shading_translation} #{color_translation} #{shape_translation}"
  end
end
