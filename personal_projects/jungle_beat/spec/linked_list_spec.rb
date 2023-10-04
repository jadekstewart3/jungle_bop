require "pry"
require "./lib/linked_list"

RSpec.describe LinkedList do 

  let(:linked_list) { LinkedList.new}
  it "exists" do 
    expect(linked_list).to be_a(LinkedList)
  end

  it "has no head when it is created" do 
    expect(linked_list.head).to eq(nil)
  end

  it "can apphend data to itself" do 
    expect(linked_list.append("doop")).to eq("doop")

   expect(linked_list.head.next_node).to eq(nil)
  end
end