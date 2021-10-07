describe ItemRepositoryMemory do
  let(:item_repository_memory) { described_class.new }
  let(:item) { item_repository_memory.find_by_id(1) }

  it '.find_by_id(id)' do
    expect(item.description).to eq('Camisa')
  end

  it '.count' do
    expect(item_repository_memory.count).to eq(3)
  end
end
