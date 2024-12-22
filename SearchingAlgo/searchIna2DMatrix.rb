# Search in a 2D Matrix
# Given a matrix where each row is sorted and the first element of each row is greater than the last element of the previous row, search for a target value efficiently.
# Hint: Treat the matrix as a 1D array for Binary Search.
def search_matrix(matrix, target)
  return false if matrix.empty?

  rows = matrix.length
  cols = matrix[0].length
  left, right = 0, rows * cols - 1

  while left <= right
    mid = (left + right) / 2
    mid_value = matrix[mid / cols][mid % cols]

    if mid_value == target
      return true
    elsif mid_value < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  false
end

# Example usage
matrix = [
  [1, 3, 5, 7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]

target = 16
puts search_matrix(matrix, target)  # Output: true

target = 13
puts search_matrix(matrix, target)  # Output: false
