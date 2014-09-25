# RadioLab Blog
#
# The purpose of this exercise is to utilize the skills that you've learned
# to access and retrieve values from arrays and hashes to create an HTML page
# that your browser can open.
#
# Below is an array of blog posts, which contains three individual posts,
# stored as hashes. Each hash has four attributes: the title, body, a child
# hash (which contains the authors first name, last name and twitter handle),
# and a child array which contains various tags about the post.
#
# Your job is to fill in the logic at the end of the `blog_posts` array,
# following the comments as your guide.

blog_posts = [
  {
    title: 'What Makes A Star Starry? Is It Me?',
    body: "Notice what Tyler Nordgren does in these posters. He's an artist, an astronomer (from Cornell, Carl Sagan's department);",
    author: {
      first_name: 'Robert',
      last_name: 'Krulwich',
      twitter_handle: '@rkrulwich'
    },
    tags: ['art', 'education', 'science']
  },
  {
    title: 'The Meter: The Measure of a Man',
    body: "About six and a half billion people use the metric system every single day.  That's more than the citizens of any single nation, the followers of any single religion or the speakers of any single language.",
    author: {
      first_name: 'Latif',
      last_name: 'Nasser',
      twitter_handle: '@latifnasser'
    },
    tags: ['discovery', 'dialogues', 'history', 'meter', 'science', 'storytelling']
  },
  {
    title: 'Shattering Silence and An Eye of God',
    body: "In our Morality show, we tell the story of Eastern State Penitentiary -- a radical new kind of prison engineered to crack into the hearts and minds of 19th-Century criminals",
    author: {
      first_name: 'Brenna',
      last_name: 'Farrell',
      twitter_handle: '@brennacfarrell'
    },
    tags: ['history', 'morality', 'prison']
  }
]

## HTML conversion methods - there should be no need to edit any of these

# This method will requires one parameter to be passed to it (referenced as
# `title` everywhere inside the method) and surround it with <h1> (header) tags
def title_to_html(title)
  "<h1>#{title}</h1>"
end

# This method requires three parameters to be passed to it. The first parameter
# should be the first name of the author, the second parameter should be the
# last name of the author, and the last parameter should be their twitter
# handle. It will then output a string that is italicized and linked to their
# twitter page.
def author_to_html(first_name, last_name, twitter_handle)
  "<p><i>Author: <a href='http://twitter.com/#{twitter_handle}'>#{first_name} #{last_name}</a></i></p>"
end

# This method requires one parameter to be passed to it (referenced inside of
# the method as `body`, and it will return to you the body surrounded with <p>
# tags.
def body_to_html(body)
  "<p>#{body}</p>"
end

# This method uses some Array sorcery in order to take multiple elements of an
# array and output one sentence with commas separating each element.
def tags_to_html(tags)
  tags.join(', ')
end

## End HTML conversion methods

# Starting here we're going to build a string that is the start of the HTML
# that we want to be displayed in our browser. This string, `html`, contains
# the title, and the start of the body.
html = '<html><head><title>BEWD RadioLab Blog</title></head><body>'

# Create a loop that iterates through each of the blog posts. Since
# `blog_posts` is an array, you can start at 0 and loop to the size of the
# elements in the array. Make sure that you have a way to access the current
# iteration number when looping over the array.
blog_posts.each_index do |loop_number|

  # Once inside of the loop, create a new variable called `post` (singular)
  # that is equal to the value of the `blog_posts` array at the current
  # iteration number as the index. Don't forget, indexes start at 0, so you may
  # need to offset the current iteration number first.
  post = blog_posts[loop_number]

  # Now that we have access to a single element of `blog_posts` (which you
  # you stored in a variable called `post` above) we need to extract the
  # :title key from that post hash, and append it to the `html` string that we
  # defined out of the loop. You can append to strings in the same way that you
  # add something to an array, with `<<`. For example 'Brooks <3s ' << 'cats',
  # will return 'Brooks <3s cats'. Also, since we have a method that can help
  # convert the title to html, defined above, be sure to pass the title for the
  # current post to that method and append the result to the `html` variable.
  html << title_to_html(post[:title])

  # You will want to do the same thing for the author. But remember, the method
  # that is defined above takes in three parameters, the first name, last name
  # and twitter handle. Once you have executed that method, append the result
  # to `html`.
  #html << author_to_html(post[:author[:first_name]], post[:author[:last_name]], post[:author[:twitter_handle]])
  author_info = post[:author]
  html << author_to_html(author_info[:first_name], author_info[:last_name], author_info[:twitter_handle])

  # Same idea again here for the body of the current post that we're iterating
  # over. Pass the body of the current hash to the html helper method defined
  # above and then append the output to the `html` variable.
  html << body_to_html(post[:body])

  # Lastly, do the same thing for the tags of the `post` (run the appropriate
  # helper method defined above and append the output to the `html` variable.
  # Since the tags are stored as an array, you would think that we need to
  # somehow iterate over it, but instead we leave that job up to the method
  # defined above that converts tags them to HTML.
  html << tags_to_html(post[:tags])


# Be sure to end your loop here.
end

# Finally, we use this line to append the closing tags to our HTML
html << '</body></html>'

# And here, we use some Ruby magic to write the contents of the `html` variable
# to a file named blog.html, and then we use the %x method to tell our computer
# to open the file in our default browser. You should see the following page
# display in your browser if you successfully completed the exercise:
# http://i.imgur.com/6GmCNVU.png
File.write('blog.html', html)
%x(open 'blog.html')