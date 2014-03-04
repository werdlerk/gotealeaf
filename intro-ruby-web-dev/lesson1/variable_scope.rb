var1 = 'scope'
var2 = 'trytry'
var_array = [1,2,3,4,5,6,7,8, 8, 8, 8]

var_array.each do |i|
  var1 = 'wopwop'
  var3 = 'test'
end

var_array.each {|i| 
  var2 = 'changed'
}

class Array 
  def method1
    return self.reverse
  end

  def method2
    return self.reverse!
  end

end

# do ... end block is able to modify variables 
# but new variables are restricted to the block

# local variables declared in an outer scope are available to the inner scope
# local variables declared in an inner scope are NOT available to the outer scope

puts var1
puts var2
# Error; var3 is undefined
#puts var3

puts 'do not modify caller'
puts "before: #{var_array}"
puts "returns: #{var_array.method1}"
puts "after: #{var_array}"

puts 'modifies caller'
puts "before: #{var_array}"
puts "returns: #{var_array.method2}"
puts "after: #{var_array}"