require "rspec"
require "pry"
require "./lib/duplicate_numbers"

RSpec.describe "duplicate numbers" do 
  # it "returns true if there is a duplicate number present" do 
  #   arr =  [1, 2, 3, 4, 5, 4, 6, 7, 8, 9, 10]
  #   expect(duplicates(arr)).to eq(true)
  # end

  it "returns the integer that is duplicated" do 
    arr =  [1, 2, 3, 4, 5, 4, 6, 7, 8, 9, 10]
    expect(duplicates(arr)).to eq(4)
  end
end