require 'spec_helper'

describe HomeController do


  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "assigns @venues" do
      venues = FactoryGirl.create(:venue)
      get 'index'
      assigns(:venues).should eq([venues])
      response.should be_success
      render_template(:index)
    end
  end


end
