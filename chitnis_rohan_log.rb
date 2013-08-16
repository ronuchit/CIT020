# Rohan Chitnis
# CIT 020

# This program reads a log file and calculates the number of hits per hour,
# producing a bar chart.

# arrays

hits_per_hour = []
(0..23).each do
	hits_per_hour << 0 # 24 hours in a day
end

# variables/constants
data = nil
hour = nil
max_hits = nil
number_of_equals = nil
MAX_EQUALS = 50

# see if file exists
if File.exists?("access.log") and File.readable?("access.log") then
	
	# read the file
	data = File.open("access.log", "r")
	
	data.each do |line|
				
		# find hits per hour
		(day, hour, minute, second) = line.split(":")
		hour = hour.to_i
		
		hits_per_hour[hour] += 1
		
	end
	
	data.close
	
	# find maximum number of equal signs
	max_hits = hits_per_hour.max.to_f
	
	# print output to screen
	(0...hits_per_hour.length).each do |index|
		if index < 10 then
			print "0#{index} | "
		else
			print "#{index} | "
		end
		number_of_equals = ( hits_per_hour[index] / max_hits ) * MAX_EQUALS
		print "=" * number_of_equals.ceil
		puts " #{hits_per_hour[index]}"
	end
		
else
	
	puts "Sorry. This file does not exist."
	
end	
