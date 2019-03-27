require_relative 'logic'
require 'pry'

def which_first_variable
  loop do
    selection = STDIN.gets.chomp
    case selection
      when "i"
        interest_paid_variable
      # when "r"
      #   first_variable("r")
      #   @variables - ["r"]
      # when "p"
      #   first_variable("p")
      #   @variables - ["p"]
      # when "t"
      #   first_variable("t")
      #   @variables - ["t"]
      # else
      #     puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
      end
  end
end

def interest_paid_variable
  loop do
    puts "What is the value of the first variable?"
      value = STDIN.gets.chomp.to_f
      binding.pry
    if value != 0.0
       @logic.interest_paid = value.to_f.round(2)
    else
      puts "Please enter a number"
    end
    break if value != 0.0
  end
  interest_paid_font = FunkyFont.new(@logic.interest_paid)
end


# def interest_paid
#
# end
#
# def interest_rate
# end
#
# def amount_borrowed
# end
#
# def years
# end
#
# def calculate()
# end

 def funky_finance
   puts "Welcome to Funky Finance!"
   puts "What will the first variable be?"
   which_first_variable
 end

 @variables = ["i", "r", "p", "t"]
 @logic = Logic.new
 funky_finance
