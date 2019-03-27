require './lib/funky_font.rb'

describe FunkyFont do
  it "can initialize with number argument given" do
    funky_font = FunkyFont.new(10)
    expect(funky_font).to be_truthy
  end

  it "outputs funky font from a two digit number" do
    funky_font = FunkyFont.new(10)
    expect(funky_font.create).to eq(["======", "@ @@@ ", "@ @ @ ", "@ @ @ ", "@ @ @ ", "@ @@@ ", "======"])
  end

  it "outputs funky font from a number with a decimal place" do
    funky_font = FunkyFont.new(3.14)
    expect(funky_font.create).to eq (["============", "@@@   @ @ @ ", "  @   @ @ @ ", "@@@   @ @@@ ", "  @   @   @ ", "@@@ @ @   @ ", "============"])
  end
end
