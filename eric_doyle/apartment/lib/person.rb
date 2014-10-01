class Person
  attr_reader :name

  def initialize(name, credit_score, gender)
    @name = name
    @credit_score = credit_score
    @gender = gender
  end
end
