class Venue < ActiveRecord::Base
  attr_accessible :address_one, :address_three, :address_two, :city, :description, :email, :facebook, :featured, :full_address, :google_plus, :latitude, :longitude, :name, :phone, :price, :published, :state, :twitter, :youtube, :zipcode
  has_many :types, :through => :venue_types
  has_many :amenities, :through => :venue_amenities

  validates_presence_of :name, :address_one, :full_address, :city, :state, :zipcode
  validates_uniqueness_of :name
  validates :price, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
  validates :capacity, :numericality => {:greater_than => 0}

  def full_address
		[address_one, address_two, address_three, city, state, zipcode].reject{|x| x == ''}.join(', ')
	end

end
