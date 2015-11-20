require "test_helper"

class FreeResponseTest < ActiveSupport::TestCase
  def free_response
    @free_response ||= FreeResponse.new
  end

  def test_valid
    assert free_response.valid?
  end
end
