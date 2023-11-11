class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BST
  attr_accessor :root, :size

  def initialize()
    @root = nil
    @size = 0
  end

  def insert(value)
    if @root == nil
      @root = Node.new(value)
    else
      curr_node = @root
      previous_node = @root

      while curr_node != nil
        previous_node = curr_node
        if value < curr_node.value
          curr_node = curr_node.left
        else
          curr_node = curr_node.right
        end
      end

      if value < previous_node.value
        previous_node.left = Node.new(value)
      else
        previous_node.right = Node.new(value)
      end
    end

    @size += 1
  end
end

def one_to_seven
  bst = BST.new
  bst.insert(1)
  bst.insert(4)
  bst.insert(7)
  return bst.root
end

def ten_to_fifty
  bst = BST.new
  bst.insert(10)
  bst.insert(40)
  bst.insert(45)
  bst.insert(46)
  bst.insert(50)
  return bst.root
end

def negative_to_positive
  bst = BST.new
  bst.insert(-20)
  bst.insert(-19)
  bst.insert(-17)
  bst.insert(-15)
  bst.insert(0)
  bst.insert(1)
  bst.insert(2)
  bst.insert(10)
  return bst.root
end

if __FILE__ == $PROGRAM_NAME
  # Add your own tests if you want
end
