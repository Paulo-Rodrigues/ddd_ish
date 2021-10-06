class PlaceOrderInput
  attr_reader :cpf, :order_items

  def initialize(cpf, order_items)
    @cpf = cpf
    @order_items = order_items
  end
end
