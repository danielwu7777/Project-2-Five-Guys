# File created 5/26/2022 by Daniel Wu 
require_relative '../lib/game_manager'
require_relative '../lib/player'
require_relative '../lib/dealer'
require_relative '../lib/deck'
require_relative '../lib/game_table'
require 'stringio'
require 'set'
# Created 5/26/2022 by Daniel Wu
describe 'GameManager' do

    # Tests without user input
#---------------------------------------------------------------------------------------------------------------------
    # Created 6/5/2022 by Daniel Wu
    it 'start game and bypass player input' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(1)
        expect{GameManager.new}.to output(/Welcome to the game of Set!\nGAME START\n/).to_stdout  
    end

    # Created 5/31/2022 by Daniel Wu
    it 'bypass player input and end game with player score of 0' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(0)
        game = GameManager.new
        expect{game.endGame}.to output("GAME ENDED\nScore Breakdown:\nYou had a score of 0\n").to_stdout
    end

    #Tests with user input
#----------------------------------------------------------------------------------------------------------------------
    # Created 6/5/2022 by Daniel Wu
    it 'player enters invalid hand and end game with 0 score' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(4, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,2,3].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([1,2,3].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(false)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Invalid hand!\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 0\n/).to_stdout
    end

    # Created 6/5/2022 by Daniel Wu
    it 'player enters a hand and end game with score of 1' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(4, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,2,3].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([1,2,3].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(true)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Valid hand! 1 point added to your score\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 1\n/).to_stdout
    end

    # Created 6/5/2022 by Daniel Wu
    it 'player enters 2 hands (1 valid, 1 invalid) and end game with score of 1' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(5, 4, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,2,3].to_set, [3,4,5].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([0,0,0].to_set, [2,1,1].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(false, true)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Valid hand! 1 point added to your score\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 1\n/).to_stdout
    end

    # Created 6/5/2022 by Daniel Wu
    it 'player enters 2 hands (both valid) and end game with score of 2' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(4, 3, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,2,3].to_set, [3,4,5].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([1,2,3].to_set, [3,4,5].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(true)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Valid hand! 1 point added to your score\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 2\n/).to_stdout
    end

    # Created 6/5/2022 by Daniel Wu
    it 'player enters 5 hands (all valid) and end game with score of 5' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(7, 6, 5, 4, 3, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,2,3].to_set, [6,10,7].to_set, [4,8,1].to_set, [9,4,3].to_set,[1,3,4].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([1,2,3].to_set, [6,10,7].to_set, [4,8,1].to_set, [9,4,3].to_set,[1,3,4].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(true)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Valid hand! 1 point added to your score\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 5\n/).to_stdout
    end

    # Created 6/5/2022 by Daniel Wu
    it 'player enters 5 hands (2 valid, 3 invalid) and end game with score of 2' do
        allow_any_instance_of(Dealer).to receive_message_chain(:dealt_cards, :size).and_return(7, 6, 5, 4, 3, 0)
        allow_any_instance_of(Player).to receive_message_chain(:choose_cards).and_return([1,6,4].to_set, [6,1,7].to_set, [4,8,11].to_set, [9,4,11].to_set,[7,5,4].to_set)
        allow(Dealer).to receive_message_chain(:retrieve_cards).and_return([1,6,4].to_set, [6,1,7].to_set, [4,8,11].to_set, [9,4,11].to_set,[7,5,4].to_set)
        allow(Hand_Validate).to receive_message_chain(:validate_hand?).and_return(false, false, true, false, true)
        expect do
            game = GameManager.new
            game.endGame
        end.to output(/Valid hand! 1 point added to your score\nNot enough cards left to continue game....\nGAME ENDED\nScore Breakdown:\nYou had a score of 2\n/).to_stdout
    end

end