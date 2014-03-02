# Full name greeting. Write a program that asks for a person’s first name, 
# then middle, and then last. Finally, it should greet the person using their full name.
puts "Hello and welcome!"
puts "Please write your first name"
firstname = gets.chomp
puts "Thank you! Please write your middle name(s)"
middlename = gets.chomp
puts "Thank you! Please write your last name"
lastname = gets.chomp
puts "Hello, " + firstname + " " + middlename + " " + lastname + "!"