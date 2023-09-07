require "pry"
require "./lib/is_it_even"

RSpec.describe "is it even?" do 
  it "returns true or false depending on if n is even or not" do 
    expect(test_even(0)).to eq(true)
    expect(test_even(0.5)).to eq(false)
    expect(test_even(1)).to eq(false)
    expect(test_even(2)).to eq(true)
    expect(test_even(-4)).to eq(true)
    expect(test_even(0.25)).to eq(false)
  end
end