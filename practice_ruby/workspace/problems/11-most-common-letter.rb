# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

# Lowercase is used for simplicity; program assumes string consists only of letters (no check implemented)
# As written, program gives answer for first letter encountered (left to right) in case of tie
#
def most_common_letter(string)
  string = string.downcase
  i = 0
  most_common_count = 0
  most_common_letter = string[0]
  while i < string.length
    count = 0
    letter = string[i]
    j = 0
    while j < string.length
      if letter == string[j]
        count = count + 1
      end  
      j = j + 1  
    end
    if count > most_common_count
      most_common_letter = letter
      most_common_count = count
    end  
    i = i + 1
  end  
  return [most_common_letter, most_common_count]
end  

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)

puts (most_common_letter("abb"))
