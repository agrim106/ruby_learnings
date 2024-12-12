# 4. Problem Statement: Create a Ruby program that calculates the square root of a number provided by the user.
# If the user provides invalid input, handle the exception and prompt the user to re-enter the value.
# Use nested exception handling to retry the input process if an error occurs.
class SqrRootError < StandardError
end

begin
  puts "Enter a number: "
  number = Integer(gets.chomp)
  if number < 0 
    raise SqrRootError, "Imaginary numbers not allowed in this program."
  end
  sqr = Math.sqrt(number)
  puts "The square Root of this number is : #{sqr}"
  puts "The number is within the valid Range."
  
  rescue SqrRootError => e
    puts "The error is : #{e.message}"
    retry
  rescue Math::DomainError => e
    puts "The error is caused by: #{e.message}"
    retry
  ensure
    puts "This code has been executed."
  end



