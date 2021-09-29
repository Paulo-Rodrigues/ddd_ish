describe Order do
  it 'Should do a order with valid CPF' do
    cpf = '243.186.330-12'

    expect(Order.new(cpf).cpf).to eq(cpf)
  end

  it 'Should not do order with an invalid CPF' do
    cpf = '111.111.111-11'

    expect{ Order.new(cpf) }.to raise_error(RuntimeError)
  end

  it 'Should do a order with 3 items' do
    cpf = '243.186.330-12'
    order = described_class.new(cpf)

    order.add_item(Item.new(1, 'Roupas', 'Camisa', 50), 2)
    order.add_item(Item.new(2, 'Roupas', 'Calça', 100), 1)
    order.add_item(Item.new(3, 'Roupas', 'Jaqueta', 250), 1)

    expect(order.total).to eq(450)
  end

  it 'Should create a order with discount coupon' do
    cpf = '243.186.330-12'
    order = described_class.new(cpf)

    order.add_item(Item.new(1, 'Roupas', 'Camisa', 50), 2)
    order.add_item(Item.new(2, 'Roupas', 'Calça', 100), 1)
    order.add_item(Item.new(3, 'Roupas', 'Jaqueta', 250), 1)

    order.apply_coupon(Coupon.new('CouponCode', 20))

    expect(order.total).to eq(360)
  end
end
