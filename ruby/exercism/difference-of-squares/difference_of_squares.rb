class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..@num).reduce(:+) ** 2
  end

  def sum_of_squares
     (0..@num).inject { |acc, n| acc + n ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end
