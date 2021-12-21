class Join < ApplicationRecord
  belongs_to :department, foreign_key: true
  belongs_to :staffs, foreign_key: true	
end
