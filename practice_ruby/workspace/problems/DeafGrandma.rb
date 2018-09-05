say = gets.chomp

while say != 'BYE'

  if say != say.upcase
  puts 'HUH?!  SPEAK UP, SONNY!'
  else
  puts 'NO, NOT SINCE ' + (rand(21) + 1930).to_s  + '!'
  end
  
  say = gets.chomp
  
end  
  
