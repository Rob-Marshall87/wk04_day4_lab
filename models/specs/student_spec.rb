require("minitest/autorun")
require('minitest/rg')
require_relative('../student.rb')
require_relative('../house.rb')

class StudentTest < MiniTest::Test

  def setup
    @house1 = House.new({'name' => 'Gryffindor',
      'logo' => 'Gryffindor_logo', 'id' => 1})
      @student1 = Student.new({'first_name' => 'Harry',
        'last_name' => 'Potter',
        'house' => @house1.id,
        'age' => 10})
  end

  def test__get_house
    result = @student1.get_house
    assert_equal('Gryffindor', result)
  end

    end
