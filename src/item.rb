class Item
  attr_reader :id, :category, :description, :price

  def initialize(id, category, description, price)
    @id = id
    @category = category
    @description = description
    @price = price
  end
end
