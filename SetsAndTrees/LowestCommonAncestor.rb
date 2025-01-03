require 'set'

# Problem: Find the lowest common ancestor of two nodes in a binary tree.

class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def find_lca(root, node1, node2)
  return root if root.nil? || root == node1 || root == node2

  left = find_lca(root.left, node1, node2)
  right = find_lca(root.right, node1, node2)

  return root if left && right
  left || right
end

# Example Test for Lowest Common Ancestor
root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)

node1 = root.left   # Node with value 5
node2 = root.right  # Node with value 1

lca = find_lca(root, node1, node2)
puts "Lowest Common Ancestor: #{lca.value}" # Should print "3"
