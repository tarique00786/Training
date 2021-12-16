class User < ApplicationRecord

  validates :last_name, presence: true, if: :name?
  def name?
    first_name == "obama"
  end  	
    
  validates :mobileno, presence: true, length: { maximum: 10,
                       too_long: "%{count} characters is the maximum allowed"}
  
  #validates :mobileno, uniqueness: true 
  validates :country, inclusion: {in: %w(india america england),
                      message: "%{value} is not valid"}, allow_blank: true   

  validates :country, exclusion: {in: %w(brazil argentin chille),
                      message: "%{value} is not valid"},allow_blank: true 

  validates :email,
   presence: {message: "blank not allowed"}, on: :create 

  validates :age, numericality: true, on: :account_setup                   

end
