require_relative "linked_list"

class JungleBeat 

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    elements = data.split(" ")

    elements.each { |element| @list.append(element)}
  end

  def count 
    @list.count
  end
end