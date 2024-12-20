class Node 
  
  attr_accessor :data , :next

  def initialize(data)
    @data = data
    @next = nil
  end 
end

class LinkedList

  def initialize
    @head = nil
  end

  def insertAtHead(data)
    new_node = Node.new(data)
    if @head == nil 
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end
    
  end 

  def insertAtTail(data)
    new_node = Node.new(data)
    if @head == nil 
      @head = new_node
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end
  end


    def deleteFirst
        if @head == nil
          puts "The list is empty."
          return
        end
        @head = @head.next
    end

  def deleteLast
    if @head == nil
      puts "The list is empty."
      return
    end
    if @head.next == nil
      @head = nil
      return
    end
    current = @head
    prev = nil 
    while current.next != nil
      prev = current
      current = current.next
    end
    prev.next = nil
  end

  def displayList
    current = @head
    while current != nil
      print "#{current.data}->"
      current = current.next
    end
    print "nil\n"
  end

  def deleteByValue(value)
    if @head == nil
      puts "The list is empty."
      return
    end

    if @head.data == value
      @head = @head.next
      puts "Deleted Node with value #{value}"
      return
    end
  
    current = @head
    prev = nil 

    while current != nil 
      if current.data == value
        prev.next = current.next
        puts "Deleted Node with value #{value}"
        return
      end
      prev = current
      current = current.next
    end
    puts "Value #{value} not found!"
  end

  def searchByValue(value)
    current = @head
    position = 1
    while current != nil 
      if current.data == value
        puts "Value #{value} found at position #{position}"
        return
      end
      position += 1
      current = current.next
    end
    puts "Value #{value} not found!"
  end

  def numberOfNodes
    countNodes = 0
    current = @head 
    while current!=nil
      countNodes += 1
      current = current.next
    end
    puts "No of nodes in Linked List :- #{countNodes}"
  end

  def reverseList
    prev = nil 
    current = @head
    while current != nil 
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @head = prev
  end

end

list = LinkedList.new
list.insertAtHead(10)
list.insertAtTail(20)
list.insertAtHead(30)
list.insertAtTail(40)
list.displayList
list.deleteByValue(10)
list.reverseList
list.displayList

# list.numberOfNodes
# list.insertAtHead(50)
# list.displayList
# list.numberOfNodes
# list.deleteByValue(20)
# list.displayList
# list.numberOfNodes

# list.deleteLast
# list.displayList
# list.deleteFirst
# list.displayList

# list.deleteByValue(40)
# list.deleteByValue(10)
# list.deleteByValue(100)
# list.displayList

# list.searchByValue(30)
# list.searchByValue(100)