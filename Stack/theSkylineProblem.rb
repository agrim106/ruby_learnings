# The Skyline Problem: Given an array of buildings where each building is represented by a triplet of integers [Li, Ri, Hi], 
#representing the left and right x-coordinates of the building and its height, 
#respectively. Return the skyline formed by these buildings collectively.
def get_skyline(buildings)
  events = []
  buildings.each do |(l, r, h)|
    events << [l, -h, r]
    events << [r, 0, 0]
  end

  events.sort!
  heap = [[0, Float::INFINITY]]
  result = []

  events.each do |(x, neg_h, r)|
    while heap[0][1] <= x
      heap.shift
    end
    if neg_h != 0
      heap.unshift([neg_h, r])
      heap.sort_by! { |h, _| h }
    end
    max_h = -heap[0][0]
    if result.empty? || result[-1][1] != max_h
      result << [x, max_h]
    end
  end

  result
end

# Example usage:
buildings = [[2, 9, 10], [3, 7, 15], [5, 12, 12], [15, 20, 10], [19, 24, 8]]
p get_skyline(buildings)
