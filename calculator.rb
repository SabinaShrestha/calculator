#take the first number
#take the last numbe
#puts result
#take modifier


# def choose_one
#   puts "Type first number to calculate."
#   @first = gets.to_i
#
#   puts "Choose your modifier. +  -  * / %"
#   @modifier = gets.chomp
#
#   evaluate_user
#
#   puts "Type last number to calculate."
#   @second = gets.to_i
# end

# def mod
#   # get modifier
#   # fails call this method again
# end

# def calc_again
#   puts "would you like to calculate again? Type Y or N"
#   @user = gets.chomp.downcase
#
#   if @user == "y"
#     run_calculator
#   else
#     puts "Good Bye"
#     exit
#   end
# end

# case statement
# if @modifier == "+"
#     @result = @result + @second
# elsif @modifier == "-"
#     @result = @result - @second
# elsif @modifier == "*"
#     @result = @result * @second
# elsif @modifier == "/"
#     @result = @result / @second
# else
#     @result = @result % @second
# end

  # @number_1 = @result

  #case @modifier
  #   when "+"
  #     @result = @result + @second
  #   when "-"
  #     @result = @result - @second
  #   when "*"
  #     @result = @result * @second
  #   when "/"
  #     @result = @result / @second
  #   else
  #     @result = @result % @second
  # end

  # if @modifier == "+"
  #     @result = @first + @second
  # elsif @modifier == "-"
  #     @result = @first - @second
  # elsif @modifier == "*"
  #     @result = @first * @second
  # elsif @modifier == "/"
  #     @result = @first / @second
  # else
  #     @result = @first % @second
  # end

  # case @modifier
  #   when "+"
  #     @result = @first + @second
  #   when "-"
  #     @result = @first - @second
  #   when "*"
  #     @result = @first * @second
  #   when "/"
  #     @result = @first / @second
  #   else
  #     @result = @first % @second
  # end

require 'pry'

#@modify = ["+", "-", "*", "/", "%"]

def first_number
  puts "Type first number to calculate."
  @first = gets.to_f
end

def get_modifier
  puts "Choose your modifier. + - * / %"
  @modifier = gets.chomp
  evaluate_user
end

def second_number
  puts "Type your second number to calculate."
  @second = gets.to_f
end


def output
  puts "your output is: #{@result}"
end


def evaluate_user
  #binding.pry
  # [] ruby method to see if contains
  # unless @modifier == "+" || @modifier == "-" || @modifier == "*" || @modifier == "/" || @modifier == "%"
    # @modify.include?(@modifier)
    is_modifier = ["+", "-", "*", "/", "%"].include?(@modifier)
    if(!is_modifier)
      puts "invalid entry. Try again."
      get_modifier
    end

    #run_calculator

end

def number1
  case @modifier
    when "+"
      @result = @result + @second
    when "-"
      @result = @result - @second
    when "*"
      @result = @result * @second
    when "/"
      @result = @result / @second
    else
      @result = @result % @second
  end
end

def ask_user
  puts "****************************************************************"
  puts "would you like to calculate again or continue calculating or exit?
   \nType 1 for again. \nType 2 for continue.\nType 3 to exit."
  @response = gets.to_i
  if @response == 1
    run_calculator
  elsif @response == 2
    continue_calc
  else
    puts "Good Bye"
    exit
  end
end


def continue_calc
  get_modifier
  second_number
  number1
  output
  ask_user
end



def run_calculator
  first_number
  get_modifier
  second_number

  @result = @first
  number1
  output
  ask_user
end

run_calculator
