def get_input
  gets.strip
end

#recursive
def secret_number_game(count)
  numba = 7
  first = get_input.to_i
  
  if first > 10 || first < 1 
    puts "Guess didn't register. You must guess between 1 and 10"
    secret_number_game(count)
  elsif first == numba 
    puts "Correct! You guessed in #{count} attempt(s)!! The number was #{numba}"
  elsif first < numba
      if count < 3
        puts "Too Low... You have #{3-count} guesses left"
        count += 1
        secret_number_game(count)
      else
        puts "You are out of guesses. The correct Number was #{numba}"
    end
  else
    if count < 3
      puts "Too high... You have #{3-count} guesses left"
      count += 1
      secret_number_game(count)
    else
      puts "You are out of guesses. The correct Number was #{numba}"
    end
  end
end


#non-recursive
def secret_game
  numb = 3
  guess = 1
  first = get_input.to_i

  while guess <= 3
    if first > 10 || first < 1
      puts "Guess didn't register. You must guess between 1 and 10"
      first = get_input.to_i
    else
      if first == numb 
        puts "Correct! You guessed in #{guess} attempt(s)!"
        guess = 5
      elsif first < numb
        puts "Too low... You have #{3-guess} guesses left"
        guess += 1
        if guess != 4
          first = get_input.to_i
        end
      elsif first > numb
        puts "Too high... You have #{3-guess} guesses left"
        guess += 1
        if guess != 4
          first = get_input.to_i
        end
      end
    end
  end

  if guess == 5
    puts "You win!!"
  else
    puts "You lost and the game is over. The Secret Number was #{numb}"
  end
end

#non-recursive
# puts "Welcome to the Secret Number Game, created by Phil Lisovicz"
# puts "What's your name?"
# name = get_input
# puts "Hi #{name}!"
# puts "You have three tries to guess a number between 1 and 10. If you don't successfully guess after three, you lose and game oooover."
# puts "Go ahead and guess"
# secret_game

#recursive
puts "Welcome to the Secret Number Game, created by Phil Lisovicz"
puts "What's your name?"
name = get_input
puts "Hi #{name}!"
puts "You have three tries to guess a number between 1 and 10. If you don't successfully guess after three, you lose and game oooover."
puts "Go ahead and guess."
secret_number_game(1)
