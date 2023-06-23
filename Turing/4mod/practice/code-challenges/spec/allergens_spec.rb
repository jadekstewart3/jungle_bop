require "rspec"
require "pry"
require "./lib/allergens"

RSpec.describe "allergens" do 
  it "returns true if they are alleric" do 
    expect(Allergies.new(1).is_allergic?("eggs")).to be_truthy
    expect(Allergies.new(48).is_allergic?("chocolate")).to be_truthy
    expect(Allergies.new(48).is_allergic?("tomatoes")).to be_truthy
    expect(Allergies.new(255).is_allergic?("peanuts")).to be_truthy
  end

  it "returns false if they are not allergic" do 
    expect(Allergies.new(48).is_allergic?("cats")).to be_falsey
  end

  it "returns an array of allergens" do 
    expect(Allergies.new(3).list).to eq(["eggs", "peanuts"])
    expect(Allergies.new(8).list).to eq(["strawberries"])
    expect(Allergies.new(5).list).to eq(["eggs", "shellfish"])
    expect(Allergies.new(255).list).to eq(["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"])
    expect(Allergies.new(257).list).to eq(["eggs"])
    expect(Allergies.new(509).list).to eq(["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"])
  end
end