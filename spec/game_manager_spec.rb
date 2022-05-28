# File created 5/26/2022 by Daniel Wu 
require_relative '../lib/game_manager'
require_relative '../lib/player'
require 'stringio'
# Created 5/26/2022 by Daniel Wu
describe 'GameManager' do
    
    # Created 5/26/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Edited to reflect changes to game_manager
    it 'initialize game and check for player turn' do
        allow($stdin).to receive(:gets).and_return("1")
        game = GameManager.new
        expect(game.playerTurn == 1).to be_truthy
    end

    # Created 5/26/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Edited to reflect changes to game_manager
    it 'initialize game and switch from player 1 to player 2' do
        allow($stdin).to receive(:gets).and_return("2")
        game = GameManager.new
        game.switchTurn
        expect(game.playerTurn == 2).to be_truthy
    end

    # Created 5/26/2022 by Daniel Wu
    # Edited 5/27/2022 by Daniel Wu: Edited to reflect changes to game_manager
    it 'initialize game and switch from player 2 to player 1' do
        allow($stdin).to receive(:gets).and_return("2")
        game = GameManager.new
        game.switchTurn
        game.switchTurn
        expect(game.playerTurn == 1).to be_truthy
    end

    # Tests for invalid input of number of players
end