class Quiz < ActiveRecord::Base
  has_many :questions
  has_many :grades
  has_many :students, through: :grades

  accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
  validate :has_questions

  def has_questions 
    errors.add(:base, 'must have at least one question') if self.questions.blank?
  end

end

# == Schema Information
#
# Table name: quizzes
#
#  id         :integer          not null, primary key
#  title      :string
#  subject    :string
#  max_score  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
