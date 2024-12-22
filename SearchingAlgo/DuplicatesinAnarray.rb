# Find Duplicate in an Array
# Given an array of n+1 integers where each integer is in the range [1, n], find the duplicate.
# Hint: Use the Floyd’s Tortoise and Hare (Cycle Detection) algorithm.



def find_duplicate(nums)
  # Phase 1: Finding the intersection point of the two runners.
  tortoise = nums[0]
  hare = nums[0]
  
  loop do
    tortoise = nums[tortoise]
    hare = nums[nums[hare]]
    break if tortoise == hare
  end
  
  # Phase 2: Finding the entrance to the cycle.
  tortoise = nums[0]
  
  while tortoise != hare
    tortoise = nums[tortoise]
    hare = nums[hare]
  end

  hare
end

# Example usage:
nums = [3, 1, 3, 4, 2]
puts find_duplicate(nums)  # Output: 3
