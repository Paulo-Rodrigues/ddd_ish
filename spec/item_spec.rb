describe Item do
  it 'Should create an item' do
    item = described_class.new(1, 'category', 'description', 10)

    expect(item).to be_kind_of(Item)
  end
end
