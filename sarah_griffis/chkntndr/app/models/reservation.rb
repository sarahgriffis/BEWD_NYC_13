class Reservation < ActiveRecord::Base

  #before_save :find_by_foursquare
  belongs_to :user
  #method here

  def find_by_foursquare
    version = '20130815'

    client = Foursquare2::Client.new(:client_id => FOURSQUARE_ID, :client_secret => FOURSQUARE_SECRET, :api_version => version)
    foursquare_data = client.explore_venues(:ll => composed_location, :query => self.cuisine, :venuePhotos => true)
    #restaurant name, address, phone number, photo, price, cuisine, ratings
    foursquare_data.groups[0].items.each do |place|
      Restaurant.new(place[:venue][:name],
                     place[:venue][:location][:formattedAddress],
                     place[:venue][:contact][:formattedPhone],
                     place[:venue][:price].nil? ? '?' : place[:venue][:price][:tier],
                     place[:venue][:rating],
                     place[:venue][:ratingSignals],
                     place[:venue][:featuredPhotos].nil? ? 'no picture' : place[:venue][:featuredPhotos][:items][0][:prefix] ,
                     place[:venue][:featuredPhotos].nil? ? 'no picture' : place[:venue][:featuredPhotos][:items][0][:suffix])
    end

    Restaurant.all

  end

  def composed_location
    lat_lon = Geocoder.coordinates(self.city)
    lat_lon[0].to_s + ',' + lat_lon[1].to_s
  end


end

