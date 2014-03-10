$nesting_depth = 0

def log description, &block
  pad_string = '  ' * $nesting_depth
  puts pad_string + "Starting #{description}..."
  $nesting_depth += 1
  return_value = block.call
  puts pad_string + "... #{description} finished and returned:"
  puts pad_string + "#{return_value}"
  $nesting_depth -= 1
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tine block' do
      'lots of love'
    end
    42
  end
  log 'yet another block' do
    "I like Thai food!"
  end
  true
end