describe OrderRepositoryMemory do
  let(:repo) { described_class.new }

  it '.save' do
    order = instance_double('Order')
    repo.save(order)
    expect(repo.orders.size).to eq(1)
  end
end
