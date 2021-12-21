class Student < ApplicationRecord
  belongs_to :department, foreign_key: true	
end
