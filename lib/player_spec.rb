# File created 6/1/2022 by Noah Moon
# File edited 6/5/2020 by Jake McCann: test input validation
require_relative '../lib/player'

# Created 5/31/2022 by Noah Moon
describe 'player' do

  # Created 5/31/2022 by Noah Moon
  # Edited 6/5/2022 by Jake McCann: give real implementation
  it 'should return set of user input -1 for valid input' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(1,2,3)
    expected = Set[0,1,2]
    result = player.choose_cards 12
    expect(expected == result).to be_truthy
  end

  # Created 5/31/2022 by Jake McCann
  it 'should return set containing only valid indicies when first input is invalid' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(20,1,2,3)
    expected = Set[0,1,2]
    result = player.choose_cards 12
    expect(expected == result).to be_truthy
  end

  # Created 5/31/2022 by Jake McCann
  it 'should return set containing only valid indicies when second input is invalid' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(1,20,2,3)
    expected = Set[0,1,2]
    result = player.choose_cards 12
    expect(expected == result).to be_truthy
  end

  # Created 5/31/2022 by Jake McCann
  it 'should return set containing only valid indicies when third input is invalid' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(1,2,20,3)
    expected = Set[0,1,2]
    result = player.choose_cards 12
    expect(expected == result).to be_truthy
  end

  # Created 5/31/2022 by Jake McCann
  it 'should print invalid number when invalid input occurs' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(1,2,20,3)
    expect do player.choose_cards 12 end.to output(/Invalid card number/).to_stdout
  end

  # Created 5/31/2022 by Jake McCann
  it 'should print you already entered this card! when user enters same input' do
    player = Player.new
    allow(STDIN).to receive_message_chain(:gets, :chomp!, :to_i).and_return(1,1,2,3)
    expect do player.choose_cards 12 end.to output(/You already entered this card!/).to_stdout
  end
end
