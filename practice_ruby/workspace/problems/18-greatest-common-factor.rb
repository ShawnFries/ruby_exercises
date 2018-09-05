# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.
#
# number1 and number2 must be integers
# first we should check which is greater to simplify computation
#
def greatest_common_factor(number1, number2)
  if number1 == number2
    return number1
  elsif number1 > number2
    if number1 % number2 == 0
      return number2
    else
      i = number2 / 2
      # Greatest integer factor of a number other than itself is at most itself divided by 2, because the smallest prime number is 2
      while i > 0
        if (number2 % i == 0) && (number1 % i == 0)
          # i might equal 1 here, which is fine as two prime numbers will return 1 as well as other numbers with no common factors other than 1
          return i
        end
        i = i - 1
      end  
    end    
  else # number2 > number1
    if number2 % number1 == 0
      return number1
    else
      i = number1 / 2
      # Greatest integer factor of a number other than itself is at most itself divided by 2, because the smallest prime number is 2
      while i > 0
        if (number2 % i == 0) && (number1 % i == 0)
          # i might equal 1 here, which is fine as two prime numbers will return 1 as well as other numbers with no common factors other than 1
          return i
        end
        i = i - 1
      end  
    end
  end  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
