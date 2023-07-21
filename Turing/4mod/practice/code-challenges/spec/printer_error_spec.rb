require "rspec"
require "pry"
require "./lib/printer_error"

RSpec.describe "printer error" do 
  it "returns a fraction string showing how many errors are present" do 
    s = "aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
    expect(printer_error(s)).to eq("3/56")
  end
end