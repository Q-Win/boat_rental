class Renter

  attr_reader :name, :credit_card

  def initialize(name, credit_card)
    @name = name
    @credit_card = credit_card
  end

end
