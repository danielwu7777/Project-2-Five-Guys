# File created 6/1/2022 by Noah Moon
require_relative '../lib/player'

# Created 5/31/2022 by Noah Moon
describe 'player' do

  # Created 5/31/2022 by Noah Moon
  it 'example' do
    dealer = Dealer.new
    expect(1).to be_truthy
  end
end


=begin

#test
player1 = Player.new "Hao",50
player2 = Player.new

#test of chooseCards
puts player1.choose_cards.to_s

#test of name methods
puts player1.get_name   #expected print: Hao
puts player2.get_name   #expected print: John
player1.set_name!
puts player1.get_name   #expected print: John
player1.set_name! "nanren"
puts player1.get_name   #expected print: nanren

#test of score methods
puts player1.get_score          #expected score: 50
puts player2.get_score          #expected score: 0
player1.set_score!
puts player1.get_score          #expected score: 0
player1.set_score! 123
puts player1.get_score          #expected score: 123
player1.score_increment!        #expected score: 124
puts player1.get_score
player1.score_increment! 100    #expected score: 224
puts player1.get_score


=end