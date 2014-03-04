def method1 param1
  #puts "--- Unique ---"
  #puts param1.uniq!
  #puts "--- Sorted ---"
  #puts param1.sort!
  param1[0] = 'blake'
  puts param1.object_id
  param1 = 'john'
  puts param1.object_id
end


arr = ['jake','willem','jan','koen','klaas','kees','jaap','michiel','koen','koen']
puts arr.object_id
method1(arr)
puts "== After =="
puts arr
puts arr.object_id