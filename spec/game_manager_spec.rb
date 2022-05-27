# File created 5/26/2022 by Daniel Wu 
require_relative '../lib/game_manager'
require_relative '../lib/player'
# Created 5/26/2022 by Daniel Wu
describe 'GameManager' do
    
    # Created 5/26/2022 by Daniel Wu
    it 'start game in game manager' do
        game = GameManager.new
        game.startGame
        expect(game.getTurn == 1).to be_truthy
    end

    # Created 5/26/2022 by Daniel Wu
    it 'start game and switch from player 1 to player 2' do
        game = GameManager.new
        game.startGame
        allow($stdin).to receive(:gets).and_return('1')
        numPlayers = $stdin.gets
        game.switchTurn
        expect(game.getTurn == 2).to be_truthy
    end

    # Created 5/26/2022 by Daniel Wu
    it 'start game and switch from player 2 to player 1' do
        game = GameManager.new
        game.startGame
        allow($stdin).to receive(:gets).and_return('1')
        numPlayers = $stdin.gets
        game.switchTurn
        game.switchTurn
        expect(game.getTurn == 1).to be_truthy
    end
end