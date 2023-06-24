require "rspec"
require "pry"
require "./lib/pin"

RSpec.describe "Pin regex" do 
  it "returns true if a pin has only 4 or 6 integers" do
    expect(validate_pin("")).to eq(false)
    expect(validate_pin("1")).to eq(false)
    expect(validate_pin("1111")).to eq(true)
    expect(validate_pin("123456")).to eq(true)
    expect(validate_pin("1234567890")).to eq(false)
    expect(validate_pin("123454a")).to eq(false)
    expect(validate_pin("a123")).to eq(false)

  end
end