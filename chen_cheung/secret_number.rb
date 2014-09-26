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

puts("Welcome!")
puts("Created by Chen")

#Greet player
print("What is your name? ")
name = gets.strip
puts("Hi #{name}!")

#Explain rules
puts("You have 3 chances to guess the secret number between 1 and 10.")

#Secret number between 1 and 10
secret_num = 3

num_of_guesses = 1;

num_of_guesses.upto(3) do |n|

  #Prompt the user for a guess
  print("Guess number #{n} out of 3: ")
  guess = gets.strip
  
  #Verfify guess
  if guess.to_i == secret_num
    puts "Congratulations, you guessed the number!"
    break
  elsif guess.to_i < secret_num
    puts("Too low.")
  elsif guess.to_i > secret_num
    puts("Too high.")
  end
  
  puts("Game over. The correct number was #{secret_num}.") if n == 3 and guess.to_i != secret_num
end