class Author < ApplicationRecord

  has_many :books, 	-> { order(published_at: :desc) }
  has_many :reviews
  def authorname
    "I am #{name}"
  end  
  validates_associated :books
  #validates :name, absence: true
  #validates :accept, acceptance: true
  validates :email, format: {with:/[A-Za-z0-9\-\_\.]+[@]berylsystems+[\.][A-Za-z]{2,3}/}
end
