describe Coupon do
  it 'Deve criar um novo cupom de desconto' do
    coupon = Coupon.new('VALE20', 20)

    expect(coupon.code).to eq('VALE20')
  end
end
