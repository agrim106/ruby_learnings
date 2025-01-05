# Problem: Find the elements that are present in both arrays.
# Solution Approach:
# 1. Convert the first array to a set.
# 2. Iterate through the second array:
#    a. If the current element is in the set, add it to the common elements array.
# 3. Return the common elements array.

require 'set'


def find_common_elements(array1, array2)
  set = array1.to_set
  common_elements = []

  array2.each do |element|
    common_elements << element if set.include?(element)
  end

  common_elements
end

# Example Usage:
puts find_common_elements([1, 2, 3, 4], [3, 4, 5, 6]).inspect # Output: [3, 4]
puts find_common_elements(['a', 'b', 'c'], ['c', 'd', 'e']).inspect # Output: ['c']
