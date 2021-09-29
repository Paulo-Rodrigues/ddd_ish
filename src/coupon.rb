class Coupon
  attr_reader :code, :percentage

  def initialize(code, percentage)
    @code = code
    @percentage = percentage
  end
end
