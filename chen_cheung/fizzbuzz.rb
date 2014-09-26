i =1

i.upto(100) do |n|
  if n % 3 == 0 and n % 5 == 0
    puts "#{n} Fizzbuzz"
  elsif n % 3 == 0
    puts "#{n} Fizz"
  elsif n % 5 == 0
    puts "#{n} Buzz"
  else
    puts "#{n}"
  end
end