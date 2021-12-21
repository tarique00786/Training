class Department < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :staffs, through: :joins	
end
