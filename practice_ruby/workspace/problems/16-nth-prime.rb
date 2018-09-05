# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

# n must be an integer!
#

def nth_prime(n)
  if n < 1
    return puts("Invalid entry!")
  end  
  
  i = 2
  count = n
  # Only numbers >= 2 can be prime.
  while true
  
    if is_prime?(i)
      count = count - 1
    end
    
    if count == 0
      return i
    end
    
    i = i + 1
    
  end
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)

puts (nth_prime(1))
puts (nth_prime(2))
