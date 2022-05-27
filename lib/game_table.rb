# File created 5/26/2022 by Jake McCann
class Game_Table

  # Created 5/26/2022 by Jake McCann
  # dealt_cards: array of Card objects that player can currently select from
  def self.display_cards(dealt_cards)
    dealt_cards.each_with_index { |card,index| puts "#{index+1}. #{card.to_s}" }
  end
end
