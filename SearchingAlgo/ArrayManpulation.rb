# 3. Array Manipulation
# Find the Missing Number
# Given an array containing n distinct numbers in the range [0, n], find the missing number.
# Hint: Use XOR or the sum formula for optimal performance. 

def find_missing_number(arr)
  n = arr.length
  total_sum = (n * (n + 1)) / 2
  array_sum = arr.sum
  total_sum - array_sum
end

arr = [3, 0, 1]
puts find_missing_number(arr)  # Output: 2
