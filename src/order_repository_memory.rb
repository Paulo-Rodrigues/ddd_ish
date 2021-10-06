class OrderRepositoryMemory
  attr_reader :orders

  def initialize
    @orders = []
  end

  def save(order)
    @orders << order
  end
end
