puts "What year were you born in?"
birth_year = gets.chomp

while birth_year.to_i == 0
  puts "Please enter the year in numbers only:"
  birth_year = gets.chomp
end

puts "Which month (number) were you born in?"
birth_month = gets.chomp

while birth_month.to_i == 0
  puts "Please enter the month in numbers only from 1 to 12:"
  birth_month = gets.chomp
end

puts "Which day (number) were you born on?"
birth_day = gets.chomp

while birth_day.to_i == 0
  puts "Please enter the day in numbers only from 1 to 31:"
  birth_day = gets.chomp
end


birthdate = Time.local(birth_year, birth_month, birth_day)
now = Time.new

age_years = ((now - birthdate) / 60 / 60 / 24 / 365).to_i

puts "You're #{age_years} years old."
puts "You've had #{age_years-1} birthdays"