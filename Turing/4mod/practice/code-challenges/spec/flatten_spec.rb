require "rspec"
require "pry"
require "./lib/flatten"

RSpec.describe "flatten" do 
  it "returns all elements in a single array" do 
    nums = [1, 2, 3, [[4], 5], [[[6]]]]
    words = words = ["hi", "this is a", [[["string"], "that is very"], [[[["nested"]]]]]]
    expect(flatten(nums)).to eq([1, 2, 3, 4, 5, 6])
    expect(flatten(words)).to eq(["hi", "this is a", "string", "that is very", "nested"])
  end
end