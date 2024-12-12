#Question number 1 of exception Handling. 
# 1. Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division.
# Use exception handling to catch and handle the following errors:
#Division by zero (ZeroDivisionError)
#Invalid input (ArgumentError, e.g., if the user inputs non-numeric values)

  begin
    puts "Enter Two numbers: "
    number1 = Integer(gets.chomp)
    number2 = Integer(gets.chomp)
    div = number1 / number2 
    puts div
  rescue ZeroDivisionError,ArgumentError => e
    puts "Your error is : #{e.message}"
  ensure
    puts "Your Code has been Executed."
  end

  
