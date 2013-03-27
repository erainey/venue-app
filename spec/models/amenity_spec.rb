require 'spec_helper'

describe Amenity do
  it "creates a new Amenity with valid attributes" do
  	amenity = FactoryGirl.create(:amenity)
  	amenity.should be_valid
  end
  it "will not create an Amenity with a duplicate name" do
  	amenity1 = FactoryGirl.create(:amenity)
  	amenity2 = FactoryGirl.build(:amenity)
  	amenity2.should be_invalid
  end
end
