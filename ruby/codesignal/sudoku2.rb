def sudoku2(grid)
  valid_grid?(grid)
end

def valid_grid?(grid)
  linear_check?(grid) && square_check?(grid)
end

def linear_check?(grid)
  validate_rows(grid) && validate_rows(grid.transpose)
end

def validate_rows(grid)
  grid.each do |row|
    arr = row.reject{ |i| i == "." }
    return false if arr.uniq != arr
  end
  true
end

def square_check?(grid)
  rows = [[]]
  [0,3,6].each do |i|
    rows[i] = grid[i].slice(i, 3) + grid[i + 1].slice(i, 3) + grid[i + 2].slice(i, 3)
    rows[i + 1] = grid[i].slice(3, 3) + grid[i + 1].slice(3, 3) + grid[i + 2].slice(3, 3)
    rows[i + 2] = grid[i].slice(6, 3) + grid[i + 1].slice(6, 3) + grid[i + 2].slice(6, 3)
  end
  validate_rows(rows)
end
