# Rohan Chitnis
# CIT 020

# This program plays the "Match Me" game.

# variables/constants
MAX_NUMBER = 10
END_GAME = 30
player_total = 0
computer_total = 0
player_choice = 0
computer_choice = 0

while player_total < END_GAME	and computer_total < END_GAME do
	print "Choose a number from 1-10: "
	player_choice = gets.chomp.to_i
	while player_choice < 1 or player_choice > MAX_NUMBER do
		print "Please choose from 1-10: "
		player_choice = gets.chomp.to_i
	end
	
	computer_choice = rand(MAX_NUMBER) + 1
	print "I chose #{computer_choice}. "
	
	if player_choice % 2 == computer_choice % 2 then
		player_total = player_total + (player_choice) + (computer_choice)
		puts "You matched me. You have #{player_total} and I have #{computer_total}."
	else
		computer_total = computer_total + (player_choice) + (computer_choice)
		puts "You didn't match me. You have #{player_total} and I have #{computer_total}."
	end
end

if computer_total > player_total then
	puts "Sorry! I won!"
else
	puts "Congratulations! You won!"
end
