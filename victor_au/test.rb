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

def title_to_html(title)
  "<h1>#{title}</h1>"
end
def author_to_html(first_name, last_name, twitter_handle)
  "<p><i>Author: <a href='http://twitter.com/#{twitter_handle}'>#{first_name} #{last_name}</a></i></p>"
end
def body_to_html(body)
  "<p>#{body}</p>"
end
def tags_to_html(tags)
  tags.join(', ')
end
html = '<html><head><title>BEWD RadioLab Blog</title></head><body>'

#times_to_loop = 3
#i = 0

#while i < times_to_loop
#  puts "This is iteration number #{i+1}!"
#  puts blog_posts[i]
#  puts "\n"
#  i += 1
#end

puts "\n"

times_to_loop = 3
i = 0

while i < times_to_loop
  puts "This is post ##{i+1}!"

  post = blog_posts[i]
  html << ("\n" + title_to_html(post[:title]))
  html << ("\n" + author_to_html(post[:author][:first_name], post[:author][:last_name], post[:author][:twitter_handle]))
  html << ("\n" + body_to_html(post[:body]))
  html << ("\n" + tags_to_html(post[:tags]))

  puts html

  i += 1
  html = '<html><head><title>BEWD RadioLab Blog</title></head><body>'

  puts "\n"
end




