WEEKS = 20
SMALL_LOT = 400
MED_LOT = 600
square_feet = 0
unit_price = 0
total_price = 0

print "Enter the number of square feet: "
square_feet = gets.chomp.to_i

if square_feet < SMALL_LOT then
   puts "This is a small lot."
   unit_price = 25
end

if square_feet >= SMALL_LOT and square_feet < MED_LOT then
   puts "This is a medium lot."
   unit_price = 35
end

if square_feet >= MED_LOT then
   puts "This is a large lot."
   unit_price = 50
end

total_price = unit_price * WEEKS
puts "The total price will be $#{total_price}." 
