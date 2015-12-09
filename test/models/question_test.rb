require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  def question
    @question ||= Question.new
  end

  def test_valid
    assert question.valid?
  end
end

# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  title         :string
#  free_response :boolean
#  max_score     :integer
#  quizz_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
