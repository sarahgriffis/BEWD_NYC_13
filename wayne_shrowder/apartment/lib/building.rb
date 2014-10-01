class Building
  attr_accessor :apartments

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end

  def view_apartments
    apartments.each do |apartment|
      puts "Name: #{apartment.number}, Renter: #{apartment.renter.name}, Rent: #{apartment.rent}"
    end
  end
end
