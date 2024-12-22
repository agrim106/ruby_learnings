# Maximum Subarray (Kadane’s Algorithm)
# Find the contiguous subarray with the maximum sum.

def max_subarray_sum(arr)
  max_so_far = arr[0]
  max_ending_here = arr[0]

  (1...arr.length).each do |i|
    max_ending_here = [arr[i], max_ending_here + arr[i]].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  max_so_far
end

# Example usage
arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_subarray_sum(arr)  # Output: 6 (subarray [4, -1, 2, 1])
