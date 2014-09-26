#!/usr/bin/env ruby

# 99 Bottles of Beer on the Wall Exercise
#
# Write a program that prints 99 bottles of beer on the wall. The song goes as
# so:
#
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
# ...
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall

99.downto(1) do |n|
    puts "#{n} bottles of beer on the wall"
    puts "#{n} bottles of beer!"
    puts "You take one down and pass it around,"
  if n > 1 
    puts "#{n-1} bottles of beer on the wall!\n\r"
  else
    puts "No more bottles of beer on the wall" 
  end
end