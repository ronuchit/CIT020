# Rohan Chitnis
# CIT 020

# This program uses arrays to calculate people's height in
# centimeters given height in feet and inches.

# define arrays
feet = [5, 6, 5, 5, 6, 5]
inches = [3, 2, 11, 9, 4, 8]
heights = []

# define variables and constants
INCHES_PER_FEET = 12
CENT_PER_INCH = 2.54
height_in_inches = 0
height = 0.0
index = 0

# calculate the height array
(0...feet.length).each do |index|
	height_in_inches = ( feet[index] * INCHES_PER_FEET ) + inches[index]
	heights << height_in_inches * CENT_PER_INCH
end

# print the values of height array to the screen
(0...heights.length).each do |index|
	puts "Entry #{index} is #{heights[index]} cm."
end
