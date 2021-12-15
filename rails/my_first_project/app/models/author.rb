class Author < ApplicationRecord

  has_many :books, 	-> { order(published_at: :desc) }
  has_many :reviews
end
