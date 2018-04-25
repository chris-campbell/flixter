class Course < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_one :rating
    has_many :sections
    has_many :enrollments
    
    
    
    validates :title, presence: true
    validates :description, presence: true
    validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
    
    
    def free?
      cost.zero?
    end
    
    def premium?
      !free?
      
    end
    
    def self.search(term)
      where("title iLIKE ? OR description LIKE ?", "%#{term}%", "%#{term}%")
    end
end
