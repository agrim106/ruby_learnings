def group_anagrams(strs)
  anagram_map = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    sorted = str.chars.sort.join
    anagram_map[sorted] << str
  end

  anagram_map.values
end
