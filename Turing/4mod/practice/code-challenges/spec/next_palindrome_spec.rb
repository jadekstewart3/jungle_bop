require "rspec"
require "pry"
require "./lib/next_palindrome"

RSpec.describe 'next palindrome' do 
  it "finds and returns the next palindrome" do 
    expect(find_next_palindrome(100)).to eq(101)
    expect(find_next_palindrome(12320)).to eq(12321)
  end
end