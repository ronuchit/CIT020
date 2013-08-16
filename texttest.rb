in_file = nil 
out_file = nil
data = []

print "file name: "
filename = gets.chomp

if File.exists?(filename) and File.readable?(filename) then
	numbers = File.open(filename, "r")
	
	numbers.each do |line|
		data << line.chomp.to_i
	end
	
	numbers.close
	
	data = data.sort
	
	numbers = File.open("sorted_data.txt", "w")
	
	data.each do |item|
		numbers.puts item
	end
	
	numbers.close
	
else
	puts "#{filename} does not exist or is not readable."
end

