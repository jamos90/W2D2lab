require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require("minitest/rg")

class BusTest < MiniTest::Test

  def setup
    james = Person.new("James", 28)
    jesus = Person.new("Jesus", 29)

    @Bus = Bus.new(22, "Ocean Terminal", [james, jesus])

  end

end
