# Rohan Chitnis
# CIT 020

# This program deals a deck of cards to two computer players and calculates
# the total. The player with the higher total wins.

require 'shuffle.rb'

# define the arrays
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
card_names = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
card_values = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
deck = []
hand1 = []
hand2 = []

# define the variables
index = 0
card_number = 0
value = 0
total1 = 0
total2 = 0
suit = ""
name = ""

CLUB_MAX = 12
DIAMOND_MAX = 25
HEART_MAX = 38


# fill deck array with numbers 0-51
(0...52).each do |index|
	deck << index
end

# shuffle the deck
deck = deck.shuffle

# deal cards to the players
(0...3).each do |index|
	hand1 << deck[index]
end

(3...6).each do |index|
	hand2 << deck[index]
end

puts "Hand one contains:"

# sort cards into suit and number for hand 1

hand1.each do |index|
	
	if index <= CLUB_MAX then
		suit = suits[0]
		card_number = index
		
	elsif index <= DIAMOND_MAX then
		suit = suits[1]
		card_number = index - CLUB_MAX - 1
		
	elsif index <= HEART_MAX then
		suit = suits[2]
		card_number = index - DIAMOND_MAX - 1
		
	else
		suit = suits[3]
		card_number = index - HEART_MAX - 1
	end
	
	name = card_names[card_number]
	value = card_values[card_number]
	puts "#{name} of #{suit}"
	total1 = total1 + value	
end

puts "Hand one has a total of #{total1}."

puts "\n"

puts "Hand two contains:"

# sort cards into suit and number for hand 2

hand2.each do |index|
	
	if index <= CLUB_MAX then
		suit = suits[0]
		card_number = index
		
	elsif index <= DIAMOND_MAX then
		suit = suits[1]
		card_number = index - CLUB_MAX - 1
		
	elsif index <= HEART_MAX then
		suit = suits[2]
		card_number = index - DIAMOND_MAX - 1
		
	else
		suit = suits[3]
		card_number = index - HEART_MAX - 1
	end
	
	name = card_names[card_number]
	value = card_values[card_number]
	puts "#{name} of #{suit}"
	total2 = total2 + value	
end

puts "Hand two has a total of #{total2}."

puts "\n"

# compare the totals
if total1 > total2 then
	puts "Hand one wins."
elsif total1 < total2 then
	puts "Hand two wins."
else
	puts "It's a tie!"
end
