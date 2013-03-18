class Amenity < ActiveRecord::Base
  attr_accessible :name
  has_many :venues, :through => :venue_amenities
end
