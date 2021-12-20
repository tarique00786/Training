class Book < ApplicationRecord
  
  belongs_to :author
  has_many :reviews
  #default_scope { where(name: "Algorithm")}
  #scope :test1_expensive, -> { test1.where("price > 500")}
  #scope :cost_more_than, ->(amount) {where("price > ?", amount)}
  #scope :created_before, ->(time) {where("created_at < ?", time) if time.present?}
  #default_scope {where(author_id: 1)}
  after_destroy :log_destroy_action
  def log_destroy_action
    puts 'Article destroyed'
  end

end
