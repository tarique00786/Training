class DepartmentStaff < ApplicationRecord
  belongs_to :department
  belongs_to :staff
end
