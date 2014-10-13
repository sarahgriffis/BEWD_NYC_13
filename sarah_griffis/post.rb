require 'pry'


class ActiveRecord
  def initialize
    @@objects ||= []
    @@objects << self
  end

  def self.all
    @@objects
  end

  def self.first
    @@objects.first
  end
end


class Post < ActiveRecord
  attr_accessor :title

  def initialize(title)
   # @@posts ||= []
   # @@posts << self
    @title = title
    super() #Ruby will overwrite the initialize.  This takes the code from the parent
            #the paranthesis tell Ruby the parent's initialize has no arguments
  end

#  def self.all
#    @@posts
#  end
end


10.times do |n|
  Post.new("Title #{n}.")

end


html = ''

Post.all.each do |post|
  html << "<h1>#{post.title}</h1>"
end


File.write('blog.html', html)



