require "pry"
require "./lib/disemvoweled"

RSpec.describe "disemvoweled" do 
  it "removes all of the vowels from a string and returns the mutataed string" do
    expect(disemvoweled("This website is for losers LOL!")).to eq("Ths wbst s fr lsrs LL!")
  end
  
  it "removes lower and uppercase vowels" do 
    expect(disemvoweled("zKiE? LLlH xyKTbBMcJgXT %F&Ypp^r!zV bJ,a ez), fBH}(TZ KY;KNu?%dv! a@kP ^ SuHyHPqYDI")).to eq("zK? LLlH xyKTbBMcJgXT %F&Ypp^r!zV bJ, z), fBH}(TZ KY;KN?%dv! @kP ^ SHyHPqYD")
  end
end