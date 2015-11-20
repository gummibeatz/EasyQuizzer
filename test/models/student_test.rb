require "test_helper"

class StudentTest < ActiveSupport::TestCase
  def student
    @student ||= Student.new
  end

  def test_valid
    assert student.valid?
  end
end

# == Schema Information
#
# Table name: students
#
#  id                     :integer          not null, primary key
#  encrypted_password     :string           default(""), not null
#  email                  :string
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
#  username               :string
#
