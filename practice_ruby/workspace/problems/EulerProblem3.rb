def is_prime?(number)
  number_factor = 2
  while number_factor < number / 2.0
    return false if number % number_factor == 0 
    number_factor += 1
  end

  return true
end  

# We know the largest prime factor is, at most, the number divided by 2.

def largest_prime_factor(number)
  candidate_greatest_prime = number / 2
  
  while candidate_greatest_prime > 1
    return candidate_greatest_prime if number % candidate_greatest_prime == 0 && is_prime?(candidate_greatest_prime)
    candidate_greatest_prime -= 1
  end
  
end

a = largest_prime_factor(600851475143)

puts a