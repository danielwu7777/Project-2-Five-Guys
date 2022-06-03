# File created 5/25/2022 by Noah Moon
# Edited 5/26/2022 by Noah Moon
# Edited 6/2/2022 by Noah Moon
require_relative 'card'

class Deck
  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022: made more terse
  # Edited 6/2/2022: made more terse.
  # Creates a populated and shuffled deck of 81 cards
  # The deck is usable as its own object, but also returns a stack
  def initialize
    reset
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
            @stack.push Card.new(shade + 1, shape + 1, color + 1, count + 1)
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
  # Edited 5/26/2022 by Noah Moon: Made more terse
  # Edited 6/2/2022 by Noah Moon: changed name from get_count to count git
  # Gets current count of remaining cards
  def count
    @stack.count
  end

  # Created 5/25/2022 by Noah Moon
  # Edited 5/26/2022
  # Prints the deck as an array with each cards description as its elements
  def to_s
    @stack.map{|card| card.to_s}.to_s
  end

end
