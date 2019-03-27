require_relative 'logic'
require_relative 'funky_font'
require 'pry'

def which_first_variable
    selection = STDIN.gets.chomp
    case selection
      when "i"
        puts "What is the value of the first variable?"
        interest_paid_variable
        # @variables - ["i"]
      when "r"
        puts "What is the value of the first variable?"
        interest_rate_variable
        # @variables - ["r"]
      when "p"
        puts "What is the value of the first variable?"
        amount_borrowed_variable
        # @variables - ["p"]
      when "t"
        puts "What is the value of the first variable?"
        years_variable
        # @variables - ["t"]
      else
          puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
     end
end

def which_second_variable
    selection = STDIN.gets.chomp
    case selection
      when "i"
        puts "What is the value of the second variable?"
        interest_paid_variable
        # @variables - ["i"]
      when "r"
        puts "What is the value of the second variable?"
        interest_rate_variable
        # @variables - ["r"]
      when "p"
        puts "What is the value of the second variable?"
        amount_borrowed_variable
        # @variables - ["p"]
      when "t"
        puts "What is the value of the second variable?"
        years_variable
        # @variables - ["t"]
      else
        puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
     end
end

def which_third_variable
    selection = STDIN.gets.chomp
    case selection
      when "i"
        puts "What is the value of the third variable?"
        interest_paid_variable
        # @variables - ["i"]
      when "r"
        puts "What is the value of the third variable?"
        interest_rate_variable
        # @variables - ["r"]
      when "p"
        puts "What is the value of the third variable?"
        amount_borrowed_variable
        # @variables - ["p"]
      when "t"
        puts "What is the value of the third variable?"
        years_variable
        # @variables - ["t"]
      else
        puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
     end
end

def interest_paid_variable
  loop do
      value = STDIN.gets.chomp.to_f
    if value != 0.0
       @logic.interest_paid = value.to_f.round(2)
    else
      puts "Please enter a number"
    end
    break if value != 0.0
  end
  puts @logic.interest_paid
end

def amount_borrowed_variable
  loop do
      value = STDIN.gets.chomp.to_f
    if value != 0.0
       @logic.amount_borrowed = value.to_f.round(2)
    else
      puts "Please enter a number"
    end
    break if value != 0.0
  end
  puts @logic.amount_borrowed
end

def years_variable
  loop do
      value = STDIN.gets.chomp.to_f
    if value != 0.0
       @logic.years = value.to_f.round(2)
    else
      puts "Please enter a number"
    end
    break if value != 0.0
  end
  puts @logic.years
end

def interest_rate_variable
  loop do
      value = STDIN.gets.chomp.to_f
    if value != 0.0
       @logic.interest_rate = value.to_f.round(2)
    else
      puts "Please enter a number"
    end
    break if value != 0.0
  end
  puts @logic.interest_rate
end

def display_final_value
  funky_font = FunkyFont.new(@logic.calculate)
  funky_font.create
end


 def funky_finance
   loop do
   puts "Welcome to Funky Finance!"
   puts "What will the first variable be?"
   which_first_variable
   puts "What will the second variable be?"
   which_second_variable
   puts "What will the third variable be?"
   which_third_variable
   display_final_value
 end

 # @variables = ["i", "r", "p", "t"]
 @logic = Logic.new
 funky_finance
