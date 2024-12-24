# 5. String Manipulation Using Sorting/Searching
# Group Anagrams
# Given an array of strings, group anagrams together.
# Hint: Sort each string as the key for grouping.

def group_anagrams(strs)
  anagram_groups = Hash.new { |hash, key| hash[key] = [] }

  strs.each do |str|
    sorted_str = str.chars.sort.join
    anagram_groups[sorted_str] << str
  end

  anagram_groups.values
end

# Example usage
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(strs)
result.each { |group| puts group.inspect }
