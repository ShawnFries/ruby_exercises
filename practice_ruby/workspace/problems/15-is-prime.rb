# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.
#
# temp ends after number / 2 because the smallest prime factor is 2. We need not check for example if 13 is evenly divisible by 12; it is sufficient to send with checking 6.

def is_prime?(number)
    temp = 2
    while temp < number / 2 + 1
      if number % temp == 0
        return false
      end    
      temp = temp + 1
    end
    return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)

puts(is_prime?(37438743847))
