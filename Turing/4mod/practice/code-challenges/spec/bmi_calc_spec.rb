require "rspec"
require "pry"
require "./lib/bmi_calc"

RSpec.describe "bmi calculator" do 
  it "calculates bmi and returns health assessment" do 
    expect(bmi(50, 1.80)).to eq("Underweight")
    expect(bmi(80, 1.80)).to eq("Normal")
    expect(bmi(90, 1.80)).to eq("Overweight")
    expect(bmi(110, 1.80)).to eq("Obese")
    expect(bmi(50, 1.50)).to eq("Normal")
  end
 end