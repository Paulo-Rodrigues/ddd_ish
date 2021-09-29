describe OrderItem do
  it 'Should calculate total price from an order item' do
    order_item = described_class.new(1, 25, 4)

    expect(order_item.total).to eq(100)
  end
end
