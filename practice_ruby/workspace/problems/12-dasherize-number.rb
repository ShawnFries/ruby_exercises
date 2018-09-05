# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.
#
# Doesn't actually matter what character is used to unshift since we overwrite it anyway; arbitrarily left as dash for clarity.
#
def dasherize_number(num)
  num = num.to_s
  if num[0].to_i % 2 == 1
    num = "-" + num
    num[0] = num[1]
    num[1] = "-"
  end  
  if num[num.length - 1].to_i % 2 == 1
    num = num + "-"
    num[num.length - 1] = num[num.length - 2]
    num[num.length - 2] = "-"
  end  
  i = 1
  while i < num.length - 1
    if num[i].to_i % 2 == 1
      num = "-" + num
      j = 1
      while j < i
        num[j - 1] = num[j]
        j = j + 1
      end
      num[i] = "-"
      num = num + "-"
      k = num.length - 1
      while k > i + 2
        num[k] = num[k - 1]
        k = k - 1
      end  
      num[i + 2] = "-"
    end
    i = i + 1
  end
  return num
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)