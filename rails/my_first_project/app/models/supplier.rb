class Supplier < ApplicationRecord

  has_one :account	
  has_one :account_historie, through: :account
  validates :account, presence: true
  
end
