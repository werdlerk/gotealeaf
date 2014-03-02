def shuffle array
	shuffled = []

	while array.length > 0
		index = rand(array.length)
		shuffled.push(array[index])
		array.delete_at(index)
	end

	return shuffled
end

to_shuffle = ['a','b','c','d','e','f','g','h','i']
puts shuffle(to_shuffle)