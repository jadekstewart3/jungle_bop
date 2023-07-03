require "rspec"
require "pry"
require "./lib/haystack"

RSpec.describe "haystack" do 
  it "returns the needles position in the haystack" do 
    expect(find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false])).to eq('found the needle at position 3')
  end
end