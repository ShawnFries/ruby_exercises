puts 'Enter in as many words as you want'

array = []
array.push gets.chomp

while array.last != ''
  array.push gets.chomp
end

array.pop
puts array.sort