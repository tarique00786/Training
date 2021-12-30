class Student < ApplicationRecord
  belongs_to :department
  validates :name, presence: true
  validates :admission, numericality: {message: "Enter between 2018 and 2021"}
  
  def self.search(search, page_number)
    if search
      where(["name ILIKE ?","%#{search}%"]).paginate(:page => page_number, per_page: 20)
    else
      all 
    end   
  end
    
end
