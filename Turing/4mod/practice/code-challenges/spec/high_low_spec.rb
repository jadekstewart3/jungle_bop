require "pry"
require "./lib/high_low"

RSpec.describe "high_low" do 
  it "returns the highest and lowest integer in a string" do 
    expect(high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")).to eq("42 -9")
    expect(high_and_low("1 2 3")).to eq("3 1")
  end
end