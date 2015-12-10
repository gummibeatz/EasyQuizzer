class StudentAnswer < ActiveRecord::Base
  belongs_to :answer
  belongs_to :student
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
