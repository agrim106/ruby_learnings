# Find the Peak Element
# A peak element is an element that is greater than its neighbors. Find the index of any peak element in an array.
# Hint: Use Binary Search for a logarithmic solution.
#,Example: [1, 2, 3, 1] → Output: 2 (index of 3).
def find_peak_element(nums)
  left, right = 0, nums.length - 1
  while left < right
    mid = (left + right) / 2
    if nums[mid] > nums[mid + 1]
      right = mid # left jaane ke liye
    else
      left = mid + 1 #right jaane ke liye
    end
  end
  left 
end

nums = [10,20,30,10,40,50,60]
puts find_peak_element(nums) 

nums = [10,20,10,30,50,60,40]
puts find_peak_element(nums) 
