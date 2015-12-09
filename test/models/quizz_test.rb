require "test_helper"

class QuizzTest < ActiveSupport::TestCase
  def quizz
    @quizz ||= Quizz.new
  end

  def test_valid
    assert quizz.valid?
  end
end

# == Schema Information
#
# Table name: quizzs
#
#  id         :integer          not null, primary key
#  title      :string
#  subject    :string
#  max_score  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
