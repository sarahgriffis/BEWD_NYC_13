require 'pry'
require 'google_places'
require 'geocoder'
require 'rest-client'
require 'json'
require 'uri'

require_relative 'lib/person'
require_relative 'lib/place'


#requests left??

#foursquare
api_endpoint = 'https://api.foursquare.com/v2/venues/explore'
client_id = '?client_id=4WP0M2M2VEXY0JJFX522M0LH2RDZ2FLAZG10QXG2R3WBWEO5'
client_secret = '&client_secret=G1AQL1RXUUU2IXBHVSDA1AUPUIO0QVDOKYYTZ2BEHPPX3OEO'
version = '&v=20130815&'

def composed_location(user_location)

  lat_lon = Geocoder.coordinates("#{user_location}")

  location = 'll='
  location << lat_lon[0].to_s
  location << ','
  location << lat_lon[1].to_s
  location

end

def query(user_query)
  '&query='+ user_query
end


#google
#@client = GooglePlaces::Client.new('AIzaSyCzRMDbPT1G_zu3r6hwu6zFxD329s3AcKc')

#spots = @client.spots(-33.8670522, 151.1957362, :types => 'restaurant')

#spots.each do |spot|
#  puts spot.name
#end


puts "What is your first name?"
first_name = gets.strip

puts "What is your last name?"
last_name = gets.strip

puts "What is your favorite type of food?"
fav_food = gets.strip

person = Person.new(first_name, last_name, fav_food)

puts"If you'd like to find a place to eat, say 'yes'"
continue = gets.strip
exit if continue != 'yes'

puts "What area (city, neighborhood, etc.) would you like to eat in?"
user_location = gets.strip

until not(Geocoder.coordinates("#{user_location}").nil?) do
    puts 'Please input a valid location'
    user_location = gets.strip
end

person.favorite_area = user_location

#spots = @client.spots(Geocoder.coordinates("#{user_location}")[0], Geocoder.coordinates("#{user_location}")[1],
#                      :types => 'restaurant',
#                      :keyword => 'indian')

##Create url and get Foursquare data
url = URI.escape(api_endpoint + client_id + client_secret + version + composed_location(user_location) + query(fav_food))
response = RestClient.get(url)
parsed_response = JSON.parse(response)

if parsed_response['response']['groups'][0]['items'].length > 0

parsed_response['response']['groups'][0]['items'].each do |place|
  Place.new(place['venue']['name'], place['venue']['location']['formattedAddress'],
            place['venue']['location']['distance'],
            place['venue']['rating'])
end



puts "Would you like your choices by nearest distance or by best rating"
puts "Please type 'distance' or 'rating'"
sort_type = gets.strip


sorted = Place.all.sort_by{ |place| place.distance_miles} if sort_type == 'distance'

sorted =  Place.all.sort_by{ |place| -place.rating} if sort_type == 'rating'

sorted.each do  |place|
  puts  "#{place.name} is about #{place.distance_miles} miles from you and has a rating of #{place.rating}."
end

else
  puts 'Sorry, no results.'
end
