# Valid Sudoku: Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated.
def is_valid_sudoku(board)
  rows = Array.new(9) { Set.new }
  cols = Array.new(9) { Set.new }
  boxes = Array.new(9) { Set.new }

  board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      next if cell == '.'

      box_index = (i / 3) * 3 + j / 3
      return false if rows[i].include?(cell) || cols[j].include?(cell) || boxes[box_index].include?(cell)

      rows[i].add(cell)
      cols[j].add(cell)
      boxes[box_index].add(cell)
    end
  end
  true
end
