require_relative 'hangman'

describe Hangman do
  let (:game) {Hangman.new('Hello')}

  it 'validates the secret word' do
    expect(Hangman.new('Hello'.upcase).input_validator).to eq true
    expect(Hangman.new('Hel lo'.upcase).input_validator).to eq false
    expect(Hangman.new('H3110'.upcase).input_validator).to eq false
    expect(Hangman.new('Héllô'.upcase).input_validator).to eq false
  end

  it 'displays partial result' do
    expect(game.feedback).to eq '_ _ L L _'
  end

end