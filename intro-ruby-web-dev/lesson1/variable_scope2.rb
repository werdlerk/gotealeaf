arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n']

# need to declare variable before do...end to use it outside
blub = ''

arr.each do |letter|
  # need to declare variable before do...end to use it outside
  last = ''
  arr.each do |l|
    last = l
  end
  blub = blub + last
  puts blub
end