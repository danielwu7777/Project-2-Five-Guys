require_relative '../lib/dealer'
require_relative '../lib/deck'

# File created 5/31/2022 by Jake McCann
describe 'Dealer and Deck' do
  # Created 5/31/2022 by Jake McCann
  it 'removes 12 cards from deck when dealer created' do
    test_deck = Deck.new
    test_dealer = Dealer.new
    expect(test_dealer.deck.get_count == test_deck.get_count - 12).to be_truthy
  end

  # Create 5/31/2022 by Jake McCann
  it 'removes 1 card from deck when dealer deals a card' do
    test_dealer = Dealer.new
    pre_deal_deck_count = test_dealer.deck.get_count
    test_dealer.deal_card
    expect(test_dealer.deck.get_count == pre_deal_deck_count - 1).to be_truthy
  end

  # Create 5/31/2022 by Jake McCann
  it 'removes 3 cards from deck when dealer deals three cards' do
    test_dealer = Dealer.new
    pre_deal_deck_count = test_dealer.deck.get_count
    test_dealer.add_three_cards
    expect(test_dealer.deck.get_count == pre_deal_deck_count - 3).to be_truthy
  end
end