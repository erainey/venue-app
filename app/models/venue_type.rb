class VenueType < ActiveRecord::Base
  belongs_to :venue, :dependent => :destroy
  belongs_to :type, :dependent => :destroy
  # attr_accessible :title, :body
end
