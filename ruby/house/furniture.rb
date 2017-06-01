class Furniture
  attr_reader :name, :price

  def initialize(name, material, price)
    @name = name
    @material = material
    @price = price
  end

    def to_s
      "#{@material} #{@name} (¥#{price})".capitalize
    end
end