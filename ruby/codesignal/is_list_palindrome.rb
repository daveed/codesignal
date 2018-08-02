# Definition for singly-linked list:
class ListNode
  attr_accessor :value, :next
  def initialize(val)
    @value = val
    @next = nil
  end
end

def isListPalindrome(l)
  current = l
  stack = []

  while current
    stack.prepend(current.value)
    current = current.next
  end

  current = l
  while current
    return false unless current.value == stack.shift
    current = current.next
  end

  true
end
