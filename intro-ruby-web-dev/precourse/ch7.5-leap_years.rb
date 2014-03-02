puts "Starting year?"
start_year = gets.chomp.to_i
puts "Ending year?"
end_year = gets.chomp.to_i
puts "==========================="
puts "         Leap years:       "
puts "---------------------------"
year = start_year

while year <= end_year 
	if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
		puts year
	end
	year = year + 1
end
