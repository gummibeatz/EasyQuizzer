require "test_helper"

class ClassroomTest < ActiveSupport::TestCase
  def classroom
    @classroom ||= Classroom.new
  end

  def test_valid
    assert classroom.valid?
  end
end

# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#
