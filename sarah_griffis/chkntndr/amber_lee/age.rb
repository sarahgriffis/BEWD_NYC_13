puts "Enter your age:"
age = gets.strip.to_i  #.to_i converts to string

0.upto(age) do |n|
  year = 2014 - (age - n)
  puts "When you were #{n} years old, the year was #{year}"

end
