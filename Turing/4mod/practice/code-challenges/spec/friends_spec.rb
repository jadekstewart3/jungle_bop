require "rspec"
require "pry"
require "./lib/friends"

RSpec.describe "friends" do 
  it "returns friends with exactly 4 letters in their name" do 
    expect(friend(["Ryan", "Kieran", "Mark"])).to eq(["Ryan", "Mark"])
    expect(friend(["Ryan", "Jimmy", "123", "4", "Cool Man"])).to eq(["Ryan"])
    expect(friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"])).to eq(["Jimm", "Cari", "aret"])
    expect(friend(["Love", "Your", "Face", "1"])).to eq(["Love", "Your", "Face"])
  end
end