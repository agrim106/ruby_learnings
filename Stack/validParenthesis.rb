# Stack Problems
# Valid Parentheses: Given a string containing just the characters '(', ')', '{', '}', '[' and ']', 
#determine if the input string is valid.

def valid_parentheses(str)
  stack = []
  pairs = {')' => '(' , '}' => '{' , ']' => '[' }
    #The reason for writing the pairs in the opposite direction (closing parentheses as keys and opening parentheses as values) is because the algorithm works by encountering a closing parenthesis first (when it's being checked)
    # and then needing to match it with the corresponding opening parenthesis.

    str.each_char do |char| 
      if pairs.values.include?(char)
        stack.push(char)
      elsif pairs.keys.include?(char)
        if stack.empty? || stack.pop != pairs[char]
          return false 
        end 
      end 
    end 
    stack.empty?
  end 

  puts valid_parentheses("()")
  puts valid_parentheses("()[]{}")
  puts valid_parentheses("[{([)}]")