require "rspec"
require "pry"
require "./lib/first_non_consecutive"

RSpec.describe "first non consecutive" do 
  it "returns the first non consecutive number in an array" do
    expect(first_non_consecutive([1,2,3,4,6,7,8])).to eq(6)
  end

end