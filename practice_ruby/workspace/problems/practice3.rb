# Takes in a string and returns string with all vowels removed. "y" and "w" are treated as consonants.
# Note that replacing a value of the string with an empty value changes the indices
# such that i now refers to what was formerly i + 1;
# Hence i is increased only if it is not replaced.
# 

def disemvowel(string)
  
  i = 0
  while i < string.length
    if string[i] == "a" || string[i] == "e" || (string[i] == "i") || (string[i] == "o") || (string[i] == "u")
      string[i] = ""
    else 
      i += 1
    end
    
  end 
  
  return string
end  

puts(
  'disemvowel("foobar") == "fbr": ' + (disemvowel("fbr") == "fbr").to_s
)
puts(
  'disemvowel("ruby") == "rby": ' + (disemvowel("rby") == "rby").to_s
)
puts(
  'disemvowel("aeiou") == "": ' + (disemvowel("") == "").to_s
)