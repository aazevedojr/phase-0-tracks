#module Shout
#  def self.yell_angrly(words)
#    words + "!!!" + " >8-S"
#  end
#  def self.yell_happily(words)
#    words + "!!!" + " (8-D"
#  end
#end
#
#word = "Kazoo"
#
#puts Shout.yell_angrly(word)
#puts Shout.yell_happily(word)

module Shout
  def yell_angrly(words)
    puts @name + " says: " + words + "!!!" + " >8-S"
    @mood = "angry"
  end
  def yell_happily(words)
    puts @name + " says: " + words + "!!!" + " [8-D"
    @mood = "happy"
  end
  def yell_desperately(words)
     puts @name + " says: " + words + "!!!" + " (8-O"
     @mood = "desperate"
  end
end

module Mood
  def check
    puts "#{@name} is #{@mood}."
  end
end

class Elf
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "fine"
    puts "#{name} the elf is born!"
  end
  include Shout
  include Mood
end

class Wizard
  attr_reader :name, :tier
  attr_accessor :mood
  def initialize(name, tier)
    @name = name
    @tier = tier
    @mood = "fine"
    puts "#{name} the #{tier} is born!"
  end
  include Shout
  include Mood
end

legolas = Elf.new("Legolas")
gandalf = Wizard.new("Gandalf", "Grey")
saruman = Wizard.new("Saruman", "White")

legolas.check
gandalf.check
saruman.check

legolas.yell_desperately("They're taking the hobbits to Isengard")
gandalf.yell_angrly("You shall not pass")
saruman.yell_happily("You have no power here, Gandalf the Grey")

legolas.check
gandalf.check
saruman.check
