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

puts "Hi! Welcome to Jeff Hagan's Secret Number game."
puts "What's your name?"
player_name = gets.chomp
puts "Hi #{player_name}! Let's get started."
puts
puts "The game is simple: I'll pick a number between 1 and 10,"
puts "and you'll have three turns to guess what it is. Ready? "
puts "Let's begin. I'm thinking of a number... ok, got it!"
puts
puts "What's your first guess?"

secret_number = rand(1..10)
turns = 3

while turns > 0 do
  guess = gets.to_i
  turns -= 1
  if guess == secret_number
      puts "You win! Congratulations!"
      exit
  elsif guess > secret_number && turns > 0
      puts "Nope - too high. You have #{turns} more guesses - enter another number..."
  elsif guess < secret_number && turns > 0
      puts "Nope - too low. You have #{turns} more guesses - enter another number..."
  end

  if turns == 0
      puts "Nope! Sorry - game over. By the way, the secret number was #{secret_number}."
  end
end