require "test_helper"

class QuizzTest < ActiveSupport::TestCase
  def quizz
    @quizz ||= Quizz.new
  end

  def test_valid
    assert quizz.valid?
  end
end
