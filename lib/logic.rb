class Logic

  attr_accessor :interest_paid, :interest_rate, :amount_borrowed, :years
  def initialize(interest_paid = nil, interest_rate = nil, amount_borrowed = nil, years = nil)
    @interest_paid = interest_paid
    @interest_rate = interest_rate
    @amount_borrowed = amount_borrowed
    @years = years
  end

  def calculate
    if @interest_paid == nil
      @interest_paid = @interest_rate.to_f * @amount_borrowed.to_f * @years.to_f
    elsif @interest_rate == nil
      @interest_rate = @interest_paid.to_f / (@amount_borrowed.to_f * @years.to_f)
    elsif @amount_borrowed == nil
      @amount_borrowed = @interest_paid.to_f / (@interest_rate.to_f * @years.to_f)
    elsif @years == nil
      @years = @interest_paid.to_f / (@interest_rate.to_f * @amount_borrowed.to_f)
    end
  end
end
