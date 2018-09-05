class Dock

  attr_reader :name, :max_rental_time,:checked_out

  def initialize(name,max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @checked_out = []
    @revenue = 0
  end

  def rent(boat,renter)
    @checked_out << [boat, renter]
  end

  

end
