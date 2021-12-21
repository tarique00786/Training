class Department < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :department_staffs
  has_many :staffs, through: :department_staffs
end
