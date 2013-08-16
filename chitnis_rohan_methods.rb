def get_dimension
	result = 0.0
	result = gets.chomp.to_f
	while result <= 0 do
		print "Please enter a number greater than zero: "
		result = gets.chomp.to_f
	end
	return result
end

def calculate_floor(length, width)
	result = 0.0
	result = length * width
	return result
end

def calculate_wall(length, width, height)
	result = 0.0
	result = (2 * length * height) + (2 * width * height)
	return result
end

length = 0.0
width = 0.0
height = 0.0
floor_area = 0.0
wall_area = 0.0

print "Enter length of the room in meters: "
length = get_dimension()

print "Enter width of the room in meters: "
width = get_dimension()

print "Enter the height of the room in meters: "
height = get_dimension()

floor_area = calculate_floor(length, width)
wall_area = calculate_wall(length, width, height)

puts "The floor area is #{floor_area} square meters."
puts "The wall area is #{wall_area} square meters."
