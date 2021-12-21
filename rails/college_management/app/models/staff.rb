class Staff < ApplicationRecord
  has_many :departments, through: :joins	
end
