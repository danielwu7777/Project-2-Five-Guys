# File created 5/15/2022 by Noah Moon
require_relative 'card'

class Deck
  # Created 5/15/2022 by Noah Moon
  def initialize
    @count = 0
    @stack = reset_deck
  end

  # Created 5/15/2022 by Noah Moon
  def reset_deck
    @stack = []
    @count = 0
    lim = 1..3
    for i in lim do
      for j in lim do
        for k in lim do
          for l in lim do
            @count += 1
            @stack << Card.new(i,j,k,l)
          end
        end
      end
    end
    return @stack
  end

  # Created 5/15/2022 by Noah Moon
  def draw
    @count -= 1
    @stack.pop
  end

  # Created 5/15/2022 by Noah Moon
  def get_count
    @count
  end

  # Created 5/15/2022 by Noah Moon
  def shuffle
    @stack = @stack.shuffle
  end


  def to_s
    string_array = []
    for cards in @stack
      string_array << cards.to_s
    end
    return string_array.to_s
  end
end
