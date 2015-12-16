require "test_helper"

class GradeTest < ActiveSupport::TestCase
  def grade
    @grade ||= Grade.new
  end

  def test_valid
    assert grade.valid?
  end
end

# == Schema Information
#
# Table name: grades
#
#  id         :integer          not null, primary key
#  student_id :integer
#  quiz_id    :integer
#  score      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
