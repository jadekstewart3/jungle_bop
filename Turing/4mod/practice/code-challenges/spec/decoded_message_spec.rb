require "pry"
require "./lib/decoded_message"
RSpec.describe "decode message" do 
  it "returns the decoded string message" do 
    expect(decode("svool")).to eq("hello")
    expect(decode("r slkv mlylwb wvxlwvh gsrh nvhhztv")).to eq("i hope nobody decodes this message")
  end
end