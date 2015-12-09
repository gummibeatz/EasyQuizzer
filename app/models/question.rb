class Question < ActiveRecord::Base
  belongs_to :quizz 
  has_many :answer
  has_one  :free_response
end

# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  title         :string
#  free_response :boolean
#  max_score     :integer
#  quizz_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
