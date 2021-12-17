class Author < ApplicationRecord

  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  attr_accessor :name

  validates_length_of :name, maximum: 6

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    name.strip!
  end  

  has_many :books, 	-> { order(published_at: :desc) }, dependent: :destroy
  has_many :reviews
  def authorname
    "I am #{name}"
  end  
  validates_associated :books
  #validates :name, absence: true
  #validates :accept, acceptance: true
  validates :email, format: {with:/[A-Za-z0-9\-\_\.]+[@]berylsystems+[\.][A-Za-z]{2,3}/}
end
