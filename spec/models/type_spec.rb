require 'spec_helper'

describe Type do
  it "creates a new Type with valid attributes" do
  	type = FactoryGirl.create(:type)
  	type.should be_valid
  end
  it "will not create an Type with a duplicate name" do
  	type1 = FactoryGirl.create(:type)
  	type2 = FactoryGirl.build(:type)
  	type2.should be_invalid
  end
end
