puts "Enter your age"
age = gets.strip.to_i

0.upto(age) do |n|
  year = 2014 - (age - n + 1)
  puts "When you were #{n} years old, the year was #{year}"
end