# Hashes with Teddit

# Using our new knowledge of arrays and hashes, let's make Teddit even better.
# Follow the instructions in the comments below:

def get_input
  gets.strip
end

def calculate_upvotes(story, category)
  upvotes = 1

  upvotes *= 5 if story.downcase.include? 'cats' or category.downcase.include? 'cats'
  upvotes *= 8 if story.downcase.include? 'bacon' or category.downcase.include? 'bacon'
  upvotes *= 3 if story.downcase.include? 'food' or category.downcase.include? 'food'

  upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

# Create an empty array named `posts` that we will use to store all of the
# stories, their categories and their upvotes in, as hashes.

input = ''
until input == 'exit'
  puts 'Please enter a News story:'
  post = {}
  # Change the below line so that instead of storing the input in a variable
  # called `story`, we instead store it in a hash, where the key is :story.
  # (hint: you maaaay need to define the hash first above this line)
  story[:story] = get_input

  puts 'Please give it a category:'

  # In the same vein, let's get the category from the user, and instead of
  # storing the category in a variable called `category` (as below), let's
  # store it in the same hash, with a key of :category.
  category[:category] = get_input

  # Since we now know the story and category, let's calculate the upvotes and
  # store the result in the same hash as above, with a key of :category. Please
  # note, you may need to change the `story` and `category` variables below on
  # the below line if you changed where you store these values in the sections
  # above.
  
  upvotes = calculate_upvotes(post[:story], post[:category])

  # Lastly, let's add our new hash to the posts array that you created above
  # this loop.

  # Finally, we'll display the story to the end user before asking them if they
  # would like to add another
  puts "New story added! #{:story}, Category: #{:category.capitalize}, Current Upvotes: #{:upvotes}"

  puts 'Would you like to add another story? Type exit to leave this program'
  input = gets.strip
  puts
end