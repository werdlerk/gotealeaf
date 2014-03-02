puts "Deaf grandma"
stop = 0

while true
	say = gets.chomp

	if say == 'BYE' || say != say.upcase 
		if stop == 2
			puts 'Bye bye!'
			break
		end

		puts "HUH?!  SPEAK UP, SONNY!"

		if say == 'BYE'
			stop = stop + 1
		else
			stop = 0
		end
	else
		stop = 0
		year = rand(20) + 1930;
		puts "NO, NOT SINCE #{year}!"
	end
end