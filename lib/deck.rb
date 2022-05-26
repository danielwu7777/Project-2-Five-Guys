# File created 5/25/2022 by Noah Moon
# Edited 5/26/2022
require_relative 'card'

class Deck
  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Creates a populated and shuffled deck of 81 cards
  # The deck is usable as its own object, but also returns a stack
  def initialize
    @stack = reset
  end

  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Resets deck to its initial, populated and shuffled, state
  def reset
    @stack = []
    3.times { |shade|
      3.times { |shape|
        3.times { |color|
          3.times { |count|
            @stack.push Card.new(shade, shape, color, count)
          }
        }
      }
    }
    @stack = @stack.shuffle
  end

  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Draws 1 card from the top of the deck
  def draw
    @stack.pop
  end

  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Gets current count of remaining cards
  def get_count
    @stack.count
  end

  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Prints the deck as an array with each cards description as its elements
  def to_s
    @stack.map{|card| card.to_s}.to_s
  end

end
