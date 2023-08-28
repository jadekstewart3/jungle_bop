require "pry"
require "./lib/get_sum"

RSpec.describe "get sum" do 
  it "returns the sum between two numbers" do 
    expect(get_sum(0, 1)).to eq(1)
    expect(get_sum(0, -1)).to eq(-1)
    expect(get_sum(1, 2)).to eq(3)
    expect(get_sum(5, -1)).to eq(14)
  end
end