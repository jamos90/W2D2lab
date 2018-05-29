class Bus

attr_reader :route, :passengers

  def initialize(route, destination)

    @route = route
    @destination = destination
    @passengers = []

  end

  def number_of_passengers()
    return @passengers.count()
  end


end
