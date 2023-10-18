require "pry"
require "./lib/break_camel_case"

RSpec.describe "break camel case" do 
  it "inserts spaces in camel cased strings" do 
    expect(solution("camelCasing")).to eq("camel Casing")
    expect(solution("camelCasingTest")).to eq("camel Casing Test")
  end
end