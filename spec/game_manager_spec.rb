# File created 5/26/2022 by Daniel Wu 
require_relative '../lib/game_manager'
require_relative '../lib/player'
require_relative '../lib/dealer'
require_relative '../lib/deck'
require 'stringio'
# Created 5/26/2022 by Daniel Wu
describe 'GameManager' do
    
    # Created 5/31/2022 by Daniel Wu
    it 'initialize game and end game' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(0)
        game = GameManager.new
        expect do
            game.endGame
        end.to output("GAME ENDED\nScore Breakdown:\nYou had a score of 0\n").to_stdout
    end

    # Tests with user input
    it 'test' do
      allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(0)
      game = GameManager.new
    end
=begin
    # Created 6/4/2022 by Daniel Wu
    it 'End game with a score of 0' do
        player = Player.new
        player.score = 0
        expect {GameManager.endGame}.to output("GAME ENDED\nScore Breakdown:\nYou had a score of 0\n").to_stdout
    end
=end
end