class Task < ApplicationRecord
=begin
  after_initialize do |task|
    puts "You have initialized"
  end
  

  after_find do |task|
    puts "You have find an object"
  end 

  after_touch do |task|
    puts "You have touched an object"
  end   	

  before_validation :set_title
  #before_save :change_title
  #after_validation :set_title
  after_save :change_title
=end 
  before_validation :set_title, if: :title_not_present

  def title_not_present
    self.title.blank?
  end  	
  
  validates :title, presence:true, length: { maximum: 50}
  def set_title
    self.title = "Pay Electricity bill"
  end 
=begin   
  def change_title
    self.title = "Pay Electricity and TV bill"
  end  	
=end  
end
