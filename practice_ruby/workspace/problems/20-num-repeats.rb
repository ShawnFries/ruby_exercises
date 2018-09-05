# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    count = 0
    
    i = 0
    while i < string.length
      j = i + 1
      while j < string.length
        if string[i] == string[j]
          count = count + 1
          
          k = string.length - 1
          while k > 0
            if string[i] == string[k]
              string[k] = ""
            end
            
            k -= 1
          end
          i = 0
          j = 1
          # Reset i and j, since indices have changed with deletions
          break
        else
          j += 1
        end
        
      end
      
      i += 1
    end
    
    return count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)

puts(num_repeats("abab"))
