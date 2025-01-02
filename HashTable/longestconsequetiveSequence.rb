def longest_consecutive(nums)
  return 0 if nums.empty?

  num_set = nums.to_set
  max_length = 0

  num_set.each do |num|
    next if num_set.include?(num - 1)

    current_length = 1
    while num_set.include?(num + current_length)
      current_length += 1
    end
    max_length = [max_length, current_length].max
  end
  max_length
end
