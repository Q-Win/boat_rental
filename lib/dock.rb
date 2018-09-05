class Dock

  attr_reader :name, :max_rental_time,:checked_out, :revenue

  def initialize(name,max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @checked_out = []
    @revenue = 0
    @total_revenue = []
  end

  def rent(boat,renter)
    @checked_out << [boat, renter]
  end


  def log_hour
    new_revenue = 0
    @checked_out.each do |out|
      out[0].add_hour
      new_revenue += (out[0].hours_rented * out[0].price_per_hour)
    end
    @revenue = new_revenue
  end

  def return(boat)
    @checked_out.each do |out|
      if out[0] == boat
        @checked_out.delete(out)
      end
    end
  end

end
