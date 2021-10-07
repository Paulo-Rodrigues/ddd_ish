class Order
  attr_reader :cpf, :freight

  def initialize(cpf)
    @cpf = validate_cpf(cpf)
    @order_items = []
    @freight = 0
  end

  def validate_cpf(value)
    return value if CPF.validate(value)

    raise 'Invalid CPF'
  end

  def add_item(item, quantity)
    @freight += item.freight * quantity
    @order_items << OrderItem.new(item.id, item.price, quantity)
  end

  def apply_coupon(coupon)
    @coupon = coupon
  end

  def total
    order_total = @order_items.reduce(0) { |total, item| total + item.total }
    order_total -= ((order_total * @coupon.percentage) / 100) if apply_coupon(@coupon)
    order_total
  end
end
