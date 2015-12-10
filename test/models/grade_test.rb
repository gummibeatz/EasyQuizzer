require "test_helper"

class GradeTest < ActiveSupport::TestCase
  def grade
    @grade ||= Grade.new
  end

  def test_valid
    assert grade.valid?
  end
end
