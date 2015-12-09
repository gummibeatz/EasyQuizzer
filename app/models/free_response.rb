class FreeResponse < ActiveRecord::Base
  belongs_to :question
  belongs_to :student
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
