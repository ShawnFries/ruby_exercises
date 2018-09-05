puts 'Enter in as many words as you want'

array = []
temp = []
array.push gets.chomp

while array.last != ''
  array.push gets.chomp
end

array.pop

i = 0
while i < array.length
  j = i + 1
  
  while j < array.length
    if array[j] < array[i]
      temp.push array[j]
      array[j] = array[i]
      array[i] = temp[0]
      temp = []
    end
    
    j += 1
  end    
  
  i += 1
end

puts array