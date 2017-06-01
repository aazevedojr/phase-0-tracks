require_relative 'furniture'

class Room
  attr_reader :name, :width, :length, :furniture

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    @furniture = []
  end

  def add_item(item_name, item_material, item_price)
      furniture << Furniture.new(item_name, item_material, item_price)
  end

  def to_s
    "#{@name} (#{width} x #{length})".capitalize
  end
end