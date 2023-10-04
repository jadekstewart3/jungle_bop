require "pry"
require "./lib/linked_list"

RSpec.describe LinkedList do 

  let(:linked_list) { LinkedList.new }
  describe "initialize" do 
    it "exists" do 
      expect(linked_list).to be_a(LinkedList)
    end

    it "has no head when it is created" do 
      expect(linked_list.head).to eq(nil)
    end
  end

  describe "append" do 
    it "can apphend data to itself" do 
      expect(linked_list.append("doop")).to eq("doop")
      expect(linked_list.head.next_node).to eq(nil)

      expect(linked_list.append("deep")).to eq("deep")
      expect(linked_list.head.next_node).to be_a(Node)
    end
  end

  describe "count" do 
    it "counts the number of nodes it contains" do 
      linked_list.append("doop")

      expect(linked_list.count).to eq(1)

      linked_list.append("deep")

      expect(linked_list.count).to eq(2)
    end
  end

  describe "to_string" do 
    it "returns the data of each node" do 
      linked_list.append("doop")

      expect(linked_list.to_string).to eq("doop")

      linked_list.append("deep")

      expect(linked_list.to_string).to eq("doop deep")
    end
  end

  describe "prepend" do 
    it "can add a node to the beginning of the list" do 
      linked_list.append("plop")

      expect(linked_list.to_string).to eq("plop")

      linked_list.append("suu")
      linked_list.prepend("dop")

      expect(linked_list.to_string).to eq("dop plop suu")
      expect(linked_list.count).to eq(3)
    end
  end

  describe "insert" do 
    it "inserts an element at the desired position" do 
      linked_list.append("plop")
      linked_list.append("suu")
      linked_list.prepend("dop")

      expect(linked_list.to_string).to eq("dop plop suu")
      
      linked_list.insert(1, "woo")

      expect(linked_list.to_string).to eq("dop woo plop suu")
    end
  end
end