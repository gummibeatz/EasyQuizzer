class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :classroom

  def full_name
    return self.first_name unless self.first_name || self.last_name 
    return self.first_name + " " + self.last_name
  end
end
