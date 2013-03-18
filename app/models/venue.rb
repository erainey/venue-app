class Venue < ActiveRecord::Base
  attr_accessible :address_one, :address_three, :address_two, :city, :description, :full_address, :latitude, :longitude, :name, :state, :zipcode
  has_many :types, :through => :venue_types
  has_many :amenities, :through => :venue_amenities

end
