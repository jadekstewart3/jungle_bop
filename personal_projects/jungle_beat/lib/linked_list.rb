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

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node    
  end

  def insert(position, data)
    if position == 0
      prepend(data)
    else
      new_node = Node.new(data)
      current_node = @head
      (position - 1).times do 
        if current_node.nil?
          raise "Position out of range!"
        end
        current_node = current_node.next_node
      end
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
      require 'pry'; binding.pry
    end
  end
end