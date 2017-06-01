require_relative 'room'

class House
  attr_reader :address, :rooms, :area

  def initialize(address)
    @address = address
    @rooms = {}
    @area = 0
  end

  def to_s
    "#{address} (#{area} sq feet)"
  end
end

sf_house = House.new('525 Cole St, San Francisco - CA')
puts sf_house