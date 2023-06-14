require "rspec"
require "pry"
require "./lib/count_smileys"

RSpec.describe "count smileys" do 
  it "returns the number of valid smiley faces" do 
    expect(count_smileys([":D",":~)",";~D",":)"])).to eq(4)
  end
end