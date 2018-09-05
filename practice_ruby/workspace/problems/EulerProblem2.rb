# We need to track the previous 2 terms, which when added make each new term. Then we need to track the sum so far if the current term is even.

def sum_even_fibonacci
  first_preceding_term = 2
  second_preceding_term = 1
  total_sum_even_terms = 2
  
  while first_preceding_term < 4000001
    temp_first_preceding_term = first_preceding_term
    first_preceding_term = first_preceding_term + second_preceding_term
    second_preceding_term = temp_first_preceding_term
    total_sum_even_terms += first_preceding_term if first_preceding_term % 2 == 0
  end
  
  return total_sum_even_terms
end

a = sum_even_fibonacci

puts a