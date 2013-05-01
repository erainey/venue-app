class Venue < ActiveRecord::Base

  scope :published, where(:published? == true)
  scope :featured, where(:featured? == true)

  attr_accessible :address_one, :address_three, :address_two, :amenity_ids, :capacity, :city, :description, :email, :facebook, :featured, :full_address, :google_plus, :latitude, :longitude, :name, :phone, :price, :published, :state, :twitter, :type_ids, :youtube, :website, :zipcode
    
  belongs_to :user

  has_many :venue_types
  has_many :types, :through => :venue_types, :dependent => :destroy
  has_many :venue_amenities
  has_many :amenities, :through => :venue_amenities
  accepts_nested_attributes_for :venue_amenities, allow_destroy: true

  validates_presence_of :name, :address_one, :full_address, :city, :state, :zipcode
  validates_uniqueness_of :name
  validates :price, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
  validates :capacity, :numericality => {:greater_than => 0}

  has_one :gallery

  geocoded_by :full_address
  after_validation :geocode, :if => :full_address_changed?

  def full_address
		[address_one, address_two, address_three, city, state, zipcode].reject{|x| x == ''}.join(', ')
	end

  def full_address_changed?
    true unless self.full_address == :full_address
  end

  def published?
    self.published == true
  end

  def featured?
    self.featured == true
  end

  def owner
    User.find(user_id)
  end

end
