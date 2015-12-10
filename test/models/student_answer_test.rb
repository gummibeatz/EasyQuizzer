require "test_helper"

class StudentAnswerTest < ActiveSupport::TestCase
  def student_answer
    @student_answer ||= StudentAnswer.new
  end

  def test_valid
    assert student_answer.valid?
  end
end

# == Schema Information
#
# Table name: student_answers
#
#  id         :integer          not null, primary key
#  student_id :integer
#  answer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
