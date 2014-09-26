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

def hello(name)
 "#{name}"
end

#def number?(guess)
  #true if guess == 3 
#end


  puts "Welcome to Guess the Secret Number by Amber Lee"
  puts "Please enter your name"
  name = get_input
  puts hello ("Hi #{name}!")
  puts "Guess a number between 1 and 10, you have three tries to guess correctly."
  secret_number = 8

times_to_loop = 3
tries = 0
while tries < times_to_loop 
  
  guess = get_input.to_i
  if guess == secret_number
    puts "Congratulations You Guessed Correctly" 
  elsif guess < secret_number
    puts "Sorry, your guess is too low! You have #{times_to_loop - (tries + 1)} tries left!" 
  elsif guess > secret_number
    puts "Sorry, your guess is too high! You have #{times_to_loop - (tries + 1)} tries left!" 
  end

  puts "Sorry that is not a valid guess" if guess > 10 || guess < 1

 

  tries += 1

end
 puts "Sorry, game over, the secret number was #{secret_number}" if tries == times_to_loop

#need to add Loop until 3 is true. 





