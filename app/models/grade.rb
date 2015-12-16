class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :quiz
end

# == Schema Information
#
# Table name: grades
#
#  id         :integer          not null, primary key
#  student_id :integer
#  quiz_id    :integer
#  score      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
