require "rspec"
require "pry"
require "./lib/triple_double"

RSpec.describe "triple double" do
  it "returns 1 if the criteria are met" do
    expect(triple_double(451999277, 41177722899)).to eq(1)
    expect(triple_double(666789, 12345667)).to eq(1)
    expect(triple_double(10560002, 100)).to eq(1)
  end

  it "returns 0 if the criteria are not met" do 
    expect(triple_double(1222345, 12345)).to eq(0)
    expect(triple_double(12345, 12345)).to eq(0)
    expect(triple_double(1112, 122)).to eq(0)
  end
end