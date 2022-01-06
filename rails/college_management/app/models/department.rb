class Department < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :department_staffs
  has_many :staffs, through: :department_staffs
  accepts_nested_attributes_for :students, update_only: true
  has_many_attached :images
end
