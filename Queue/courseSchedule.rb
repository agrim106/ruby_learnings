# Problem: Determine if all courses can be finished given their prerequisites.
# Input: numCourses (integer) and prerequisites (array of pairs).
# Output: true if all courses can be finished, otherwise false.

def can_finish(num_courses, prerequisites)
  graph = Array.new(num_courses) { [] }
  in_degree = Array.new(num_courses, 0)

  prerequisites.each do |course, pre|
    graph[pre] << course
    in_degree[course] += 1
  end

  queue = []
  in_degree.each_with_index { |degree, index| queue << index if degree.zero? }

  completed = 0
  until queue.empty?
    current = queue.shift
    completed += 1
    graph[current].each do |neighbor|
      in_degree[neighbor] -= 1
      queue << neighbor if in_degree[neighbor].zero?
    end
  end

  completed == num_courses
end
