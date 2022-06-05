require_relative '../lib/dealer'
require_relative '../lib/deck'

# File created 5/31/2022 by Jake McCann
describe 'Dealer and Deck' do
  # Created 5/31/2022 by Jake McCann
  it 'removes 12 cards from deck when dealer created' do
    test_deck = Deck.new
    test_dealer = Dealer.new
    expect(test_dealer.deck.count == test_deck.count - 12).to be_truthy
  end

  # Create 5/31/2022 by Jake McCann
  it 'removes 3 cards from deck when dealer deals three cards' do
    test_dealer = Dealer.new
    pre_deal_deck_count = test_dealer.deck.count
    test_dealer.add_three_cards
    expect(test_dealer.deck.count == pre_deal_deck_count - 3).to be_truthy
  end

  # Create 6/1/2022 by Jake McCann
  it 'does not contain 12 cards dealt initially by dealer' do
    test_dealer = Dealer.new
    test_dealer.dealt_cards.each{|card| expect(test_dealer.deck === card).to be_falsey}
  end

  # Create 6/1/2022 by Jake McCann
  it 'does not contain 3 cards dealt by dealer' do
    test_dealer = Dealer.new
    test_dealer.add_three_cards
    test_dealer.dealt_cards.each{|card| expect(test_dealer.deck === card).to be_falsey}
  end
end