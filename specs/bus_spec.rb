require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")
require("minitest/rg")

class BusTest < MiniTest::Test

  def setup
    @james = Person.new("James", 28)
    @jesus = Person.new("Jesus", 29)

    @bus = Bus.new(22, "Ocean Terminal")

    @bus_stop = BusStop.new("Pricess Street")
    @bus_stop.add_person_queue(@james)
    @bus_stop.add_person_queue(@jesus)

  end

  def test_drive
    assert_equal("Brum brum!", @bus.drive("Brum brum"))
  end

  def test_bus_route
    assert_equal(22, @bus.route())
  end

  def test_number_of_passengers
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_pick_up
    @bus.pick_up(@jesus)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_drop_off
    @bus.drop_off(@jesus)
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_empty_bus
    @bus.empty_bus()
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_pick_up_from_stop
    @bus.test_pick_up_from_stop(@bus_stop)
    assert_equal(2, @bus.number_of_passengers())
    assert_equal(0, @bus_stop.lenght_queue())
  end


end
