words = ['Ghsj','Cow','girlfriend','weird','Car','Gotealeaf','bla', 'boy','goat','cow']


def dictionary_sort some_array # This "wraps" recursive_sort. 
	recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
	if unsorted.length == 0
		return sorted
	end

	i = 0
	word = nil

	while i < unsorted.size
		if word == nil || unsorted[i].downcase < word.downcase
			word = unsorted[i]
		end

		i = i + 1
	end

	# We've found the smallest word, move it to the sorted array
	sorted.push(word)
	unsorted.delete_at(unsorted.index(word))

	recursive_sort unsorted, sorted
end
puts dictionary_sort(words)