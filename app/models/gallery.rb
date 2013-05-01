class Gallery < ActiveRecord::Base
  belongs_to :venue
  has_many :gallery_image
end
