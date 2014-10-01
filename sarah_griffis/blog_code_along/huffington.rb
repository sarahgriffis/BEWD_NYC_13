require_relative 'lib/post.rb'
require_relative 'lib/author.rb'

puts "Hello, welcom to Huffington Post!"
puts "Please enter some info:"

author = Author.new
post = Post.new

puts "first name?"
author.first_name = gets.strip

puts "last name?"
author.last_name = gets.strip

puts "email?"
author.email = gets.strip

post.author = author

puts "blog title?"
post.title = gets.strip

puts "blog body?"
post.body = gets.strip


puts "Here are your posts:"
  puts "Title: #{post.title}"
  puts "By: #{post.author.full_name}"
  puts post.body
  puts "Contact the author at: #{post.author.email}"
  puts




