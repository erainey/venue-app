require 'spec_helper'

describe Venue do
  it "creates a new Venue with valid attributes" do
  	venue = FactoryGirl.create(:venue)
  	venue.should be_valid
  end
  it "will not create a Venue with a duplicate name" do
  	venue1 = FactoryGirl.create(:venue)
  	venue2 = FactoryGirl.build(:venue)
  	venue2.should be_invalid
  end
  it "creates full_address attribute correctly" do
  	venue = FactoryGirl.create(:venue)
  	expect(venue.full_address).to eq("4441 Collins Ave, Miami Beach, FL, 33140")
  end
  it "restricts the price to be within set range" do
  	venue = FactoryGirl.build(:venue)
  	venue.price = 50
  	venue.should be_invalid
  end 
  it "does not allow capacity to be less than one" do
  	venue = FactoryGirl.build(:venue)
  	venue.capacity = 0
  	venue.should be_invalid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
