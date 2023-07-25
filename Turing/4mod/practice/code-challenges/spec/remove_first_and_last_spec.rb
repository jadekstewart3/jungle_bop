require "rspec"
require "pry"
require "./lib/remove_first_and_last"

RSpec.describe "remove char" do 
  it "removes the first and last characters from a string" do 
    expect(remove_char("eloquent")).to eq("loquen")
    expect(remove_char("country")).to eq("ountr")
  end
end