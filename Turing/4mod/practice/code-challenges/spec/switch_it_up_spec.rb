require "pry"
require "./lib/switch_it_up"

RSpec.describe "switch it up" do 
  it "takes an integer argument and converts it to a string" do 
    expect(switch_it_up(1)).to eq("One")
    expect(switch_it_up(9)).to eq("Nine")
  end
end