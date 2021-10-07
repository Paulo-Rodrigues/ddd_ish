class PlaceOrder
  attr_reader :item_repository, :order_repository

  def initialize(item_repository, order_repository)
    @item_repository = item_repository
    @order_repository = order_repository
  end

  def execute(input)
    order = Order.new(input.cpf)
    input.order_items.each do |order_item|
      item = @item_repository.find_by_id(order_item[:id])
      order.add_item(item, order_item[:quantity])
    end
    order_repository.save(order)
    { total: order.total }
  end
end
