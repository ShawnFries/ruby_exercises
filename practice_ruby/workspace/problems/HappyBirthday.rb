puts 'Happy Birthday!'
puts 'What year were you born in?'
year = gets.chomp.to_i
puts 'What month were you born in?'
month = gets.chomp.to_i
puts 'What day were you born on?'
day = gets.chomp.to_i

birthdays = (Time.new.year - year)
if (month > Time.new.month or (month == Time.new.month and day > Time.new.day))
  birthdays -= 1
end  

puts 'That makes you ' + birthdays.to_s + ' years old!'
puts 'SPANK! '*birthdays

puts birthdays

puts Time.new.month