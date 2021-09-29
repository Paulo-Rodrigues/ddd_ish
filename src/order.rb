class Order
  attr_reader :cpf

  def initialize(cpf)
    @cpf = validate_cpf(cpf)
    @order_items = []
  end

  def validate_cpf(value)
    return value if CPF.validate(value)
    raise 'Invalid CPF'
  end

  def add_item(item, quantity)
    @order_items << OrderItem.new(item.id, item.price, quantity)
  end

  def apply_coupon(coupon)
    @coupon = coupon
  end

  def total
    total = @order_items.reduce(0) { |total, item| total += item.total }
    if apply_coupon(@coupon)
      total -= ((total * @coupon.percentage) / 100)
    end
    total
  end
end
