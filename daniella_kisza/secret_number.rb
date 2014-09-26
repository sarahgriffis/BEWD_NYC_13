###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#

puts "Welcome to Daniella's game!"
puts "What's your name?"

#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"

player_name = gets.strip
puts "Welcome #{player_name}. Let's play!"



#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#

#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random 
#       number between 1 and 10.

puts "Please guess a number between 1-10. You have 3 tries."

total_tries = 3
tries = 0
secret_number = rand(10) + 1

def try_or_tries(total_tries, tries)
  if (total_tries - tries) > 1
    'tries'
  else
    'try'
  end
end

while tries < total_tries 
  tries += 1
  guessed_number = gets.to_i
  if guessed_number > secret_number
    puts "Guess is too high."
    if total_tries - tries > 0
      puts "You have #{total_tries - tries} #{try_or_tries(total_tries, tries)} left!"
    end
  elsif guessed_number < secret_number 
    puts "Guess is too low."
    if total_tries - tries > 0
      puts "You have #{total_tries - tries} #{try_or_tries(total_tries, tries)} left!"
    end
  elsif guessed_number == secret_number
    puts "You win!"
    exit
  end
  puts "Try again!" if tries < total_tries - 1
end

puts "You Lose! The Secret Number is #{secret_number}"



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
