class Type < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :venues, :through => :venue_types
end
