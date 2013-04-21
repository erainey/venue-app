require 'spec_helper'

describe UsersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

    it "shows 3 featured Venues" do
      venues = Venue.featured
      get 'index'
      expect(page).to have_content(:venues)
    end


  # describe "GET 'show'" do
  #   it "returns http success" do
  #     get 'show'
  #     response.should be_success
  #   end
  # end



end
