# File created 5/26/2022 by Daniel Wu
require_relative '../lib/dealer'

# Created 5/26/2022 by Daniel Wu
describe 'Dealer' do

  # Created 5/31/2022 by Noah Moon
  it 'initialize game pulls 12 cards and displays' do
    dealer = Dealer.new
    dealer.start_game

    expect(dealer.dealt_cards.length == 12 && dealer.deck.get_count == 81-12).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'adds 3 cards to dealt cards' do
    dealer = Dealer.new
    dealer.start_game
    dealer.add_three_cards

    expect(dealer.dealt_cards.length == 15 && dealer.deck.get_count == 81-15).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'removes 3 cards from dealt cards' do
    dealer = Dealer.new
    index_set = Set[1,2,3]
    dealer.start_game
    dealer.remove_3_cards index_set
    expect(dealer.dealt_cards.length == 9 && dealer.deck.get_count == 81-12).to be_truthy
  end


end