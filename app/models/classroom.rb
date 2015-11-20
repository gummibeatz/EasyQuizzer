class Classroom < ActiveRecord::Base
  has_many :teachers
  has_many :students
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
