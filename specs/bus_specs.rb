require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require("minitest/rg")

class BusTest < MiniTest::Test

  def setup
    @james = Person.new("James", 28)
    @jesus = Person.new("Jesus", 29)
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_bus_route
    assert_equal(22, @bus.route())
  end

  def test_number_of_passengers
    assert_equal(0, @bus.number_of_passengers())
  end


end
