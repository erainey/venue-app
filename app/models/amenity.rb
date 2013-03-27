class Amenity < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :venues, :through => :venue_amenities

  validates :name, :presence => true, :uniqueness => true
end
