class GalleryImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  attr_accessible :name
  belongs_to :gallery
end
