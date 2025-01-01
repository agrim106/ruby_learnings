# Next Greater Element I: You are given two integer arrays nums1 and nums2 where nums2 is a permutation of nums1. 
#Find the array ans such that ans[i] is equal to the next greater element of nums1[i] in nums2.
#If there is no next greater element, then the answer for this element is -1.
def nextGreaterElements(nums1, nums2)
  #create a hash map to store the next greater element for each number in nums2
  next_greater = {}
  stack = []

  nums2.each do |num| 
    while !stack.empty? && stack.last < num 
      next_greater[stack.pop] = num 
    end 
    stack.push(num)
  end
    # For the remaining elements in the stack, there is no next greater element
    stack.each { |num| next_greater[num] = -1 }

    # Map the result for nums1 based on the hash map
    nums1.map { |num| next_greater[num] }
  end 
  puts nextGreaterElements([4, 1, 2], [1, 3, 4, 2]).inspect  # Output: [-1, 3, -1]
puts nextGreaterElements([2, 4], [1, 2, 3, 4]).inspect 