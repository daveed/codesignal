# Definition for singly-linked list:
class ListNode
  attr_accessor :value, :next
  def initialize(val)
    @value = val
    @next = nil
  end
end

def removeKFromList(l, k)
  head = ListNode.new(nil)
  head.next = l
  current = head

  while current
    while current.next && current.next.value == k
      current.next = current.next.next
    end
    current = current.next
  end
  head.next
end
