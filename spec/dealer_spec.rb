# File created 5/31/2022 by Noah Moon
require_relative '../lib/dealer'
require_relative '../lib/game_table'

# Created 5/31/2022 by Noah Moon
describe 'Dealer' do

  # Created 5/31/2022 by Noah Moon
  it 'initialize game pulls 12 cards and displays' do
    dealer = Dealer.new

    expect(dealer.dealt_cards.length == 12 && dealer.deck.count == 81-12).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'adds 3 cards to dealt cards' do
    dealer = Dealer.new
    dealer.add_three_cards

    expect(dealer.dealt_cards.length == 15 && dealer.deck.count == 81-15).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'removes 3 cards from dealt cards' do
    dealer = Dealer.new
    index_set = Set[1,2,3]
    dealer.remove_3_cards index_set
    expect(dealer.dealt_cards.length == 9 && dealer.deck.count == 81-12).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'removes 3 cards from and adds 3 cards to dealt cards' do
    dealer = Dealer.new
    index_set = Set[1,2,3]
    dealer.remove_3_cards index_set
    dealer.add_three_cards

    expect(dealer.dealt_cards.length == 12 && dealer.deck.count == 81-15).to be_truthy
  end

  # Created 5/31/2022 by Noah Moon
  it 'removes correct cards' do
    dealer = Dealer.new
    index_set = Set[1,2,3]
    cards = [dealer.dealt_cards[0], dealer.dealt_cards[1], dealer.dealt_cards[2] ]
    dealer.remove_3_cards index_set
    dealer.add_three_cards

    expect(dealer.dealt_cards.include?(cards[1]) || dealer.dealt_cards.include?(cards[2]) || dealer.dealt_cards.include?(cards[3])).to be_falsey
  end
end