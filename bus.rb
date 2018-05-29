class Bus

attr_reader :route, :passengers
attr_writer :passengers

  def initialize(route, destination)

    @route = route
    @destination = destination
    @passengers = []

  end

  def number_of_passengers()
    return @passengers.count()
  end

  def pick_up(passanger)
    @passengers << passanger
  end

  def drop_off(passanger)
    @passengers.delete(passanger)
  end



end
