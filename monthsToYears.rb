name = nil
years = nil
MONTHS_PER_YEAR = 12

puts "Hello. What is your name?\n"
name = gets.chomp
puts "How old are you?\n"
years = gets.chomp.to_i

months = years * MONTHS_PER_YEAR

puts "#{name}, at #{years} years old you are #{months} months old."
gets