# FizzBuzz Exercise
#
# Write a program that loops from 1 to 100, displaying the word "Fizz" on the
# screen when the number being looped over is divisible by 3, and "Buzz" when
# the number is divisible by 5. If the number is divisible by both 3 and 5,
# display "FizzBuzz".
#
# The format of the output should look something like this:
#
# ...
# 54: Fizz
# 55: Buzz
# 56:
# 57: Fizz
# 58:
# 59:
# 60: FizzBuzz
# ...
#


1.upto(100) do |number|
  phrase = []
  if number % 3 == 0
    phrase << "Fizz"
  end
  if number % 5 == 0
    phrase << "Buzz"
  end  
  puts "#{number}: #{phrase.join("")}"
end