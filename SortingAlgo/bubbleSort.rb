# Bubble Sort
# Bubble Sort is a simple comparison-based algorithm where each pair of adjacent elements is compared, and they are swapped if they are in the wrong order. The algorithm keeps iterating through the list until no more swaps are needed.

# Steps of Bubble Sort:
# Compare the first and second elements.
# If the first element is greater than the second, swap them.
# Move to the next pair of adjacent elements and repeat the comparison.
# After each full pass through the list, the largest element will "bubble up" to the end.
# Repeat the process for the remaining elements until the list is sorted.

def bubble_sort(arr)
  n = arr.length
  # Outer loop to go through the array
  n.times do
    swapped = false
    # Inner loop to compare adjacent elements
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        # Swap if the element is greater than the next
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    # If no elements were swapped, the array is sorted
    break unless swapped
  end
  arr
end
arr = [5, 2, 9, 1, 5, 6]
sorted_arr = bubble_sort(arr)
puts sorted_arr.inspect
