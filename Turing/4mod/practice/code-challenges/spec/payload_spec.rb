require "rspec"
require "pry"
require "./lib/payload"

RSpec.describe "payload" do 
  it "returns an array of two numbers that add up to the target" do 
    expect(find_target([1, 2, 3, 4, 5, 10], 15)).to eq([5, 10])
    expect(find_target([-3, -34, 2, 6, 40, -4], 1)).to eq([])
  end
end