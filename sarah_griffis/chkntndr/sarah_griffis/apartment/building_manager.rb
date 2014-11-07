# Object-oriented programming in multiple classes
#
# This file is the "runner" for a program that manages apartments, their
# renters and the buildings that they are located in.
#
# Below this line are three `require_relative` statements, which take the code
# from those files and make them accessible to this file. Your job is to read
# this file, and fix all of the errors that occur. You will need to populate
# the contents of the files inside the lib/ folder.
#
# Start by running this file with `ruby building_manager.rb` inside of your
# terminal. You will get an error. Find the line that the error occurred on and
# debug your way through populating the contents of the three classes in lib/.
# There is no need to edit anything in this file.
require 'pry'
require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/person'

def create_building
  puts '-----------New Building-----------'
  puts "What is the building's name?"
  building_name = gets.strip

  puts "What is the building's address?"
  building_address = gets.strip

  Building.new(building_name, building_address)
end

def create_apartment
  puts '-----------New Apartment-----------'
  puts 'What is the apartment number?'
  apartment_number = gets.strip

  puts "How many square feet is apartment #{apartment_number}?"
  apartment_square_feet = gets.to_i

  puts "How many bedrooms does apartment #{apartment_number} have?"
  apartment_bedrooms = gets.to_i

  puts "How many bathrooms does apartment #{apartment_number} have?"
  apartment_bathrooms = gets.to_i

  Apartment.new(apartment_number, apartment_square_feet, apartment_bedrooms, apartment_bathrooms)
end

def create_renter
  puts '-----------New Renter-----------'
  puts "What is the renter's name?"
  renter_name = gets.strip

  puts "What is #{renter_name}'s credit score?"
  renter_credit_score = gets.to_i

  puts "Is #{renter_name} male or female?"
  renter_gender = gets.strip

  Person.new(renter_name, renter_credit_score, renter_gender)
end

puts "******************Welcome to Ruby Building Manager****************** \n \n \n"

building = create_building

puts 'How many units are there?'
apartment_count = gets.to_i

1.upto(apartment_count) do |unit|
  apartment = create_apartment
  building.apartments << apartment

  puts "Apartment number #{apartment.number} added successfully"

  puts "Is unit #{apartment.number} rented? (y)es (n)o"
  unit_rented = gets.strip

  if unit_rented == 'y'
    apartment.renter = create_renter
    puts 'Renter added successfully'

    puts 'How much is this unit rented for?'
    apartment.rent = gets.strip.to_i
  end
end

puts "What would you like to do next, (v)iew all apartments? (q)uit?"
response = gets.strip

if response == 'v'
  building.view_apartments
else
  puts 'Thanks for using Ruby Building Manager'
end
