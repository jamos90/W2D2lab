require("minitest/autorun")
require_relative("../person.rb")
require("minitest/rg")

class PersonTest < MiniTest::Test

  def setup

    @person1 = Person.new("James", 28)
    @person2 = Person.new("Jesus", 29)
  end

  def test_person_name
    assert_equal("James", @person1.name())
  end

  def test_person_age
    assert_equal(28, @person1.age())
  end


end
