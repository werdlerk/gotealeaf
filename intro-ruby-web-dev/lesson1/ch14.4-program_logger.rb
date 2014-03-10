def log description, &block
  puts "Starting #{description}..."
  return_value = block.call
  puts "... #{description} finished and returned:"
  puts return_value
end

log 'outer block' do
  log 'some little block' do
    5
  end
  log 'yet another block' do
    "I like Thai food!"
  end
  false
end