# File created 5/15/2022 by Noah Moon
require_relative '../lib/deck'
require_relative '../lib/card'

# Created 5/15/2022 by Noah Moon
describe 'Deck' do
  it 'creates a new deck' do
    deck = Deck.new
    expect(deck.get_count == 81).to be_truthy
  end

  # Created 5/16/2022 by Noah Moon
  it 'Returns cards when drawing' do
    deck = Deck.new
    card = deck.draw
    expect(card.class.to_s == "Card").to be_truthy
  end

  # Created 5/15/2022 by Noah Moon
  it 'resets to full deck from full' do
    deck = Deck.new
    deck.reset
    expect(deck.get_count == 81).to be_truthy
  end

  # Created 5/16/2022 by Noah Moon
  it 'resets to full deck from depleated' do
    deck = Deck.new
    while deck.get_count > 10 do
      deck.draw
    end
    deck.reset
    expect(deck.get_count == 81).to be_truthy
  end

  # Created 5/15/2022 by Noah Moon
  it 'keeps count' do
    deck = Deck.new
    i = 50
    while i > 0 do
      deck.draw
      i -= 1
    end
    expect(deck.get_count == 31).to be_truthy
  end

  # Created 5/16/2022 by Noah Moon
  it 'converts to string' do
    deck = Deck.new
    expect(deck.to_s.class == "".class).to be_truthy
    puts deck.to_s
  end

end