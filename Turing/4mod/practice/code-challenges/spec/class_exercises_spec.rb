require "rspec"
require "pry"
require "./lib/class_exercises"

RSpec.describe "class exercises" do 
  it "calculates the factorial of a number" do
    expect(factorial(5)).to eq(120)
  end

  it "returns a reversed string" do 
    expect(reversed_string("string")).to eq("gnirts")
  end
end