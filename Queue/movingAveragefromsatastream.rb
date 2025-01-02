# Problem: Calculate the moving average of integers in a sliding window.
# Given a stream of integers and a window size, return the moving average for the window.

class MovingAverage
  def initialize(size)
    @size = size
    @queue = []
    @sum = 0
  end

  def next(val)
    @queue << val
    @sum += val
    @sum -= @queue.shift if @queue.size > @size
    @sum / @queue.size.to_f
  end
end
