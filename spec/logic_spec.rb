require './lib/logic.rb'

describe Logic do
  it "can initialize with no arguments given" do
    logic = Logic.new
    expect(logic).to be_truthy
  end
  it "can initialize with only three of the four variables given" do
    logic = Logic.new(nil, 0.01, 2000, 10)
    logic1 = Logic.new(200, nil, 2000, 10)
    expect(logic).to be_truthy
    expect(logic1).to be_truthy
  end
  it "can calculate the missing variable based on the other three variables given" do
      logic = Logic.new(nil, 0.01, 2000, 10)
      logic.calculate
      logic1 = Logic.new(200, nil, 2000, 10)
      logic1.calculate
      logic2 = Logic.new(200, 0.01, nil, 10)
      logic2.calculate
      logic3 = Logic.new(200, 0.01, 2000, nil)
      logic3.calculate
      expect(logic.interest_paid).to eq(200)
      expect(logic1.interest_rate).to eq(0.01)
      expect(logic2.amount_borrowed).to eq(2000)
      expect(logic3.years).to eq(10)
  end
end
