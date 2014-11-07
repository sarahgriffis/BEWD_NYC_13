class Apartment
  attr_reader :number, :square_feet, :bedrooms, :bathrooms

  attr_accessor :renter, :rent

  def initialize(number, square_feet, bedrooms, bathrooms)
    @number = number
    @square_feet = square_feet
    @bedrooms = bedrooms
    @bathrooms = bathrooms
  end


end
