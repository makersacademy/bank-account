require 'bank'

describe Bank do
  describe '#count_overdrawn_accounts' do
    context 'no overdrawn accounts' do
      it 'return 0' do

        accounts = [BankAccount.new]
        bank = Bank.new(accounts)

        expect(bank.count_overdrawn_accounts).to eq(0)
      end
    end

    context '1 overdrawn account, 1 account not overdrawn' do
      it 'return 1' do
        overdrawn_account = BankAccount.new
        overdrawn_account.withdraw(10)

        account = BankAccount.new
    
        accounts = [overdrawn_account, account]

        bank = Bank.new(accounts)

        expect(bank.count_overdrawn_accounts).to eq(1)

      end

    end
  end
end
