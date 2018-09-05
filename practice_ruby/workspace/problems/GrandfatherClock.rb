def grandFatherClock descriptionOfBlock, &block
  hour = (Time.now.hour) % 12 + 1
  
  hour.times do block.call
  end
  
end  
  
grandFatherClock 'tock' do
  puts 'DONG!'
end