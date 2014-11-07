###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random 
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################

def get_input
  gets.strip
end

secret = 5
$tries = 2

puts "Welcome to the Secret number game created by Benjamin Cheung."
puts "Please enter your name."

player_name = get_input

puts "Hi #{player_name}!"

puts "To play secret number you must guess a number between 1 and 10 you will only have 3 tries to do so."
puts "Please enter your guess."

guess = get_input.to_i;


while $tries > 0 do
	if guess == secret 
		puts "Congratulations your guess of #{guess} is correct."
		break
	end

	if guess > secret 
		puts "Sorry your guess was too high"
	elsif guess < secret 
		puts "Sorry your guess was too low"
	end
	
	puts "Please try again you have #{$tries} tries left"
	guess = get_input.to_i
	$tries = $tries - 1

	if guess != secret && $tries == 0 
		puts "Sorry game over the secret number was #{secret}"
	end
end
	



