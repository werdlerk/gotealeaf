words = ['ghsj','cow','girlfriend','weird','car','gotealeaf','bla', 'boy','goat','cow']


def sort some_array # This "wraps" recursive_sort. 
	recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
	if unsorted.length == 0
		return sorted
	end

	i = 0
	word = nil

	while i < unsorted.size
		if word == nil || unsorted[i] < word
			word = unsorted[i]
		end

		i = i + 1
	end

	# We've found the smallest word, move it to the sorted array
	sorted.push(word)
	unsorted.delete_at(unsorted.index(word))

	recursive_sort unsorted, sorted
end
puts "Array.sort method:"
puts "---------"
puts words.sort
puts "Recursive sorting:"
puts "---------"
puts sort(words)