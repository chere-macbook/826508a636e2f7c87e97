class SudokuPuzzle
  attr_accessor :board, :empty_positions

  def initialize(board)
    @board = board
    @empty_positions = []
  end

  def solution
    find_empty_positions
    fill_empty_positions
  end

  private

  def find_empty_positions
    (0...board.length).each do |row|
      (0...board[row].length).each do |col|
        empty_positions << [row, col] if board[row][col].zero?
      end
    end
  end

  def fill_empty_positions
    i = 0
    while i < empty_positions.length
      row, column = row_and_column(i)
      number = board[row][column] + 1
      found = false
      found, i, number = assign_number(found, row, column, number, i)
      unless found
        board[row][column] = 0
        i -= 1
      end
    end
  end

  def row_and_column(index)
    [empty_positions[index][0], empty_positions[index][1]]
  end

  def assign_number(found, row, column, number, index)
    while !found && number <= 9
      if value?(row, column, number)
        found = true
        board[row][column] = number
        index += 1
      else
        number += 1
      end
    end

    [found, index, number]
  end

  def row?(row, number)
    (0...board[row].length).each do |col|
      return false if as_per_number?(row, col, number)
    end

    true
  end

  def col?(col, number)
    (0...board.length).each do |row|
      return false if as_per_number?(row, col, number)
    end

    true
  end

  def block?(row, col, number)
    lower_row = 3 * (row / 3)
    lower_col = 3 * (col / 3)
    upper_row = lower_row + 3
    upper_col = lower_col + 3

    (lower_row...upper_row).each do |r|
      (lower_col...upper_col).each do |c|
        return false if board[r][c] == (number) && as_per_number?(row, col, number)
      end
    end

    true
  end

  def value?(row, col, number)
    row?(row, number) && col?(col, number) && block?(row, col, number)
  end

  def as_per_number?(row, col, number)
    board[row][col] == number
  end
end
