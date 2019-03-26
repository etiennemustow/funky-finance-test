class Logic

  attr_accessor :interest_paid, :interest_rate, :amount_borrowed, :years
  def initialize(interest_paid: nil, interest_rate: nil, amount_borrowed: nil, years: nil)
    @interest_paid = interest_paid
    @interest_rate = interest_rate
    @amount_borrowed = amount_borrowed
    @years = years
  end
end
