module Shout
  def self.yell_angrly(words)
    words + "!!!" + " >8-S"
  end
  def self.yell_happily(words)
    words + "!!!" + " (8-D"
  end
end

word = "Kazoo"

puts Shout.yell_angrly(word)
puts Shout.yell_happily(word)