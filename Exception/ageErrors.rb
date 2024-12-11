# 2. Problem Statement: Create a custom exception class called AgeError.
# Write a Ruby program that takes a user's age as input and raises an AgeError if the input is not between 18 and 100. 
# Handle the exception and provide a user-friendly error message.
class AgeError < StandardError
end

begin
  puts "Enter your Age : "
  age = Integer(gets.chomp)
  if age < 18 || age > 100
     raise AgeError
      "Age must be between 18 and 100."
     end
      puts "Your age is within the valid range."
    
    rescue AgeError => e 
      puts "The error is: #{e.message}" 
    ensure
       puts "This code has been executed."
       end