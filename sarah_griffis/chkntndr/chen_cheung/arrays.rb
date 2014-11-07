# Array Exercise
#
# Edit the contents of `top_right`, `bottom_center` and `center`
# according to the comments in each of the methods. Once completed, run this
# file from your terminal (remember, we use the `ruby` command), and you should
# see a success or failure message for each.
#

matrix = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8]
]

def top_right(matrix)
  # This method should return (not puts) the number all the way to the top
  # right of the variable `matrix`
  matrix[0][2]
end

def bottom_center(matrix)
  # This method should return (not puts) the number all the way to the bottom
  # left of the variable `matrix`
  matrix[2][1]
end

def center(matrix)
  # This method should return (not puts) the array in the middle of the `matrix`
  matrix[1]
end

if top_right(matrix) == 2
  puts 'SUCCESS: You got the top right element!'
else
  puts "It looks like the `top_right` method isn't returning the right value"
end

if bottom_center(matrix) == 7
  puts 'SUCCESS: You got the bottom center element!'
else
  puts "It looks like the `bottom_center` method isn't returning the right value"
end

if center(matrix) == [3, 4, 5]
  puts 'SUCCESS: Congratulations, you finished the exercise'
else
  puts "It looks like your `center` method isn't reutrning the right value"
end