describe PlaceOrder do
  it 'Should place an order' do
    order_items =  [
      {
        id: 1,
        quantity: 1
      },
      {
        id: 2,
        quantity: 1
      },
      {
        id: 3,
        quantity: 3
      }
    ]
    input = PlaceOrderInput.new('243.186.330-12', order_items)
    place_order = PlaceOrder.new(ItemRepositoryMemory.new, OrderRepositoryMemory.new)
    output = place_order.execute(input)

    expect(output[:total]).to eq(900)
  end
end
