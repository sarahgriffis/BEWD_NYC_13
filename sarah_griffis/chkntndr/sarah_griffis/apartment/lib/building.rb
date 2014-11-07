class Building
  def initialize(name, address)
    @name = name
    @address = address
    @apartments = Array.new
  end

  #attr_reader :name, :address
  attr_accessor :apartments, :view_apartments


  def view_apartments
    apartments.each do |apartment|
      puts "Apt No. #{apartment.number}, #{apartment.square_feet} square feet "
    end
  end

end
