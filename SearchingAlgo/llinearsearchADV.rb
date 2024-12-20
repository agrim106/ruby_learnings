# Bonus Challenge: Find All Occurrences
# Modify the method to find all occurrences of the target in the list and return their indices as an array. 
#If the target is not found, return an empty array.
def linear_search_all(arr, target)
  indices = [] # Array to store indices of occurrences
  arr.each_with_index do |element, index|
    indices << index if element == target
  end
  indices # Return the array of indices
end

arr = [10, 15, 20, 15, 30, 40]
target = 15

puts linear_search_all(arr, target).inspect # Output: [1, 3]


##Explanation for it. 

# Initialization:

# indices = []: Create an empty array to store the indices of occurrences.
# Iteration:

# arr.each_with_index: Loop through each element of the array along with its index.
# Condition:

# indices << index if element == target: If the current element matches the target, add its index to the indices array.
# Return:

# Return the indices array, which contains all the positions where the target occurs.
