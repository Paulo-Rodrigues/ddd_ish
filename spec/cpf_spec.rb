describe CPF do
  it 'return true for valid CPF' do
    cpf = '976.691.420-65'
    expect(CPF.validate(cpf)).to be_truthy
  end

  it 'return false for invalid CPF' do
    cpf = '111.111.111-11'
    expect(CPF.validate(cpf)).to be_falsey
  end
end
