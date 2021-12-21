class Staff < ApplicationRecord
  has_many :department_staffs
  has_many :departments, through: :department_staffs	
end
