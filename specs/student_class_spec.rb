require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../student_class')

class TestStudent < Minitest::Test
  def setup
    @student1 = Student.new("Bill", "E37")
    @student2 = Student.new("Hamish", "G1")
  end

  def test_get_student_name
    assert_equal("Bill", @student1.name())
  end

  def test_get_student_cohort
    assert_equal("E37", @student1.cohort())
  end
end
