class Item
  attr_reader :id, :category, :description, :price, :width, :height, :length, :weight

  def initialize(id, category, description, price, width=0, height=0, length=0, weight=0)
    @id = id
    @category = category
    @description = description
    @price = price
    @width = width
    @height = height
    @length = length
    @weight = weight
  end

  def volume
    width.to_f/100 * height.to_f/100 * length.to_f/100
  end

  def density
    weight.to_f / volume
  end

  def freight
    freight = 1000 * volume * (density/100)
    freight > 10 ? freight : 10
  end
end
