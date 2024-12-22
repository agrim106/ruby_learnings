# 4. Matrix/2D Array
# Rotate a Matrix by 90 Degrees
# Given an n x n 2D matrix, rotate the matrix by 90 degrees clockwise in-place.
# Hint: First transpose the matrix, then reverse each row.

def rotate_matrix(matrix)
  n = matrix.length

  # Transpose the matrix
  for i in 0...n
    for j in i...n
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end

  # Reverse each row
  for i in 0...n
    matrix[i].reverse!
  end
end

# Example usage
matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

rotate_matrix(matrix)
matrix.each { |row| puts row.inspect }
