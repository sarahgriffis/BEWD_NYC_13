puts "Welcome to my first game! I'm Victor. What's your name?"
player_name = gets.strip
if player_name.downcase == "victor" or player_name.downcase == "vic"
  puts "\n"
  puts "Hi, #{player_name.capitalize}! We have the same name! Cool."
else 
  puts "\n"
  puts "Hi, #{player_name.capitalize}!"
end

puts "\n"
puts "The rules of this game are as follows. You must guess an integer between 1 and 10, and you only have three tries to do so."
puts "\n"

secret_number = rand(1..10)
#I googled around and figured that I'd use Ruby's pseudo-random number generator instead of a static number.

puts "#{player_name.capitalize}, what's your first guess?"

input = gets.strip
if input.to_i == secret_number
  puts "Correct! That's a pretty lucky first guess."
  puts "\n"
  puts "Congratulations, #{player_name.capitalize}! You win nothing. Game over."
  exit
elsif input.to_i > secret_number and input.to_i <= 10
  puts "Incorrect! You guessed too high."
elsif input.to_i >= 1 and input.to_i < secret_number
  puts "Incorrect! You guessed too low."
else
  puts "Please input an integer between 1 and 10."
end

puts "\n"
puts "Two guesses left! Please enter another number."

input = gets.strip
if input.to_i == secret_number
  puts "Correct!"
  puts "\n"
  puts "Congratulations, #{player_name.capitalize}! You win nothing. Game over."
  exit
elsif input.to_i > secret_number and input.to_i <= 10
  puts "Incorrect! You guessed too high."
elsif input.to_i >= 1 and input.to_i < secret_number
  puts "Incorrect! You guessed too low."
else
  puts "Please input an integer between 1 and 10."
end

puts "\n"
puts "One guess left! Please enter another number."

input = gets.strip
if input.to_i == secret_number
  puts "Correct! (Finally...)"
  puts "\n"
  puts "Congratulations, #{player_name.capitalize}! You win nothing. Game over."
else
  puts "Incorrect!"
  puts "\n"
  puts "Sorry, you lose. Game over! The secret number was #{secret_number}."
end

