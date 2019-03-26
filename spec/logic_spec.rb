require './lib/logic.rb'

describe Logic do
  it "can initialize with no arguments given" do
    logic = Logic.new
    expect(logic).to be_truthy
  end
end
