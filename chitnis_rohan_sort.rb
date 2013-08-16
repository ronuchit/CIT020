# Rohan Chitnis
# CIT 020

# This program asks a user to enter words one at a time. They are then sorted
# and placed into a text file.

# arrays
words = []

# variables
word = nil
file = nil
overwrite = nil

# ask the user to enter words, and add them to the array
print "Please enter a word, or press <Enter> when finished: "
word = gets.chomp

while word != "" do
	if ( words.index word ) != nil then
		puts "Sorry, you have already entered the word #{word}."
	else
		words << word
	end
	
	print "Please enter next word, or press <Enter> when finished: "
	word = gets.chomp
end

# sort the array
words = words.sort

# enter the words into a text file

if File.exists?("sorted_words.txt") and File.readable?("sorted_words.txt") then
	print "File sorted_words.txt already exists. Okay to overwrite? Y)es or N)o: "
	overwrite = gets.chomp.upcase
	
	while overwrite != "Y" and overwrite!= "N" do
		print "Please enter Y for yes and N for no: "
		overwrite = gets.chomp.upcase
	end
	
	if overwrite == "Y" then
		file = File.open("sorted_words.txt", "w")
		words.each do |one_word|
			file.puts one_word
		end
		puts "Sorted words now in file sorted_words.txt."
		file.close
	else
		puts "File sorted_words.txt will not be changed."
	end
else
	file = File.open("sorted_words.txt", "w")
	words.each do |one_word|
		file.puts one_word
	end
	puts "Sorted words now in file sorted_words.txt."
	file.close
end
