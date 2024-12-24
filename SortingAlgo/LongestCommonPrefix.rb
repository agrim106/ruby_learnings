# Find Longest Common Prefix
# Write a method to find the longest common prefix among an array of strings.
# Hint: Use a vertical scanning approach.

def longest_common_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  strs.each do |str|
    while str.index(prefix) != 0
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end

  prefix
end

# Example usage
strs = ["flower", "flow", "flight"]
puts longest_common_prefix(strs)  # Output: "fl"
