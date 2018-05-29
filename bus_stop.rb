class BusStop

  attr_reader :queue
  attr_writer :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def lenght_queue()
    return @queue.count()
  end

  def add_person_queue(passenger)
    @queue.push(passenger)

  end

  def empty_bus_stop()
    @queue = []
  end

end
