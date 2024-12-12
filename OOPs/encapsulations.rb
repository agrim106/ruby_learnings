# 1. Encapsulation

# Problem Statement 1: Bank Account Management System
# Create a class BankAccount that encapsulates the details of a bank account. The class should have the following features:
# An instance variable balance (private) to store the current balance.
# Methods to deposit(amount) and withdraw(amount) with proper validation to ensure the balance doesn't go negative.
# A method display_balance that returns the current balance (public).
# Create an object of BankAccount, perform some deposit and withdrawal operations, and display the balance.
class BankAccountMangement
  def initialize(intial_balance = 0) #Initialize a value.
    @balance = intial_balance
  end
   #Now creating a method for depositing money.
   def deposit(amount)
    if amount > 0
      @balance += amount 
      puts "deposited amount is : #{amount} , Total Balance: #{@balance}"
    else
      puts "You are in debt."
    end
  end
  #Now an method for withdrawing money
  def withdraw(amount)
    if amount > 0
      if amount <= @balance 
      @balance -= amount
      puts "withdrawn rupees #{amount} from #{@balance}"
      else
        puts "Low Balance."
      end
    else
      puts "Zero Balance."
    end
  end

  #Now a method for displaying balance
  def display_balance
    puts "Your current Balance is : #{@balance}"
    @balance
  end
end

#Now dispalying and adding balance + withdrawing balance.
accounts = BankAccountMangement.new(7000)
accounts.deposit(200)
accounts.withdraw(809)
accounts.display_balance