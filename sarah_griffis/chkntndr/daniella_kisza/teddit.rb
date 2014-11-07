# Teddit Conditionals

# Let's add a new Teddit feature. Automatic upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.strip 
end

def calculate_upvotes(story, category)
  # Write code so that:
    upvotes = 10

    upvotes *=5 if story.include? 'cats'
    upvotes *=8 if story.include? 'bacon'
    upvotes *=3 if story.include? 'food'

    upvotes
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
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"