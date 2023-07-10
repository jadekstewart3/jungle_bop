require "rspec"
require "pry"
require "./lib/merge_sorted_array"

RSpec.describe "Merge Sorted" do 
  it "merges and sorts two arrays removing zeros" do 
    nums1 = [1, 2, 3, 0, 0, 0] 
    nums2 = [2, 5, 6]
    m = 3
    n = 3
    expect(merge(nums1, m, nums2, n)).to eq([1,2,2,3,5,6])
  end

  it "returns as expected with an empty array" do 
     nums1 = [1] 
    nums2 = []
    m = 1
    n = 0
    expect(merge(nums1, m, nums2, n)).to eq([1])
  end
end