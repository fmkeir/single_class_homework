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

  def test_set_name
    @student1.set_name("George")
    assert_equal("George", @student1.name())
  end

  def test_set_cohort
    @student1.set_cohort("E36")
    assert_equal("E36", @student1.cohort())
  end

  def test_student_talk
    assert_equal("I can talk!", @student1.talk())
  end
end
