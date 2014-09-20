# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# # between 1 and 10.
# #
# # Here are some guidelines to building your game:
# #
# #   Intros
# #   - Welcome the player to your game. Let them know who created the game.
# #   - Ask for the player's name then personally greet them by printing to the
# #     screen, "Hi player_name!"
# #   - Any good game will communicate the rules. Let the player know they must
# #     guess a number between 1 and 10 and that they only have 3 tries to do so.
# #
# #   Functionality:
# #     - Hard code the secret number. Choose a random number between 1 and 10.
# #     - Ask the user for their guess.
# #     - Verify if they were correct. If the player guesses correctly they win
# #       the game, they should be congratulated and the game should end.
# #     - If they guess incorrectly, give the player some direction. If they
# #       guess too high let them know, if they guess too low, let them know.
# #     - Don't forget to let your players know how many guesses they have left.
# #       Your game should say something like:
# #         "You have X guesses before the game is over enter a another number"
# #     - If they don't guess correctly after 3 tries, display that the player
# #       lost and that the game is over. Be nice and let them know what the
# #       `secret_number` was.
# #
# ###############################################################################
#
#Get user string input
def get_input
  gets.strip
end


#Check if true
def correct_guess?(guess, secret_num)
  if guess == secret_num
    puts "Correct! Good guess! You win."
    true
  else
    puts "Nope, too high." if guess > secret_num
    puts "Nope, too low." if guess < secret_num
    #puts "You have X guesses left."
    false
  end
end


#Define game parameters
#Create the random number
min = 1
max = 10
secret_num = rand(max) + min
#Set the max number of guesses
total_guesses_allowed = 3


#Introduce the player to the game
puts "Welcome to the secret number game! Created by Sarah Griffis"
puts "Who's playing today?"
player_name = get_input #check if name is a string?
puts "Hi #{player_name}!"
puts "You have #{total_guesses_allowed} total guesses to make between #{min} and #{max}."


#Loop through a max of 3 guesses
i = 0
while i < total_guesses_allowed

  puts "This is guess number #{i + 1} of #{total_guesses_allowed}.  Go ahead, input a number:"
  guess = get_input.to_i

  if correct_guess?(guess, secret_num)
    break
  end
  i += 1

  puts "Sorry! The secret number was #{secret_num}." if i == 3
end





