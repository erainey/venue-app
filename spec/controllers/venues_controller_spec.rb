require 'spec_helper'

describe VenuesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns requested venue" do
      venue = FactoryGirl.create(:venue)
      #get :show, id: venue.id
      #assigns(:venue).should eq(venue)
      #response.should be_success
    end
    it "renders the #show view" do
      venue = FactoryGirl.create(:venue)
      #get :show, id: {venue.id}
      #response.should render_template :show
    end
  end

  describe "GET 'search'" do
    it "returns a valid search result" do
      venue = FactoryGirl.create(:venue)
      
    end
  end

end
