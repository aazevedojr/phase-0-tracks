class Room
  attr_reader :name, :width, :length
  attr_accessor :items

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    @items = {}
  end
end