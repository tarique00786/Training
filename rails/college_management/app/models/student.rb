class Student < ApplicationRecord
  belongs_to :department
  validates :name, presence: true
  validates :admission, numericality: {message: "Enter between 2018 and 2021"} 
end
