require "pry"
require "./lib/sort_by_length"

RSpec.describe "sort by length" do 
  it "sorts strings in ascending order of characters" do 
    expect(sort_by_length(["beg", "life", "i", "to"])).to eq(["i", "to", "beg", "life"])
    expect(sort_by_length(["", "moderately", "brains", "pizza"])).to eq(["", "pizza", "brains", "moderately"])
    expect(sort_by_length(["longer", "longest", "short"])).to eq(["short", "longer", "longest"])
    expect(sort_by_length(["dog", "food", "a", "of"])).to eq(["a", "of", "dog", "food"])
    expect(sort_by_length(["", "dictionary", "eloquent", "bees"])).to eq(["", "bees", "eloquent", "dictionary"])
    expect(sort_by_length(["a longer sentence", "the longest sentence", "a short sentence"])).to eq(["a short sentence", "a longer sentence", "the longest sentence"])
  end
end