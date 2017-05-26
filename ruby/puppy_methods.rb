class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do
      puts "Woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    p human_years * 7
  end

  def stay(seconds)
    seconds.times do |time|
      puts "Stayed for #{time + 1} seconds"
    end
  end

end

fido = Puppy.new

fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.stay(5)