class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :courses
  has_many :enrollments
  
  def enrolled_in?(course)
    enrolled_courses = enrollments.collect(&:course)
    return enrolled_courses.include?(course)
  end
  
end
