# Problem: Determine if all characters in a string are unique.
# Solution Approach:
# 1. Use a set to store encountered characters.
# 2. Iterate through the string:
#    a. If the character is already in the set, return false (duplicates found).
#    b. Otherwise, add the character to the set.
# 3. If the loop completes without finding duplicates, return true.

require 'set'


def unique_characters?(string)
  seen = Set.new
  string.each_char do |char|
    return false if seen.include?(char)
    seen.add(char)
  end
  true
end

# Example Usage:
puts unique_characters?("hello") # Output: false
puts unique_characters?("world") # Output: true
