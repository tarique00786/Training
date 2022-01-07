class Student < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :department, optional: true
  validates :name, presence: true
  validates :admission, numericality: {message: "Enter between 2018 and 2021"}
  has_one_attached :image
  validates :image, attached: true, content_type: 'image/jpeg', size: {less_than: 100.kilobytes, message: 'Not between size'}
  def self.search(search, page_number)
    if search
      where(["name ILIKE ?","%#{search}%"]).paginate(:page => page_number, per_page: 20)
    else
      all 
    end   
  end
    
end
