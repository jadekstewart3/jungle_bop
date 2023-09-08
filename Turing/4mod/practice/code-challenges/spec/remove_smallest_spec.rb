require "pry"
require "./lib/remove_smallest"

RSpec.describe "remove smallest element" do
  it "removes the smallest element in an array" do 
    expect(remove_smallest([1, 2, 3, 4, 5])).to eq([2, 3, 4, 5])
    expect(remove_smallest([5, 3, 2, 1, 4])).to eq([5, 3, 2, 4])
    expect(remove_smallest([2, 2, 1, 2, 1])).to eq([2, 2, 2, 1])
    expect(remove_smallest([])).to eq([])
  end
end 
