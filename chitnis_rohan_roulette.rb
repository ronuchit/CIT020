# Rohan Chitnis
# CIT 020

# This program plays a simple game of Roulette with the user.

# input variables
bet_type = nil
bet_amount = nil
number_guessed = nil
money = nil
MAX_WHEEL = 37
WIN_FACTOR = 35

# output variables
number_of_wins = 0
number_of_losses = 0
number_spun = nil

# ask user for amount of money to begin with
puts "Hello! Welcome to the Roulette program!"
print "Please enter the amount of money you would like to start with: "
money = gets.chomp.to_i

while bet_type != "Q" and money > 0 do
	
	puts "\n"
	
	# ask user for bet type
	print "Bet on E)ven, O)dd, N)umber, or Q)uit: "
	bet_type = gets.chomp.upcase
	
	# if they bet on an even number
	if bet_type == "E" then
		
		# ask for bet amount
		print "Please enter the amount of money you would like to bet: "
		bet_amount = gets.chomp.to_i
		while bet_amount < 0 or bet_amount > money do
			print "Invalid amount. You have $#{money}. Please try again: "
			bet_amount = gets.chomp.to_i
		
		end
		
		# spin the virtual wheel
		number_spun = rand(MAX_WHEEL)
		
		puts "The wheel is spun to the number #{number_spun}."
		
		# enter appropriate win or lose message
		if ( number_spun % 2 ) == 0 and number_spun != 0 then
			puts "Congratulations! You won $#{bet_amount}."
			money = money + bet_amount
			number_of_wins = number_of_wins + 1
			puts "You now have $#{money}."
		end
		
		if ( number_spun % 2 ) == 1 or number_spun == 0 then
			puts "Sorry! You lost $#{bet_amount}."
			money = money - bet_amount
			number_of_losses = number_of_losses + 1
			puts "You now have $#{money}."
		end
		
	# if they bet on an odd number
	elsif bet_type == "O" then
		
		# ask for bet amount
		print "Please enter the amount of money you would like to bet: "
		bet_amount = gets.chomp.to_i
		while bet_amount < 0 or bet_amount > money do
			print "Invalid amount. You have $#{money}. Please try again: "
			bet_amount = gets.chomp.to_i
		end
		
		# spin the virtual wheel
		number_spun = rand(MAX_WHEEL)
	
		puts "The wheel is spun to the number #{number_spun}."
		
		if ( number_spun % 2 ) == 1 then
			puts "Congratulations! You won $#{bet_amount}."
			money = money + bet_amount
			number_of_wins = number_of_wins + 1
			puts "You now have $#{money}."
		end
		
		# enter appropriate win or lose message
		if ( number_spun % 2 ) == 0 then
			puts "Sorry! You lost $#{bet_amount}."
			money = money - bet_amount
			number_of_losses = number_of_losses + 1
			puts "You now have $#{money}."
		end
	
	# if they bet on a specific number
	elsif bet_type == "N" then
		
		#ask user for their number
		print "Please enter the number you want to bet on (0 to 36): "
		number_guessed = gets.chomp.to_i
		while number_guessed < 0 or number_guessed > 36 do
			if number_guessed < 0 or number_guessed > 36 then
				print "Invalid number. Please try again: "
				number_guessed = gets.chomp.to_i
			end
		end
		
		# ask for bet amount
		print "Please enter the amount of money you would like to bet: "
		bet_amount = gets.chomp.to_i
		while bet_amount < 0 or bet_amount > money do
			print "Invalid amount. You have $#{money}. Please try again: "
			bet_amount = gets.chomp.to_i
		end
		
		# spin the virtual wheel
		number_spun = rand(MAX_WHEEL)
	
		puts "The wheel is spun to the number #{number_spun}."
		
		# enter appropriate win or lose message
		if number_spun == number_guessed then
			puts "Great job!!! You won #{WIN_FACTOR} times the amount of your"
			puts "bet. You won $#{WIN_FACTOR * bet_amount}."
			money = money + ( WIN_FACTOR * bet_amount )
			number_of_wins = number_of_wins + 1
			puts "You now have $#{money}."
		end
		
		if number_spun != number_guessed then
			puts "Sorry! You lost $#{bet_amount}."
			money = money - bet_amount
			number_of_losses = number_of_losses + 1
			puts "You now have $#{money}."
		end
		
	#if the bet type is an invalid choice
	elsif bet_type != "Q" then		
		puts "Invalid choice. Please try again."		
	end
	
end

puts "\n"

if money == 0 then
	puts "Sorry! You went bankrupt!"
end

puts "Here are your game statistics."
puts "Number of wins: #{number_of_wins}"
puts "Number of losses: #{number_of_losses}"
puts "You finished with $#{money}."
puts "Thank you for playing!"
