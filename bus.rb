class Bus

attr_reader :route, :passengers
attr_writer :passengers

  def initialize(route, destination)

    @route = route
    @destination = destination
    @passengers = []

  end

  def drive(brum)
    return "#{brum}!"
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

  def empty_bus()
    @passengers = []
  end

  def test_pick_up_from_stop(bus_stop)
    for person in bus_stop.queue()
      @passengers << person
    end
    bus_stop.empty_bus_stop()
  end



end
