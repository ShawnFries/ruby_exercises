# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

# Warning: If numbers have the same value, leftmost number is considered "greatest", similarly for second greatest
# Actually, as written this will not work in general if any of the greatest two numbers are not unique

def third_greatest(nums)
  i = 0
  first = nums[0]
  second = nums [1]
  third = nums[2]
  while i < nums.length
    if nums[i] > first
      first = nums[i]
    end
    i = i + 1
  end
  j = 0
  while j < nums.length
    if (first > nums[j]) && (nums[j] != first)
      second = nums[j]
    end
    j = j + 1
  end
  k = 0
  while k < nums.length
    if (first != nums[k]) && (second !=  nums[k]) && (nums[k] > third)
      third = nums[k]
    end
    k = k + 1
  end
  return third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
