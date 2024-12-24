# 2. Questions
# Sort an Array of 0s, 1s, and 2s (Dutch National Flag Problem)
# Given an array containing only 0s, 1s, and 2s, sort it in-place without using any sorting library or extra space.
# Hint: Use three pointers (low, mid, high).
def sort_array(arr)
  low = 0
  mid = 0
  high = arr.length - 1

  while mid <= high
    if arr[mid] == 0
      arr[low], arr[mid] = arr[mid], arr[low]
      low += 1
      mid += 1
    elsif arr[mid] == 1
      mid += 1
    else
      arr[mid], arr[high] = arr[high], arr[mid]
      high -= 1
    end
  end
end

arr = [2, 0, 1, 2, 0, 1, 2, 1, 0]
sort_array(arr)
puts arr.inspect
