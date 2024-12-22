def find_kth_largest(arr, k)
  arr.sort![-k]
end

arr = [3, 2, 1, 5, 6, 4]
k = 2
puts find_kth_largest(arr, k)
