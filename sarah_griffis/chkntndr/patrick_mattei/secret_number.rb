###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.

puts "Hi!  My name is Patrick.  Welcome to the number game."
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
puts "What's your name?"
player_name =  gets.strip
puts "Hi #{player_name}!"
puts

puts "Rules: Guess a number between 1 and 10.  You only have 3 tries to do so."
tries_left = 3

secret_number = 7

winner = false

puts "Type a guess:"

until tries_left == 0 or winner == true 
  guess = gets.strip.to_i

  if guess == secret_number
    winner = true
    puts "Congratulations!!  You win!"
  

  elsif guess > secret_number
    tries_left -= 1
      puts "Your guess was too high."

  elsif guess < secret_number
    tries_left -= 1
    puts "Your guess was too low."
  end

  if tries_left > 1 and winner == false 
    puts "You have #{tries_left} guesses before the game is over.  Enter  another number."
  elsif tries_left == 1 and winner == false 
    puts "You have #{tries_left} guess before the game is over.  Enter  another number."
  end
end


if tries_left == 0 and winner == false 
  puts "Sorry, #{player_name}, you lost.  The secret number was #{secret_number}"
end
