require 'bank_account'
describe BankAccount do
  it 'can create an instance of bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_kind_of(BankAccount)
  end

  it 'can respond to balance' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:balance)
  end

  it 'should show a zero balance initially' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end

  it 'should respond to deposit' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:deposit).with(1).argument
  end

  it 'should update the balance when deposit is called' do
    bank_account = BankAccount.new
    bank_account.deposit(10)
    expect(bank_account.balance).to eq(10)
  end

  it 'should respond to withdraw' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:withdraw).with(1).argument
  end

  it 'should be able to withdraw money' do
    bank_account = BankAccount.new
    bank_account.deposit(10)
    bank_account.withdraw(4)
    expect(bank_account.balance).to eq(6)
  end
end
