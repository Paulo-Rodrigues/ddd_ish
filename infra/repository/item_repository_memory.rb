class ItemRepositoryMemory
  def initialize
    @items = [
      Item.new(1, 'Roupas', 'Camisa', 50),
      Item.new(2, 'Roupas', 'Calça', 100),
      Item.new(3, 'Roupas', 'Jaqueta', 250)
    ]
  end

  def find_by_id(id)
    item = @items.find { |found| found.id == id }
    return 'Not Found' unless item

    item
  end

  def count
    @items.count
  end
end
