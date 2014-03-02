def sort some_array # This "wraps" recursive_sort. 
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array 

	while unsorted_array
	smallest_word = nil
	smallest_word_index = nil
	i = 0
	while (i < unsorted_array.size)
		word = unsorted_array[i]
		if (smallest_word == nil || word < smallest_word)
			smallest_word = word
			smallest_word_index = i
		end
		i += 1
	end

	sorted_array.push smallest_word
	unsorted_array[i] = nil
	sorted_array
end

array1 = ['aa', 'uuu', 'aaa', 'moo', 'says', 'the', 'cow']
puts sort(array1)
