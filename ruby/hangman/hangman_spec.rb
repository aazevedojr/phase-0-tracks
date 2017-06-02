require_relative 'hangman'

describe do
  it 'validates the word entered' do
    expect(input_validator('Hello'.upcase.chars)).to eq true
    expect(input_validator('Hel lo'.upcase.chars)).to eq false
    expect(input_validator('H3110'.upcase.chars)).to eq false
    expect(input_validator('Héllô'.upcase.chars)).to eq false
  end
end

describe Hangman do
  let (:input) {'Hello'.upcase.chars}
  let (:game) {Hangman.new(input)}

  it 'displays partial result' do
    input = 'L'.chars
    game.guess(input)
    game.update
    game.count_turn
    expect(game.feedback).to eq '_ _ L L _'
  end

end
