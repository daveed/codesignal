class Deque
  Node = Struct.new(:val, :pre, :nex)

  def initialize
    @first = @last = nil
  end

  def push(val)
    node      = Node.new(val, @last, nil)
    @last.nex = node if @last
    @last     = node
    @first  ||= node
  end

  def pop
    val       = @last.val
    @last     = @last.pre
    @last.nex = nil if @last
    val
  end

  def shift
    val        = @first.val
    @first     = @first.nex
    @first.pre = nil if @first
    val
  end

  def unshift(val)
    node       = Node.new(val, nil, @first)
    @first.pre = node if @first
    @first     = node
    @last    ||= node
  end
end
