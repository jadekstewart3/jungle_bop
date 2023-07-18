require "rspec"
require "pry"
require "./lib/powers_of_2"

RSpec.describe "powers of 2" do 
  it "returns an array with the products of 2^num" do 
    expect(powers_of_two(0)).to eq([1])
    expect(powers_of_two(1)).to eq([1, 2])
    expect(powers_of_two(4)).to eq([1, 2, 4, 8, 16])
  end
end