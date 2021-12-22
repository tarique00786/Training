class Student < ApplicationRecord
  belongs_to :department, counter_cache: true	
end
