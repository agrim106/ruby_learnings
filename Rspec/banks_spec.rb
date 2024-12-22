require_relative 'banks'

RSpec.describe Banks do
  let(:account) { Banks.new(1000) } # Initial balance of 1000

  describe "#check_balance" do
    it "returns the current balance" do
      expect(account.check_balance).to eq(1000)
    end
  end

  describe "#deposit" do
    it "increases the balance by the deposited amount" do
      account.deposit(500)
      expect(account.check_balance).to eq(1500)
    end

    it "raises an error if deposit amount is negative" do
      expect { account.deposit(-100) }.to raise_error("Invalid deposit amount")
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawn amount" do
      account.withdraw(400)
      expect(account.check_balance).to eq(600)
    end

    it "raises an error if withdrawal amount exceeds balance" do
      expect { account.withdraw(2000) }.to raise_error("Insufficient funds")
    end

    it "raises an error if withdrawal amount is negative" do
      expect { account.withdraw(-100) }.to raise_error("Invalid withdrawal amount")
    end
  end
end
