  def my_uniq(array)
    
    i = 0
    while i < array.length
    
      j = i + 1
      while j < array.length
        if array[i] == array[j]
          array[j] = []
        else
          j += 1
        end
      end
      
      i += 1
    end
    return array
  end
  a = [1, 2, 1, 3, 3]
  puts(my_uniq(a))
  
  
# Returns true if a pair sums to zero, otherwise returns false.  
def two_sum_zero(array)
  
  i = 0
  while i < array.length - 1
    
    j = i + 1
    while j < array.length
      if array[i] + array[j] == 0
        return true
      end
      
      j += 1
    end
    
    i += 1
  end
  return false
end

puts(two_sum_zero([0, 5]))
puts(two_sum_zero([0, 5, 7, 3, 2, 1, 2, 3, 5, 7, 7]))
puts(two_sum_zero([0, 0]))
puts(two_sum_zero([0]))
    
    