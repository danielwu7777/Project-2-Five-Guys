# File created 5/26/2022 by Daniel Wu 
require_relative '../lib/GameManager'

# Created 5/26/2022 by Daniel Wu
describe 'GameManager' do
    
    # Created 5/26/2022 by Daniel Wu
    it 'start game in game manager' do
        game = GameManager.startGame
    
        expected = [1,1,1,1]
        card_attribute_array = card.get_attribute_array
        expect(expected == card_attribute_array).to be_truthy
     end
end