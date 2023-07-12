require "rspec"
require "pry"
require "./lib/min_max"

RSpec.describe "min and max" do 
  it "returns the min and max values of an array" do 
    expect(min_max([1,2,3,4,5])).to eq([1,5])
    expect(min_max([2334454,5])).to eq([5, 2334454])
  end
end