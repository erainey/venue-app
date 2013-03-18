class Amenity < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :venues, :through => :venue_amenities
end
