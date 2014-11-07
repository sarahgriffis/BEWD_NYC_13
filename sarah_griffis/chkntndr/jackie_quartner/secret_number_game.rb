
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


def get_input
  gets.strip
end



def intro
puts "Welcome to Secret Number Game! This game was created by Jackie Quartner."
puts "What is your name?"
player_name = get_input

puts "Hi #{player_name.capitalize}!"
puts 'There are a few rules before we get started:'
puts '1. Guess a number between 1 and 10'
puts '2. You have 3 chances to guess the correct number'
puts '3. Have fun!'
end


def first_guess (secret_number)
  puts "Please guess a number:"
  user_guess = get_input.to_i
  until 1 <= user_guess && user_guess <= 10
    puts "Your guess must be an integer between 1 and 10.  Please guess another number:"
    user_guess = get_input.to_i
  end
  if user_guess < secret_number
    puts"That is incorrect.  The secret number is higher." 
    puts "You have 2 remaining guesses before the game" 
    puts "is over." 
  elsif user_guess > secret_number
    puts "That is incorrect.  The secret number is lower." 
    puts "You have 2 remaining guesses before the game" 
    puts "is over." 
  end
  user_guess
end 

def second_guess (secret_number)
  puts "Please guess another number:"
  user_guess = get_input.to_i
  until 1 <= user_guess && user_guess <= 10
    puts "Your guess must be an integer between 1 and 10.  Please guess another number:"
    user_guess = get_input.to_i
  end
  if user_guess < secret_number
    puts "That is incorrect.  The secret number is higher." 
    puts "You have 1 more guess before the game"
    puts "is over." 
  elsif user_guess > secret_number
    puts "That is incorrect.  The secret number is lower." 
    puts "You have 1 more guess before the game"
    puts "is over." 
  end
  user_guess
end

def third_guess
  puts "Please guess another number:"
  user_guess = get_input.to_i
  until 1 <= user_guess && user_guess <= 10
    puts "Your guess must be an integer between 1 and 10.  Please guess another number:"
    user_guess = get_input.to_i
  end
  user_guess
end

secret_number = 3
intro
user_guess = first_guess (secret_number)
if user_guess != secret_number
  user_guess = second_guess (secret_number)
end
if user_guess != secret_number
  user_guess = third_guess
end 

if user_guess != secret_number
  puts "I'm sorry, you are out of guesses and you did not correctly guess the secret number was #{secret_number}"
else
  puts "That is correct the secret number was #{secret_number}!"
end
