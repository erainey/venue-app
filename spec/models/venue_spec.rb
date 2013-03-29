require 'spec_helper'

describe Venue do

  describe "Venue creation and validation" do

    it "creates a new Venue with valid attributes" do
    	venue = FactoryGirl.create(:venue)
    	venue.should be_valid
    end
    it "does not create a Venue with invalid attributes" do
      venue = FactoryGirl.build(:invalid_venue)
      venue.should be_invalid
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
    it "restricts the price to be within set range (1..5)" do
    	venue = FactoryGirl.build(:venue)
    	venue.price = 50
    	venue.should be_invalid
    end 
    it "does not allow capacity to be less than one" do
    	venue = FactoryGirl.build(:venue)
    	venue.capacity = 0
    	venue.should be_invalid
    end
    it "obtains valid latitude/longitude from full_address (using Google API)" do
      venue = FactoryGirl.create(:venue)
      expect venue.latitude.should eq(25.81797220)
      expect venue.longitude.should eq(-80.12238979999999)
    end

  end

  describe "venue#published?" do
    it "confirms that the Venue is published" do
      venue = FactoryGirl.create(:venue)
      venue.published?.should be_true
    end
    it "confirms that the Venue is unpublished" do
      venue = FactoryGirl.build(:venue)
      venue.published = false
      venue.save
      venue.published?.should be_false
    end
  end

  describe "venue#featured?" do
    it "confirms that the Venue is featured" do
      venue = FactoryGirl.create(:venue)
      venue.featured?.should be_true
    end
    it "confirms that the Venue is not featured" do
      venue = FactoryGirl.build(:venue)
      venue.featured = false
      venue.featured?.should be_false
    end
  end


  #pending "add some examples to (or delete) #{__FILE__}"
end
