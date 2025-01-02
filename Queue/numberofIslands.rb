# Problem: Return the number of islands in a 2D binary grid.
# A group of connected '1's forms an island. Connectivity is horizontal or vertical.

def num_islands(grid)
  return 0 if grid.empty?

  rows = grid.size
  cols = grid[0].size
  count = 0

  dfs = lambda do |r, c|
    return if r < 0 || c < 0 || r >= rows || c >= cols || grid[r][c] == '0'

    grid[r][c] = '0'
    dfs.call(r + 1, c)
    dfs.call(r - 1, c)
    dfs.call(r, c + 1)
    dfs.call(r, c - 1)
  end

  (0...rows).each do |r|
    (0...cols).each do |c|
      if grid[r][c] == '1'
        count += 1
        dfs.call(r, c)
      end
    end
  end

  count
end
