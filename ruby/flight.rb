module Flight
  def take_off(altitute)
    puts "Taking off and ascending until reaching #{altitute}..."
  end
end

class Bird
  def initialize
    puts "A new bird is born!"
  end
  include Flight
end

class Plane
  def initialize
    puts "A new plane is made!"
  end
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(3000)