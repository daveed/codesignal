# Definition for singly-linked list:
# class ListNode
#   attr_accessor :value, :next
#   def initialize(val)
#     @value = val
#     @next = nil
# end
#

def addTwoHugeNumbers(a, b)
  int_a, int_b = "", ""
  current_a = a
  current_b = b
  while current_a
    int_a << current_a.value
    current_a = curent_a.next
  end
  int_a.to_i
end

# a = [9876, 5432, 1999] and b = [1, 8001]
# all elements of the list must be 4 digits except the last can be less
# first element
# last element of the list can be less than 4 digits


# For a = [9876, 5432, 1999] and b = [1, 8001], the output should be
# addTwoHugeNumbers(a, b) = [9876, 5434, 0].
# Explanation: 987654321999 + 18001 = 987654340000.


# For a = [123, 4, 5] and b = [100, 100, 100], the output should be
# addTwoHugeNumbers(a, b) = [223, 104, 105].
# Explanation: 12300040005 + 10001000100 = 22301040105.

