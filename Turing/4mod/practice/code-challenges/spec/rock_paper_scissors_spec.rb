require "pry"
require "./lib/rock_paper_scissors"

RSpec.describe "rock paper scissors" do 
  it "player 1 wins" do
    expect(rps("rock", "scissors")).to eq("Player 1 won!")
    expect(rps("scissors", "paper")).to eq("Player 1 won!")
    expect(rps("paper", "rock")).to eq("Player 1 won!")
  end
end