class Review < ApplicationRecord
	
  belongs_to :book, foreign_key: true
  belongs_to :author, foreign_key: true

end
