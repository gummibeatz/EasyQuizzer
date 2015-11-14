require "test_helper"

class TeacherTest < ActiveSupport::TestCase
  def teacher
    @teacher ||= Teacher.new
  end

  def test_valid
    assert teacher.valid?
  end
end
