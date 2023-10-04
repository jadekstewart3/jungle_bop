require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    new_node.data
  end

  def count
    current_node = @head
     count = 0 
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    current_node = @head
    result = " "
    while current_node
      result += "#{current_node.data} "
      current_node = current_node.next_node
    end
    result.strip
  end
end