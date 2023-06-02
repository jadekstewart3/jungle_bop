require "rspec"
require "pry"
require "./lib/subsets"

RSpec.describe "subsets" do 
  it "returns an array of unique integer pairs" do 
    expect(subsets([1, 2, 3, 4])).to eq([[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]])
  end
end