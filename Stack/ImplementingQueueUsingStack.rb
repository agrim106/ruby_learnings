# Implement Queue using Stacks: Implement a first-in, first-out (FIFO) queue using only two stacks. 
# The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).
class MyQueue
  def initialize
    @stack1 = []
    @stack2 = []
  end

  def push(x)
    @stack1.push(x)
  end

  def pop
    peek
    @stack2.pop
  end

  def peek
    if @stack2.empty?
      while !@stack1.empty?
        @stack2.push(@stack1.pop)
      end
    end
    @stack2[-1]
  end

  def empty?
    @stack1.empty? && @stack2.empty?
  end
end

# Example usage:
queue = MyQueue.new
queue.push(1)
queue.push(2)
puts queue.peek  # Output: 1
puts queue.pop   # Output: 1
puts queue.empty?  # Output: false
