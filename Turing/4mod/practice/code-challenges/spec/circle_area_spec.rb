require "pry"
require "./lib/circle_area"

RSpec.describe "Circle Area" do 
  it "returns the area of a circle" do 
    expect(circle_area(43.2673)).to eq(5881.25)
    expect(circle_area(68)).to eq(14526.72)
  end

  it "returns false if the argument is not a postive integer/float" do 
    expect(circle_area(-1485.86)).to eq(false)
    expect(circle_area(0)).to eq(false)
    expect(circle_area("number")).to eq(false)
  end
end