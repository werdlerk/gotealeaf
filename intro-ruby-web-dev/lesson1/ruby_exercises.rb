# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each { |item| puts item }

# multiline
a.each do |i|
  puts i
end

# 2. Same as above, but only print out values greater than 5.

a.each { |item| puts item if item > 5}
a.each { |item| puts item unless item <= 5}

# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.

a.select { |item| item % 2 == 1}
a.select { |item| item.odd? }
a.select { |item| !item.even? }

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.

a.push(11)
a << 11

a.unshift(0)

# 5. Get rid of "11". And append a "3".

a.pop
a.delete_at(11)

a.push(3)
a << 3

# 6. Get rid of duplicates without specifically removing any one value. 

a & a
a.uniq

# 7. What's the major difference between an Array and a Hash?
## Array is list of values, in order
## Hash is unordered bundle of key/value pairs

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.

## Ruby 1.8
h = {:a => 1, :b => 2, :c => 3}
## Ruby 1.9
h = { a: 1 , b: 2, c: 3} 

# Suppose you have a h = {a:1, b:2, c:3, d:4}
# 
# 9. Get the value of key "b".

# Answer: There is no key "b", only a symbol :b
puts h[:b]

# 10. Add to this hash the key:value pair {e:5}

h[:e] = 5

# 13. Remove all key:value pairs whose value is less than 3.5

h.select { |key,value| value >= 3.5 }

# Answer:
h.delete_if{|k,v| v < 3.5 }

# 14. Can hash values be arrays? Can you have an array of hashes? (give examples)

h[:f] = [22, 33, 44]

array_of_hashes = [{a:1,b:2},{c:3,d:4},{e:5,f:6},{}]


# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
# - Ruby-doc.org
#  -- Nice but no easy selecting a class
# - api.rubyonrails.org
#  -- Rails API (!)
# - ruby-docs.org
#  -- Nice, like the gone railsapi.com

# - Best result: Found a cool (Mac) app called 'Dash'
#  http://kapeli.com/dash
# - easy searching selecting classes and methods using the keyboard



