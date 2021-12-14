class Author < ApplicationRecord

  has_many :books, 	-> { order(published_at: :desc) }
  
end
