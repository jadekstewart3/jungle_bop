require "rspec"
require "pry"
require "./lib/snail"

RSpec.describe "Snail" do 
  it "returns the snail matrix array" do 
    array_matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    
    expect(snail(array_matrix)).to eq([1, 2, 3, 6, 9, 8, 7, 4, 5])
  end
end