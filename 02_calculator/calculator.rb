def add(num1, num2)
  num1 + num2
end


def subtract(num1, num2)
  num1 - num2
end


def sum(numbers)
	numbers.inject(0) {|sum,num| sum + num }
end


def multiply(*numbers)
	numbers.inject(1) {|sum,num| sum * num }
end


def power(num1,num2)
  num1**num2
end



def factorial(num)
  if num > 0
    if num.is_a? Integer
      factorial = 1
      while num > 0
        factorial = factorial * num
        num = num.pred
      end
      factorial 
    else
      "Requires an integer"
    end
  elsif num == 0
  	1   
  else
    "Please enter a positive integer"
  end
end