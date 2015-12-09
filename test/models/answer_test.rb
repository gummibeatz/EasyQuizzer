require "test_helper"

class AnswerTest < ActiveSupport::TestCase
  def answer
    @answer ||= Answer.new
  end

  def test_valid
    assert answer.valid?
  end
end

# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
