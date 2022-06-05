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
        game = GameManager.new
        expect do
            game.endGame
        end.to output("GAME ENDED\nScore Breakdown:\nYou had a score of 0\n").to_stdout
    end

    # Tests with user input

end