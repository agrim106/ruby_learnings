#binary search is an advanced version of sorting algorithm but it works in sorted arrays. It repeatedly divides the searching into two halves.
def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid  # Return index of the target element
    elsif arr[mid] < target
      low = mid + 1  # Search in the right half
    else
      high = mid - 1  # Search in the left half
    end
  end

  return -1  # Target not found
end
arr = [1, 3, 5, 7, 9, 11]
target = 5
result = binary_search(arr, target)
if result != -1
  puts "Element found at index #{result}"
else
  puts "Element not found"
end
