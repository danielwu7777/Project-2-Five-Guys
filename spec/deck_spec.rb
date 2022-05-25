require_relative '../lib/deck'

describe 'Deck' do
  it 'creates a new deck' do
    deck = Deck.new
    expect(deck.get_count == 81).to be_truthy
  end

  it 'draws cards' do
    deck = Deck.new
    deck.draw
    expect(deck.get_count == 80).to be_truthy
  end

  it 'shuffles cards' do
    deck = Deck.new
    shuff_deck = Deck.new
    shuff_deck.shuffle
    expect(deck.to_s != shuff_deck.to_s).to be_truthy
  end

  it 'starts a new deck' do
    deck = Deck.new
    deck.shuffle
    new_deck = Deck.new
    deck.reset_deck
    expect(deck.to_s == new_deck.to_s).to be_truthy
  end

  it 'keeps count' do
    deck = Deck.new
    i = 50
    while i > 0 do
      deck.draw
      i -= 1
    end
    expect(deck.get_count == 31).to be_truthy
  end

end