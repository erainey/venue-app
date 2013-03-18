class VenueAmenity < ActiveRecord::Base
  belongs_to :venue
  belongs_to :amenity
  # attr_accessible :title, :body
end
