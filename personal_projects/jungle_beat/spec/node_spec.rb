require "pry"
require "./lib/node"

RSpec.describe Node do 

  let(:node) { Node.new("plop") }
  it "exists" do 
    expect(node).to be_a(Node)
  end

  it "has data" do 
    expect(node.data).to eq("plop")
  end

  it "next node attribute returns nil" do 
    expect(node.next_node).to eq(nil)
  end
end