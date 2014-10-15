class Place
  attr_reader :name, :formatted_address, :distance_miles, :rating

  def initialize(name, formatted_address, distance, rating)
    @@places ||= []
    @@places << self
    @name = name
    @formatted_address = formatted_address
    @distance_miles = distance*0.000621371
    @rating = rating
    @rating ||= 0
  end

  def self.all
    @@places
  end

end

