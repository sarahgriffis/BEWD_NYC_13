# Teddit Conditionals

# Let's add a new Teddit feature. Automatic upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.strip
  # Get input from the user.
end

def calculate_upvotes(story, category)
  upvotes = 1
  if story.include? "cats" or category.include? "cats"
    upvotes *= 5
  end
  if story.include? "bacon" or category.include? "bacon"
    upvotes *= 8
  end
  if story.include? "food" or category.include? "food"
    upvotes *= 3
  end

  upvotes

  # Write code so that:
    # If the story is about cats multiply the upvotes by 5
    # If the story is about bacon multiply the upvotes by 8
    # If the story is about food it gets 3 times the upvotes.

    #For example:
    # "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category}, Current Upvotes: #{upvotes}"