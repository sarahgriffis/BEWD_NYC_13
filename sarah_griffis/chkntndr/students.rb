# This is the script that was used to generate all of the folders in this
# repository. The file can be run by typing the following in the terminal:
#
#   ruby students.rb

# A method that takes a string (a block of text surrounded by single or double
# quotes), makes all letters lowercase and replaces any spaces with underscores
def underscoreize(string)
  string.downcase.gsub(' ', '_')
end

# An array (list) of the full names of all students in the class
full_names = [
  'Daniella Kisza',
  'Justin Weiss',
  'Victor Au',
  'Hang Yu',
  'Joseph Robinson',
  'Eric Mead',
  'Wayne Shrowder',
  'Chenoe Hart',
  'Margi Dubal',
  'Sarah Griffis',
  'Jeff Hagan',
  'Benjamin Cheung',
  'Amber Lee',
  'Matt Carroll',
  'Chen Cheung',
  'Patrick Mattei',
  'Eric Doyle',
  'Jackie Quartner',
  'Phillip Lisovicz',
  'Brandon Ngai',
  'Jennifer Spriggs',
]

# Loop through each of the elements in the array, running the `mkdir` command
# with the underscoreized version of the name, then touch a blank file called
# .gitkeep
full_names.each do |name|
  %x( mkdir #{underscoreize(name)} )
  %x( touch #{underscoreize(name)}/.gitkeep )
end
