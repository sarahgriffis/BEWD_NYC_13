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

i = 0

while i <= 100
  i += 1
  if i%15==0;
    puts "FIZZBUZZ"
  else  
  if i%3==0;
    puts "Fizz"
  else
    if i%5==0;
      puts "Buzz"
    else
        puts i
        
      end
      
    end
    
  end
  
end



