# File created 5/26/2022 by Daniel Wu
require_relative '../lib/dealer'

# Created 5/26/2022 by Daniel Wu
describe 'Dealer' do

  # Created 5/31/2022 by Noah Moon
  it 'initialize game displays cards' do
    dealer = Dealer.new
    dealer.start_game

    expect(dealer.dealt_cards.length == 12).to be_truthy
  end

end