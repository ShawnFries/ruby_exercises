
# Uses identity that the sum of n consecutive numbers starting from 1 is n * (n + 1) / 2; for multiples of 3 and 5 we just multiply by that respective value, then subtract the cases where we double counted (multiples of 15).
# By inspection since it's just 1000 we can see there are 333 multiples of 3 less than 1000, 199 multiples of 5, and 66 multiples of 15. This should be more efficient than manually computing the sum with loops.

def sum_multiples_3_and_5
  return 3 * 333 * 334 / 2 + 5 * 199 * 200 / 2 - 15 * 66 * 67 / 2
end

a = sum_multiples_3_and_5

puts a