require_relative 'attribute_enums'

class Card
  def initialize(shading, shape, color, count)
    @attribute_array = [shading, shape, color, count]
  end

  def get_attribute_array
    return @attribute_array
  end

  def to_s
    shading = SHADING_TYPE.key(@attribute_array[0]).to_s
    shape = SHAPE_TYPE.key(@attribute_array[1]).to_s
    color = COLOR_TYPE.key(@attribute_array[2]).to_s
    count = COUNT_TYPE.key(@attribute_array[3]).to_s
    "#{count} #{shading} #{color} #{shape}"
  end
end
