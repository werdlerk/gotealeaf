# Bigger, better favorite number. Write a program that asks for 
# a person’s favorite number. Have your program add 1 to the number, 
# and then suggest the result as a bigger and better favorite number. 
# (Do be tactful about it, though.)
puts "Please enter your favorite number"
favorite_number = gets.chomp
favorite_number = favorite_number.to_i + 1
puts "Wouldn't " + favorite_number.to_s + " be a better number? It's bigger... :-)"