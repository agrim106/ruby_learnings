# Problem: Implement a stack using two queues. The stack should support the following operations:
# - push(x): Push element x onto the stack.
# - pop(): Removes the element on top of the stack and returns it.
# - top(): Get the top element.
# - empty(): Returns true if the stack is empty, false otherwise.

class MyStack
  def initialize
    @queue1 = []
    @queue2 = []
  end

  def push(x)
    @queue2 << x
    @queue2 << @queue1.shift while !@queue1.empty?
    @queue1, @queue2 = @queue2, @queue1
  end

  def pop
    @queue1.shift
  end

  def top
    @queue1.first
  end

  def empty
    @queue1.empty?
  end
end
