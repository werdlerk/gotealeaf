# one billion seconds
birthdate = Time.local(1984, 8, 11, 15, 0, 0)
now = Time.new

seconds_until_billion =  1000000000 - (now - birthdate)

puts (now + seconds_until_billion)

