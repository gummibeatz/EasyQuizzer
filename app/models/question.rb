class Question < ActiveRecord::Base
  belongs_to :quiz 
  has_many :answers
  accepts_nested_attributes_for :answers, :reject_if => :all_blank, :allow_destroy => true

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
#  quiz_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
