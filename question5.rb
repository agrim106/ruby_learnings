#5. Create a method in Ruby that takes an array of strings and a string as input.
# The method should return the index of the string in the array and exit immediately if a match is found. 
#If no match is found, return -1.
def matchString(array,inputString)
  array.each.with_index do |string,index|
    if string == inputString
      return index
    end
  end
  return -1
end
array = gets.split
inputString = gets.chomp
result = matchString(array,inputString)
if result == -1
  puts "-1"
else
  puts "Match found at index #{result}"
end