require 'time'

@birthdates = {}
year_seconds = 365 * 24 * 60 * 60

def load_birthdates(filename)
  input = File.open(filename).read

  input.each_line do |line|
    pieces = line.chomp.split(', ',2)
    @birthdates[pieces[0]] = pieces[1]
  end
end

load_birthdates('birthday-input.txt')

puts "Please enter the first name of the person"
first_name = gets.chomp.strip

puts "Please enter the last name of the person"
last_name = gets.chomp.strip

full_name = "#{last_name} #{first_name}"


while full_name.strip.empty? || @birthdates[full_name] == nil
  puts "Name not found. Try again later, chump"
  exit
end

next_birthday = Time.parse(@birthdates[full_name])
while next_birthday < Time.now
  next_birthday += year_seconds
end
next_birthday_age = (next_birthday - Time.parse(@birthdates[full_name])) / year_seconds
next_birthday_age = next_birthday_age.to_i
 
puts "#{first_name}'s next birthday is at #{next_birthday}"
puts "He/she will then reach the age of #{next_birthday_age}"



