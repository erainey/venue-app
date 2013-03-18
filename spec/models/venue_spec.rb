require 'spec_helper'

describe Venue do
  it "creates a new Venue with valid attributes" do
  	venue = FactoryGirl.create(:venue)
  	venue.should be_valid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
