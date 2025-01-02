def four_sum(nums, target)
  nums.sort!
  result = []

  nums.each_with_index do |num1, i|
    next if i > 0 && nums[i] == nums[i - 1]

    (i + 1).upto(nums.size - 1) do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]

      left, right = j + 1, nums.size - 1
      while left < right
        sum = num1 + nums[j] + nums[left] + nums[right]
        if sum == target
          result << [num1, nums[j], nums[left], nums[right]]
          left += 1 while nums[left] == nums[left - 1] && left < right
          right -= 1 while nums[right] == nums[right + 1] && left < right
          left += 1
          right -= 1
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end
  result
end
