words = ['ghsj','cow','girlfriend','weird','car','gotealeaf','bla', 'boy']

unsorted = words
sorted = []

while unsorted.size > 0
	i = 0
	word = nil

	while i < unsorted.size
		if word == nil || unsorted[i] < word
			word = unsorted[i]
		end

		i = i + 1
	end

	# We've found the smalles word, move it to the sorted array
	sorted.push(unsorted.delete(word))
end

puts sorted

