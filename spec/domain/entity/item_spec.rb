describe Item do
  it 'Should create an item' do
    item = described_class.new(1, 'category', 'description', 10)

    expect(item).to be_kind_of(Item)
  end

  it 'Should create an item and calculate volume' do
    item = described_class.new(1, 'category', 'description', 10, 100, 30, 10)

    expect(item.volume).to eq(0.03)
  end

  it 'Should create an item and calculate density' do
    item = described_class.new(1, 'category', 'description', 10, 100, 30, 10, 3)

    expect(item.density).to eq(100)
  end

  it 'Should create an item and calculate freight' do
    item = described_class.new(1, 'category', 'description', 10, 100, 30, 10, 3)

    expect(item.freight).to eq(30)
  end

  it 'Should create an item and calculate minimum freight' do
    item = described_class.new(1, 'category', 'description', 30, 10, 10, 10, 0.9)

    expect(item.freight).to eq(10)
  end
end
