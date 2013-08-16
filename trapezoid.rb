# This method takes a message string as its parameter
# It uses the string to create the prompt that asks
# the user to enter a number greater than zero. The
# method will continue to prompt until the user enters
# a valid number. The method returns that number as its
# return value

def get_dimension( message )
  print "Please enter the #{message}: "
  dimension = gets.chomp.to_i
  while dimension <= 0 do
	  print "Please enter a number greater than zero as the #{message}: "
	  dimension = gets.chomp.to_i
  end
  return dimension
end

# This method takes three parameters:
# the two bases of the trapezoid and the height of the trapezoid
# It returns the area of the trapezoid using the formula
#
# area = height * (base1 + base2) / 2.0

# You write the entire method here.
def calc_area (base1,base2,height)
	area = height * (base1 + base2) / 2.0
	return area
end
#
# main program begins here
# You may not change any of the following lines.
#
top = 0.0
bottom = 0.0
height = 0.0
area = 0.0

puts "This program calculates the area of a trapezoid"
height = get_dimension("height")
top = get_dimension("length of the top")
bottom = get_dimension("length of the bottom")

area = calc_area(top, bottom, height)

puts "The area of the trapezoid is #{area} square units."



