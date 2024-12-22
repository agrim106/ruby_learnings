# Merge Two Sorted Arrays
# Given two sorted arrays, merge them into one sorted array without using extra space.
# Hint: Use the two-pointer technique.
def merge_sorted_arrays(arr1, arr2)
    i, j = 0, 0
    while i < arr1.length && j < arr2.length
      if arr1[i] <= arr2[j]
        i += 1
      else
        arr1.insert(i, arr2[j])
        j += 1
        i += 1
      end
    end
    arr1.concat(arr2[j..-1]) if j < arr2.length
  end
  
  arr1 = [1, 3, 5, 7]
  arr2 = [2, 4, 6, 8]
  merge_sorted_arrays(arr1, arr2)
  puts arr1.inspect
  