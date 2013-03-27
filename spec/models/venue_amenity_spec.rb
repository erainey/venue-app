require 'spec_helper'

describe VenueAmenity do
  it "creates a new VenueAmenity with valid attributes" do
  	venue_amenity = FactoryGirl.create(:venue_amenity)
  	venue_amenity.should be_valid
  end
  it "does not create a VenueAmenity with a duplicate venue_id" do
  	#venue = FactoryGirl.create(:venue)
  	#amenity = FactoryGirl.create(:amenity)
  	#venue_amenity1 = VenueAmenity.create(:venue => venue, :amenity => amenity)
  	#venue_amenity1.should be_valid
  	#venue = FactoryGirl.create(:venue)
  	#amenity = FactoryGirl.create(:amenity)
  	#venue_amenity1 = venue.amenity(amenity)
  	#venue_amenity1.should be_valid
  	#venue_amenity2 = FactoryGirl.build(:venue_amenity)
  	#venue_amenity2.should be_invalid
  end
end
