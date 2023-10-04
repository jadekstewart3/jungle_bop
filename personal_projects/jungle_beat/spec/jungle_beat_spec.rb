require "pry"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do 
  let(:jb) { JungleBeat.new }

  describe "initialize" do 
    it "exists" do 
      expect(jb).to be_a(JungleBeat)
      expect(jb.list).to be_a(LinkedList)
      expect(jb.list.head).to eq(nil)
    end
  end

  describe "append" do 
    it "appends a string with multiple elements" do 
      jb.append("deep doo ditt")

      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")

      jb.append("deep doo ditt")

      expect(jb.count).to eq(6)
    end
  end
end