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

def initialize
  @secret
puts "WELCOME TO THE ~*SuPeR CoOl*~ SUPER SECRET NUMBER GAME! **Created by Jenn Spriggs**"

playagain = "y"

while playagain == "y"

  win = false

  randNum = rand(10) + 1


  puts "(^_^) PLEASE GUESS A NUMBER BETWEEN 1 and 10! You have three guesses!"

# def play
  #   greeting
  #   @guesses.times do |n|
  #     guesses_left = n-1 
  #     puts "\nYou have #{guesses_left} guesses left!"
  #     puts "Please make your first guess:"
  #     players_guess = $stdin.gets.chomp.to_i
  #     return if correct?(players_guess)
  #   end
  #   puts "You lost! :-( The number to guess was #{@secret_number}."
  # end

  while !win
      guessedNumber = gets.to_i

    times_to_loop = 3
    i = 0

      while i < times_to_loop
        if guessedNumber > randNum then
          puts "(╯°□°)╯︵ ┻━┻ TOO HIGH, TRY AGAIN! You have #{i} number of guesses left!" 
        elsif guessedNumber < randNum then
          puts "‎(ﾉಥ益ಥ）ﾉ﻿ ┻━┻ TOO LOW, TRY AGAIN! You have #{i} number of guesses left!"
        else
          puts "(づ｡◕‿‿◕｡)づ YOU WIN!!!"
          win = true
        i += 1
        end
      end
    end
  # end

  puts "The secret number was #{randNum} (◡ ‿ ◡ ✿) WANNA DO IT AGAIN?! (y/n)"
  playagain = gets.chomp!
end

puts "Thanks for playing! [^._.^]ﾉ彡 "

