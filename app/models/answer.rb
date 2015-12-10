class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :student_answers
end

# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
