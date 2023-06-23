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

  it "returns 4x4 snail matrix array" do 
    array_matrix = [
        [1, 2, 3, 4], 
        [5, 6, 7, 8], 
        [9,10,11,12], 
        [13,14,15,16],
    ]
    
    expect(snail(array_matrix)).to eq([1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10])
  end
end