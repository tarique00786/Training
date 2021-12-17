class Task < ApplicationRecord

  #before_validation :set_title
  after_validation :set_title
  validates :title, presence:true, length: { maximum: 50}
  def set_title
    self.title = "Pay Electricity bill"
  end  	
end
