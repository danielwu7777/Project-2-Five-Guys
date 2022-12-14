# File created 5/15/2022 by Noah Moon
require_relative '../lib/deck'
require_relative '../lib/card'
require_relative '../lib/hand_validator'
require 'set'

# Created 5/15/2022 by Noah Moon
# Edited 5/30/2022 by Noah Moon
describe 'Hand_Validator' do

  # Created 5/28/2022 by Noah Moon
  it 'returns true when same second attribute is same' do
    card_set = Set.new
    card_set.add(Card.new 1,2,1,1)
    card_set.add(Card.new 2,2,2,2)
    card_set.add(Card.new 3,2,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/28/2022 by Noah Moon
  it 'returns true when same third attribute is same' do
    deck = Deck.new
    card_set = Set.new
    card_set.add(Card.new 1,1,3,1)
    card_set.add(Card.new 2,2,3,2)
    card_set.add(Card.new 3,3,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/28/2022 by Noah Moon
  it 'returns true when same fourth attribute is same' do
    card_set = Set.new
    card_set.add(Card.new 1,1,1,4)
    card_set.add(Card.new 2,2,2,4)
    card_set.add(Card.new 3,3,3,4)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/28/2022 by Noah Moon
  it 'returns true when many attributes are same' do
    card_set = Set.new
    card_set.add(Card.new 1,2,1,1)
    card_set.add(Card.new 1,2,2,2)
    card_set.add(Card.new 1,2,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/28/2022 by Noah Moon
  it 'returns true when all attributes are same' do
    card_set = Set.new
    card_set.add(Card.new 1,2,3,4)
    card_set.add(Card.new 1,2,3,4)
    card_set.add(Card.new 1,2,3,4)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/28/2022 by Noah Moon
  it 'returns true when all attributes are different' do
    card_set = Set.new
    card_set.add(Card.new 1,1,1,1)
    card_set.add(Card.new 2,2,2,2)
    card_set.add(Card.new 3,3,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_truthy
  end

  # Created 5/30/2022 by Noah Moon
  it 'returns false 1 attribute is not valid' do
    card_set = Set.new
    card_set.add(Card.new 1,1,1,1)
    card_set.add(Card.new 2,2,2,2)
    card_set.add(Card.new 2,3,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_falsey
  end

  # Created 5/30/2022 by Noah Moon
  it 'returns false 2 attributes are not valid' do
    card_set = Set.new
    card_set.add(Card.new 1,2,1,1)
    card_set.add(Card.new 2,3,2,2)
    card_set.add(Card.new 2,3,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_falsey
  end

  # Created 5/30/2022 by Noah Moon
  it 'returns false 3 attributes are not valid' do
    card_set = Set.new
    card_set.add(Card.new 1,2,1,1)
    card_set.add(Card.new 2,3,3,2)
    card_set.add(Card.new 2,3,3,3)

    expect(Hand_Validate.validate_hand? card_set).to be_falsey
    end

    # Created 5/30/2022 by Noah Moon
    it 'returns false all attributes are not valid' do
      card_set = Set.new
      card_set.add(Card.new 1,2,1,2)
      card_set.add(Card.new 2,3,3,1)
      card_set.add(Card.new 2,3,3,1)
      expect(Hand_Validate.validate_hand? card_set).to be_falsey
    end


  end
