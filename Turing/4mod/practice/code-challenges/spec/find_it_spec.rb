require "rspec"
require "pry"
require "./lib/find_it"

describe "find_it" do
  it "returns the integer that appears an odd number of times" do 
    expect(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])).to eq(5)
  end
end