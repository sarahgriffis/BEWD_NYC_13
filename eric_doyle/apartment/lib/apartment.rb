class Apartment
  attr_accessor :number, :renter, :rent

  def initialize(number, square_feet, bedrooms, bathrooms)
    @number = number
    @square_feet = square_feet
    @bedrooms = bedrooms
    @bathrooms = bathrooms
  end
end
