class Person

  attr_reader :first_name, :last_name
  attr_accessor :favorite_area, :favorite_food

  def initialize(first_name, last_name, favorite_food)
    @first_name = first_name
    @last_name = last_name
    @favorite_food = favorite_food
  end



end
