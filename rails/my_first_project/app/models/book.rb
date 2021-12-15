class Book < ApplicationRecord
  
  belongs_to :author
  has_many :reviews
  scope :test1, -> { where(author_id: 1)}	
  scope :test1_expensive, -> { test1.where("price > 500")}
end
