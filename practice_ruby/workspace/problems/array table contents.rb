
array = ['', 'Chapter ', 'Table of Contents', '1:  Numbers', '2:  Letters', '3:  Variables', 'page ', 1, 72, 118, 50]
lineWidth = 50
puts array[2].center(array.last)
puts array[0]
puts (array[1] + array[3]).ljust(array.last) + (array[6] + array[7].to_s).rjust(array.last)
puts (array[1] + array[4]).ljust(array.last) + (array[6] + array[8].to_s).rjust(array.last)
puts (array[1] + array[5]).ljust(array.last) + (array[6] + array[9].to_s).rjust(array.last)