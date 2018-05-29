require("minitest/autorun")
require_relative("../person.rb")
require_relative("../bus.rb")
require_relative("../bus_stop.rb")
require("minitest/rg")


class BusStopTest < MiniTest::Test

  def setup
    @james = Person.new("James", 28)
    @jesus = Person.new("Jesus", 29)
    @bus_stop = BusStop.new("Pricess Street")
  end

  def test_count_queue
    assert_equal(0, @bus_stop.lenght_queue())
  end

  def test_add_person_queue
    @bus_stop.add_person_queue(@james)
    assert_equal(1, @bus_stop.lenght_queue())
  end



end
