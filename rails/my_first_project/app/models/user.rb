class User < ApplicationRecord

  validates :first_name, presence: {message: "cant store blank"}	
  validates :mobileno, presence: true, length: { maximum: 10,
                       too_long: "%{count} characters is the maximum allowed"}
  validates :mobileno, uniqueness: true                      

end
