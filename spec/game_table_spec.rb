require_relative '../lib/game_table'
require_relative '../lib/card'

describe 'Game_Table' do
  it 'puts 1. then one card as string' do
    test_card = Card.new 1,1,1,1
    card_array = [test_card]
    expect do
      Game_Table.display_cards card_array
    end.to output("1. #{test_card.to_s}\n").to_stdout
  end

  it 'puts index of two cards with two cards as strings' do
    test_card1 = Card.new 1,1,1,1
    test_card2 = Card. new 2, 2, 2, 2
    card_array = [test_card1, test_card2]
    expect do
      Game_Table.display_cards card_array
    end.to output(
             "1. #{test_card1.to_s}\n2. #{test_card2.to_s}\n"
           ).to_stdout
  end

  it 'puts index of three cards with three cards as strings' do
    test_card1 = Card.new 1,1,1,1
    test_card2 = Card. new 2, 2, 2, 2
    test_card3 = Card. new 3, 3, 3, 3
    card_array = [test_card1, test_card2, test_card3]
    expect do
      Game_Table.display_cards card_array
    end.to output(
             "1. #{test_card1.to_s}\n2. #{test_card2.to_s}\n3. #{test_card3.to_s}\n"
           ).to_stdout
  end
end
