require "pry"
require "./lib/min_cost_climbing_stairs"

RSpec.describe "cost of climbing stairs" do
  it "returns the minimum cost to climb to the top of the stairs" do
    expect(min_cost_climbing_stairs([10, 15, 20])).to eq(15)
  end
end