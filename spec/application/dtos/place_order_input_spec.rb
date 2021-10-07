describe PlaceOrderInput do
  let(:cpf) { '111.111.111-11' }
  let(:order_items) { [{ id: 1, quantity: 1 }, { id: 2, quantity: 1 }] }
  let(:dto) { PlaceOrderInput.new(cpf, order_items) }

  it 'should return a dto with cpf attr' do
    expect(dto.cpf).to eq(cpf)
  end

  it 'should return a dto with order items' do
    expect(dto.order_items.size).to eq(2)
  end
end
