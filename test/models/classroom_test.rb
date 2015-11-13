require "test_helper"

class ClassroomTest < ActiveSupport::TestCase
  def classroom
    @classroom ||= Classroom.new
  end

  def test_valid
    assert classroom.valid?
  end
end
