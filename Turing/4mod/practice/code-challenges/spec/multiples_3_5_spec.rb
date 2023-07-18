require "rspec"
require "pry"
require "./lib/multiples_3_5"

RSpec.describe "sum of multiples" do 
  it "returns the sum of all of the numbers that are multiples of 3 or 5" do
    expect(solution(10)).to eq(23)
    expect(solution(20)).to eq(78)
    expect(solution(200)).to eq(9168)
  end

  it "returns zero if presented with a negative integer" do 
    expect(solution(-1)).to eq(0)
  end
end