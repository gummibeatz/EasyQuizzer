require "test_helper"

class TeacherTest < ActiveSupport::TestCase
  def teacher
    @teacher ||= Teacher.new
  end

  def test_valid
    assert teacher.valid?
  end
end

# == Schema Information
#
# Table name: teachers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  classroom_id           :integer
#  first_name             :string
#  last_name              :string
#
