require_relative '../lib/card'

describe 'Card' do
  it 'constructor args stored in attribute array' do
    card = Card.new(1,1,1,1)
    expected = [1,1,1,1]
    card_attribute_array = card.get_attribute_array
    expect(expected == card_attribute_array).to be_truthy
  end

  it 'to_s converts shading value of 1 to filled' do
    card = Card.new(1,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'filled'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts shading value of 2 to shaded' do
    card = Card.new(2,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'shaded'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts shading value of 3 to empty' do
    card = Card.new(3,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'empty'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts shape value 1 to oval' do
    card = Card.new(1,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'oval'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts shape value 2 to squiggle' do
    card = Card.new(1,2,1,1)
    card_as_string = card.to_s
    proper_translation = 'squiggle'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts shape value 3 to diamond' do
    card = Card.new(1,3,1,1)
    card_as_string = card.to_s
    proper_translation = 'diamond'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts color value 1 to red' do
    card = Card.new(1,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'red'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts color value 2 to blue' do
    card = Card.new(1,1,2,1)
    card_as_string = card.to_s
    proper_translation = 'blue'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts color value 3 to purple' do
    card = Card.new(1,1,3,1)
    card_as_string = card.to_s
    proper_translation = 'purple'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts count value 1 to one' do
    card = Card.new(1,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'one'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts count value 2 to two' do
    card = Card.new(1,1,1,2)
    card_as_string = card.to_s
    proper_translation = 'two'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s converts count value 3 to three' do
    card = Card.new(1,1,1,3)
    card_as_string = card.to_s
    proper_translation = 'three'
    expect(card_as_string).to match proper_translation
  end

  it 'to_s orders attributes to make grammatical sense' do
    card = Card.new(1,1,1,1)
    card_as_string = card.to_s
    proper_translation = 'one filled red oval'
    expect(proper_translation == card_as_string).to be_truthy
  end
end