words = []

while true 
	word = gets.chomp
	if word.size == 0
		break
	else
		words.push(word)
	end
end

puts 'Sorted words:'
puts words.sort

