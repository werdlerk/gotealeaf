def hourly_bong &sound
  (Time.new.hour % 12).times do |hour|
    puts "#{hour}:00 ..."
    sound.call
    
    puts
  end
end

hourly_bong do
  puts 'DONG!'
end