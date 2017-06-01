require_relative 'furniture'

class Room
  attr_reader :name, :width, :length, :furniture

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    @furniture = []
  end

  def add_furniture(room, furniture)
      room.furniture << furniture
  end

  def to_s
    "#{@name} (#{width} x #{length})".capitalize
  end
end

living_room = Room.new('living room', 20, 30)
puts living_room