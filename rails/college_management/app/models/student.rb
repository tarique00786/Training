class Student < ApplicationRecord
  belongs_to :department
  validates :name, presence: true
  validates :admission, numericality: {message: "Enter between 2018 and 2021"}
  
  def self.search(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      all 
    end   
  end
    
end
