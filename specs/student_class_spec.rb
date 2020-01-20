require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../student_class')

class TestStudent < Minitest::Test
  def setup
    @student = Student.new("Bill", "E37")
  end

  def test_get_student_name
    assert_equal("Bill", @student.name())
  end

  def test_get_student_cohort
    assert_equal("E37", @student.cohort())
  end

  def test_set_name
    @student.set_name("George")
    assert_equal("George", @student.name())
  end

  def test_set_cohort
    @student.set_cohort("E36")
    assert_equal("E36", @student.cohort())
  end

  def test_student_talk
    assert_equal("I can talk!", @student.talk())
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end
end
