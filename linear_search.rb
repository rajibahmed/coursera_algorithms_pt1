haystack = %w( 1 5 6 100 390 3 50 3022 112 111 40)

needle = gets.chomp

haystack.each_with_index do |number, index|
  puts "found at #{index}"   if number == needle
end
