class Person
  def initialize(renter_name, renter_credit_score, renter_gender)
    @renter_name = renter_name
    @renter_credit_score = renter_credit_score
    @renter_gender = renter_gender
  end

   attr_reader :renter_name, :renter_credit_score, :renter_gender


end
