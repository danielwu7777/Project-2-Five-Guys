require_relative 'attribute_enums'

class Card
  def initialize(shading, shape, color, count)
    @attribute_array = [shading, shape, color, count]
  end

  def get_attribute_array
    return @attribute_array
  end

  def shading_translation
    SHADING_TYPE.key(@attribute_array[0]).to_s
  end

  def shape_translation
    SHAPE_TYPE.key(@attribute_array[1]).to_s
  end

  def color_translation
    COLOR_TYPE.key(@attribute_array[2]).to_s
  end

  def count_translation
    COUNT_TYPE.key(@attribute_array[3]).to_s
  end

  def to_s
    "#{count_translation} #{shading_translation} #{color_translation} #{shape_translation}"
  end
end
