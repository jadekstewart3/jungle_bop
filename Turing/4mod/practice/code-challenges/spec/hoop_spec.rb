require "rspec"
require "pry"
require "./lib/hoop"

RSpec.describe "hoop" do 
  it "returns the correct string for 10 or more rotations" do 
    expect(hoop_count(10)).to eq("Great, now move on to tricks")
    expect(hoop_count(22)).to eq("Great, now move on to tricks")
  end

  it "returns the correct string for less than 10 rotations" do 
    expect(hoop_count(3)).to eq("Keep at it until you get it")
    expect(hoop_count(9)).to eq("Keep at it until you get it")
  end
end