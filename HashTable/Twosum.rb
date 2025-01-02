# Two Sum: Given an array of integers, return indices of the two numbers such that they add up to a specific target.
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    complement = target - num
    return [hash[complement], index] if hash.key?(complement)
    hash[num] = index
  end
  []
end
