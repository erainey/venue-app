class Venue < ActiveRecord::Base
  attr_accessible :address_one, :address_three, :address_two, :city, :description, :email, :facebook, :full_address, :google_plus, :latitude, :longitude, :name, :phone, :state, :twitter, :youtube, :zipcode
  has_many :types, :through => :venue_types
  has_many :amenities, :through => :venue_amenities

end
