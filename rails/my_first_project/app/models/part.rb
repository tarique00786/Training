class Part < ApplicationRecord
  
  has_and_belongs_to_many :assemblies
  validate do |part|
    errors.add :part_number, :to_big, message: "Not valid"
  end  	
end
