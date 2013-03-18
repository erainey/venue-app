class Venue < ActiveRecord::Base
  attr_accessible :address_one, :address_three, :address_two, :city, :description, :full_address, :latitude, :longitude, :name, :state, :zipcode
end
