puts 'Please enter a number between 1 and 3000'
number = gets.chomp.to_i
roman = ''

while number > 0
	if number >= 1000
		roman += 'M'
		number -= 1000
	elsif number >= 500
		roman += 'D'
		number -= 500
	elsif number >= 100
		roman += 'C'
		number -= 100
	elsif number >= 50
		roman += 'L'
		number -= 50
	elsif number >= 10
		roman += 'X'
		number -= 10
	elsif number >= 5
		roman += 'V'
		number -= 5
	elsif number >= 1
		roman += 'I'
		number -= 1
	end
end

puts roman