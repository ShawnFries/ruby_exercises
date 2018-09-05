def log descriptionOfBlock, &block
  puts 'Beginning "' + descriptionOfBlock.to_s + '"...'
  puts '..."' + descriptionOfBlock.to_s + '" finished, returning:  ' + block.call.to_s
end

log 'outer block' do
  log 'some little block' do
    5
  end
  log 'yet another block' do
    'I like Thai Food!'
  end
  false
end  