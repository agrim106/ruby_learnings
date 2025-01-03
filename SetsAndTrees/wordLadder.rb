require 'set'

# Problem: Find the shortest sequence of words transforming start_word to end_word,
# differing by only one letter at each step.

def word_ladder(start_word, end_word, word_list)
  word_set = word_list.to_set
  return 0 unless word_set.include?(end_word)

  queue = [[start_word, 1]]

  until queue.empty?
    current_word, steps = queue.shift

    return steps if current_word == end_word

    current_word.chars.each_with_index do |char, index|
      ('a'..'z').each do |replacement|
        next if replacement == char

        new_word = current_word.dup
        new_word[index] = replacement

        if word_set.include?(new_word)
          queue.push([new_word, steps + 1])
          word_set.delete(new_word)
        end
      end
    end
  end

  0
end

# Example Test for Word Ladder
start_word = "hit"
end_word = "cog"
word_list = ["hot", "dot", "dog", "lot", "log", "cog"]

steps = word_ladder(start_word, end_word, word_list)
puts "Steps to transform: #{steps}" # Should print "5"
