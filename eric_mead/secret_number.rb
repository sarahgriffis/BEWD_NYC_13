#some style... bear with it

def get_input
  gets.strip.downcase
end

secret_number = rand(1..10)
num_guesses = 0

puts "======================================================"
puts "Hi, welcome to the secret number game written by Eric!\n"
puts "======================================================"
puts "I'm thinking of a secret number. Do you have what it\ntakes to guess it?"
puts "What is your name?"

player_name = get_input

input = ''
until input == 'no'

puts "======================================================"
puts "Hi #{player_name.upcase}! Let me tell you the rules.\n"
puts "======================================================"
puts "You must guess my secret number between 1 and 10\n"
puts "You get three chances to guess\n"
puts "======================================================"

3.downto(1) do |num_guesses|
    print "You have #{num_guesses} guesses left!! Enter a number...\n"
    user_guess = get_input.to_i
    num_guesses += 0

unless user_guess == secret_number
  message = if user_guess > secret_number
    puts "======================================================"
    puts "Your guess is a bit high, try guessing a lower number."
    puts "======================================================"
  else
    puts "======================================================"
    puts "Your guess is a bit low, try guessing a higher number."
    puts "======================================================"
  end
  puts message
  else
    puts "======================================================"
    puts "You beat the game!!\nReset your console to start a new game."
    puts "======================================================"
    exit
  end
end
puts "======================================================"
puts "Uh Oh!!! You ran out of guesses. Game over. \nThe secret number was..."
puts secret_number
puts "======================================================"


puts "Would you like to play again?? Type yes or no."
input = get_input.downcase.strip
puts "======================================================"
end


  