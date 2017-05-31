class House
  attr_reader :address, :rooms, :area, :price

  def initialize(address)
    @address = address
    @rooms = {}
    @area = 0
    @price = 0
  end
end