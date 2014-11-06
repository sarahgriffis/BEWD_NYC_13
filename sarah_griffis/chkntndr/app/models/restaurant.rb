class Restaurant


  attr_reader :name, :formatted_address, :formatted_phone, :price_tier, :rating, :num_ratings, :photo_url
  #:distance_miles

  def initialize(name, formatted_address, formatted_phone, price_tier, rating, num_ratings, photo_url_prefix, photo_url_suffix)
    @@restaurants ||= []
    @@restaurants << self
    @name = name
    @formatted_address = formatted_address
    #@distance_miles = distance*0.000621371
    @rating = rating
    @rating ||= 0
    @formatted_phone = formatted_phone
    @price_tier = price_tier
    @num_ratings = num_ratings
    @photo_url = photo_url_prefix + '300x300' + photo_url_suffix
  end

  def self.all
    @@restaurants
  end


end


