require "test_helper"

class FreeResponseTest < ActiveSupport::TestCase
  def free_response
    @free_response ||= FreeResponse.new
  end

  def test_valid
    assert free_response.valid?
  end
end

# == Schema Information
#
# Table name: free_responses
#
#  id          :integer          not null, primary key
#  student_id  :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
