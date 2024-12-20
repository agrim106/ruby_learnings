# 1. Questions
# Find First and Last Position of an Element in a Sorted Array
# Given a sorted array, find the first and last position of a given element. Return [-1, -1] if the element is not present.
# Hint: Use Binary Search for optimal performance.

# arr = [10,20,30,40,50,60,70,80,10,100]
def find_first_and_last(nums, target)
  def binary_search(nums, target, left_bias)
    left, right = 0, nums.length - 1
    result = -1
    while left <= right
      mid = (left + right) / 2
      if nums[mid] == target
        result = mid
        if left_bias
          right = mid - 1 # Search left half
        else
          left = mid + 1  # Search right half
        end
      elsif nums[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
    result
  end

  first = binary_search(nums, target, true)
  last = binary_search(nums, target, false)
  [first, last]
end

# Example Usage
nums = [5, 7, 7, 8, 8, 10]
target = 8
puts find_first_and_last(nums, target).inspect # Output: [3, 4]

# target = 6
# puts find_first_and_last(nums, target).inspect # Output: [-1, -1]






