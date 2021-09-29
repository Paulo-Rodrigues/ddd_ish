class OrderItem
  attr_reader :id_item, :price, :quantity

  def initialize(id_item, price, quantity)
    @id_item = id_item
    @price = price
    @quantity = quantity
  end

  def total
    price * quantity
  end
end
