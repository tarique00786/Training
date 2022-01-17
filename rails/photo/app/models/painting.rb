class Painting < ApplicationRecord
	mount_uploader :image, ImageUploader
end
