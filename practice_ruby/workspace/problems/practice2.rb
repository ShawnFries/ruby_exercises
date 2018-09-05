# Takes in an array of integers and returns the sum of all odd elements
# Note that an odd number divided by 2 has a remainder of 1

def oddball_sum(numbers)
  sum = 0
  
  i = 0
  while i < numbers.length 
    if numbers[i] % 2 == 1
      sum = sum + numbers[i]
    end
    
    i += 1
  end
  
  return sum
end  

puts(oddball_sum([1,2,3,4,5]))
puts(oddball_sum([0,6,4,4])) 
puts(oddball_sum([1,2,1])) 

def oddball_sum(numbers)
  sum = 0
  
  i = 0
  while i < numbers.length - 1
    if i % 2 == 0 # We want i to be even because array numbering starts at 0
      sum = sum + numbers[i]
    end
    
    i += 1
  end
  
  return sum
end  