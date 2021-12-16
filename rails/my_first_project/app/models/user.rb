class User < ApplicationRecord

  validates :first_name, presence: {message: "cant store blank"}	
  validates :mobileno, presence: true, length: { maximum: 10,
                       too_long: "%{count} characters is the maximum allowed"}
  
  validates :mobileno, uniqueness: true 
  validates :country, inclusion: {in: %w(india america england),
                      message: "%{value} is not valid"}, allow_blank: true   

  validates :country, exclusion: {in: %w(brazil argentin chille),
                      message: "%{value} is not valid"},allow_blank: true 

  validates :email,
   uniqueness: {message: "already exists"}, on: :create 

  validates :age, numericality: true, on: :update                   

end
