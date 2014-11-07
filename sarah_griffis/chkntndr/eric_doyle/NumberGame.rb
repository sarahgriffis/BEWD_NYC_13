
def get_input
  gets.strip
end


puts 'Welcome Player! Im Eric Doyle and I have made this game!'
puts 'Whats your name?'
name = get_input
puts "Hi #{name}!"
puts 'You get 3 guesses to guess the secret number between 1 and 10!'


puts "Guess the secret number!"
number = gets.strip
secret_number = '7'
i = 0
  while i < 2
    if number < secret_number
      puts "Your guess is too low!"
      puts "You have #{2-i} guesses left! Enter another number!"
      i += 1
      number = gets.strip
    end
    if number > secret_number
      puts "Your guess is too high"
      puts "You have #{2-i} guesses left! Enter another number!"
      i += 1
      number = gets.strip
    end
    if number == secret_number
      puts "CONGRATULATIONS!!! YOU GOT IT RIGHT :D"
    end
    if i == 2
     puts "I'm so sorry you lost... The secret number was #{secret_number}"
    end unless number == secret_number
  end
#YYYYYYYYYYYEEEEEEEEEEEESSSSSSSSSSSSSS!!!!!!! ! :D