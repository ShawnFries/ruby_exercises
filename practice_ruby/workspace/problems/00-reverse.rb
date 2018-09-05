# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

## Right click on left to run

def reverse(string)
  i = 0
  reverse_string = []
  while i < string.length
    reverse_string[i] = string[string.length - 1 - i]
    i = i + 1
  end
  reverse_string = reverse_string.join
  return reverse_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
 