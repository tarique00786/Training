class Task < ApplicationRecord
  
  before_validation :set_title
  #before_save :change_title
  #after_validation :set_title
  after_save :change_title
  validates :title, presence:true, length: { maximum: 50}
  def set_title
    self.title = "Pay Electricity bill"
  end  
  def change_title
    self.title = "Pay Electricity and TV bill"
  end  	
end
