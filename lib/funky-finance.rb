require_relative 'logic'
require_relative 'funky_font'
require 'pry'

def which_first_variable
  @valid_selection = false
  loop do
    selection = STDIN.gets.chomp
    case selection
      when "i"
        puts "What is the value of the first variable?"
        interest_paid_variable
        @valid_selection = true
        @variables -= ["Interest Paid (£)"]
      when "r"
        puts "What is the value of the first variable?"
        interest_rate_variable
        @valid_selection = true
        @variables -= ["Interest Rate"]
      when "p"
        puts "What is the value of the first variable?"
        amount_borrowed_variable
        @valid_selection = true
        @variables -= ["Amount Borrowed (£)"]
      when "t"
        puts "What is the value of the first variable?"
        years_variable
        @valid_selection = true
        @variables -= ["Years"]
      else
          puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
      end
    break if @valid_selection == true
   end
end

def which_second_variable
  @valid_selection = false
    selection = STDIN.gets.chomp
    loop do
      case selection
        when "i"
          puts "What is the value of the second variable?"
          interest_paid_variable
          @valid_selection = true
          @variables -= ["Interest Paid (£)"]
        when "r"
          puts "What is the value of the second variable?"
          interest_rate_variable
          @valid_selection = true
          @variables -= ["Interest Rate"]
        when "p"
          puts "What is the value of the second variable?"
          amount_borrowed_variable
          @valid_selection = true
          @variables -= ["Amount Borrowed (£)"]
        when "t"
          puts "What is the value of the second variable?"
          years_variable
          @valid_selection = true
          @variables -= ["Years"]
        else
          puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
        end
      break if @valid_selection == true
   end
end

def which_third_variable
  @valid_selection = false
  loop do
    selection = STDIN.gets.chomp
    case selection
      when "i"
        puts "What is the value of the third variable?"
        interest_paid_variable
        @valid_selection = true
        @variables -= ["Interest Paid (£)"]
      when "r"
        puts "What is the value of the third variable?"
        interest_rate_variable
        @valid_selection = true
        @variables -= ["Interest Rate"]
      when "p"
        puts "What is the value of the third variable?"
        amount_borrowed_variable
        @valid_selection = true
        @variables -= ["Amount Borrowed (£)"]
      when "t"
        puts "What is the value of the third variable?"
        years_variable
        @valid_selection = true
        @variables -= ["Years"]
      else
        puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'."
     end
    break if @valid_selection == true
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
  puts "Interest Paid (£): " + @logic.interest_paid.to_s
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
  puts "Amount Borrowed (£): " + @logic.amount_borrowed.to_s
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
  puts "Years: " + @logic.years.to_s
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
  puts "Interest rate: " + @logic.interest_rate.to_s
end

def display_final_value
  funky_font = FunkyFont.new(@logic.calculate.round(2))
  puts @variables[0] + ":"
  funky_font.create
end


 def funky_finance
   @variables = ["Interest Paid (£)", "Interest Rate", "Amount Borrowed (£)", "Years"]
   @logic = Logic.new
   puts "Welcome to Funky Finance!"
   puts "Please, enter a valid variable. You can select from: 'i', 'r', 'p' and 't'. They correspond to 'Interest Paid (£)', 'Interest Rate', 'Amount Borrowed (£)' and 'Years', respectively."
   puts "What will the first variable be?"
   which_first_variable
   puts "What will the second variable be?"
   which_second_variable
   puts "What will the third variable be?"
   which_third_variable
   binding.pry
   display_final_value
 end

 funky_finance
