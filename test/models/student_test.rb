require "test_helper"

class StudentTest < ActiveSupport::TestCase
  def student
    @student ||= Student.new
  end

  def test_valid
    assert student.valid?
  end
end
