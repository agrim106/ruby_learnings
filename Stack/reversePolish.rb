# # Evaluate Reverse Polish Notation: 
# #Evaluate the value of an arithmetic expression in Reverse Polish Notation.

# def reversePolishs(tokens)
#   stack = [] 
#   tokens.each do |token|
#     if %w[+ - * /].include?(token)

# #        %w[+ - * /]:

# # This is a shorthand in Ruby to create an array of strings: ["+", "-", "*", "/"].
# # So, %w[+ - * /] is equivalent to writing ["+", "-", "*", "/"].
# # .include?(token):

# # This checks if the array ["+", "-", "*", "/"] contains the current token.
# # If token is an operator (e.g., +, -, *, or /), this will return true.
# # Otherwise, it will return false.

# #Perform the operation 
# b = stack.pop 
# a = stack.pop 
# result = case token 
#           when '+' then a + b
#           when '-' then a - b 
#           when '*' then a * b 
#           when '/' then (a.to_f / b).to_i
#             stack.push(result)
#           else 
#             stack.push(token.to_i)
#           end 
#         end 

#         stack.pop 
#       end 
#     end
#       #Test Cases. 
#       puts reversePolishs(["2","1","*","3","*"])
      

#######CHATGPT CODE############
def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    if %w[+ - * /].include?(token)
      # Perform the operation
      b = stack.pop
      a = stack.pop
      result = case token
               when '+' then a + b
               when '-' then a - b
               when '*' then a * b
               when '/' then (a.to_f / b).to_i # Ensure integer division as in typical RPN
               end
      stack.push(result)
    else
      # Push numbers to the stack
      stack.push(token.to_i)
    end
  end

  stack.pop
end

# Test cases
puts eval_rpn(["2", "1", "+", "3", "*"])       # Output: 9
puts eval_rpn(["4", "13", "5", "/", "+"])      # Output: 6
puts eval_rpn(["10", "6", "9", "3", "/", "-", "*", "17", "+", "5", "+"]) # Output: 22
