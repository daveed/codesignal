class Triangle

  def initialize(num)
  end

  def rows
    [[1]] if @num == 1
    [[1], [1,1]] if @num == 2

  end

end


# array index
#     1
#    1, 1
#   1, 2, 1
#  1, 3, 3, 1
# 1, 4, 6, 4, 1
#
# node
# val
# left
# right
#
#
# first
# last
#
# current
# first..last
# first, cur + pre, ..., last
#
#
#
