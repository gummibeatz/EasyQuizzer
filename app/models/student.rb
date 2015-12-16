class Student < ActiveRecord::Base
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

  belongs_to :classroom
  has_many :student_answers
  has_many :answers, through: :student_answers
  has_many :grades
  has_many :quizzes, through: :grades
  

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  validate :validate_username

  # Only allow letter, number, underscore and punctuation.
  # validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/


  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end

  def validate_username
    if Student.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def login(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def full_name
    return self.first_name unless self.first_name && self.last_name
    return self.first_name + " " + self.last_name
  end

  def email_required?
    false
  end

  def email_changed?
    false
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
