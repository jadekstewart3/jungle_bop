require "rspec"
require "pry"
require "./lib/million_numbers"

RSpec.describe "Million Numbers" do 
  it "returns all numbers present in all three arrays" do 
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]

    expect(find_matches(nums_1, nums_2, nums_3)).to eq([2, 5])
  end
end