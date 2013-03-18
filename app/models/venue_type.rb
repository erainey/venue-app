class VenueType < ActiveRecord::Base
  belongs_to :venue
  belongs_to :type
  # attr_accessible :title, :body
end
