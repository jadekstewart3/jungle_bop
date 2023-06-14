require "rspec"
require "pry"
require "./lib/area_or_perimeter"

RSpec.describe "area or perimeter" do 
  it "returns a squares area and a rectangles perimeter" do 
    expect(area_or_perimeter(4 , 4)).to eq(16)
    expect(area_or_perimeter(6, 10)).to eq(32)
  end
end