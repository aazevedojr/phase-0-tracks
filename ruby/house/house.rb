require_relative 'room'

class House
  attr_reader :address, :rooms, :area

  def initialize(address)
    @address = address
    @rooms = []
    @area = 0
  end

  def add_room(room_name, room_width, room_length)
    rooms << Room.new(room_name, room_width, room_length)
    @area += room_width * room_length
  end

  def to_s
    "#{address} (#{area} sq meters)"
  end
end