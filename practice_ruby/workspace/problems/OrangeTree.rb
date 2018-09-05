class OrangeTree
    
  def initialize
    @height = 0
    @age = 0
    @orangeCount = 0
  end
    
  def height
    return @height
  end
    
  def oneYearPasses
    @age += 1
    @height += 1
    puts @orangeCount.to_s + ' oranges fell off the tree.'
    @orangeCount = @age * 10
    if @age > 300
      puts 'The orange tree has died :('
      exit
    end
    
  end    
  
  def countTheOranges
    return @orangeCount
  end
  
  def pickAnOrange
    if @orangeCount > 0  
      @orangeCount -= 1
      puts 'Mmm, that was a delicious orange!'
    else
      puts 'Sorry, there are no more oranges to pick this year!'
    end  
  end
end  

a = OrangeTree.new
a.oneYearPasses