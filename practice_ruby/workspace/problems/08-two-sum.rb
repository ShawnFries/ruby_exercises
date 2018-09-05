# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

# nums must be an array
# Method returns only the first pair of numbers summing to zero and their positions, 
# starting from first number being left as far as possible,
# Then second number being as far left as possible (lowest index).

def two_sum(nums)
  i = 0
  pair = []
  while i < nums.length
    j = i + 1
    while j < nums.length
      if nums[i] + nums[j] == 0
        pair[0] = i
        pair[1] = j
        return pair
      end
      j = j + 1
    end
    i = i + 1
  end
  return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
