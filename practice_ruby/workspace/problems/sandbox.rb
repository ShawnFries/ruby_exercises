def alphabetize(arr, rev=false)
  arr.sort!
  if rev == true
    arr.reverse!
  end    
end

numbers = [3, 4, 8, 0]
puts alphabetize(numbers)