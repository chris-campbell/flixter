class Course < ApplicationRecord
    belongs_to :user
    has_many :sections
    has_many :enrollments
    has_one :rating
    
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
      where("title LIKE ? OR description LIKE ?", "%#{term}%", "%#{term}%")
    end
end
