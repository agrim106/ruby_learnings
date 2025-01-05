require 'set'

# Problem: Build an expression tree from an infix expression.
# Operators are internal nodes, and operands are leaf nodes.

class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def build_expression_tree(expression)
  precedence = { '+' => 1, '-' => 1, '*' => 2, '/' => 2 }
  operators = []
  operands = []

  expression.each_char do |char|
    next if char == ' '

    if char =~ /\d/
      operands.push(TreeNode.new(char))
    elsif precedence.key?(char)
      while !operators.empty? && precedence[operators.last] >= precedence[char]
        right = operands.pop
        left = operands.pop
        operator = TreeNode.new(operators.pop)
        operator.left = left
        operator.right = right
        operands.push(operator)
      end
      operators.push(char)
    end
  end

  while !operators.empty?
    right = operands.pop
    left = operands.pop
    operator = TreeNode.new(operators.pop)
    operator.left = left
    operator.right = right
    operands.push(operator)
  end

  operands.last
end

# Example Test for Build Expression Tree
expression = "3 + 4 * 2"
tree = build_expression_tree(expression)

# Output the root and its children
puts "Root: #{tree.value}"                 # Should print "+"
puts "Left Child: #{tree.left.value}"      # Should print "3"
puts "Right Child: #{tree.right.value}"    # Should print "*"
puts "Right-Left Child: #{tree.right.left.value}"  # Should print "4"
puts "Right-Right Child: #{tree.right.right.value}" # Should print "2"
