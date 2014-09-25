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


puts 'Secret Number created by Joseph Robinson'

puts 'Please enter your name.'

def get_input
  gets.strip
end

player_name = get_input

puts "Welcome to Secret Number #{player_name}"

puts "In this game you will have three guesses to identify the Secret Number. The Secret Number is a whole number between 1 and 10"

secret_number = 9

win = false

first_guess = gets.to_i

while win == false
   

  if first_guess < secret_number 
    puts "Too low. Guess a higher number! 2 guesses left."
else
  if first_guess > secret_number
    puts "Too high! We are my Doritos? 2 guesses left."
  else 
  puts "You must have cheated! You got it right, but I'm watching you. Thanks for playing"
    win = true
end
end

second_guess = gets.to_i

if second_guess < secret_number 
    puts "Too low. Guess a higher number! 1 guess left."
else
  if second_guess > secret_number
    puts "Too high! 1 guess left."
  else 
  puts "You got it right! Thanks for playing!"
  win = true
end
end

third_guess = gets.to_i

if third_guess < secret_number 
    puts "Too low. Game Over.The Secret Number is #{secret_number}"
else
  if third_guess > secret_number
    puts "Too high! Game Over. The Secret Number is #{secret_number}"
  else 
  puts "You got it right! Thanks for playing"
  win = true
end
end
end


