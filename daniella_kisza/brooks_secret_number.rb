total_guesses = 3
secret_number = rand(1..10)

puts "Welcome to the secret number game"
puts "Enter your name:"
name = gets.strip
puts "Hi #{name}! You have #{total_guesses} guesses in order to get the right secret number"

1.upto(total_guesses) do |number_of_tries|
  guess = gets.strip.to_i
  guesses_left = total_guesses - number_of_tries

  if guess < secret_number
    puts "You guessed too low"
    puts "You have #{guesses_left} #{guesses_left > 1 ? 'tries' : 'try'} left" if guesses_left > 0
  elsif guess > secret_number
    puts "You guessed too high"
    puts "You have #{guesses_left} #{guesses_left > 1 ? 'tries' : 'try'} left" if guesses_left > 0
  else
    puts "You got it right!"
    exit
  end
end

puts "You suck. The secret number was #{secret_number}"