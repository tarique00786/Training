class User < ApplicationRecord

  validates :first_name, presence: {message: "cant store blank"}	
  validates :mobileno, presence: true, length: {minimum: 6, maximum: 10}
end
