# File created 5/15/2022 by Noah Moon
require_relative 'card'

class Deck
  # Created 5/15/2022 by Noah Moon
  # Creates a populated and shuffled deck of 81 cards
  # The deck is usable as its own object, but also returns a stack
  def initialize
    @stack = reset
  end

  # Created 5/15/2022 by Noah Moon
  # Resets deck to its initial, populated and shuffled, state
  def reset
    @stack = []
    lim = 1..3
    for shade in lim do
      for shape in lim do
        for color in lim do
          for count in lim do
            @stack << Card.new(shade,shape,color,count)
          end
        end
      end
    end
    @stack = @stack.shuffle
  end

  # Created 5/15/2022 by Noah Moon
  # Draws 1 card from the top of the deck
  def draw
    @stack.pop
  end

  # Created 5/15/2022 by Noah Moon
  # Gets current count of remaining cards
  def get_count
    @stack.count
  end

  # Created 5/15/2022 by Noah Moon
  # Prints the deck as an array with each cards description as its elements
  def to_s
    string_array = []
    for cards in @stack
      string_array << cards.to_s
    end
    return string_array.to_s
  end

end
