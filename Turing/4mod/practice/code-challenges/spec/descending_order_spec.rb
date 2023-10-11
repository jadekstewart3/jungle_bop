require "pry"
require "./lib/descending_order"

RSpec.describe "descending order" do 
  it "takes and integer and returns it with its digits in descending order" do 
    expect(descending_order(0)).to eq(0)
    expect(descending_order(123)).to eq(321)
    expect(descending_order(123456789)).to eq(987654321)
  end
end