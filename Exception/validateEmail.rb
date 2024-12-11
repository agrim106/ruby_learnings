# 5. Problem Statement: Write a Ruby method validate_email that takes an email address as input 
# and raises an InvalidEmailError (custom exception) if the email does not match a standard email format. 
# Test the method with various inputs and handle the exception in the caller.
class InvalidEmailError < StandardError
end
def validate_email(email)
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  email.match?(email_regex)
  unless email.match?(email_regex)
    raise InvalidEmailError,
    "Invalid Email Id please enter another."
  end
  puts "Valid email."
  return
end

begin
  puts "Enter your email id: "
  email = gets.chomp
  validate_email(email)
rescue  InvalidEmailError => e
  puts "Did Not perform Task! Reason:  #{e.message}"
  retry
end

