class Banks
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def check_balance
    @balance
  end

  def deposit(amount)
    raise "Invalid deposit amount" if amount <= 0

    @balance += amount
  end

  def withdraw(amount)
    raise "Invalid withdrawal amount" if amount <= 0
    raise "Insufficient funds" if amount > @balance

    @balance -= amount
  end
end
