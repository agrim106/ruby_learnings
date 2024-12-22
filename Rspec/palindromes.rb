# 3. Write an RSpec test for a method palindrome? that returns true if a given string is a palindrome and false otherwise. 
#Include tests for edge cases such as empty strings and special characters.
def palindrome?(string)
  # Remove special characters and spaces, and downcase the string
  cleaned_string = string.gsub(/[^a-zA-Z0-9]/, "").downcase
  # Check if the cleaned string is equal to its reverse
  cleaned_string == cleaned_string.reverse
end

